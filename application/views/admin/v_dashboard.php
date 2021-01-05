<?= form_open_multipart('admin/tambah_content'); ?>
<div class="form-group">
    <label for="exampleFormControlInput1">Judul</label>
    <input class="form-control form-control-solid" placeholder="Judul" rows="3" name="judul">
</div>
<div class="form-group">
    <label for="exampleFormControlTextarea1">isi</label>
    <textarea class="form-control form-control-solid" rows="3" name="isi"></textarea>
</div>
<div class="form-group">
    <label for="exampleFormControlInput1">Tanggal</label>
    <input class="form-control form-control-solid" type="date" placeholder="tanggal" rows="3" name="tanggal">
</div>

<div class="form-group mb-3">
    <label>Katergori</label>
    <select multiple class="form-control" id="sel2" name="kategori">
        <option value="home">Home</option>
        <option value="slide_home">Slide Home</option>
        <option value="ekstrakulikuler">Ekstrakulikuler</option>
        <option value="fasilitas" selected>Fasilitas</option>
        <option value="kegiatan_rutin">Kegiatan Rutin</option>
        <option value="acara_khusus">Acara Khusus</option>
        <option value="materi">Materi Sekolah</option>
        <option value="prestasi_sekolah">Prestasi Sekolah</option>
    </select>
</div>
<div class="form-group">
    <label for="exampleFormControlInput1">Gambar/ file dokoumen</label>
    <input class="form-control form-control-solid" rows="3" type="file" name="file">
</div>

<button type="submit" class="btn btn-success btn-lg">Tambah</button>
<?= form_close(); ?>