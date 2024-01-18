<div class="container ">
    <div class="row mt-4">
        <div class="col-md-8">
            
            <div class="card">
                <div class="card-header">
                    <strong>TAMBAH DATA PENDUDUK</strong>
                </div>
            <div class="card-body">
                <form action="" method="post">

                    <label for="nama" class="form-label">Nama</label>
                    <input type="text" id="nama" name="nama" class="form-control mb-3 <?= (form_error('nama')) ? 'is-invalid' : ''; ?>" value="<?= set_value('nama') ?>">
                    <div id="validationServer04Feedback" class="invalid-feedback"><?= form_error('nama') ?></div>
                    
                    <label for="email" class="form-label">Email</label>
                    <input type="text" id="email" name="email" class="form-control mb-3 <?= (form_error('email')) ? 'is-invalid' : ''; ?>" value="<?= set_value('email') ?>">
                    <div id="validationServer04Feedback" class="invalid-feedback"><?= form_error('email') ?></div>
                    
                    <div class="row mb-3">
                        <div class="col-md-6">
                            <label for="nikProvinsi" class="form-label">Provinsi</label>
                            <select class="form-select" id="nikProvinsi" name="nikProvinsi">
                                <?php foreach($provinsis as $pronvinsi): ?>
                                    <option value="<?= $pronvinsi["id_provinsi"] ?>"><?= $pronvinsi["nama_provinsi"] ?></option>
                                    <?php endforeach;?>
                                </select>
                            </div>
                            <div class="col-md-6">
                                <label for="nikTanggalLahir" class="form-label">Tanggal Lahir</label>
                                <input type="date" id="nikTanggalLahir" name="nikTanggalLahir" class="form-control" min="1970-01-01" max="2002-12-31" value="<?= (set_value('nikTanggalLahir')) ? set_value('nikTanggalLahir') : '1970-01-01' ?>">
                            </div>
                        </div>
                        
                        <div class="row mb-3">
                            <div class="col-md-4">
                                <label for="nikPekerjaan" class="form-label">Pekerjaan</label>
                                <select class="form-select" id="nikPekerjaan" name="nikPekerjaan">
                                    <?php foreach($pekerjaans as $pekerjaan): ?>
                                        <option value="<?= $pekerjaan["id_pekerjaan"] ?>"><?= $pekerjaan["nama_pekerjaan"] ?></option>
                                    <?php endforeach;?>
                                    </select>
                                </div>
                                <div class="col-md-4">
                                    <label for="nikAgama" class="form-label">Agama</label>
                                    <select class="form-select" id="nikAgama" name="nikAgama">
                                        <?php foreach($agamas as $agama): ?>
                                            <option value="<?= $agama["id_agama"] ?>"><?= $agama["nama_agama"] ?></option>
                                            <?php endforeach;?>
                                        </select>
                                    </div>
                                    <div class="col-md-4">
                                        <label for="status" class="form-label">Status</label>
                                        <select class="form-select" id="status" name="status">
                                            <option value="Belum Menikah">Belum Menikah</option>
                                            <option value="Menikah">Menikah</option>
                                            <option value="Cerai">Cerai</option>
                                        </select>
                                    </div>
                                </div>
                                
                                <div class="form-group mb-3">
                                    <label for="alamat">Alamat</label>
                                    <textarea class="form-control <?= (form_error('alamat')) ? 'is-invalid' : ''; ?>"  name="alamat" id="alamat" rows="3"><?= set_value('alamat') ?></textarea>
                                    <div id="validationServer04Feedback" class="invalid-feedback"><?= form_error('alamat') ?></div>
                                </div>
                                
                                <button type="submit" name="tambah" class="btn btn-primary btn-lg">Tambah Data</button>
                            </form>
                        </div>
                    </div>
                </div>
  </div>
</div>
