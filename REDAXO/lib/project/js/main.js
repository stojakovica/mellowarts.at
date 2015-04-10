$(document).ready(function() {
    updateHeaderHeight();
    $(window).resize(updateHeaderHeight);

    $('.scrollToContent i').click(scrollToContent);

    //$('.carousel').carousel({interval:false});

    /* affix the navbar after scroll below header */
    $('#nav').affix({
        offset: {
            top: $('header').height()-$('#nav').height()
        }
    });

    $('.scroll-top').click(function(){
        $('body,html').animate({scrollTop:0},1000);
        return false;
    })

    $('.gmapsContainer .overlay').click(function () {
        $(this).remove();
    });

    $('.focuspoint').focusPoint();
});

function scrollToContent() {
    var top = $('.containerContent').position().top;
    var $nav = $('.navbar');
    var $divider = $('.divider').first();

    top-= $nav.height();
    top-= $divider.height();

    $('html,body').animate({
        scrollTop: top+'px'
    }, '100');
}

function updateHeaderHeight() {
    var $window = $(window);
    var $header = $('header');
    var windowHeight = $(window).height();
    if($header.hasClass('subSite')) {
        windowHeight = windowHeight * 0.7;
    }
    if($window.width() > 767) {
        var $nav = $('.navbar');
        var height = 400;

        if(windowHeight > height) {
            height = windowHeight;
            height-= $nav.height();
        }

        $header.height(height);
    }
    else {
        $header.height('auto');
    }
}