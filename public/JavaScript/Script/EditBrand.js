/* To hold URL */
var $url = {
    'main': 'http://localhost/my_projects/Resume/Shop/public/ManageBrands',
    'get' : 'http://localhost/my_projects/Resume/Shop/public/ManageBrands/process/get' ,
    'edit' : 'http://localhost/my_projects/Resume/Shop/public/ManageBrands/process/edit' ,
    'delete' : 'http://localhost/my_projects/Resume/Shop/public/ManageBrands/process/delete'
};

/* To hold inputs id/name */
var $id = {
    'chk' : 'brand-actived' ,
    'chkId' : '#brand-actived' ,
    'txt' : 'brand-name' ,
    'txtId' : '#brand-name' ,
    'hidden' : 'brand-id' ,
    'hiddenId' : '#brand-id' ,
    'chkLabel' : 'brand-active-label' ,
    'chkLabelId' : '#brand-active-label' ,
    'modal' : 'edit-modal' ,
    'modalId' : '#edit-modal' ,
    'submit' : 'submit' ,
    'submitId' : '#btnEdit' ,
    'btnDel' : 'btnDelete',
    'btnDelId': '#btnDelete'
};

/**
 * To hold messages for edit & delete operations
 * 
 * @type type
 */
var $msg = {
    'es' : {'success' : 'Edit brand is successfully'}, /* Edit Success */
    'ds' : {'success' : 'Delete brand is successfully'} /* Delete Success */
};

/**
 * To hold checked attr of a checkbox input in edit form
 *
 * Allowed: "1" , "0"
 *
 * @type String
 */
var $activeChecked;

/* ------------------------------------------------------------ */

$(document).ready(function() {
    /* Click on tr tag */
    $('.row-user').click(function() {
        sendId ($(this));
    });

    /* Click on submit button in edit form */
    $($id.submitId).click(function() {
        editBrand ();
    });
    
    $($id.btnDelId).click(function () {
        deleteBrand();
    });
})

/**
 * Prepare brand id for send by ajax
 *
 * @param {type} $object
 * @returns {prepare_data.EditBrandAnonym$0}
 */
function prepareBrandId ($object) {
    return {'brandId' : get_id ($object)};
}

/**
 * Geting brand id of html elements
 *
 * @param {type} $object
 * @returns {unresolved}
 */
function get_id ($object) {
    return $object.children('td').eq(0).html();
}

/**
 * Send brand id for get brand data to edit it
 *
 * @param {type} $object
 * @returns {undefined}
 */
function sendId ($object) {
    $.ajax({
        "type" : 'post' ,
        "url" : $url.get ,
        'data' : prepareBrandId ($object) ,
        "success" : function ($data) {send_success ($data)} ,
        "error" : function () { alert('{ Error }'); } ,
    });
}

/**
 * This method is on successfully send brand id
 *
 * @param {type} $data
 * @returns {undefined}
 */
function send_success ($data) {
    $($id.modalId).show();

    setInputsValue (JSON.parse ($data));
}

/**
 * Setting value for edit form inputs
 *
 * @param {type} $data
 * @returns {undefined}
 */
function setInputsValue ($data) {
    setHidden($data.id);

    setInputText ($data.name);

    setCheckBox ($data.deleted_at);
}

/**
 * Set value for hidden input in edit form
 *
 * @param {type} $value
 * @returns {undefined}
 */
function setHidden ($value) {
    $($id.hiddenId).val($value);
}

/**
 * Set value for input text in edit form
 *
 * @param {type} $value
 * @returns {undefined}
 */
function setInputText ($value) {
    $($id.txtId).val ($value);
}

/**
 * Generated a new checkbox for brand active option & set value for it
 *
 * @param {type} $active
 * @returns {undefined}
 */
function setCheckBox ($active) {
    if ($active == null) {
        genCheckBox (true);
        $activeChecked = '1'; /* for send checkbox value */
    } else {
        genCheckBox (false);
        $activeChecked = null;
    }
}

/**
 * Generated a new checkbox in edit form
 *
 * @param {type} $checked
 * @returns {undefined}
 */
