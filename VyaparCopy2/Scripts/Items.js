$(document).ready(function () {
    // Tab switching functionality
    $('.nav-tab').on('click', function () {
        // Remove active class from all tabs
        $('.nav-tab').removeClass('active');
        $('.tab-pane').removeClass('active');

        // Add active class to clicked tab
        $(this).addClass('active');

        // Show corresponding tab content
        var tabId = $(this).data('tab');
        $('#' + tabId).addClass('active');
    });

    // Modal functionality for Add Category
    var categoryModal = document.getElementById('addCategoryModal');
    var categoryBtn = document.getElementById('addCategoryBtn');
    var categoryClose = categoryModal.querySelector('.close');
    var categoryCancelBtn = categoryModal.querySelector('.cancel-btn');

    categoryBtn.onclick = function () {
        categoryModal.style.display = 'block';
    }

    categoryClose.onclick = function () {
        categoryModal.style.display = 'none';
    }

    categoryCancelBtn.onclick = function () {
        categoryModal.style.display = 'none';
    }

    // Modal functionality for Add Units
    var unitsModal = document.getElementById('addUnitsModal');
    var unitsBtn = document.getElementById('addUnitsBtn');
    var unitsClose = unitsModal.querySelector('.close');
    var unitsCancelBtn = unitsModal.querySelector('.cancel-btn');

    unitsBtn.onclick = function () {
        unitsModal.style.display = 'block';
    }

    unitsClose.onclick = function () {
        unitsModal.style.display = 'none';
    }

    unitsCancelBtn.onclick = function () {
        unitsModal.style.display = 'none';
    }

    // Close modal when clicking outside
    window.onclick = function (event) {
        if (event.target == categoryModal) {
            categoryModal.style.display = 'none';
        }
        if (event.target == unitsModal) {
            unitsModal.style.display = 'none';
        }
    }

    // Save functionality for Category
    var categorySaveBtn = categoryModal.querySelector('.save-btn');
    categorySaveBtn.onclick = function () {
        var categoryName = $('#categoryName').val();
        var categoryDescription = $('#categoryDescription').val();

        if (categoryName.trim() === '') {
            alert('Please enter a category name');
            return;
        }

        // Here you would typically make an AJAX call to save the category
        // For example:
        /*
        $.ajax({
            url: 'YourSaveEndpoint.aspx/SaveCategory',
            type: 'POST',
            data: JSON.stringify({ name: categoryName, description: categoryDescription }),
            contentType: 'application/json; charset=utf-8',
            dataType: 'json',
            success: function(response) {
                // Handle success
                categoryModal.style.display = 'none';
                // Refresh the category list
                // location.reload(); or update the DOM
            },
            error: function(error) {
                // Handle error
                alert('Error saving category: ' + error.responseText);
            }
        });
        */

        // For demo purposes, just close the modal
        alert('Category "' + categoryName + '" would be saved here.');
        categoryModal.style.display = 'none';
    }

    // Save functionality for Units
    var unitsSaveBtn = unitsModal.querySelector('.save-btn');
    unitsSaveBtn.onclick = function () {
        var unitFullName = $('#unitFullName').val();
        var unitShortName = $('#unitShortName').val();

        if (unitFullName.trim() === '' || unitShortName.trim() === '') {
            alert('Please enter both full name and short name');
            return;
        }

        // Here you would typically make an AJAX call to save the unit
        // For example:
        /*
        $.ajax({
            url: 'YourSaveEndpoint.aspx/SaveUnit',
            type: 'POST',
            data: JSON.stringify({ fullName: unitFullName, shortName: unitShortName }),
            contentType: 'application/json; charset=utf-8',
            dataType: 'json',
            success: function(response) {
                // Handle success
                unitsModal.style.display = 'none';
                // Refresh the units list
                // location.reload(); or update the DOM
            },
            error: function(error) {
                // Handle error
                alert('Error saving unit: ' + error.responseText);
            }
        });
        */

        // For demo purposes, just close the modal
        alert('Unit "' + unitFullName + '" would be saved here.');
        unitsModal.style.display = 'none';
    }

    // List item click functionality
    $('.list-item').on('click', function () {
        // Remove active class from all list items
        $('.list-item').removeClass('active');

        // Add active class to clicked item
        $(this).addClass('active');

        // Here you would typically update the right panel based on the selected item
        // For demo purposes, just log the selected item
        console.log('Selected item: ' + $(this).find('.fullname-col, .category-col').text());
    });

    // Action column click functionality (three dots)
    $('.action-col').on('click', function (e) {
        e.stopPropagation(); // Prevent triggering the list item click

        // Here you would typically show a dropdown menu with actions
        // For demo purposes, just log the action
        console.log('Action clicked for: ' + $(this).parent().find('.fullname-col, .category-col').text());
    });
});