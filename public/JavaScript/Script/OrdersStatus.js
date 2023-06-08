var $url = 'http://localhost/my_projects/Resume/Shop/public/EditOrdersStatus/';
/**
 * This class useing for classes into the Edit directroy
 *
 * @type type
 */
$ (document).ready (function () {
    $ ('.row').click (function () {
        redirect ($ (this));
    });
})

function getId ($object) {
    return $object.children ('td').eq (0).html ();
}

function redirect ($object) {
    window.location.replace ($url + getId ($object));
}
