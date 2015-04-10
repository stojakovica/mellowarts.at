<div class="container">
    <?php
    $curArt = OOArticle::getArticleById($this->article_id);
    $parentCategory = $curArt->getCategory();
    /** @var OOArticle $a */
    foreach ($parentCategory->getArticles(true) as $a) {
        if($a->isStartArticle()) continue;

        $name = $a->getName();
        $url = seo42::getFullUrl($a->getId());
        $teaserText = $a->getValue('art_teaser_text');
        $teaserImage = $a->getValue('art_teaser_image');
        ?>
        <div class="row">
            <div class="col-sm-4">
                <a href="<?php echo $url; ?>">
                    <img src="<?php echo seo42::getImageManagerFile($teaserImage, 'bootstrap-4'); ?>" class="img-responsive"/>
                </a>
            </div>
            <div class="col-sm-8">
                <h2><a href="<?php echo $url; ?>"><?php echo $name; ?></a></h2>
                <p><?php echo $teaserText; ?></p>
            </div>
        </div>
    <?php
    }
    ?>
</div>
