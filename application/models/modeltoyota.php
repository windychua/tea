<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Modeltoyota extends CI_Model {

	public function menu_header(){
		return $this->db->get('menu_utama');
	}

	public function tampil($id=null, $status=null){
		if($id==null){
			$this->db->limit(5);
		}else{
			if($status==null){
				$this->db->where('id_menu', $id);
			}else{
				$this->db->where('menu_detail.id_detail', $status);
			}
		}
		
		$this->db->order_by('menu_detail.id_detail', 'DESC');
		$this->db->group_by('menu_detail_gambar.id_detail');
		$this->db->from('menu_detail');
		$this->db->join('menu_detail_gambar','menu_detail.id_detail=menu_detail_gambar.id_detail');
		return $this->db->get();
	}	

	public function tampil_slider($limit){
		$this->db->order_by('menu_detail.id_menu', 'DESC');
		$this->db->group_by('menu_utama.id_menu');
		$this->db->from('menu_utama');
		$this->db->join('menu_detail','menu_utama.id_menu=menu_detail.id_menu');
		$this->db->join('menu_detail_gambar','menu_detail.id_detail=menu_detail_gambar.id_detail');
		return $this->db->get();
	}

	public function tentang(){
		return $this->db->get('tentang_kami');
	}

	public function populer($id){
		$this->db->where('id_detail', $id);
		$this->db->set('detail_baca', 'detail_baca+1', FALSE);
		$this->db->update('menu_detail');
	}

	public function populer_info($no){
		$this->db->limit($no);
		$this->db->order_by('detail_baca', 'DESC');
		$this->db->where('detail_baca !=', 0);
		return $this->db->get('menu_detail');
	}

	public function album_galeri($status=null, $id=null){
		$this->db->from('album_gallery');
		if($status==1){
			$this->db->join('gallery', 'album_gallery.id_album=gallery.id_album');
			$this->db->where('gallery.id_album', $id);
		}else if($status==2){
			$this->db->where('id_album',$id);
		}
		return $this->db->get();
	}

	public function hubungi(){
		return $this->db->get('kontak_kami');
	}

	public function simpan_kontak($data){
		$this->db->insert('form_kontak', $data);
	}

}

/* End of file modeltoyota.php */
/* Location: ./application/models/modeltoyota.php */