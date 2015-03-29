
$(document).ready(function () {

    $('#nav a').each(function () {


        if (window.location.pathname.indexOf($(this).html()) > 0) {
            $(this).addClass('current');
        }
        else {
            $(this).removeClass('current');
        }

    });
});


function Order(elem) {
    console.log(elem);
    return false;
}