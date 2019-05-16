<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>

    <div class="row">
        <div class="col-lg">
            <?= form_error('menu', '<div class="alert alert-danger" role="alert">', '</div>'); ?>

            <?= $this->session->flashdata('message'); ?>

            <a href="<?= base_url('user/newarticel'); ?>" class="btn btn-primary mb-3">Add New Articel</a>

                    <?php $i = 1; ?>
                    <?php foreach ($articel as $r) : ?>
                         
                <div class="container-fluid">
                        <div class="col-md-4 float-left ">
                            <div class="card mb-3 border-left-primary">
                                  <div class="card-body">
                                    <h5 class="card-title"><?= $r['title']; ?></h5>

                                    <h6 class="card-subtitle mb-2 text-muted"></h6>
                                    <a href="<?= base_url('user/viewarticel/') . $r['id']; ?>" class="badge badge-warning">view<i class="fas fa-fw fa-eye"></i></a>
                                    <a href="<?= base_url('controller/index_edit/') . $r['id']; ?>" class="badge badge-success">edit<i class="fas fa-fw fa-edit"></i></a>
                                    <a href="<?= base_url('controller/delete/') .$r['id'] ?>" onclick="return confirm('Yakin Hapus?')" class="badge badge-danger">delete<i class="fas fa-fw fa-times"></i></a>
                                    <a href="<?= base_url('controller/ubaha/') .$r['id'] ?>" onclick="return confirm('MOHON MAAF FITURE INI BELUM BISA DI PAKAI?')" class="badge badge-primary"><i class="far fa-image"></i></a>

                                    <form method="post" action="<?=base_url()?>controller/like">
                                        <input type="hidden" name="suka" value="<?= $r['suka'] ?>" readonly>
                                        <input type="hidden" name="usersuka" value="<?= $user['usersuka'] ?>" readonly>
                                        <input type="hidden" name="email" value="<?= $user['email'] ?>" readonly>
                                        <input type="hidden" name="id" value="<?= $r['id'] ?>" readonly>
                                        <input type="hidden" name="cek" value="<?= $r['cek'] ?>" readonly>
                                        <button type="submit" class="btn btn-primary"><i class="far fa-thumbs-up"></i></button>
                                    </form>
                                    <br><br>
                                    <p>updated by  <?= $r['name'] ?></p>
                                    <p>likes: <i><?= $r['suka'] ?></i></p>
                                  </div>
                            </div>
                        </div>
                </div>


                    <?php $i++; ?>
                    <?php endforeach; ?>
            


        </div>
    </div>



</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->
