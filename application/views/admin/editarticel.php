<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800">edit articel</h1>


    <div class="row">
        <div class="col-lg-8">

            <form class="user" method="post" action="<?=base_url()?>controller/edit/<?=$data->id?>">
            <div class="form-group row">
                <label for="title" class="col-sm-2 col-form-label">title</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="title" name="title" value="<?=$data->title; ?>">
                    <?= form_error('title', '<small class="text-danger pl-3">', '</small>'); ?>
                </div>
            </div>
            <div class="form-group row">
                <label for="content" class="col-sm-2 col-form-label">content</label>
                <div class="col-sm-10">
                    <textarea  class="form-control" id="content" name="content" rows="30"><?=$data->content; ?></textarea>
                    <?= form_error('content', '<small class="text-danger pl-3">', '</small>'); ?>
                </div>
            </div>
            <div class="form-group">
                <label for="kategori">Kategori : </label>
                <select class="form-control" id="kategori" name="kategori">
                    <option value="<?=$data->kategori; ?>"><?=$data->kategori; ?>(old)</option>
                    <option value="pendidikan">pendidikan</option>
                    <option value="hiburan">hiburan</option>
                    <option value="olahraga">olahraga</option>
                    <option value="politik">politik</option>
                    <option value="agama">agama</option>
                </select>
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