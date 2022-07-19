<?php
defined('BASEPATH') or exit('No direct script access allowed');
//get route
function getr($key, $rts)
{
    if (!empty($rts)) {
        if (!empty($rts->$key)) {
            return $rts->$key;
        }
    }
    return $key;
}

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	https://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my-controller/index	-> my_controller/index
|		my-controller/my-method	-> my_controller/my_method
*/
$rts = $this->config->item('routes');

$route['default_controller'] = 'frontend_controller';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;

$general_settings = $this->config->item('general_settings');
$languages = $this->config->item('languages');
foreach ($languages as $language) {
    if ($language->status == 1) {
        $key = "";
        if ($general_settings->site_lang != $language->id) {
            $key = $language->short_form . '/';
            $route[$language->short_form] = 'frontend_controller/index';
        }
        
        //your custom route
    }
}


/*
 *
 * BACKEND / ADMIN ROUTES
 *
 */
$route[getr('admin', $rts)] = 'backend_controller/index';
//login
$route[getr('r', $rts) . '/authentication'] = 'auth_controller/admin_login';
//logout
$route[getr('logout', $rts)] = 'auth_controller/logout';

//your custom route