function genCheckBox ($checked) {
    removeCheckBox();

    $($id.txtId).after (genSelfCheckBox ($checked));

    $($id.chkId).after (genCheckBoxLabel ());
}

/**
 * Generated a input checkbox in edit form
 *
 * @param {type} $checked
 * @returns {$checkBox|$}
 */
function genSelfCheckBox ($checked) {
    $checkBox = initAciveCheckBox ($checked);

    setActiveCheckBoxAttr ($checkBox);

    activeCheckBox_click ($checkBox);

    return $checkBox;
}

/**
 * Return a simple input for generated a checkbox
 *
 * @param {type} $checked
 * @returns {$}
 */
function initAciveCheckBox ($checked) {
    if ($checked === true) {
        return $('<input checked />');
    } else if ($checked === false) {
        return $('<input  />');
    }
}

/**
 * Set attributes for checkbox in edit form
 *
 * @param {type} $checkBox
 * @returns {undefined}
 */
function setActiveCheckBoxAttr ($checkBox) {
    $checkBox.attr ({
        'type': 'checkbox',
        'value': '1',
        'class': 'w3-check w3-margin-top',
        'id': $id.chk
    });
}

/**
 * Set click event for checkbox in edit form
 *
 * @param {type} $checkBox
 * @returns {undefined}
 */
function activeCheckBox_click ($checkBox) {
    $checkBox.click(function() {
        $activeChecked = $activeChecked == '1' ? null : '1';
    });
}

/**
 * Generated a label for checkbox in edit form
 *
 * @returns {$}\
 */
function genCheckBoxLabel () {
    return $('<label id="' + $id.chkLabel + '" for="' + $id.chk + '" class="w3-padding-small">Active</label>');
}

/**
 * Remove input checkbox & it label in the edit form
 *
 * @returns {undefined}
 */
function removeCheckBox () {
    $($id.chkId).remove();
    $($id.chkLabelId).remove();
}

/* --------------------------------------------------
 * Edit brand
 * --------------------------------------------------
 */

/**
 * Edit a brand
 *
 * @returns {undefined}
 */
function editBrand () {
    sendNewData ();
}

/**
 * Send new data to save in database
 *
 * @returns {undefined}
 */
function sendNewData () {
    $.ajax({
        'url' : $url.edit ,
        'type' : 'post' ,
        'data' : prepareNewData (),
        'success' : function ($responce) { editSuccess ($responce); } ,
        'error' : function () { alert('{ Error }'); }
    });
}

/**
 * Preparing new data to send
 *
 * @returns {prepareNewData.EditBrandAnonym$4}
 */
function prepareNewData () {
    return {
        'brand-id' : $($id.hiddenId).val(),
        'brand-name' : $($id.txtId).val() ,
        'brand-active' : $activeChecked /* for send checkbox value */
    };
}

/**
 * If edit brand is successfully
 *
 * @param {type} $response
 * @returns {undefined}
 */
function editSuccess ($response) {
    /* Reload page */
    window.location.replace ($url.main + '/' + JSON.stringify($msg.es));
}

/* --------------------------------------------------
 * Delete brand
 * --------------------------------------------------
 */

/**
 * Deleting a brand
 * 
 * @returns {undefined}
 */
function deleteBrand () {
    deleteAjax();
}

/**
 * Prepare ajax for deleting brand
 * 
 * @returns {undefined}
 */
function deleteAjax () {
    $.ajax({
        'type': 'post',
        'url': $url.delete,
        'data': prepareDeleteData (),
        'success': function ($responce) { deleteSuccess ($responce); },
        'error': function () { alert('{ Error }'); }
    });
}

/**
 * Prepare brand id for send to server to delete
 * 
 * @returns {prepareDeleteData.EditBrandAnonym$6}
 */
function prepareDeleteData () {
    return {"brandId": $($id.hiddenId).val()};
}

/**
 * If delete brand is success, refresh a page
 * 
 * @param {type} $responce - alloved: true , false
 * @returns {undefined}
 */
function deleteSuccess ($responce) {
    $responce = JSON.parse($responce);
    
    if ($responce.result == true) {
        window.location.replace ($url.main + '/' + JSON.stringify($msg.ds));
    } else {
        alert('{ Error }');
    }
}