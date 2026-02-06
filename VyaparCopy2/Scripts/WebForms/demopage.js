$(document).ready(function () {
    // Handle click on sidebar navigation items
    $('.sidebar-nav li').on('click', function (e) {
        e.preventDefault();
        $('.sidebar-nav li').removeClass('active');
        $(this).addClass('active');
    });

    // Handle click on the "Save Changes" button
    $('.btn-save').on('click', function () {
        alert('Changes saved successfully!');
    });

    // Handle click on the "Cancel" button
    $('.btn-cancel').on('click', function () {
        if (confirm('Are you sure you want to cancel? Any unsaved changes will be lost.')) {
            // You can add logic to revert changes or navigate away
            alert('Changes have been cancelled.');
        }
    });
});
