$(document).ready(function () {
    // Initialize date pickers
    if ($.fn.datepicker) {
        $('.date-input').datepicker({
            format: 'dd/mm/yyyy',
            autoclose: true,
            todayHighlight: true
        });
    }

    // Add Sale button click event
    $('#btnAddSale').on('click', function () {
        // Set default date to today
        var today = new Date();
        var dd = String(today.getDate()).padStart(2, '0');
        var mm = String(today.getMonth() + 1).padStart(2, '0');
        var yyyy = today.getFullYear();
        var todayStr = yyyy + '-' + mm + '-' + dd;

        $('#txtDate').val(todayStr);

        // Generate next invoice number (this is just a placeholder)
        var lastInvoiceNo = parseInt($('.transactions-table tr:nth-child(1) td:nth-child(2)').text() || '0');
        $('#txtInvoiceNo').val(lastInvoiceNo + 1);

        // Clear other fields
        $('#txtPartyName').val('');
        $('#txtAmount').val('');
        $('#txtBalanceDue').val('');

        // Show the modal
        $('#addSaleModal').modal('show');
    });

    // Calculate Balance Due when Amount changes
    $('#txtAmount').on('input', function () {
        var amount = parseFloat($(this).val()) || 0;
        $('#txtBalanceDue').val(amount);
    });

    // Sort functionality for table headers
    $('.header-with-sort').on('click', function () {
        var $header = $(this);
        var $icon = $header.find('i');
        var $table = $('.transactions-table');
        var columnIndex = $header.closest('th').index();
        var rows = $table.find('tr:gt(0)').toArray();
        var isAscending = $icon.hasClass('fa-sort') || $icon.hasClass('fa-sort-desc');

        // Reset all sort icons
        $table.find('th i').attr('class', 'fa fa-sort');

        // Set the current sort icon
        if (isAscending) {
            $icon.attr('class', 'fa fa-sort-asc');
        } else {
            $icon.attr('class', 'fa fa-sort-desc');
        }

        // Sort the rows
        rows.sort(function (a, b) {
            var A = $(a).children('td').eq(columnIndex).text().trim();
            var B = $(b).children('td').eq(columnIndex).text().trim();

            // Handle date sorting
            if (columnIndex === 0) {
                var dateA = parseDate(A);
                var dateB = parseDate(B);
                return isAscending ? dateA - dateB : dateB - dateA;
            }

            // Handle numeric sorting
            if (columnIndex === 5 || columnIndex === 6) {
                var numA = parseFloat(A.replace(/[₹,]/g, '')) || 0;
                var numB = parseFloat(B.replace(/[₹,]/g, '')) || 0;
                return isAscending ? numA - numB : numB - numA;
            }

            // Default string sorting
            return isAscending ? A.localeCompare(B) : B.localeCompare(A);
        });

        // Append sorted rows to the table
        $.each(rows, function (index, row) {
            $table.append(row);
        });

        // Apply alternating row colors
        $table.find('tr:gt(0)').removeClass('even odd');
        $table.find('tr:gt(0):even').addClass('even');
        $table.find('tr:gt(0):odd').addClass('odd');

        return false;
    });

    // Search functionality
    $('.search-input').on('keyup', function () {
        var searchText = $(this).val().toLowerCase();
        $('.transactions-table tr:gt(0)').each(function () {
            var rowText = $(this).text().toLowerCase();
            $(this).toggle(rowText.indexOf(searchText) > -1);
        });
    });

    // Helper function to parse date strings
    function parseDate(dateStr) {
        var parts = dateStr.split('/');
        return new Date(parts[2], parts[1] - 1, parts[0]);
    }

    // Initialize tooltips
    if ($.fn.tooltip) {
        $('[title]').tooltip();
    }
});