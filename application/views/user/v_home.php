<header>


    <div id='foto_villa' class='carousel slide' data-ride='carousel'>
        <div class='carousel-inner'>
            <?php $i = 0;
            foreach ($slide as $row) : ?>
                <?php if ($i == 0) {
                    $set_ = 'active';
                } else {
                    $set_ = '';
                } ?>
                <div class='carousel-item <?php echo $set_; ?>'>
                    <img src='<?= base_url(); ?>assets/file/<?= $row->file; ?>' class='d-block w-100'>
                    <div class="carousel-caption d-none d-md-block">
                        <h5><?= $row->judul ?></h5>
                        <p><?= $row->isi ?></p>
                    </div>
                </div>
            <?php $i++;
            endforeach ?>
        </div>

        <a class='carousel-control-prev' href='#foto_villa' role='button' data-slide='prev'>
            <span class='carousel-control-prev-icon' aria-hidden='true'></span>
            <span class='sr-only'>Previous</span>
        </a>
        <a class='carousel-control-next' href='#foto_villa' role='button' data-slide='next'>
            <span class='carousel-control-next-icon' aria-hidden='true'></span>
            <span class='sr-only'>Next</span>
        </a>
    </div>
</header>

<!-- Page Content -->
<div class="container">

    <div class="row">

        <!-- Blog Entries Column -->
        <div class="col-md-8">

            <h1 class="my-4">Halaman Home
                <small>Sekolah dasar</small>
            </h1>

            <!-- Blog Post -->
            <?php
            foreach ($content as $ctn) {
            ?>
                <div class="card mb-4">
                    <img class="card-img-top" src="<?= base_url(); ?>assets/file/<?= $ctn->file; ?>" alt="Card image cap">
                    <div class="card-body">
                        <h2 class="card-title"><?php echo $ctn->judul ?></h2>
                        <p class="card-text"><?php echo $ctn->isi ?></p>
                    </div>
                    <div class="card-footer text-muted">
                        <?php echo $ctn->tanggal ?>
                    </div>
                </div>
            <?php } ?>


            <!-- Pagination -->
            <ul class="pagination justify-content-center mb-4">
                <li class="page-item">
                    <a class="page-link" href="#">&larr; Older</a>
                </li>
                <li class="page-item disabled">
                    <a class="page-link" href="#">Newer &rarr;</a>
                </li>
            </ul>

        </div>

        <!-- Sidebar Widgets Column -->
        <div class="col-md-4">

            <!-- Side Widget -->
            <div class="card my-4">
                <h5 class="card-header">Pengumuman 1</h5>
                <div class="card-body">
                    You can put anything you want inside of these side widgets. They are easy to use, and feature the new Bootstrap 4 card containers!
                </div>
            </div>

            <!-- Side Widget -->
            <div class="card my-4">
                <h5 class="card-header">Pengumuman 2</h5>
                <div class="card-body">
                    <p>You can put anything you want inside of these side widgets. They are easy to use, and feature the new Bootstrap 4 card containers!
                        You can put anything you want inside of these side widgets. They are easy to use, and feature the new Bootstrap 4 card containers!
                        You can put anything you want inside of these side widgets. They are easy to use, and feature the new Bootstrap 4 card containers!</p>
                    <br><br>
                    <p> You can put anything you want inside of these side widgets. They are easy to use, and feature the new Bootstrap 4 card containers!
                        You can put anything you want inside of these side widgets. They are easy to use, and feature the new Bootstrap 4 card containers!</p>
                </div>
            </div>

        </div>

    </div>
    <!-- /.row -->

</div>
<!-- /.container -->