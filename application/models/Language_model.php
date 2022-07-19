<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Language_model extends CI_Model
{
    //input values
    public function input_values()
    {
        $data = array(
            'name' => $this->input->post('name', true),
            'short_form' => $this->input->post('short_form', true),
            'language_code' => $this->input->post('language_code', true),
            'language_order' => $this->input->post('language_order', true),
            'text_direction' => $this->input->post('text_direction', true),
            'text_editor_lang' => $this->input->post('text_editor_lang', true),
            'status' => $this->input->post('status', true)
        );
        return $data;
    }

    //get language
    public function get_language($id)
    {
        $sql = "SELECT * FROM languages WHERE id = ?";
        $query = $this->db->query($sql, array(clean_number($id)));
        return $query->row();
    }

    //get site language
    public function get_site_language($languages)
    {
        if (!empty($languages)) {
            foreach ($languages as $language) {
                if ($language->id == $this->general_settings->site_lang) {
                    return $language;
                }
            }
            foreach ($languages as $language) {
                return $language;
            }
        }
        $query = $this->db->query("SELECT * FROM languages ORDER BY id LIMIT 1");
        return $query->row();
    }

    //get languages
    public function get_languages()
    {
        $query = $this->db->query("SELECT * FROM languages ORDER BY language_order");
        return $query->result();
    }

    //get language translations
    public function get_language_translations($lang_id)
    {
        $sql = "SELECT * FROM language_translations WHERE lang_id = ?";
        $query = $this->db->query($sql, array(clean_number($lang_id)));
        return $query->result();
    }

}
