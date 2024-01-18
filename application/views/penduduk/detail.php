<div class="container ">
    <div class="row">
        <div class="col-md-5">
        
        <div class="card mt-3" style="width: 20rem;">
            
            <div class="card-header">
                <h3 class="card-title">DETAIL PENDUDUK</h3>
            </div>

            <div class="card-body">
                <h5 class="card-title"><?= $penduduk["nama"] ?></h5>
                <p class="card-text text-primary"><?= $penduduk["email"] ?></p>
            </div>
            <ul class="list-group list-group-flush">
                <li class="list-group-item">Asal : <?= $namaProvinsi["nama_provinsi"] ?></li>
                <li class="list-group-item">Pekerjaan : <?= $namaPekerjaan["nama_pekerjaan"] ?></li>
                <li class="list-group-item">Agama : <?= $namaAgama["nama_agama"] ?></li>
                <li class="list-group-item">Alamat : <?= $penduduk["alamat"] ?></li>
                <li class="list-group-item">Umur : <?= $penduduk["umur"] ?> Tahun</li>
                <li class="list-group-item">Status : <?= $penduduk["status"] ?></li>
            </ul>
        </div>

        </div>
    </div>
</div>