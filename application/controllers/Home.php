<?php

class Home extends CI_Controller {

	public function index($nama="")
	{
        $data['judul'] = "Home";
        $data['nama'] = $nama;

		$this->load->view('templates/header',$data);
		$this->load->view('home/index',$data);
		$this->load->view('templates/footer');
	}

	public function about() {

        $data['judul'] = "About Me";

        $this->load->view("templates/header", $data);
        $this->load->view("about/index");
        $this->load->view("templates/footer");
    
    }
}
