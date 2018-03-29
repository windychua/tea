<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Model extends CI_Model {

	public function menu_header(){
		return $this->db->get('tb_kategori_produk');
	}

	public function tampil($id=null, $status=null){
		if($id==null){
			$this->db->limit(6);
		}else{
			if($status==null){
				$this->db->where('tb_kategori_produk.id_produk', $id);
			}else{
				$this->db->where('tb_produk.id_detail', $status);
			}
		}
		
		$this->db->order_by('tb_kategori_produk.id_produk', 'DESC');
		$this->db->group_by('tb_produk.id_detail');
		$this->db->select('tb_produk.*,tb_kategori_produk.*');
		$this->db->from('tb_produk');
		$this->db->join('tb_kategori_produk','tb_kategori_produk.id_produk=tb_produk.id_produk','left outer');
		return $this->db->get();
	}	

	public function tampil_slider($limit){
		return $this->db->get('tb_slider');
	}
	
	public function tentang(){
		return $this->db->get('tb_about');
	}
	
	public function album_galeri($status=null, $id=null){
		$this->db->from('tb_album');
		if($status==1){
			$this->db->join('tb_foto', 'tb_foto.id_album=tb_album.id_album');
			$this->db->where('tb_foto.id_album', $id);
		}else if($status==2){
			$this->db->where('id_album',$id);
		}else if($status==5){
			$this->db->join('tb_foto', 'tb_foto.id_album=tb_album.id_album');
			$this->db->order_by('tb_foto.id_gallery','DESC');
			$this->db->limit(9);
		}	
		return $this->db->get();
	}
	
	public function kategori_produk(){
		$this->db->from('tb_kategori_produk');
		return $this->db->get();
	}	
	
	public function hubungi(){
		return $this->db->get('tb_kontak');
	}

	public function simpan_kontak($data){
		$this->db->insert('form_kontak', $data);
	}
	
	public function terbaru($limit){
		$this->db->limit($limit);
		$this->db->order_by('id_detail', 'DESC');
		return $this->db->get('tb_produk');
	}
}

/* End of file modeltoyota.php */
/* Location: ./application/models/modeltoyota.php */