<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Frontend_controller extends Frontend_R_Controller
{
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Index
     */
    public function index()
    {
        $data['title'] = $this->settings->homepage_title;
        $data['description'] = $this->settings->site_description;
        $data['keywords'] = $this->settings->keywords;

        $this->load->view('FRONTEND/__components/header.html', $data);
        $this->load->view('FRONTEND/home', $data);
        $this->load->view('FRONTEND/__components/footer.html');
        
    }
    
    //your custom code here

}
