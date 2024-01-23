<?php 
    class Penduduk extends CI_Controller {

        public function index() {


            // // tangkap input keyword
            // if ($this->input->post('submit')) {
                
            //     $data["keyword"] = $this->input->post('keyword');
            //     $this->session->set_userdata('keyword', $data['keyword']);
            // } else {

            //     $data['keyword'] = $this->session->userdata('keyword');
            // }

            // // config
            // $this->db->like('nama', $data['keyword']);
            // $this->db->or_like('email', $data['keyword']);
            // $this->db->or_like('status', $data['keyword']);
            // $this->db->from('profil');
            // $this->db->join('kode_agama', 'kode_agama.id_agama = LEFT(RIGHT(profil.nik, 4), 2)', 'left');
            // $this->db->join('kode_provinsi', 'kode_provinsi.id_provinsi = LEFT(profil.nik, 2)', 'left');
            // $this->db->join('kode_pekerjaan', 'kode_pekerjaan.id_pekerjaan = RIGHT(profil.nik, 2)', 'left');
            // $this->db->or_like('nama_agama', $data['keyword']);
            // $this->db->or_like('nama_provinsi', $data['keyword']);
            // $this->db->or_like('nama_pekerjaan', $data['keyword']);

            // $config['total_rows'] = $this->db->count_all_results();
            // $config['per_page']= 15;
            
            // // initialize
            // $this->pagination->initialize($config);
            
            // KOMPONEN UNTUK CARI SPESIFIK
            $data["provinsis"] = $this->Penduduk_model->getAllProvinsi();
            $data["pekerjaans"] = $this->Penduduk_model->getAllPekerjaan();
            $data["agamas"] = $this->Penduduk_model->getAllAgama();
            $data["status"] = $this->Penduduk_model->getAllStatus();
            
            $data['judul'] = "Penduduk";
            // $data['total_rows'] = $config['total_rows'];
            $data["start"] = $this->uri->segment(3);
            // $data["penduduk"] = $this->Penduduk_model->getPendudukByValue( $config["per_page"], $data["start"], $data["keyword"]);
            
            // CEK JIKA TOMBOL SPESIFIK DIGUNAKAN
            if ($this->input->post('tombolCariSpesifik')) {
                $data["cariSpesifikProvinsi"] = $this->input->post('cariSpesifikProvinsi');
                $data["cariSpesifikPekerjaan"] = $this->input->post('cariSpesifikPekerjaan');
                $data["cariSpesifikAgama"] = $this->input->post('cariSpesifikAgama');
                $data["cariSpesifikStatus"] = $this->input->post('cariSpesifikStatus');
                
                $data["penduduk"] = $this->Penduduk_model->cariSpesifik($data["cariSpesifikProvinsi"], $data["cariSpesifikPekerjaan"], $data["cariSpesifikAgama"], $data["cariSpesifikStatus"]);
                $this->session->set_userdata('tombolCariSpesifik', '1');

            }

            $this->load->view("templates/header", $data);
            $this->load->view("penduduk/index", $data);
            $this->load->view("templates/footer");
        }

    
        public function detail($id){
            $data['penduduk'] = $this->Penduduk_model->detail($id);
            $data['namaProvinsi'] = $this->Penduduk_model->getNamaProvinsi($id);
            $data['namaPekerjaan'] = $this->Penduduk_model->getNamaPekerjaan($id);
            $data['namaAgama'] = $this->Penduduk_model->getNamaAgama($id);
            $data['judul'] = "Detail Penduduk";
            
            $this->load->view('templates/header',$data);
            $this->load->view('penduduk/detail',$data);
            $this->load->view('templates/footer');
            
        }
        
        
        public function reset(){
            $this->session->sess_destroy();
            redirect('penduduk');
        }
        
        public function tambah(){
            
            $data['judul'] = "Tambah Data Penduduk";
            $data["provinsis"] = $this->Penduduk_model->getAllProvinsi();
            $data["pekerjaans"] = $this->Penduduk_model->getAllPekerjaan();
            $data["agamas"] = $this->Penduduk_model->getAllAgama();
            
            $this->form_validation->set_rules('nama', 'Nama', 'required|trim', array(
                'required' => 'Kolom %s harus diisi.'
            ));
            
            $this->form_validation->set_rules('email', 'Email', 'required|trim|valid_email|is_unique[profil.email]', array(
                'required' => 'Kolom %s harus diisi.',
                'valid_email' => 'Kolom %s harus berisi email yang valid.',
                'is_unique' => 'Email ini sudah digunakan.'
            ));
            $this->form_validation->set_rules('alamat', 'Alamat', 'required|trim', array(
                'required' => 'Kolom %s harus diisi.'
            ));
            
            
            if( $this->form_validation->run() == FALSE) {
                
                $this->load->view('templates/header',$data);
                $this->load->view('penduduk/tambah',$data);
                $this->load->view('templates/footer');
                
            } else {
                
                $this->Penduduk_model->tambahDataPenduduk();
                $this->session->set_flashdata('flash','Ditambahkan');
                redirect('penduduk');
                
            }
            
        }
        
        
        
        public function hapus($id){
            $this->db->delete('profil',['id'=> $id]);
            $this->session->set_flashdata('flash','Dihapus');
    		redirect('penduduk');
        }
        
        public function edit($id){
            $data['judul'] = "Edit Data Penduduk";

            // =============================================================

            $data['penduduk'] = $this->Penduduk_model->detail($id);
            $data['namaProvinsi'] = $this->Penduduk_model->getNamaProvinsi($id);
            $data['namaPekerjaan'] = $this->Penduduk_model->getNamaPekerjaan($id);
            $data['namaAgama'] = $this->Penduduk_model->getNamaAgama($id);

            // =============================================================

            $data["status"] = $this->Penduduk_model->getAllStatus();
            $data["provinsis"] = $this->Penduduk_model->getAllProvinsi();
            $data["pekerjaans"] = $this->Penduduk_model->getAllPekerjaan();
            $data["agamas"] = $this->Penduduk_model->getAllAgama();
            
            $this->form_validation->set_rules('nama', 'Nama', 'required|trim', array(
                'required' => 'Kolom %s harus diisi.'
            ));
            
            $this->form_validation->set_rules('email', 'Email', 'required|trim|valid_email', array(
                'required' => 'Kolom %s harus diisi.',
                'valid_email' => 'Kolom %s harus berisi email yang valid.'
            ));
            $this->form_validation->set_rules('alamat', 'Alamat', 'required|trim', array(
                'required' => 'Kolom %s harus diisi.'
            ));
            

            if( $this->form_validation->run() == FALSE) {
                
                $this->load->view('templates/header',$data);
                $this->load->view('penduduk/edit',$data);
                $this->load->view('templates/footer');
                
            } else {
                
                $this->Penduduk_model->editDataPenduduk();
			    $this->session->set_flashdata('flash','Diedit');
			    redirect('penduduk');
                
            }
	    
        }
        
        public function countStatus(){
            $data['judul'] = "Hitung Status Penduduk";
            $data["datas"] = $this->Penduduk_model->getJumlahPendudukByAgamaStatus();

            
            $this->load->view('templates/header',$data);
            $this->load->view('penduduk/count_status',$data);
            $this->load->view('templates/footer');
        }
        
        public function countPekerjaan(){
            $data['judul'] = "Hitung Pekerjaan Penduduk";
            $data["provinsis"] = $this->Penduduk_model->getAllProvinsi();
            $data["dataPekerjaan"] = $this->Penduduk_model->getPekerjaanInfoByProvinsi('');
            
            // ====================================================
            $keyword = $this->input->post("nikProvinsi");
            $tombolCari = $this->input->post("tombolKerjaPerubahan");
            $tombolReset = $this->input->post("tombolReset");
            
            if($tombolCari) {
                $data["dataPekerjaan"] = $this->Penduduk_model->getPekerjaanInfoByProvinsi($keyword);
                $this->session->set_userdata('keywordKerja', $keyword);
            }
            
            if($tombolReset){
                $this->session->sess_destroy();   
            }


            
            $this->load->view('templates/header',$data);
            $this->load->view('penduduk/count_pekerjaan',$data);
            $this->load->view('templates/footer');
        }
        
        
        
    }    