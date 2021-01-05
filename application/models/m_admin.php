<?php

class m_admin extends CI_Model
{   
    function cek_login($table,$where){		
		return $this->db->get_where($table,$where);
	}	
    function tampil_content()
    {
        return $this->db->get('content');
    }
    function tambah_content($data, $table)
    {
        $this->db->insert($table, $data);
    }
    function hapus_content($where, $table)
    {
        $this->db->where($where);
        $this->db->delete($table);
    }
    function edit_content($where, $table)
    {
        return $this->db->get_where($table, $where);
    }
    function update_content($where, $data, $table)
    {
        $this->db->where($where);
        $this->db->update($table, $data);
    }
}