<!-- Page Content -->
<div class="container">

    <!-- Page Heading/Breadcrumbs -->
    <h1 class="mt-4 mb-3">Materi Siswa
        <small>Sekolah Dasar</small>
    </h1>

    <ol class="breadcrumb">
        <li class="breadcrumb-item">
            <a href="<?= base_url(); ?>">Home</a>
        </li>
        <li class="breadcrumb-item active">Materi Siswa</li>
    </ol>

    <div class="row">
        <?php
        foreach ($content as $ctn) {
        ?>
            <div class="col-lg-6 portfolio-item">
                <div class="media card h-100 py-3 px-4">
                    <div class="media-body">
                        <h5 class="mt-0"><?php echo $ctn->judul ?></h5>
                        <?php echo $ctn->isi ?><br>
                    </div>
                    <div class="media-footer">
                    <a type="button" class="btn btn-info mt-2" href="<?= base_url(); ?>assets/file/<?= $ctn->file; ?>">
                    Unduh</a>
                    </div>
                </div>
            </div>
        <?php } ?>

    </div>
    <!-- /.row -->

    <!-- Pagination -->
    <ul class="pagination justify-content-center">
        <li class="page-item">
            <a class="page-link" href="#" aria-label="Previous">
                <span aria-hidden="true">&laquo;</span>
                <span class="sr-only">Previous</span>
            </a>
        </li>
        <li class="page-item">
            <a class="page-link" href="#">1</a>
        </li>
        <li class="page-item">
            <a class="page-link" href="#">2</a>
        </li>
        <li class="page-item">
            <a class="page-link" href="#">3</a>
        </li>
        <li class="page-item">
            <a class="page-link" href="#" aria-label="Next">
                <span aria-hidden="true">&raquo;</span>
                <span class="sr-only">Next</span>
            </a>
        </li>
    </ul>

</div>
<!-- /.container -->