<?php defined('BASEPATH') or exit('No direct script access allowed');
/*
 * Custom Helpers
 *
 */

if (strpos($_SERVER['REQUEST_URI'], '/index.php') !== false) {
    $ci =& get_instance();
    $ci->load->helper('url');
    redirect(current_url());
    exit();
}

//check auth
if (!function_exists('lang_base_url')) {
    function lang_base_url()
    {
        $ci =& get_instance();
        return $ci->lang_base_url;
    }
}

//check auth
if (!function_exists('auth_check')) {
    function auth_check()
    {
        $ci =& get_instance();
        return $ci->auth_model->is_logged_in();
    }
}

//is admin
if (!function_exists('is_admin')) {
    function is_admin()
    {
        $ci =& get_instance();
        if ($ci->auth_check) {
            if ($ci->auth_user->role == "admin") {
                return true;
            }
        }
        return false;
    }
}

//get logged user
if (!function_exists('user')) {
    function user()
    {
        // Get a reference to the controller object
        $ci =& get_instance();
        $user = $ci->auth_model->get_logged_user();
        if (empty($user)) {
            $ci->auth_model->logout();
        } else {
            return $user;
        }
    }
}

//get user by id
if (!function_exists('get_user')) {
    function get_user($user_id)
    {
        // Get a reference to the controller object
        $ci =& get_instance();
        return $ci->auth_model->get_user($user_id);
    }
}

//admin url
if (!function_exists('admin_url')) {
    function admin_url()
    {
        return base_url() . get_route('admin', true);
    }
}

//dashboard url
if (!function_exists('dashboard_url')) {
    function dashboard_url()
    {
        return lang_base_url() . get_route('dashboard', true);
    }
}

//get route
if (!function_exists('get_route')) {
    function get_route($key, $slash = false)
    {
        $ci =& get_instance();
        $route = $key;
        if (!empty($ci->routes->$key)) {
            $route = $ci->routes->$key;
            if ($slash == true) {
                $route .= '/';
            }
        }
        return $route;
    }
}

//get translated message
if (!function_exists('trans')) {
    function trans($string)
    {
        $ci =& get_instance();
        if (!empty($ci->language_translations[$string])) {
            return $ci->language_translations[$string];
        }
        return "";
    }
}


//print old form data
if (!function_exists('old')) {
    function old($field)
    {
        $ci =& get_instance();
        if (isset($ci->session->flashdata('form_data')[$field])) {
            return html_escape($ci->session->flashdata('form_data')[$field]);
        }
    }
}

//get settings
if (!function_exists('get_settings')) {
    function get_settings()
    {
        $ci =& get_instance();
        $ci->load->model('settings_model');
        return $ci->settings_model->get_settings();
    }
}

//get general settings
if (!function_exists('get_general_settings')) {
    function get_general_settings()
    {
        $ci =& get_instance();
        $ci->load->model('settings_model');
        return $ci->settings_model->get_general_settings();
    }
}

//clean number
if (!function_exists('clean_number')) {
    function clean_number($num)
    {
        $ci =& get_instance();
        $num = @trim($num);
        $num = $ci->security->xss_clean($num);
        $num = intval($num);
        return $num;
    }
}

//clean string
if (!function_exists('clean_str')) {
    function clean_str($str)
    {
        $ci =& get_instance();
        $str = trim($str);
        $str = strip_tags($str);
        $str = $ci->security->xss_clean($str);
        $str = remove_special_characters($str, false);
        return $str;
    }
}

//remove special characters
if (!function_exists('remove_special_characters')) {
    function remove_special_characters($str, $is_slug = false)
    {
        $str = trim($str);
        $str = str_replace('#', '', $str);
        $str = str_replace(';', '', $str);
        $str = str_replace('!', '', $str);
        $str = str_replace('"', '', $str);
        $str = str_replace('$', '', $str);
        $str = str_replace('%', '', $str);
        $str = str_replace('(', '', $str);
        $str = str_replace(')', '', $str);
        $str = str_replace('*', '', $str);
        $str = str_replace('+', '', $str);
        $str = str_replace('/', '', $str);
        $str = str_replace('\'', '', $str);
        $str = str_replace('<', '', $str);
        $str = str_replace('>', '', $str);
        $str = str_replace('=', '', $str);
        $str = str_replace('?', '', $str);
        $str = str_replace('[', '', $str);
        $str = str_replace(']', '', $str);
        $str = str_replace('\\', '', $str);
        $str = str_replace('^', '', $str);
        $str = str_replace('`', '', $str);
        $str = str_replace('{', '', $str);
        $str = str_replace('}', '', $str);
        $str = str_replace('|', '', $str);
        $str = str_replace('~', '', $str);
        if ($is_slug == true) {
            $str = str_replace(" ", '-', $str);
            $str = str_replace("'", '', $str);
        }
        return $str;
    }
}

//remove forbidden characters
if (!function_exists('remove_forbidden_characters')) {
    function remove_forbidden_characters($str)
    {
        $str = str_replace(';', '', $str);
        $str = str_replace('"', '', $str);
        $str = str_replace('$', '', $str);
        $str = str_replace('%', '', $str);
        $str = str_replace('*', '', $str);
        $str = str_replace('/', '', $str);
        $str = str_replace('\'', '', $str);
        $str = str_replace('<', '', $str);
        $str = str_replace('>', '', $str);
        $str = str_replace('=', '', $str);
        $str = str_replace('?', '', $str);
        $str = str_replace('[', '', $str);
        $str = str_replace(']', '', $str);
        $str = str_replace('\\', '', $str);
        $str = str_replace('^', '', $str);
        $str = str_replace('`', '', $str);
        $str = str_replace('{', '', $str);
        $str = str_replace('}', '', $str);
        $str = str_replace('|', '', $str);
        $str = str_replace('~', '', $str);
        return $str;
    }
}

//get permission index key
if (!function_exists('get_permission_index')) {
    function get_permission_index($permission)
    {
        $array = get_permissions_array();
        foreach ($array as $key => $value) {
            if ($value == $permission) {
                return $key;
            }
        }
        return null;
    }
}

//get permission by index
if (!function_exists('get_permission_by_index')) {
    function get_permission_by_index($index)
    {
        $array = get_permissions_array();
        if (isset($array[$index])) {
            return $array[$index];
        }
        return null;
    }
}

//has permission
if (!function_exists('has_permission')) {
    function has_permission($permission, $user = null)
    {
        $ci =& get_instance();
        if ($user == null) {
            if ($ci->auth_check) {
                $user = $ci->auth_user;
            }
        }
        if (!empty($user) && !empty($user->permissions)) {
            //check super admin
            if ($user->permissions == "all") {
                return true;
            }
            $array = explode(',', $user->permissions);
            $index = get_permission_index($permission);
            if (!empty($index) && in_array($index, $array)) {
                return true;
            }
        }
        return false;
    }
}

//check permission
if (!function_exists('check_permission')) {
    function check_permission($permission)
    {
        if (!has_permission($permission)) {
            redirect(base_url());
            exit();
        }
    }
}

?>