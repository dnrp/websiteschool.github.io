<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Admin sekolah dasar</title>
    <link href="<?php echo base_url('assets/css/styles.css') ?>" rel="stylesheet" type="text/css">
    <link href="<?php echo base_url('assets/css/dataTables.bootstrap4.min.css') ?>" rel="stylesheet" crossorigin="anonymous" />
</head>

<body class="sb-nav-fixed">
    <!-- Navigation -->
    <nav class="navbar  navbar-expand-lg navbar-dark bg-primary ">
        <div class="container">            
            <a class="navbar-brand" href="<?= base_url() ?>">
            <img src="<?= base_url(); ?>assets/file/logo.png" width="30" height="30" alt="">
            SD Negri 1 Klampok</a>
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="<?= base_url() . 'admin' ?>">Rekap Content</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<?php echo base_url() . 'admin/dashboard' ?>">Input Content</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link btn btn-dark" href="<?php echo base_url() . 'admin_login/logout' ?>">Log Out</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div id="layoutSidenav_content">
        <main>
            <div class="container-fluid">
                <h1 class="mt-4"><?= $judul ?></h1>