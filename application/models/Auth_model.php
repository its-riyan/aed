<?php defined('BASEPATH') or exit('No direct script access allowed');

class Auth_model extends CI_Model
{

    //input values
    public function input_values()
    {
        $data = array(
            'username' => remove_special_characters($this->input->post('username', true)),
            'email' => $this->input->post('email', true),
            'first_name' => $this->input->post('first_name', true),
            'last_name' => $this->input->post('last_name', true),
            'password' => $this->input->post('password', true)
        );
        return $data;
    }

    //login
    public function login()
    {
        $this->load->library('bcrypt');

        $data = $this->input_values();
        $user = $this->get_user_by_email($data['email']);

        if (!empty($user)) {
            //check password
            if (!$this->bcrypt->check_password($data['password'], $user->password)) {
                $this->session->set_flashdata('error', 'error');
                return false;
            }
            if ($user->email_status != 1) {
                $this->session->set_flashdata('error', 'required' . "&nbsp;<a href='javascript:void(0)' class='link-resend-activation-email' onclick=\"send_activation_email('" . $user->id . "','" . $user->token . "');\">" . trans("resend_activation_email") . "</a>");
                return false;
            }
            if ($user->banned == 1) {
                $this->session->set_flashdata('error', 'ban error');
                return false;
            }
            //set user data
            $user_data = array(
                'r_sess_user_id' => $user->id,
                'r_sess_user_email' => $user->email,
                'r_sess_user_role' => $user->role,
                'r_sess_logged_in' => true,
                'r_sess_app_key' => $this->config->item('app_key'),
            );
            $this->session->set_userdata($user_data);
            return true;
        } else {
            $this->session->set_flashdata('error', 'login error');
            return false;
        }
    }

    //login direct
    public function login_direct($user)
    {
        //set user data
        $user_data = array(
            'r_sess_user_id' => $user->id,
            'r_sess_user_email' => $user->email,
            'r_sess_user_role' => $user->role,
            'r_sess_logged_in' => true,
            'r_sess_app_key' => $this->config->item('app_key'),
        );

        $this->session->set_userdata($user_data);
    }

    //is admin
    public function is_admin()
    {
        //check logged in
        if (!$this->is_logged_in()) {
            return false;
        }

        //check role
        if ($this->session->userdata('r_sess_role') == 'admin') {
            return true;
        } else {
            return false;
        }
    }


    //is logged in
    public function is_logged_in()
    {
        //check if user logged in
        if ($this->session->userdata('r_sess_logged_in') == true && $this->session->userdata('r_sess_app_key') == $this->config->item('app_key')) {
            $user = $this->get_user($this->session->userdata('r_sess_user_id'));
            if (!empty($user)) {
                if ($user->banned == 0) {
                    return true;
                }
            }
        }
        return false;
    }

    //function get user
    public function get_logged_user()
    {
        if ($this->is_logged_in()) {
            $user_id = $this->session->userdata('r_sess_user_id');
            $this->db->where('id', $user_id);
            $query = $this->db->get('users');
            return $query->row();
        }
    }

    //get user by id
    public function get_user($id)
    {
        $id = clean_number($id);
        $this->db->where('id', $id);
        $query = $this->db->get('users');
        return $query->row();
    }

    //get user by email
    public function get_user_by_email($email)
    {
        $this->db->where('email', $email);
        $query = $this->db->get('users');
        return $query->row();
    }

    //get user by username
    public function get_user_by_username($username)
    {
        $username = remove_special_characters($username);
        $this->db->where('username', $username);
        $query = $this->db->get('users');
        return $query->row();
    }

    //logout
    public function logout()
    {
        //unset user data
        $this->session->unset_userdata('r_sess_user_id');
        $this->session->unset_userdata('r_sess_user_email');
        $this->session->unset_userdata('r_sess_user_role');
        $this->session->unset_userdata('r_sess_logged_in');
        $this->session->unset_userdata('r_sess_app_key');
    }

}
