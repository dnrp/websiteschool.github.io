<div class="card mb-4">
    <div class="card-header">
        <i class="fas fa-table mr-1"></i>
        Rekap Content
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">

                <thead>
                    <tr>
                        <th>No.</th>
                        <th>Judul</th>
                        <th>Isi</th>
                        <th>Kategori</th>
                        <th>Tanggal</th>
                        <th>Gambar</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tfoot>
                    <tr>
                        <th>No.</th>
                        <th>Judul</th>
                        <th>Isi</th>                      
                        <th>Kategori</th>
                        <th>Tanggal</th>
                        <th>Gambar</th>
                        <th>Action</th>
                    </tr>
                </tfoot>
                <tbody>
                    <?php
                    $no = 1;
                    foreach ($content as $ctn) {
                    ?>
                        <tr>
                            <td><?php echo $no++ ?></td>
                            <td><?php echo $ctn->judul ?></td>
                            <td><?php echo $ctn->isi ?></td>
                            <td><?php echo $ctn->kategori ?></td>
                            <td><?php echo $ctn->tanggal ?></td>
                            <td><?php echo $ctn->file ?></td>
                            <th>
                                <a type="button" class="btn btn-success btn-sm" text-decoration="none" href="<?= base_url('admin/edit_content/' . $ctn->id); ?>">Edit</a></br>
                                <a type="button" class="btn btn-danger btn-sm" text-decoration="none" href="<?= base_url('admin/hapus_content/' . $ctn->id); ?>">Hapus</a>
                            </th>
                        </tr>
                    <?php } ?>
                </tbody>
            </table>
        </div>
    </div>
</div>
</div>
</main>