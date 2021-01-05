<?php
defined('BASEPATH') or exit('No direct script access allowed');

class admin_login extends CI_Controller
{   
    function  __construct()
    {
        parent::__construct();
        $this->load->helper('url');
        $this->load->model('m_admin');

    }


    public function index()
    {
        $data['judul'] = "login";
        $this->load->view('admin/v_login_admin', $data);
    }

    function aksi_login(){
		$username = $this->input->post('username');
		$password = $this->input->post('password');
		$where = array(
			'username' => $username,
			'password' => md5($password)
			);
		$cek = $this->m_admin->cek_login("admin",$where)->num_rows();
		if($cek > 0){
 
			$data_session = array(
				'nama' => $username,
				'status' => "login"
				);
 
			$this->session->set_userdata($data_session);
 
			redirect(base_url("admin"));
 
		}else{
			echo "Username dan password salah !";
		}
	}
 
	function logout(){
		$this->session->sess_destroy();
		redirect(base_url('admin_login/'));
	}

}