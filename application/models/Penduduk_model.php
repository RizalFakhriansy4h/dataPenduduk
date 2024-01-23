<?php
    class Penduduk_model extends CI_Model {

        public function getAllPenduduk() {
            
            return $this->db->get('profil')->result_array();
            
        }
        public function getAllProvinsi() {
            
        // $this->db->order_by('nama_provinsi');
            return $this->db->get('kode_provinsi')->result_array();
            
        }
        public function getAllPekerjaan() {
            
            $this->db->order_by('nama_pekerjaan', 'ASC');
            return $this->db->get('kode_pekerjaan')->result_array();
            
        }
        public function getAllAgama() {
            
            $this->db->order_by('nama_agama', 'ASC');
            return $this->db->get('kode_agama')->result_array();
            
        }
        public function getAllStatus() {
            
            return $this->db->select('status')->from('profil')->group_by('status')->get()->result_array();
            
        }


        public function getPendudukByValue($limit,$start, $keyword = "") {

            if ($keyword) {  
                $this->db->like('nama',$keyword);
                $this->db->or_like('email',$keyword);
                $this->db->or_like('status',$keyword);
                $this->db->join('kode_agama', 'kode_agama.id_agama = LEFT(RIGHT(profil.nik, 4), 2)', 'left');
                $this->db->join('kode_provinsi', 'kode_provinsi.id_provinsi = LEFT(profil.nik, 2)', 'left');
                $this->db->join('kode_pekerjaan', 'kode_pekerjaan.id_pekerjaan = RIGHT(profil.nik, 2)', 'left');
                $this->db->or_like('nama_agama', $keyword);
                $this->db->or_like('nama_provinsi', $keyword);
                $this->db->or_like('nama_pekerjaan', $keyword);

            }

            return $this->db->get('profil',$limit,$start)->result_array();

        }
        
        public function cariSpesifik($provinsi, $pekerjaan, $agama, $status) {
            $this->db->where('LEFT(nik, 2) =', $provinsi);
            $this->db->where('RIGHT(nik, 2) =', $pekerjaan);
            $this->db->where('LEFT(RIGHT(nik, 4), 2) =', $agama);
            $this->db->where('status', $status);
        
            return $this->db->get('profil')->result_array();
        }
        



        public function countAllPenduduk() {
            
            return $this->db->get('profil')->num_rows();
            
        }

        public function detail($id) {
        
            return $this->db->get_where('profil', ['id'=> $id])->row_array();
    
        }

        public function getNamaProvinsi($id) {
            $this->db->select('pv.*');
            $this->db->from('profil pr');
            $this->db->join('kode_provinsi pv', 'pv.id_provinsi = LEFT(pr.nik, 2)');
            $this->db->where('pr.id', $id);

            $query = $this->db->get();
            return $query->row_array();
        }
        
        public function getNamaPekerjaan($id) {
            $this->db->select('pk.*');

            $this->db->from('profil pr');
            $this->db->join('kode_pekerjaan pk', 'pk.id_pekerjaan = LEFT(RIGHT(pr.nik, 2), 2)');
            $this->db->where('pr.id', $id);
        
            $query = $this->db->get();
            return $query->row_array();
        }

        public function getNamaAgama($id) {

            $this->db->select('agm.*');
            $this->db->from('profil pr');
            $this->db->join('kode_agama agm', 'agm.id_agama = LEFT(RIGHT(pr.nik, 4), 2)');
            $this->db->where('pr.id', $id);
        
            $query = $this->db->get();
            return $query->row_array();
        }

        public function tambahDataPenduduk() {
            $nama = $this->input->post('nama',true);
            $email = $this->input->post('email',true);
            $alamat = $this->input->post('alamat',true);
            $status = $this->input->post('status',true);

            $nikProvinsi = $this->input->post('nikProvinsi',true);
            $TanggalLahir = $this->input->post('nikTanggalLahir',true);
            $nikPekerjaan = $this->input->post('nikPekerjaan',true);
            $nikAgama = $this->input->post('nikAgama',true);

            // UMUR
            $tanggal_lahir_obj = new DateTime($TanggalLahir);
            $tanggal_hari_ini_obj = new DateTime();
            $umur = $tanggal_lahir_obj->diff($tanggal_hari_ini_obj)->y;

            // FORM NIK TANGGAL
            $nikTanggalLahir = date('dmY', strtotime($TanggalLahir));

            $data = [
                "nik" => $nikProvinsi . $nikTanggalLahir . $nikAgama . $nikPekerjaan,
                "nama" => $nama,
                "alamat" => $alamat,
                "status" => $status,
                "umur" => $umur,
                "email" => $email,
            ];
            
            $this->db->insert('profil', $data);
            
        }

        public function editDataPenduduk() {

            $nama = $this->input->post('nama',true);
            $email = $this->input->post('email',true);
            $alamat = $this->input->post('alamat',true);
            $status = $this->input->post('status',true);

            $nikProvinsi = $this->input->post('nikProvinsi',true);
            $TanggalLahir = $this->input->post('nikTanggalLahir',true);
            $nikPekerjaan = $this->input->post('nikPekerjaan',true);
            $nikAgama = $this->input->post('nikAgama',true);

            // UMUR
            $tanggal_lahir_obj = new DateTime($TanggalLahir);
            $tanggal_hari_ini_obj = new DateTime();
            $umur = $tanggal_lahir_obj->diff($tanggal_hari_ini_obj)->y;

            // FORM NIK TANGGAL
            $nikTanggalLahir = date('dmY', strtotime($TanggalLahir));

            $data = [
                "nik" => $nikProvinsi . $nikTanggalLahir . $nikAgama . $nikPekerjaan,
                "nama" => $nama,
                "alamat" => $alamat,
                "status" => $status,
                "umur" => $umur,
                "email" => $email,
            ];
            
            $this->db->where('id', $this->input->post('idPenduduk'));
            $this->db->update('profil', $data);
            
        }

        public function getJumlahPendudukByAgamaStatus() {
            $this->db->select('agm.nama_agama, pr.status, COUNT(*) AS jumlah_penduduk');
            $this->db->from('profil pr');
            $this->db->join('kode_agama agm', 'agm.id_agama = LEFT(RIGHT(pr.nik, 4), 2)');
            $this->db->group_by('agm.nama_agama, pr.status');
        
            $subquery = "(SELECT COUNT(*) FROM profil pr_total WHERE agm.id_agama = LEFT(RIGHT(pr_total.nik, 4), 2)) AS total_agama";
            $this->db->select($subquery, FALSE); // FALSE untuk mencegah escape kolom
        
            $query = $this->db->get();
            return $query->result_array();
        }
        
        public function getPekerjaanInfoByProvinsi($namaProvinsi) {
            // Query for jumlah_pekerja
            $this->db->select('pv.nama_provinsi, pk.nama_pekerjaan, COUNT(*) AS jumlah_pekerja');
            $this->db->from('profil pr');
            $this->db->join('kode_provinsi pv', 'pv.id_provinsi = LEFT(pr.nik, 2)');
            $this->db->join('kode_pekerjaan pk', 'pk.id_pekerjaan = RIGHT(pr.nik, 2)');
            $this->db->where('pv.nama_provinsi', $namaProvinsi);
            $this->db->group_by('pv.nama_provinsi, pk.nama_pekerjaan');
            $query_jumlah_pekerja = $this->db->get();
    
            // Query for total_orang_provinsi
            $this->db->select('COUNT(*) as total_orang_provinsi');
            $this->db->from('profil pr_total');
            $this->db->join('kode_provinsi pv_total', 'pv_total.id_provinsi = LEFT(pr_total.nik, 2)');
            $this->db->where('pv_total.nama_provinsi', $namaProvinsi);
            $query_total_orang_provinsi = $this->db->get();
    
            // Query for total_pekerjaan_provinsi
            $this->db->select('COUNT(DISTINCT pk_total.nama_pekerjaan) as total_pekerjaan_provinsi');
            $this->db->from('profil pr_total');
            $this->db->join('kode_provinsi pv_total', 'pv_total.id_provinsi = LEFT(pr_total.nik, 2)');
            $this->db->join('kode_pekerjaan pk_total', 'pk_total.id_pekerjaan = RIGHT(pr_total.nik, 2)');
            $this->db->where('pv_total.nama_provinsi', $namaProvinsi);
            $query_total_pekerjaan_provinsi = $this->db->get();
    
            return array(
                'jumlah_pekerja' => $query_jumlah_pekerja->result_array(),
                'total_orang_provinsi' => $query_total_orang_provinsi->result_array(),
                'total_pekerjaan_provinsi' => $query_total_pekerjaan_provinsi->result_array(),
            );
        }
    
       

    }