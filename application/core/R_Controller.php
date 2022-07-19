<?php defined('BASEPATH') or exit('No direct script access allowed');

class R_Controller extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        //general settings
        $this->general_settings = $this->config->item('general_settings');
        //set timezone
        date_default_timezone_set($this->general_settings->timezone);
        //routes
        $this->routes = $this->config->item('routes');
        //languages
        $this->languages = $this->config->item('languages');
        //site lang
        $this->site_lang = $this->language_model->get_site_language($this->languages);
        //selected lang
        $this->selected_lang = $this->site_lang;
        //language base url
        $this->lang_base_url = base_url();
        //set language
        $this->lang_segment = "";
        $lang_segment = $this->uri->segment(1);
        foreach ($this->languages as $lang) {
            if ($lang_segment == $lang->short_form) {
                if ($this->general_settings->multilingual_system == 1):
                    $this->selected_lang = $lang;
                    $this->lang_segment = $lang->short_form;
                else:
                    redirect(base_url());
                endif;
            }
        }
        //set lang base url
        if ($this->general_settings->site_lang == $this->selected_lang->id) {
            $this->lang_base_url = base_url();
        } else {
            $this->lang_base_url = base_url() . $this->selected_lang->short_form . "/";
        }
        //check auth
        $this->auth_check = auth_check();
        if ($this->auth_check) {
            $this->auth_user = user();
        }
        //settings
        $this->settings = $this->settings_model->get_settings($this->selected_lang->id);

        //application name
        $this->app_name = $this->general_settings->application_name;
        
        //variables
        $this->username_maxlength = 40;
        $this->thousands_separator = '.';
        $this->input_initial_price = '0.00';

    }

}

class Frontend_R_Controller extends R_Controller
{
    public function __construct()
    {
        parent::__construct();

        if ($this->input->method() == "post") {
            //set post language
            $lang_id = $this->input->post('sys_lang_id', true);
            if (!empty($lang_id)) {
                $this->selected_lang = $this->language_model->get_language($lang_id);
                $this->language_translations = $this->get_translation_array($lang_id);
                if ($this->general_settings->site_lang == $lang_id) {
                    $this->lang_base_url = base_url();
                } else {
                    $this->lang_base_url = base_url() . $this->selected_lang->short_form . "/";
                }
            }
        }

    }

}

class Backend_R_Controller extends R_Controller
{

    public function __construct()
    {
        parent::__construct();

        //set control panel lang
        $this->control_panel_lang = $this->selected_lang;
        if (!empty($this->session->userdata('r_control_panel_lang'))) {
            $this->control_panel_lang = $this->session->userdata('r_control_panel_lang');
            //language translations
            $this->language_translations = $this->get_translation_array($this->control_panel_lang->id);
        }
    }

}