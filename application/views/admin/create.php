<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800">Add page</h1>


    <div class="row">
        <div class="col-lg-8">
                 <?= form_open_multipart('controller/tambah'); ?>
            <div class="form-group row">
                <label for="title" class="col-sm-2 col-form-label">title</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="title" name="title">
                    <?= form_error('title', '<small class="text-danger pl-3">', '</small>'); ?>
                </div>
            </div>
            <div class="form-group row">
                <label for="content" class="col-sm-2 col-form-label">content</label>
                <div class="col-sm-10">
                    <textarea  class="form-control" id="content" name="content" rows="30"></textarea>
                    <?= form_error('content', '<small class="text-danger pl-3">', '</small>'); ?>
                </div>
            </div>
            <div class="form-group">
                <label for="kategori">Kategori : </label>
                <select class="form-control" id="kategori" name="kategori">
                    <option value="">Pilih kategori::</option>
                    <option value="masakan">Masakan</option>
                    <option value="pendidikan">Pendidikan</option>
                    <option value="olahraga">Olahraga</option>
                    <option value="politik">Politik</option>
                    <option value="agama">Agama</option>
                    <option value="hiburan">Hiburan</option>
                </select>
            </div>
            <div class="form-group row">
                <div class="col-sm-2">Picture</div>
                <div class="col-sm-10">
                    <div class="row">
                        <div class="col-sm-9">
                            <div class="custom-file">
                                <input type="file" class="custom-file-input border-bottom-primary" id="image" name="image">
                                <label class="custom-file-label  border-bottom-primary" for="image">Choose file</label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <input type="hidden" name="name" value="<?= $user['name']; ?>" readonly>
            

            <div class="form-group row justify-content-end">
                <div class="col-sm-10">
                    <button type="submit" class="btn btn-primary">Create</button>
                </div>
            </div>



            </form>


        </div>
    </div>



</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->