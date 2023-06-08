/**
 * To hold url
 *
 * @type type
 */
var $url = {
    'main' : 'http://localhost/my_projects/Resume/Shop/public/ManageProducts' ,
    'delete' : 'http://localhost/my_projects/Resume/Shop/public/EditProduct/Process/delete'
};

/**
 * To hold messages
 *
 * @type type
 */
var $msg = {
    'deleteSuccess' : 'Delete product is successfully' ,
    'deleteFail' : 'Delete product is failed'
};

$ (document).ready (function () {
    $ ('#delete').click (function (e) {
        e.preventDefault ();
        deleteProduct ();
    });
})

/**
 * To deleted a product
 *
 * @returns {undefined}
 */
function deleteProduct () {
    $.ajax ({
        'type' : 'post' ,
        'url' : $url.delete ,
        'data' : deleteData () ,
        'success' : function ($response) {
            deleteSuccess (JSON.parse ($response));
        } ,
        'error' : function () {
            alert ('{ Delete Error }');
        }
    });
}

/**
 * Prepare data for delete a product
 *
 * @returns {deleteData.EditProductsAnonym$1}
 */
function deleteData () {
    return {'product_id' : $ ('#product_id').val ()};
}

/**
 * If is successfully delete product
 *
 * @param {type} $response
 * @returns {undefined}
 */
function deleteSuccess ($response) {
    window.location.replace (deleteMessage ($response));
}

/**
 * Set URL & message for delete operation
 *
 * @param {type} $response
 * @returns {String}
 */
function deleteMessage ($response) {
    if ($response.response == 'success') {
        return $url.main + '/' + JSON.stringify ({"success" : $msg.deleteSuccess});
    } else {
        return $url.main + '/' + JSON.stringify ({"fail" : $msg.deleteFail});
    }
}