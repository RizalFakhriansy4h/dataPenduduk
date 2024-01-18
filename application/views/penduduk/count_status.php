<div class="container mt-3">
    <div class="row">
        <div class="col-md">
            <h5>Analisis Jumlah Penduduk Berdasarkan Agama dan Status Pernikahan</h5>
            <p>Menampilkan jumlah penduduk berdasarkan status pernikahan untuk setiap agama.</p>
        </div>
    </div>

    <div class="row">
        <div class="col-md-7">
            <table class="table table-hover table-bordered border-primary">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Agama</th>
                        <th scope="col">Status</th>
                        <th scope="col">Banyak</th>
                        <th scope="col">Total</th>
                    </tr>
                </thead>
                <tbody>

                    <?php
                    $counter = 1;
                    foreach ($datas as $row) :
                        $agama = $row["nama_agama"];
                        $status = $row["status"];
                        $jumlah = $row["jumlah_penduduk"];
                        $totalAgama = $row["total_agama"];
                    ?>

                        <tr>
                            <?php if ($status === 'Belum Menikah') : ?>
                                <th scope="row" rowspan="3"><?= $counter++ ?></th>
                                <td rowspan="3"><strong><?= $agama ?></strong></td>
                            <?php endif; ?>
                            
                            <td><?= $status ?></td>
                            <td><?= $jumlah ?></td>
                            
                            <?php if ($status === 'Belum Menikah') : ?>
                                <td rowspan="3"><strong><?= $totalAgama ?></strong></td>
                            <?php endif; ?>
                        </tr>
                    <?php endforeach; ?>

                </tbody>
            </table>
        </div>
    </div>
</div>
