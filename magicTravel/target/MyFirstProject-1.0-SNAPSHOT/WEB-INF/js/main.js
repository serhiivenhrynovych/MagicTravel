function reply_click(clicked_id)
{
    $.ajax({
        url: '/sendProdIdForBuyRest',
        type: 'post',
        data: clicked_id,
        contentType: 'text/plain',
        // data: product_id;
        // data: 'product_id',
        success: function (response) {
            response.console.log(response);
        },
        error: function () {
            alert("bad")
        }
    });

    console.log("aaaaaaaaaaaaaaaaaaaa")
}
