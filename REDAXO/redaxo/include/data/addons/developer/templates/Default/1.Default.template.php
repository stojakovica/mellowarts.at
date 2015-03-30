<?php
header('Content-Type: text/html; charset=utf-8');
$ssa = OOArticle::getSiteStartArticle();
$article = OOArticle::getArticleById($this->getValue('article_id'));
$cssFiles = array();
$cssFiles[] = "main.less";

$isSsa = $article->getId() == $ssa->getId();

//$headerImages = array_filter(explode(",", getHierarchicalVar("art_header_images", $article, $ssa)));
$video = getHierarchicalVar("art_video", $article, $ssa);

$imprint = OOArticle::getArticleById(7);
?>
<!DOCTYPE html>
<html lang="<?php echo seo42::getLangCode(); ?>" xmlns:fb="http://ogp.me/ns/fb#">
<head>
    <meta charset="utf-8" />
    <base href="<?php echo seo42::getBaseUrl(); ?>" />
    <title><?php echo seo42::getTitle(); ?></title>
    <meta name="description" content="<?php echo seo42::getDescription(); ?>" />
    <meta name="keywords" content="<?php echo seo42::getKeywords(); ?>" />
    <meta name="robots" content="<?php echo seo42::getRobotRules();?>" />
    <link rel="shortcut icon" href="<?php echo seo42::getIconFile("favicon.ico"); ?>" type="image/x-icon" />
    <link rel="canonical" href="<?php echo seo42::getCanonicalUrl(); ?>" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="lib/lightbox/css/lightbox.css" rel="stylesheet" type="text/css" media="screen" />
    <link href='lib/font-awesome/css/font-awesome.min.css' rel='stylesheet' type='text/css'>
    <link href='lib/jquery-focuspoint/css/focuspoint.css' rel='stylesheet' type='text/css'>
    <link href="<?php echo seo42::getCombinedCSSFile("project.css", $cssFiles); ?>" rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
    <link href='http://fonts.googleapis.com/css?family=Dancing+Script' rel='stylesheet' type='text/css'>
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <?php echo seo42::getLangTags(); ?>
</head>

<body>
    <div id="wrap">
        <div class="navbar navbar-custom navbar-inverse navbar-static-top" id="nav">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>
                <div class="collapse navbar-collapse">
                    <?php
                    $nav = new nav42();
                    $nav->setLevelDepth(4);
                    $nav->setShowAll(true);
                    $nav->setUlClass('nav navbar-nav nav-justified');
                    echo $nav->getNavigationByLevel(0);
                    ?>
                </div>
            </div>
        </div>

        <header class="masthead">
            <div class="logo">
                <a href="<?php echo $ssa->getUrl(); ?>">
                    <img src="<?php echo seo42::getImageFile('logo_invert.png'); ?>" />
                </a>
            </div>

            <?php if($video) { ?>
            <div class="videoContainer">
                <video autoplay muted loop>
                    <source src="<?php echo seo42::getMediaFile($video); ?>" type="video/mp4">
                </video>
            </div>
            <?php } ?>

            <div class="scrollToContent"><i class="fa fa-angle-down"></i></div>
        </header>

        <!-- Begin page content -->
        <div class="divider" id="section1"></div>

        <div class="containerContent">
            <?php echo $this->getArticle(); ?>
        </div>

        <div class="container">
            <div class="col-sm-8 col-sm-offset-2 text-center">
                <ul class="list-inline center-block">
                    <li><a href="https://www.facebook.com/mellowartsinnsbruck" target="_blank"><img src="<?php echo seo42::getIconFile('fb.png'); ?>"></a></li>
                    <li><a href="https://instagram.com/mellow.arts/" target="_blank"><img src="<?php echo seo42::getIconFile('in.png'); ?>"></a></li>
                </ul>

            </div>
        </div>

    </div>

    <div id="footer">
        <div class="container text-center">
            <?php echo $imprint->toLink(); ?>
        </div>
    </div>

    <ul class="nav pull-right scroll-top">
        <li><a href="#" title="Scroll to top"><i class="glyphicon glyphicon-chevron-up"></i></a></li>
    </ul>

    <script src="<?php echo seo42::getJSFile('jquery-1.11.1.min.js'); ?>"></script>
    <script src="lib/bootstrap/js/bootstrap.min.js"></script>
    <script src="lib/jquery-focuspoint/js/jquery.focuspoint.min.js"></script>
    <script src="<?php echo seo42::getJSFile('slimbox2.js'); ?>"></script>
    <script src="<?php echo seo42::getJSFile('main.js'); ?>"></script>
</body>
</html>