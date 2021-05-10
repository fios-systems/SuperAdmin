$(document).ready(function () {
    // Popovers
    if($('[data-bs-toggle="popover"]')[0]) {
        $('[data-bs-toggle="popover"]').popover();
    }

    // Tooltips
    if($('[data-bs-toggle="tooltip"]')[0]) {
        $('[data-bs-toggle="tooltip"]').tooltip();
    }

    // File browser
    $('body').on('change', '.custom-file-input', function () {
        var fileName = $(this).val();
        $(this).next('.custom-file-label').html(fileName);
    });

    // Toast
    $('body').on('click', '[data-dismiss="toast"]', function () {
        $(this).closest('.toast').toast('hide');
    });
});