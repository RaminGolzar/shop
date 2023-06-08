$ (document).ready (function () {
    let $url = 'http://localhost/my_projects/Resume/Shop/public/EditProduct/';

    $ ('.edit-product').click (function () {
        window.location.replace ($url + getProductId ($ (this)));
    });
})

/**
 * Geting product id of html elements
 *
 * @param {type} $object
 * @returns {unresolved}
 */
function getProductId ($object) {
    return $object.children ('td').eq (0).html ();
}
