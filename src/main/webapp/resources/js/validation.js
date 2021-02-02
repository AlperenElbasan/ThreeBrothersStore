$(document).ready(function () {
    // LOGIN
    $(document).on('click', '.login-btn', function (e) {
        e.preventDefault();
        let thisBtn = $(this),
            thisForm = thisBtn.parents('form'),
            formUrl = thisForm.attr('action'),
            formMethod = thisForm.attr('method'),
            formData = thisForm.serialize(),
            valid = validateForm(thisForm);
        alert(valid);
        if(valid){
            let formID = thisForm.attr('id'),
                formData = new FormData($('#'+ formID)[0]);
            $.ajax({
                type: formMethod,
                url: formUrl,
                data: formData,
                processData: false,
                contentType: false,
                success: function (response) {
                    //alert(response);
                    response = JSON.parse(response);
                    if(response.status){
                        setTimeout(() => {
                            window.location.href = response.redirect;
                        }, 1000);
                    }else{

                    }
                }
            });
        }
    });
});
function validateForm(selector) {
    let errors = [],
        inputVal = '',
        inputName = '',
        inputs = $(selector).find('.required');
    $.each(inputs, function(index, ele){
        inputVal = $(this).val();
        inputName = $(this).attr('name');
        if(inputVal === '' || inputVal.trim().length === 0){
            errors.push(inputName);
            $(this).addClass('has-error');
            $(this).parents('div').addClass('has-error');
        }
    });
    if(errors.length > 0){
        return false;
    }
    return true;
}