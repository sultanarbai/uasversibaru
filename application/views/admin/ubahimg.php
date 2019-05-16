<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800">edit image</h1>


    <div class="row">
        <div class="col-lg-8">

                <?= form_open_multipart('controller/editimg/<?=$data->id;?>'); ?>
            
            <div class="form-group row">
                <div class="col-sm-2">Picture</div>
                <div class="col-sm-10">
                    <div class="row">
                        <div class="col-sm-12">
                            <img src="<?= base_url('assets/img/articel/') . $data->image; ?>" class="img-thumbnail  border-left-primary">
                        </div>
                        <div class="col-sm-12">
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
                    <button type="submit" class="btn btn-primary">Edit</button>
                </div>
            </div>


            </form>


        </div>
    </div>



</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->