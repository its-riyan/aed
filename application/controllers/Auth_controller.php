<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Auth_controller extends R_Controller
{
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Admin Login
     */
    public function admin_login()
    {
        if ($this->auth_check) {
            redirect(lang_base_url());
        }
        $data['title'] = "login";
        $data['description'] ="login" . " - " . $this->settings->site_title;
        $data['keywords'] = "login" . ', ' . $this->general_settings->application_name;

        $this->load->view('FRONTEND/__components/header.html', $data);
        $this->load->view('AUTH/login.html', $data);
        $this->load->view('FRONTEND/__components/footer.html');

    }

    /**
     * Admin Login Post
     */
    public function admin_login_post()
    {
        //validate inputs
        $this->form_validation->set_rules('email', 'form_email', 'required|xss_clean|max_length[200]');
        $this->form_validation->set_rules('password', 'form_password', 'required|xss_clean|max_length[30]');

        if ($this->form_validation->run() == false) {
            $this->session->set_flashdata('errors', validation_errors());
            $this->session->set_flashdata('form_data', $this->auth_model->input_values());
            redirect($this->agent->referrer());
        } else {
            if ($this->auth_model->login()) {
                redirect(admin_url());
            } else {
                //error
                $this->session->set_flashdata('form_data', $this->auth_model->input_values());
                $this->session->set_flashdata('error', 'login error');
                redirect($this->agent->referrer());
            }
        }
    }

    /**
     * Logout
     */
    public function logout()
    {
        if (!$this->auth_check) {
            redirect(lang_base_url());
        }
        $this->auth_model->logout();
        redirect($this->agent->referrer());
    }


    /**
     * Connect with Google
     */
    public function connect_with_google()
    {
        require_once APPPATH . "third_party/google/vendor/autoload.php";

        $provider = new League\OAuth2\Client\Provider\Google([
            'clientId' => $this->general_settings->google_client_id,
            'clientSecret' => $this->general_settings->google_client_secret,
            'redirectUri' => base_url() . 'connect-with-google',
        ]);

        if (!empty($_GET['error'])) {
            // Got an error, probably user denied access
            exit('Got error: ' . htmlspecialchars($_GET['error'], ENT_QUOTES, 'UTF-8'));
        } elseif (empty($_GET['code'])) {

            // If we don't have an authorization code then get one
            $authUrl = $provider->getAuthorizationUrl();
            $_SESSION['oauth2state'] = $provider->getState();
            $this->session->set_userdata('g_login_referrer', $this->agent->referrer());
            header('Location: ' . $authUrl);
            exit();

        } elseif (empty($_GET['state']) || ($_GET['state'] !== $_SESSION['oauth2state'])) {
            // State is invalid, possible CSRF attack in progress
            unset($_SESSION['oauth2state']);
            exit('Invalid state');
        } else {
            // Try to get an access token (using the authorization code grant)
            $token = $provider->getAccessToken('authorization_code', [
                'code' => $_GET['code']
            ]);
            // Optional: Now you have a token you can look up a users profile data
            try {
                // We got an access token, let's now get the owner details
                $user = $provider->getResourceOwner($token);

                $g_user = new stdClass();
                $g_user->id = $user->getId();
                $g_user->email = $user->getEmail();
                $g_user->name = $user->getName();
                $g_user->avatar = $user->getAvatar();
                $g_user->first_name = $user->getFirstName();
                $g_user->last_name = $user->getLastName();

                $this->auth_model->login_with_google($g_user);

                if (!empty($this->session->userdata('g_login_referrer'))) {
                    redirect($this->session->userdata('g_login_referrer'));
                } else {
                    redirect(base_url());
                }

            } catch (Exception $e) {
                // Failed to get user details
                exit('Something went wrong: ' . $e->getMessage());
            }
        }
    }

}
