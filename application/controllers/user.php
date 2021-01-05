<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class user extends CI_Controller {

    function  __construct(){
		parent::__construct();
		$this->load->helper('url');
		// $this->load->model('info');
	}
    
	public function index() 
	{   
		$data['slide'] = $this->db->get_where('content',array('kategori'=>'slide_home'))->result();
		$data['content'] = $this->db->get_where('content',array('kategori'=>'home'))->result();
		$data['judul'] = "Home";
        $this->load->view('user/template/header',$data);
        $this->load->view('user/v_home',$data);
		$this->load->view('user/template/footer',$data);	
		
	}

	public function ekstrakurikuler() 
	{   
		$data['content'] = $this->db->get_where('content',array('kategori'=>'ekstrakulikuler'))->result();
		// print_r($data['content']);
        $data['judul'] = "ekstrakurikuler";
        $this->load->view('user/template/header',$data);
        $this->load->view('user/v_ekstrakurikuler',$data);
		$this->load->view('user/template/footer',$data);	
		
	}
	
	public function fasilitas() 
	{   
		$data['content'] = $this->db->get_where('content',array('kategori'=>'fasilitas'))->result();
		// print_r($data['content']);
        $data['judul'] = "fasilitas";
        $this->load->view('user/template/header',$data);
        $this->load->view('user/v_fasilitas',$data);
		$this->load->view('user/template/footer',$data);	
		
	}

	public function kegiatan_rutin() 
	{   
		$data['content'] = $this->db->get_where('content',array('kategori'=>'kegiatan_rutin'))->result();
        $data['judul'] = "kegiatan_rutin";
        $this->load->view('user/template/header',$data);
        $this->load->view('user/v_kegiatan_rutin',$data);
		$this->load->view('user/template/footer',$data);	
		
	}

	public function acara_khusus() 
	{   
		$data['content'] = $this->db->get_where('content',array('kategori'=>'acara_khusus'))->result();
        $data['judul'] = "acara khusus";
        $this->load->view('user/template/header',$data);
        $this->load->view('user/v_acara_khusus',$data);
		$this->load->view('user/template/footer',$data);	
		
	}
	public function prestasi() 
	{   
		$data['content'] = $this->db->get_where('content',array('kategori'=>'prestasi_sekolah'))->result();
        $data['judul'] = "prestasi";
        $this->load->view('user/template/header',$data);
        $this->load->view('user/v_prestasi',$data);
		$this->load->view('user/template/footer',$data);	
		
	}

	public function materi() 
	{   
		$data['content'] = $this->db->get_where('content',array('kategori'=>'materi'))->result();
        $data['judul'] = "materi";
        $this->load->view('user/template/header',$data);
        $this->load->view('user/v_materi',$data);
		$this->load->view('user/template/footer',$data);	
		
	}

	public function tentang() 
	{   
        $data['judul'] = "tentang";
        $this->load->view('user/template/header',$data);
        $this->load->view('user/v_tentang',$data);
		$this->load->view('user/template/footer',$data);	
		
	}
	
}