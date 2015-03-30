
$(document).ready(function () {
    //navigation
    $('#nav a').each(function () {
        if (window.location.pathname.indexOf($(this).html()) > 0) {
            $(this).addClass('current');
        }
        else {
            $(this).removeClass('current');
        }
    });


    //orders
    $('#btnProceed').click(function () {
        var products = "";
        
        $('#pnlShoppingCart').find('input[type="hidden"]').each(function () {
            products += $(this).val() + " ";
            console.log(products);
        });
        
        $.ajax({
            type: "POST",
            contentType: "application/json; charset=utf-8",
            url: "/Web_Services/Orders.asmx/Order",
            data: "{ 'products' : '" + products + "'}",
            dataType: "json",
            success: function (response) {
                //do something here
            }
        });

    });

});


function Order(elem) {
    console.log(elem);
    return false;
}