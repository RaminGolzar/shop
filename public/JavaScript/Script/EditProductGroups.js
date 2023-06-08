var $msg = {
    'deleteTrue' : 'Delete product group is successfully' ,
    'deleteFalse' : 'Delete product group is failed'
};

var $url = {
    'main' : 'http://localhost/my_projects/Resume/Shop/public/ProductGroups' ,
    'getInfo' : 'http://localhost/my_projects/Resume/Shop/public/ProductGroups/Process/get' ,
    'delete' : 'http://localhost/my_projects/Resume/Shop/public/ProductGroups/Process/delete' ,
    'edit' : 'http://localhost/my_projects/Resume/Shop/public/ProductGroups/Process/edit'
};

/**
 * To hold elements ID
 *
 * @type type
 */
var $id = {
    'text' : '#productGroupName' ,
    'checkBox' : '#active' ,
    'label' : '#activeLabel' ,
    'edit' : '#edit' ,
    'delete' : '#delete' ,
    'hidden' : '#productGroupId'
};

$ (document).ready (function () {
    $ ('.show-modal').click (function () {
        getInfo ($ (this));
    });

    $ ($id.delete).click (function () {
        deleteProductGroup ();
    });

    $ ($id.edit).click (function () {
        edit ();
    });
})

/* --------------------------------------------------
 * Get info
 * --------------------------------------------------
 */

/**
 * Send product group id for get info to edit it
 *
 * @param {type} $object
 * @returns {undefined}
 */
function getInfo ($object) {
    $.ajax ({
        "type" : 'post' ,
        "url" : $url.getInfo ,
        'data' : getInfoData ($object) ,
        "success" : function ($info) {
            getInfoSuccess (JSON.parse ($info))
        } ,
        "error" : function () {
            alert ('{ Get Data Error }');
        }
    });
}

/**
 * Prepare data for send by ajax
 *
 * @param {type} $object
 * @returns {prepare_data.EditBrandAnonym$0}
 */
function getInfoData ($object) {
    return {'productGroupId' : getProductGroupId ($object)};
}

/**
 * Geting product group id of html elements
 *
 * @param {type} $object
 * @returns {unresolved}
 */
function getProductGroupId ($object) {
    return $object.children ('td').eq (0).html ();
}

/* --------------------------------------------------
 * Set value for inputs
 * --------------------------------------------------
 */

/**
 * Input checkBox is checked or no
 *
 * Allowed: "active" , "inactive"
 *
 * @type type
 */
var $isChecked;

/**
 * Operation after get data from server
 *
 * @param {type} $info
 * @returns {undefined}
 */
function getInfoSuccess ($info) {
    textValue ($info);

    hiddenValue ($info);

    checkboxValue ($info);

    $ ('.w3-modal').show ();
}

/**
 * Set value for text input in edit form
 *
 * @param {type} $info
 * @returns {undefined}
 */
function textValue ($info) {
    $ ($id.text).val ($info.productGroupName);
}

/**
 * Set value for hidden input in edit form
 *
 * @param {type} $info
 * @returns {undefined}
 */
function hiddenValue ($info) {
    $ ($id.hidden).val ($info.id);
}

/**
 * Set value for checkbox in edit form
 *
 * @param {type} $info
 * @returns {undefined}
 */
function checkboxValue ($info) {
    genCheckbox ($info.active);
}

/**
 * Generated a checkbox
 *
 * @param {type} $checked
 * @returns {undefined}
 */
function genCheckbox ($checked) {
    removeCheckbox ();

    $ ($id.text).after (genCheckboxInput ($checked));

    $ ($id.checkBox).after (genCheckboxLabel ());
}

/**
 * Generated a checkbox input for edit form
 *
 * @param {type} $checked
 * @returns {genCheckboxInput.$checkbox|$}
 */
function genCheckboxInput ($checked) {
    let $checkbox;

    if ($checked === null) {
        $checkbox = $ ('<input checked />');
        $isChecked = 'active';
    } else {
        $checkbox = $ ('<input  / >');
        $isChecked = 'inactive';
    }

    $checkbox.attr (genCheckboxAttr ());

    checkbox_click ($checkbox);

    return $checkbox;
}

/**
 * Setup attributes for checkbox in edit form
 *
 * @returns {genCheckboxAttr.EditProductGroupsAnonym$2}
 */
function genCheckboxAttr () {
    return {
        'type' : 'checkbox' ,
        'value' : 'active' ,
        'class' : 'w3-check w3-margin-top' ,
        'id' : 'active'
    };
}

/**
 * Set click event for checkbox in edit form
 *
 * @param {type} $checkbox
 * @returns {undefined}
 */
function checkbox_click ($checkbox) {
    $checkbox.click (function () {
        $isChecked = $isChecked == 'active' ? 'inactive' : 'active';
    });
}

/**
 * Generated a label for checkbox in edit form
 *
 * @returns {$}
 */
function genCheckboxLabel () {
    return $ ('<label id="activeLabel" for="active" class="w3-padding-small">Active</label>');
}

/**
 * For remove checkbox in edit form
 *
 * @returns {undefined}
 */
function removeCheckbox () {
    $ ($id.checkBox).remove ();
    $ ($id.label).remove ();
}

/* --------------------------------------------------
 * Delete
 * --------------------------------------------------
 */

/**
 * Deleting a product group
 *
 * @returns {undefined}
 */
function deleteProductGroup () {
    $.ajax ({
        'type' : 'post' ,
        'url' : $url.delete ,
        'data' : deleteData () ,
        'success' : function ($response) {
            deleteSuccess (JSON.parse ($response));
        } ,
        'error' : function () {
            alert ('{ Error }');
        }
    });
}

/**
 * Prepare data for send to server for delete a product group
 *
 * @returns {deleteData.EditProductGroupsAnonym$4}
 */
function deleteData () {
    return {'productGroupId' : $ ($id.hidden).val ()};
}

/**
 * If delete product group is success
 *
 * @param {type} $response
 * @returns {undefined}
 */
function deleteSuccess ($response) {
    window.location.replace ($url.main + '/' + JSON.stringify (deleteMessage ($response)));
}

/**
 * Return deleting message
 *
 * @param {type} $response
 * @returns {deleteMessage.EditProductGroupsAnonym$5|deleteMessage.EditProductGroupsAnonym$6}
 */
function deleteMessage ($response) {
    if ($response) {
        return {'success' : $msg.deleteTrue};
    } else {
        return {'error' : $msg.deleteFalse};
    }
}

/* --------------------------------------------------
 * Edit
 * --------------------------------------------------
 */

/**
 * Edit a product group
 *
 * @returns {undefined}
 */
function edit () {
    $.ajax ({
        'type' : 'post' ,
        'url' : $url.edit ,
        'data' : editData () ,
        'success' : function ($response) {
            editSuccess ($response);
        } ,
        'error' : function () {
            alert ('{ Edit Error }');
        }
    });
}

/**
 * Return data for editing
 *
 * @returns {editData.EditProductGroupsAnonym$8}
 */
function editData () {
    return {
        'productGroupId' : $ ($id.hidden).val () ,
        'productGroupName' : $ ($id.text).val () ,
        'active' : $isChecked
    };
}

/**
 * If edit product is success call this function
 *
 * @param {type} $response
 * @returns {undefined}
 */
function editSuccess ($response) {
    window.location.replace ($url.main + '/' + $response);
}