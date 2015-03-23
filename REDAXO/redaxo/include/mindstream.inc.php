<?php
/**
 * Include mindstream specific classes/functions
 */

function convertTextile($text) {
    $text = htmlspecialchars_decode($text);
    $text = str_replace("<br />","",$text);
    $text = OOAddon::isAvailable('textile')?rex_a79_textile($text):$text;
    $text = str_replace("###","&#x20;",$text);

    return $text;
}

function getHierarchicalVar($key, $article, $ssa) {
    $var = false;

    $a = $article;
    while ($a!=false) {
        if ($var) {
            break;
        }
        $var = $a->getValue($key);
        $a = $a->getParent();
    }
    if (!$var) {
        $var = $ssa->getValue($key);
    }

    return $var;
}
