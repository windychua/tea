<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Welcome extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->helper('form');
		$this->load->library('form_validation');
		$this->load->model('modeltoyota');
	}

	public function index()
	{	
		$data_header['menu'] = $this->modeltoyota->menu_header()->result_array();
		$this->load->view('header', $data_header);
		$data['mobil_slider'] = $this->modeltoyota->tampil_slider(3)->result_array();
		$data['mobil'] = $this->modeltoyota->tampil()->result_array();
		$this->load->view('index', $data);
		$data_footer['populer']= $this->modeltoyota->populer_info(5)->result_array();
		$this->load->view('footer', $data_footer);	
	}

	function tentang(){
		$data['mobil_slider'] = $this->modeltoyota->tampil_slider(4)->result_array();
		$data['tentang'] = $this->modeltoyota->tentang()->row();
		$data_header['menu'] = $this->modeltoyota->menu_header()->result_array();
		$this->load->view('headerabout', $data_header);
		$this->load->view('about', $data);
		$data_footer['populer']= $this->modeltoyota->populer_info(5)->result_array();
		$this->load->view('footer', $data_footer);	
	}

	function galeri_produk($id){
		$data_header['menu'] = $this->modeltoyota->menu_header()->result_array();
		$data['menu_jenis']= $this->modeltoyota->tampil($id)->result_array();
		$this->load->view('headerproduk', $data_header);
		$this->load->view('plans', $data);
		$data_footer['populer']= $this->modeltoyota->populer_info(5)->result_array();
		$this->load->view('footer', $data_footer);	
	}

	function galeri(){
		$data_header['menu'] = $this->modeltoyota->menu_header()->result_array();
		$data['galeri_album'] = $this->modeltoyota->album_galeri()->result_array();
		$this->load->view('headergaleri', $data_header);
		$this->load->view('plans_gallery', $data);
		$data_footer['populer']= $this->modeltoyota->populer_info(5)->result_array();
		$this->load->view('footer', $data_footer);	
	}

	function galeri_album($id){
		$data_header['menu'] = $this->modeltoyota->menu_header()->result_array();
		$data['galeri_album'] = $this->modeltoyota->album_galeri(1,$id)->result_array();
		$data['galeri_album_mobil'] = $this->modeltoyota->album_galeri(2,$id)->row();
		$this->load->view('headergaleri', $data_header);
		$this->load->view('plans_gallery_album', $data);
		$data_footer['populer']= $this->modeltoyota->populer_info(5)->result_array();
		$this->load->view('footer', $data_footer);	
	}

	function hubungi(){
		$data['hubungi'] = $this->modeltoyota->hubungi()->row();
		$data_header['menu'] = $this->modeltoyota->menu_header()->result_array();
		$this->load->view('headerhubungi', $data_header);
		$this->load->view('mail', $data);
		$data_footer['populer']= $this->modeltoyota->populer_info(5)->result_array();
		$this->load->view('footer', $data_footer);	
	}

	function simpan_kontak(){
		$data['nama_form'] = $this->input->post('Name');
		$data['email_form'] = $this->input->post('Email');
		$data['phone_form'] = $this->input->post('Telephone');
		$data['pesan_form'] = $this->input->post('Message');
		$this->modeltoyota->simpan_kontak($data);
		redirect(base_url('welcome/hubungi'));
	}

	function produk($id){
		$this->modeltoyota->populer($id);
		$data_header['menu'] = $this->modeltoyota->menu_header()->result_array();
		$data['mobil'] = $this->modeltoyota->tampil(4, $id)->row();
		$data['populer']= $this->modeltoyota->populer_info(10)->result_array();
		$this->load->view('headerproduk', $data_header);
		$this->load->view('single', $data);
		$data_footer['populer']= $this->modeltoyota->populer_info(5)->result_array();
		$this->load->view('footer', $data_footer);	
	}


}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */