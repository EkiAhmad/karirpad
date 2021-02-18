<?php
class EmpModel extends CI_Model{
	function employeeList(){
		$hasil=$this->db->get('master_barang');
		return $hasil->result();
	}
	function saveEmp(){
		$data = array(				
				'nama' 			=> $this->input->post('nama'), 
				'kategori' 			=> $this->input->post('kategori'), 
				'harga' 	=> $this->input->post('harga'), 
			);
		$result=$this->db->insert('master_barang',$data);
		return $result;
	}
	function updateEmp(){
		$id=$this->input->post('id');
		$nama=$this->input->post('nama');
		$kategori=$this->input->post('kategori');
		$harga=$this->input->post('harga');
		$this->db->set('nama', $nama);
		$this->db->set('kategori', $kategori);
		$this->db->set('harga', $harga);
		$this->db->where('id', $id);
		$result=$this->db->update('master_barang');
		return $result;	
	}
	function deleteEmp(){
		$id=$this->input->post('id');
		$this->db->where('id', $id);
		$result=$this->db->delete('master_barang');
		return $result;
	}	
}