<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Backend_controller extends Backend_R_Controller
{
    public function __construct()
    {
        parent::__construct();
        //check user   
        if (!is_admin()) {
            redirect('r/authentication');
        }

    }

    /**
     * index
     */
    public function index()
    {
        $data['title'] = "Admin Dashboard";
        $this->load->view('FRONTEND/__components/header.html', $data);
        $this->load->view('BACKEND/dashboard.html', $data);
        $this->load->view('FRONTEND/__components/footer.html');

    }


    /**
     * your custome code
     */

}
