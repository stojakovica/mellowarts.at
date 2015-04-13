<?php
header('Content-Type: text/html; charset=utf-8');
$ssa = OOArticle::getSiteStartArticle();
$article = OOArticle::getArticleById($this->getValue('article_id'));
$cssFiles = array();
$cssFiles[] = "main.less";

$isSsa = $article->getId() == $ssa->getId();

$headerImage = getHierarchicalVar("art_header_image", $article, $ssa);
$video = getHierarchicalVar("art_video", $article, $ssa);

$imprint = OOArticle::getArticleById(7);

$useragent=$_SERVER['HTTP_USER_AGENT'];

$isMobile = false;
if(preg_match('/(android|bb\d+|meego).+mobile|avantgo|bada\/|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|iris|kindle|lge |maemo|midp|mmp|netfront|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\/|plucker|pocket|psp|series(4|6)0|symbian|treo|up\.(browser|link)|vodafone|wap|windows (ce|phone)|xda|xiino/i',$useragent)||preg_match('/1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\-(n|u)|c55\/|capi|ccwa|cdm\-|cell|chtm|cldc|cmd\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\-s|devi|dica|dmob|do(c|p)o|ds(12|\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\-|_)|g1 u|g560|gene|gf\-5|g\-mo|go(\.w|od)|gr(ad|un)|haie|hcit|hd\-(m|p|t)|hei\-|hi(pt|ta)|hp( i|ip)|hs\-c|ht(c(\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\-(20|go|ma)|i230|iac( |\-|\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\/)|klon|kpt |kwc\-|kyo(c|k)|le(no|xi)|lg( g|\/(k|l|u)|50|54|\-[a-w])|libw|lynx|m1\-w|m3ga|m50\/|ma(te|ui|xo)|mc(01|21|ca)|m\-cr|me(rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\-2|po(ck|rt|se)|prox|psio|pt\-g|qa\-a|qc(07|12|21|32|60|\-[2-7]|i\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\-|oo|p\-)|sdk\/|se(c(\-|0|1)|47|mc|nd|ri)|sgh\-|shar|sie(\-|m)|sk\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\-|v\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\-|tdg\-|tel(i|m)|tim\-|t\-mo|to(pl|sh)|ts(70|m\-|m3|m5)|tx\-9|up(\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|yas\-|your|zeto|zte\-/i',substr($useragent,0,4))) {
    $isMobile = true;
}

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

        <?php
        $headerImageClass = "";
        if(!$isSsa) {
            $headerImageClass = "subSite";
        }
        ?>
        <header class="masthead <?php echo $headerImageClass; ?>">
            <div class="logo">
                <a href="<?php echo $ssa->getUrl(); ?>">
                    <img src="<?php echo seo42::getImageFile('logo_invert.png'); ?>" />
                </a>
            </div>

            <?php
            $imageObject = OOMedia::getMediaByFileName($headerImage);
            $focusX = $imageObject->getValue('med_focuspoint_x') ? $imageObject->getValue('med_focuspoint_x') : "0";
            $focusY = $imageObject->getValue('med_focuspoint_y') ? $imageObject->getValue('med_focuspoint_y') : "0";
            if(!$isMobile && ($video || $headerImage)) { ?>
            <div class="videoContainer">
                <?php
                ?>
                <?php if($isSsa) { ?>
                <video autoplay muted loop>
                    <source src="<?php echo seo42::getMediaFile($video); ?>" type="video/mp4">
                    <div class="headerImage focuspoint" data-focus-x="<?php echo $focusX; ?>"
                         data-focus-y="<?php echo $focusY; ?>"
                         data-image-w="<?php echo $imageObject->getWidth(); ?>"
                         data-image-h="<?php echo $imageObject->getHeight(); ?>">
                        <img src="<?php echo seo42::getImageManagerFile($headerImage, 'headerImage'); ?>" alt="" />
                    </div>
                </video>
                <?php
                }
                else { ?>
                    <div class="headerImage focuspoint" data-focus-x="<?php echo $focusX; ?>"
                         data-focus-y="<?php echo $focusY; ?>"
                         data-image-w="<?php echo $imageObject->getWidth(); ?>"
                         data-image-h="<?php echo $imageObject->getHeight(); ?>">
                        <img src="<?php echo seo42::getImageManagerFile($headerImage, 'headerImage'); ?>" alt="" />
                    </div>
                <?php } ?>
            </div>
            <?php } ?>

            <?php if($isMobile) { ?>
                <div class="headerImageMobile focuspoint" data-focus-x="<?php echo $focusX; ?>"
                     data-focus-y="<?php echo $focusY; ?>"
                     data-image-w="<?php echo $imageObject->getWidth(); ?>"
                     data-image-h="<?php echo $imageObject->getHeight(); ?>">
                    <img src="<?php echo seo42::getImageManagerFile($headerImage, 'headerImage'); ?>" alt="" />
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
    <script src="lib/lightbox/js/lightbox.min.js"></script>
    <script src="<?php echo seo42::getJSFile('slimbox2.js'); ?>"></script>
    <script src="<?php echo seo42::getJSFile('main.js'); ?>"></script>
</body>
</html>