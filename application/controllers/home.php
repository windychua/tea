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
	    $data_header['title'] = 'Tea Shop';
		$data_header['description'] = 'Tea Shop adalah salah satu shop cafe di kota malang';
		$data_header['keyword'] = 'Tea Shop';
		$data_header['aktif'] = 'tentang';
		$data_header['menu']   = $this->Model->menu_header()->result_array();
		$this->load->view('header', $data_header);
		
		$data['tampil_slider'] = $this->Model->tampil_slider(3)->result_array();
		$data['home'] 	   = $this->Model->tampil()->result_array();
		
		$data['galeri_album'] = $this->Model->album_galeri(5)->result_array();
		$this->load->view('about', $data);
		//$data_footer['terbaru'] = $this->Model->terbaru(5)->result_array();
	    $this->load->view('footer');	
	}

	public function produk(){
	    $data_header['title'] = 'Tea Shop';
		$data_header['description'] = 'Tea Shop adalah salah satu shop cafe di kota malang';
		$data_header['keyword'] = 'Tea Shop';
		$data_header['aktif'] = 'produk';
		$data_header['menu']   = $this->Model->menu_header()->result_array();
		$this->load->view('header', $data_header);
		
		$data['tampil_slider'] = $this->Model->tampil_slider(3)->result_array();
		$data['home'] 	   = $this->Model->tampil()->result_array();
		
		$data['galeri_album'] = $this->Model->album_galeri(5)->result_array();
		$this->load->view('produk', $data);
		//$data_footer['terbaru'] = $this->Model->terbaru(5)->result_array();
	    $this->load->view('footer');	
	}

	public function foto(){
	    $data_header['title'] = 'Tea Shop';
		$data_header['description'] = 'Tea Shop adalah salah satu shop cafe di kota malang';
		$data_header['keyword'] = 'Tea Shop';
		$data_header['aktif'] = 'foto';
		$data_header['menu']   = $this->Model->menu_header()->result_array();
		$this->load->view('header', $data_header);
		
		$data['tampil_slider'] = $this->Model->tampil_slider(3)->result_array();
		$data['home'] 	   = $this->Model->tampil()->result_array();
		
		$data['galeri_album'] = $this->Model->album_galeri(5)->result_array();
		$this->load->view('foto', $data);
		//$data_footer['terbaru'] = $this->Model->terbaru(5)->result_array();
	    $this->load->view('footer');	
	}

	public function contact(){
	    $data_header['title'] = 'Tea Shop';
		$data_header['description'] = 'Tea Shop adalah salah satu shop cafe di kota malang';
		$data_header['keyword'] = 'Tea Shop';
		$data_header['aktif'] = 'contact';
		$data_header['menu']   = $this->Model->menu_header()->result_array();
		$this->load->view('header', $data_header);
		
		$data['tampil_slider'] = $this->Model->tampil_slider(3)->result_array();
		$data['home'] 	   = $this->Model->tampil()->result_array();
		
		$data['galeri_album'] = $this->Model->album_galeri(5)->result_array();
		$this->load->view('contact', $data);
		//$data_footer['terbaru'] = $this->Model->terbaru(5)->result_array();
	    $this->load->view('footer');	
	}
	

	function galeri_room($id){
	    $galeri_meta = $this->Model->tampil($id)->row();
	    $data_header['title'] = @$galeri_meta->detail_title_meta;
		$data_header['description'] = @$galeri_meta->detail_deskripsi_meta;
		$data_header['keyword'] = @$galeri_meta->detail_keyword_meta;
		$data_header['aktif'] = 'paket';
		$data_header['menu'] = $this->Model->menu_header()->result_array();
		$data['room_nama']= $this->Model->tampil($id)->row();
		$data['room_jenis']= $this->Model->tampil($id)->result_array();
		$this->load->view('headerproduk', $data_header);
		$this->load->view('room', $data);
		//$data_footer['terbaru'] = $this->Model->terbaru(5)->result_array();
		$this->load->view('footer');	
	}
	
	function galleri(){
	    $data_header['title'] = 'Anisa Tour And Travel';
		$data_header['description'] = 'Anisa Tour And Travel adalah salah satu travel di kota malang';
		$data_header['keyword'] = 'Anisa Tour And Travel';
		$data_header['menu'] = $this->Model->menu_header()->result_array();
		$data['galeri_album'] = $this->Model->album_galeri()->result_array();
		$this->load->view('headerfoto', $data_header);
		$this->load->view('gallery', $data);
		//$data_footer['terbaru'] = $this->Model->terbaru(5)->result_array();
		$this->load->view('footer');	
	}
	
	function room(){
        
		$data_header['title'] = 'Anisa Tour And Travel';
		$data_header['description'] = 'Anisa Tour And Travel adalah salah satu travel di kota malang';
		$data_header['keyword'] = 'Anisa Tour And Travel';
		$data['produk'] 	 = $this->Model->kategori_produk()->result_array();
		$this->load->view('headerproduk', $data_header);
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
	   $data_header['menu'] = $this->Model->menu_header()->result_array();
		$data['galeri_album'] = $this->Model->album_galeri(1,$id)->result_array();
		$data['galeri_album_room'] = $this->Model->album_galeri(2,$id)->row();
		$this->load->view('headerfoto', $data_header);
		$this->load->view('gallery_album', $data);
		//$data_footer['terbaru'] = $this->Model->terbaru(5)->result_array();
		$this->load->view('footer');	
	}
	
	function hubungi(){
	   	$data_header['title'] = 'Anisa Tour And Travel';
		$data_header['description'] = 'Anisa Tour And Travel adalah salah satu travel di kota malang';
		$data_header['keyword'] = 'Anisa Tour And Travel';
		$data['hubungi'] = $this->Model->hubungi()->row();
		$data_header['menu'] = $this->Model->menu_header()->result_array();
		$this->load->view('headerkontak', $data_header);
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
