<div class="container">
  <div class="row">
    <div class="col-md6">

      <div class="jumbotron jumbotron-fluid mt-5">
        <div class="container">
          <h1 class="display-4">Hello <?= $nama; ?></h1>
          <p class="lead">
            Untuk mengakses Halaman CRUD, silakan kunjungi bagian <strong>penduduk di navbar</strong> atau klik <a href="<?= base_url('penduduk')?>">di sini</a>.
          </p>

          <p class="lead">
            <strong><span class="text-danger">PENTING:</span></strong> Nama folder default adalah <strong>data_kependudukan</strong>, yang memengaruhi <strong>base_url</strong> menjadi <strong><?= base_url() ?></strong>
          </p>
          
          <p class="lead">
            <strong><span class="text-danger">PENTING:</span></strong> Pastikan untuk <strong>mengimpor terlebih dahulu file database</strong> sebelum melanjutkan.
          </p>

        </div>
      </div>

    </div>
  </div>
</div>
