
<!-- Page Content -->
<div class="container">

    <!-- Page Heading/Breadcrumbs -->
    <h1 class="mt-4 mb-3">Fasilitas
        <small>Sekolah Dasar</small>
    </h1>

    <ol class="breadcrumb">
        <li class="breadcrumb-item">
            <a href="<?= base_url(); ?>">Home</a>
        </li>
        <li class="breadcrumb-item active">Fasilitas</li>
    </ol>

    <div class="row">
         <?php
            foreach ($content as $ctn) {
            ?>

             <div class="col-lg-4 col-sm-6 portfolio-item">
                 <div class="card h-100">
                     <a href="#"><img class="card-img-top" src="<?= base_url(); ?>assets/file/<?= $ctn->file; ?>" alt=""></a>
                     <div class="card-body">
                         <h4 class="card-title">
                             <a href="#"><?php echo $ctn->judul ?></a>
                         </h4>
                         <p class="card-text"><?php echo $ctn->isi ?></p>
                     </div>
                     <div class="card-footer">
                         <small class="text-muted"><?php echo $ctn->tanggal ?></small>
                     </div>
                 </div>
             </div>

         <?php } ?>
     </div>
     <hr>
        
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