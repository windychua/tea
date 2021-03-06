<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Home extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->helper('form');
		$this->load->library('form_validation');
		$this->load->model('Model');
	}

	public function index()
	{	
		$data_header['title'] = 'Tea Shop';
		$data_header['description'] = 'Tea Shop adalah salah satu shop cafe di kota malang';
		$data_header['keyword'] = 'Tea Shop';
		$data_header['aktif'] = 'beranda';
		$data_header['menu']   = $this->Model->menu_header()->result_array();
		$this->load->view('header', $data_header);
		
		$data['tampil_slider'] = $this->Model->tampil_slider(3)->result_array();
		$data['home'] 	   = $this->Model->tampil()->result_array();
		
		$data['galeri_album'] = $this->Model->album_galeri(5)->result_array();
		// print_r($this->db->last_query());
		$this->load->view('index', $data);
		
		$data_footer['terbaru'] = $this->Model->terbaru(5)->result_array();
		$this->load->view('footer');
	}
	
	public function tentang(){
		$tentang_meta = $this->Model->tentang()->row();
		$data_header['title'] = @$tentang_meta->about_title_meta;
		$data_header['description'] = @$tentang_meta->about_deskripsi_meta;
		$data_header['keyword'] = @$tentang_meta->about_keyword_meta;
		$data_header['aktif'] = 'tentang';
		$data_header['tentang']=$this->Model->tentang()->row();
		$data['tampil_slider'] = $this->Model->tampil_slider(4)->result_array();
		$data['tentang'] = $this->Model->tentang()->row();
		//$data_header['menu'] = $this->Model->menu_header()->result_array();
		$this->load->view('header', $data_header);
		// echo var_dump($data);
		$this->load->view('about', $data);
		//$data_footer['terbaru'] = $this->Model->terbaru(5)->result_array();
		$this->load->view('footer');
	}

	public function produk($id){
		$produk_meta = $this->Model->tampil(4, $id)->row();
		$data_header['title'] = @$produk_meta->detail_title_meta;
		$data_header['description'] = @$produk_meta->detail_deskripsi_meta;
		$data_header['keyword'] = @$produk_meta->detail_keyword_meta;
		$data_header['aktif'] = 'room';
		$data_header['tentang']=$this->Model->tentang()->row();
		$data['terbaru'] = $this->Model->sidebar(4)->result_array();
		//$data_header['menu'] = $this->Model->menu_header()->result_array();
		$data['room'] = $this->Model->tampil(4, $id)->row();
		// $data['terbaru'] = $this->Model->terbaru(5)->result_array();
		$this->load->view('header', $data_header);
		// echo var_dump($data);
		$this->load->view('single', $data);

		$this->load->view('footer');		
	}

	function galeri_room($id){
		$galeri_meta = $this->Model->tampil($id)->row();
		$data_header['title'] = @$galeri_meta->detail_title_meta;
		$data_header['description'] = @$galeri_meta->detail_deskripsi_meta;
		$data_header['keyword'] = @$galeri_meta->detail_keyword_meta;
		$data_header['aktif'] = 'room';
		$data_header['menu'] = $this->Model->menu_header()->result_array();
		$data['room_nama']= $this->Model->tampil($id)->row();
		$data['room_jenis']= $this->Model->tampil($id)->result_array();
		$data['terbaru'] = $this->Model->sidebar(4)->result_array();
		//$data_footer['terbaru'] = $this->Model->terbaru(5)->result_array();

		$this->load->view('header', $data_header);
		// echo json_encode($data);
		$this->load->view('room', $data);
		$this->load->view('footer');	
	}

	function tampil_gallery(){
		$data_header = $this->getHeader('galleri');
		$data['list_album'] = $this->Model->album(0)->result();
		$data['list_foto'] = $this->Model->foto(0)->result();
		$this->load->view('header',$data_header);
		$this->load->view('gallery_full',$data);
		$this->load->view('footer');
	}
	
	function galleri(){
		$data_header['title'] = 'Tea Shop';
		$data_header['description'] = 'Tea Shop adalah salah satu shop cafe di kota malang';
		$data_header['keyword'] = 'Tea Shop';
		$data_header['menu'] = $this->Model->menu_header()->result_array();
		$data_header['aktif'] = 'gallery';
		$data['galeri_album'] = $this->Model->album_galeri()->result_array();
		
		$this->load->view('header', $data_header);
		echo var_dump($data);
		$this->load->view('gallery', $data);
		//$data_footer['terbaru'] = $this->Model->terbaru(5)->result_array();
		$this->load->view('footer');	
	}
	
	function room(){
		$data_header['title'] = 'Tea Shop';
		$data_header['description'] = 'Tea Shop adalah salah satu shop cafe di kota malang';
		$data_header['keyword'] = 'Tea Shop';
		$data_header['aktif'] = 'room';
		$data_header['tentang']=$this->Model->tentang()->row();
		$data['produk'] 	 = $this->Model->kategori_produk()->result_array();
		$data['terbaru'] = $this->Model->sidebar(4)->result_array();
		$this->load->view('header', $data_header);
		// echo var_dump($data);

		$this->load->view('kategori_room', $data);
		//$data_footer['terbaru'] = $this->Model->terbaru(5)->result_array();
		$this->load->view('footer');
	}	
	
	function galeri_album($id){
		$galeri_meta = $this->Model->album_galeri(2,$id)->row();
		$data_header['title'] = @$galeri_meta->album_title_meta;
		$data_header['description'] = @$galeri_meta->album_deskripsi_meta;
		$data_header['keyword'] = @$galeri_meta->album_keyword_meta;
		$data_header['aktif'] = 'galeri';
		$data_header['tentang']=$this->Model->tentang()->row();
		$data_header['menu'] = $this->Model->menu_header()->result_array();
		$data['galeri_album'] = $this->Model->album_galeri(1,$id)->result_array();
		$data['galeri_album_room'] = $this->Model->album_galeri(2,$id)->row();
		$this->load->view('header', $data_header);
		echo var_dump($data);
		$this->load->view('gallery_album', $data);
		//$data_footer['terbaru'] = $this->Model->terbaru(5)->result_array();
		$this->load->view('footer');	
	}
	
	function hubungi(){
		$data_header['title'] = 'Tea Shop';
		$data_header['description'] = 'Tea Shop adalah salah satu shop cafe di kota malang';
		$data_header['keyword'] = 'Tea Shop';
		$data_header['aktif'] = 'hubungi';
		$data_header['menu']   = $this->Model->menu_header()->result_array();
		$data['hubungi'] = $this->Model->hubungi()->row();
		$this->load->view('header', $data_header);
		$this->load->view('mail', $data);
		//$data_footer['terbaru'] = $this->Model->terbaru(5)->result_array();
		$this->load->view('footer');
	}
	
	function simpan_kontak(){
		$data['nama_form'] = $this->input->post('Name');
		$data['email_form'] = $this->input->post('Email');
		$data['phone_form'] = $this->input->post('Telephone');
		$data['pesan_form'] = $this->input->post('Message');
		$this->Model->simpan_kontak($data);
		$this->session->set_flashdata("pesan", "<div class='alert alert-success alert-dismissible' role='alert'>
			<button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button>
			<strong>Pesan Berhasil Dikirim!</strong>
			</div>");
		redirect(base_url('Home/hubungi'));
	}

}

/* End of file welcome.php */
