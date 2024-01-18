<?php
$tanggal = substr($penduduk["nik"], 2, 8);
$tahun = substr($tanggal, 4, 4);
$bulan = substr($tanggal, 2, 2);
$tanggal = substr($tanggal, 0, 2);
$tanggal_format = $tahun . '-' . $bulan . '-' . $tanggal;
?>

<div class="container">
    <div class="row mt-4">
        <div class="col-md-8">

            <div class="card">
                <div class="card-header">
                    <strong>EDIT DATA PENDUDUK</strong>
                </div>
                <div class="card-body">
                    <form action="" method="post">
                        <input type="hidden" value="<?= $penduduk["id"] ?>" name="idPenduduk">

                        <label for="nama" class="form-label">Nama</label>
                        <input type="text" id="nama" name="nama" class="form-control mb-3 <?= (form_error('nama')) ? 'is-invalid' : ''; ?>" value="<?= (set_value('nama')) ? set_value('nama') : $penduduk["nama"] ?>">
                        <div id="validationServer04Feedback" class="invalid-feedback"><?= form_error('nama') ?></div>

                        <label for="email" class="form-label">Email</label>
                        <input type="text" id="email" name="email" class="form-control mb-3 <?= (form_error('email')) ? 'is-invalid' : ''; ?>" value="<?= (set_value('email')) ? set_value('email') : $penduduk["email"] ?>">
                        <div id="validationServer04Feedback" class="invalid-feedback"><?= form_error('email') ?></div>

                        <div class="row mb-3">
                            <div class="col-md-6">
                                <label for="nikProvinsi" class="form-label">Provinsi</label>
                                <select class="form-select" id="nikProvinsi" name="nikProvinsi">
                                    <?php foreach ($provinsis as $provinsi) : ?>
                                        <?php if ($namaProvinsi["id_provinsi"] === $provinsi["id_provinsi"]) : ?>
                                            <option value="<?= $provinsi["id_provinsi"] ?>" selected><?= $provinsi["nama_provinsi"] ?></option>
                                        <?php else : ?>
                                            <option value="<?= $provinsi["id_provinsi"] ?>"><?= $provinsi["nama_provinsi"] ?></option>
                                        <?php endif; ?>
                                    <?php endforeach; ?>
                                </select>
                            </div>
                            <div class="col-md-6">
                                <label for="nikTanggalLahir" class="form-label">Tanggal Lahir</label>
                                <input type="date" id="nikTanggalLahir" name="nikTanggalLahir" class="form-control" min="1970-01-01" max="2002-12-31" value="<?= (set_value('nikTanggalLahir')) ? set_value('nikTanggalLahir') : $tanggal_format ?>">
                            </div>
                        </div>

                        <div class="row mb-3">
                            <div class="col-md-4">
                                <label for="nikPekerjaan" class="form-label">Pekerjaan</label>
                                <select class="form-select" id="nikPekerjaan" name="nikPekerjaan">
                                    <?php foreach ($pekerjaans as $pekerjaan) : ?>
                                        <?php if ($namaPekerjaan["id_pekerjaan"] === $pekerjaan["id_pekerjaan"]) : ?>
                                            <option value="<?= $pekerjaan["id_pekerjaan"] ?>" selected><?= $pekerjaan["nama_pekerjaan"] ?></option>
                                        <?php else : ?>
                                            <option value="<?= $pekerjaan["id_pekerjaan"] ?>"><?= $pekerjaan["nama_pekerjaan"] ?></option>
                                        <?php endif; ?>
                                    <?php endforeach; ?>
                                </select>
                            </div>
                            <div class="col-md-4">
                                <label for="nikAgama" class="form-label">Agama</label>
                                <select class="form-select" id="nikAgama" name="nikAgama">
                                    <?php foreach ($agamas as $agama) : ?>
                                        <?php if ($namaAgama["id_agama"] === $agama["id_agama"]) : ?>
                                            <option value="<?= $agama["id_agama"] ?>" selected><?= $agama["nama_agama"] ?></option>
                                        <?php else : ?>
                                            <option value="<?= $agama["id_agama"] ?>"><?= $agama["nama_agama"] ?></option>
                                        <?php endif; ?>
                                    <?php endforeach; ?>
                                </select>
                            </div>
                            <div class="col-md-4">
                                <label for="status" class="form-label">Status</label>
                                <select class="form-select" id="status" name="status">
                                    <?php foreach ($status as $statu) : ?>
                                        <?php if ($penduduk["status"] === $statu["status"]) : ?>
                                            <option value="<?= $statu["status"] ?>" selected><?= $statu["status"] ?></option>
                                        <?php else : ?>
                                            <option value="<?= $statu["status"] ?>"><?= $statu["status"] ?></option>
                                        <?php endif; ?>
                                    <?php endforeach; ?>
                                </select>
                            </div>
                        </div>

                        <div class="form-group mb-3">
                            <label for="alamat">Alamat</label>
                            <textarea class="form-control <?= (form_error('alamat')) ? 'is-invalid' : ''; ?>" name="alamat" id="alamat" rows="3"><?= (set_value('alamat')) ? set_value('alamat') : $penduduk["alamat"] ?></textarea>
                            <div id="validationServer04Feedback" class="invalid-feedback"><?= form_error('alamat') ?></div>
                        </div>

                        <button type="submit" name="edit" class="btn btn-primary btn-lg">Edit Data</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
