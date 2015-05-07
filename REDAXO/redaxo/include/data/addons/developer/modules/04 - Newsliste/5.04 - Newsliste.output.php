<?php
$newsCat = OOCategory::getCategoryById(3);
$news = array();

if(!$REX['REDAXO']) {
    /** @var OOArticle $newsArt */
    foreach($newsCat->getArticles(true) as $newsArt) {
        if($newsArt->isStartArticle()) continue;
        $news[$newsArt->getId()]['title'] = $newsArt->getName();
        $news[$newsArt->getId()]['image'] = $newsArt->getValue('art_teaser_image');
        $news[$newsArt->getId()]['link'] = $newsArt->getUrl();
    }
    ?>
    <div class="container">
        <div class="newsList carousel slide" data-ride="carousel">
            <div class="carousel-inner" role="listbox">
                <?php
                $i = 0;
                foreach(array_reverse($news) as $n) { ?>
                    <div class="item text-center <?php if($i == 0) echo 'active'; ?>">
                        <div class="img">
                            <?php if($n['image']) { ?>
                                <a href="<?php echo $n['link']; ?>">
                                    <img src="<?php echo seo42::getImageManagerFile($n['image'], 'newsList'); ?>" class="img-responsive" />
                                </a>
                            <?php } ?>
                        </div>
                        <div class="title"><a href="<?php echo $n['link']; ?>"><?php echo $n['title']; ?></a></div>
                    </div>
                    <?php
                    $i++;
                } ?>
            </div>

            <a class="left carousel-control" role="button" data-slide="prev" onclick="$(this).parents('.carousel').carousel('prev')">
                <span class="btn-mellow" aria-hidden="true"><i class="fa fa-chevron-left"></i></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" role="button" data-slide="next" onclick="$(this).parents('.carousel').carousel('next')">
                <span class="btn-mellow" aria-hidden="true"><i class="fa fa-chevron-right"></i></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
<?php
}
?>