<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Settings_model extends CI_Model
{

    //get routes
    public function get_routes()
    {
        $query = $this->db->get('routes');
        return $query->result();
    }

    //get general settings
    public function get_general_settings()
    {
        $this->db->where('id', 1);
        $query = $this->db->get('general_settings');
        return $query->row();
    }

    //get system settings
    public function get_system_settings()
    {
        $this->db->where('id', 1);
        $query = $this->db->get('general_settings');
        return $query->row();
    }

    //get settings
    public function get_settings($lang_id)
    {
        return $this->db->where('lang_id', clean_number($lang_id))->get('settings')->row();
    }



}
