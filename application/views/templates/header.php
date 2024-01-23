<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>Halaman <?= $judul ?></title>
  </head>
  <body>
    <div class="container">
        <div class="row">
            <div class="col-md6">
                <nav class="navbar navbar-expand-lg navbar-light bg-light">
                    <div class="container-fluid">
                        <a class="navbar-brand" href="<?= base_url()?>">CI DATA PENDUDUK</a>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                                <li class="nav-item">
                                    <a class="nav-link <?= ($judul === "Home") ? 'active' : ''; ?>" aria-current="page" href="<?= base_url()?>">Home</a>
                                </li>
                                
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle <?= ($judul === "Penduduk" || $judul === "Detail Penduduk" || $judul === "Tambah Data Penduduk" || $judul === "Edit Data Penduduk") ? 'active' : ''; ?>" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">Tabel Penduduk</a>
                                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <li><a class="dropdown-item" href="<?= base_url('penduduk')?>">Data Penduduk</a></li>
                                        <li><a class="dropdown-item" href="<?= base_url('penduduk/tambah')?>">Tambah Data Penduduk</a></li>
                                    </ul>
                                </li>

                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle <?= ($judul === "Hitung Status Penduduk" || $judul === "Hitung Pekerjaan Penduduk") ? 'active' : ''; ?>" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">Table Perhitungan</a>
                                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <li><a class="dropdown-item" href="<?= base_url('penduduk/countStatus')?>">Hitung Status</a></li>
                                        <li><a class="dropdown-item" href="<?= base_url('penduduk/countPekerjaan')?>">Hitung Pekerjaan</a></li>
                                    </ul>
                                </li>

                                <li class="nav-item">
                                    <!-- <a class="nav-link <?= ($judul === "About Me") ? 'active' : ''; ?>" aria-current="page" href="<?= base_url('about')?>">About</a> -->
                                    <a class="nav-link <?= ($judul === "About Me") ? 'active' : ''; ?>" aria-current="page" href="<?= base_url('index.php/about')?>">About</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
    </div>