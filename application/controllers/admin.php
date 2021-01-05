<?php
defined('BASEPATH') or exit('No direct script access allowed');

class admin extends CI_Controller
{

    function  __construct()
    {
        parent::__construct();
        $this->load->helper('url');
        $this->load->model('m_admin');

        if($this->session->userdata('status') != "login"){
			redirect(base_url("admin_login"));
		}
    }

    public function index()
    {
        $data['judul'] = "Rekap Content";
        $data['content'] = $this->m_admin->tampil_content()->result();
        $this->load->view('admin/template/header', $data);
        $this->load->view('admin/v_rekap_content', $data);
        $this->load->view('admin/template/footer', $data);
    }

    public function dashboard()
    {
        $data['judul'] = "Input Content";
        $this->load->view('admin/template/header', $data);
        $this->load->view('admin/v_dashboard', $data);
        $this->load->view('admin/template/footer', $data);
    }

    function tambah_content()
    {
        $judul = $this->input->post('judul');
        $isi = $this->input->post('isi');
        $tanggal = $this->input->post('tanggal');
        $kategori = $this->input->post('kategori');
        $file = $_FILES['file'];
        if ($file='') {
        } else {
   
            $config['upload_path']  = './assets/file';
            $config['allowed_types'] = 'jpg|jpeg|png|gif|doc|docx|pdf';

            $this->upload->initialize($config);
            
            if (!$this->upload->do_upload('file')) {
                // echo "Upload gagal"; die();
            } else {
                $file = $this->upload->data('file_name');
            }
        }

        $data = array(
            'judul' => $judul,
            'isi' => $isi,
            'tanggal' => $tanggal,
            'kategori' => $kategori,
            'file' => $file
        );
        $this->m_admin->tambah_content($data, 'content');
        redirect('admin/dashboard');
    }

    function hapus_content($id)
    {
        $where = array('id' => $id);
        $this->m_admin->hapus_content($where, 'content');
        redirect('admin');
    }

    function edit_content($id)
    {
        $where = array('id' => $id);
        $data['content'] = $this->m_admin->edit_content($where, 'content')->result();
        $data['judul'] = "Edit Content";
        $this->load->view('admin/template/header', $data);
        $this->load->view('admin/v_edit_content', $data);
        $this->load->view('admin/template/footer', $data);
    }

    function update_content()
    {
        $id = $this->input->post('id');
        $judul = $this->input->post('judul');
        $isi = $this->input->post('isi');
        $kategori = $this->input->post('kategori');
        $tanggal = $this->input->post('tanggal');
        $file = $_FILES['file'];
        if ($file='') {
        } else {
   
            $config['upload_path']  = './assets/file';
            $config['allowed_types'] = 'jpg|png|gif|doc|docx|pdf';

            $this->upload->initialize($config);
            
            if (!$this->upload->do_upload('file')) {
                $file = $this->input->post('file_lama');
            } else {
                $file = $this->upload->data('file_name');
            }
        }

        $data = array(
            'id' => $id,
            'judul' => $judul,
            'isi' => $isi,
            'kategori' => $kategori,
            'tanggal' => $tanggal,
            'file' => $file
        );

        $where = array(
            'id' => $id
        );

        $this->m_admin->update_content($where, $data, 'content');
        redirect('admin');
    }
}
