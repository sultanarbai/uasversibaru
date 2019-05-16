<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>
 

    <div class="row">
        <div class="col-lg border-bottom-success" style="background: url(<?= base_url('assets/img/articel/') . $articel['image']; ?>);">

            <?= $this->session->flashdata('message'); ?>

            <?php  $view = $articel; ?>

            <br><br><br><br><br><h3 style="color: white;"><center><?= $view['title']; ?></center></h3><br><br><br><br><br>
        </div>
    </div>
    <div class="row">
        <div class="col-lg">

            <?= $this->session->flashdata('message'); ?>

            <?php  $view = $articel; ?>

            <br><br><h3><?= $view['title']; ?></h3>
            <br>
            <h5><?= $view['content']; ?></h5>
            <br>
            <h5><?= date('d F Y', $view['date_created']); ?></h5>
            <br>
            <h6>kategori : '<?= $view['kategori']; ?>'</h6>



        </div>
    </div>




</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -- >     