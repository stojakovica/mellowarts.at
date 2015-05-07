<?php
$rand = time() . rand();
$images = explode(',', trim("REX_MEDIALIST[1]"));
?>
<div class="container gallery">
    <div class="row">
        <?php
        foreach ($images as $i) {
            ?>
            <div class="col-md-4 col-xs-6">
                <a data-lightbox="lightbox-<?php echo $rand; ?>" href="<?php echo seo42::getImageManagerFile($i, 'lightbox'); ?>">
                    <img src="<?php echo seo42::getImageManagerFile($i, 'gallery'); ?>" class="img-responsive" />
                </a>
            </div>
        <?php
        }
        ?>
    </div>
</div>
