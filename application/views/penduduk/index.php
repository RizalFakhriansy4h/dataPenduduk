<div class="container">
    <div class="row col-md-4">
        <?php if($this->session->flashdata('flash')): ?>
            <div class="flash-data" data-flashdata="<?= $this->session->flashdata('flash'); ?> "></div>
        <?php endif; ?>
    </div>
    <h3 class="mt-3" >TABEL PENDUDUK</h3>
    <div class="row">
        <div class="col-md-4">
            <button type="button" class="btn btn-warning float-start " data-bs-toggle="modal" data-bs-target="#cariSpesifik">Cari Spesifik</button>
            <a href="<?= base_url('penduduk/reset') ?>" class="btn btn-danger ms-3">Reset</a>
        </div>
    </div>
        
    <div class="row mt-3">
        <div class="col-md">

            <table class="table">
                <thead>
                    <tr>
                    <th scope="col">#</th>
                    <th scope="col">NIK</th>
                    <th scope="col">Nama</th>
                    <th scope="col">Email</th>
                    <th scope="col">Action</th>
                    </tr>
                </thead>
                <tbody>
                <?php if (empty($penduduk)): ?>
                    <tr>
                        <td colspan="6">
                            <div class="alert alert-danger" role="alert">
                                data not found!
                            </div>
                        </td>
                    </tr>
                <?php endif; ?>
                    <?php foreach($penduduk as $pend): ?>
                        <tr>
                            <th scope="row"><?= ++$start ?></th>
                            <th scope="row"><?= $pend["nik"] ?></th>
                            <td><?= $pend["nama"] ?></td>
                            <td><?= $pend["email"] ?></td>
                            <td>
                                <a href="<?= base_url() ?>penduduk/detail/<?= $pend["id"] ?>"><span class="badge bg-success text-light">Detail</span></a>
                                <a href="<?= base_url() ?>penduduk/edit/<?= $pend["id"] ?>"><span class="badge bg-warning text-light">Edit</span></a>
                                <a href="<?= base_url() ?>penduduk/hapus/<?= $pend["id"] ?>" class="tombol-hapus"><span class="badge bg-danger text-light">Hapus</span></a>
                            </td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
        </div>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="cariSpesifik" tabindex="-1" aria-labelledby="cariSpesifikLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="cariSpesifikLabel">Cari Spesifik</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="<?= base_url('penduduk'); ?>" method="post">
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md">
                            <div class="mb-3">
                                <label for="select1" class="form-label">Provinsi</label>
                                <select class="form-select" id="select1" name="cariSpesifikProvinsi">
                                    <?php foreach($provinsis as $pronvinsi): ?>
                                        <option value="<?= $pronvinsi["id_provinsi"] ?>"><?= $pronvinsi["nama_provinsi"] ?></option>
                                    <?php endforeach;?>
                                </select>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <label for="select2" class="form-label">Pekerjaan</label>
                                    <select class="form-select" id="select2" name="cariSpesifikPekerjaan">
                                        <?php foreach($pekerjaans as $pekerjaan): ?>
                                            <option value="<?= $pekerjaan["id_pekerjaan"] ?>"><?= $pekerjaan["nama_pekerjaan"] ?></option>
                                        <?php endforeach;?>
                                    </select>
                                </div>
                                <div class="col-md-4">
                                    <label for="select2" class="form-label">Agama</label>
                                    <select class="form-select" id="select2" name="cariSpesifikAgama">
                                        <?php foreach($agamas as $agama): ?>
                                            <option value="<?= $agama["id_agama"] ?>"><?= $agama["nama_agama"] ?></option>
                                        <?php endforeach;?>
                                    </select>
                                </div>
                                <div class="col-md-4">
                                    <label for="select2" class="form-label">Status</label>
                                    <select class="form-select" id="select2" name="cariSpesifikStatus">
                                        <?php foreach($status as $statu): ?>
                                            <option value="<?= $statu["status"] ?>"><?= $statu["status"] ?></option>
                                        <?php endforeach;?>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <input type="submit" name="tombolCariSpesifik" value="Cari" class="btn btn-primary">
                </div>
            </form>
        </div>
    </div>
</div>

