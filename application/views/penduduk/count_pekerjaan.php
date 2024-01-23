<div class="container mt-3">
    <div class="row">
        <div class="col-md-6">
            <h5>Analisis Jumlah Penduduk Berdasarkan Asal Provinsi dan Pekerjaan</h5>
            <p>Menampilkan jumlah penduduk dari setiap provinsi berdasarkan kategori pekerjaan.</p>
        </div>
    </div>

    <div class="row">
        <div class="col-md-4">
            <form action="" method="post" class="d-flex align-items-end">
                <div class="me-3 flex-grow-1"> <!-- Add margin and make it flexible -->
                    <label for="nikProvinsi" class="form-label">Provinsi</label>
                    <select class="form-select" id="nikProvinsi" name="nikProvinsi">
                        <?php foreach ($provinsis as $provinsi) : ?>
                            <?php if($provinsi["nama_provinsi"] === $this->session->userdata('keywordKerja')): ?>    
                                <option value="<?= $provinsi["nama_provinsi"] ?>" selected><?= $provinsi["nama_provinsi"] ?></option>
                            <?php else: ?>
                                <option value="<?= $provinsi["nama_provinsi"] ?>"><?= $provinsi["nama_provinsi"] ?></option>
                            <?php endif; ?>
                        <?php endforeach; ?>
                    </select>
                </div>
                <div class="me-3"> <!-- Add margin -->
                    <input type="submit" name="tombolKerjaPerubahan" value="Cari" class="btn btn-primary">
                </div>
                <div>
                    <input type="submit" name="tombolReset" value="Reset" class="btn btn-danger">
                </div>
            </form>
        </div>
    </div>

            
    <div class="row mt-3">
        <div class="col-md-7">
        <table class="table table-hover table-bordered border-dark">
    <thead>
        <tr>
            <th scope="col">Provinsi</th>
            <th scope="col">Total Penduduk</th>
            <th scope="col">Pekerjaan</th>
            <th scope="col">Total Pekerja</th>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($dataPekerjaan['jumlah_pekerja'] as $index => $rowData): ?>
            <tr>
                <?php if ($index === 0): ?>
                    <td rowspan="<?= count($dataPekerjaan['jumlah_pekerja']); ?>"><?= $rowData['nama_provinsi']; ?></td>
                    <td rowspan="<?= count($dataPekerjaan['jumlah_pekerja']); ?>"><?= $dataPekerjaan['total_orang_provinsi'][0]['total_orang_provinsi']; ?></td>
                <?php endif; ?>
                <td><?= $rowData['nama_pekerjaan']; ?></td>
                <td><?= $rowData['jumlah_pekerja']; ?></td>
            </tr>
        <?php endforeach; ?>
    </tbody>
</table>

        </div>
    </div>
</div>