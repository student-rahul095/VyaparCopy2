$(document).ready(function () {
    // Initialize variables
    var modal = $("#addChallanModal");
    var btnAddChallan = $("#btnAddChallan");
    var btnCancel = $("#btnCancel");
    var closeBtn = $(".close");

    // Open modal when Add Delivery Challan button is clicked
    btnAddChallan.on("click", function () {
        openModal();
    });

    // Close modal when Cancel button is clicked
    btnCancel.on("click", function () {
        closeModal();
    });

    // Close modal when X button is clicked
    closeBtn.on("click", function () {
        closeModal();
    });

    // Close modal when clicking outside the modal
    $(window).on("click", function (event) {
        if ($(event.target).is(modal)) {
            closeModal();
        }
    });

    // Function to open modal
    function openModal() {
        // Set default values
        var today = new Date();
        var formattedDate = formatDate(today);

        $("#txtDate").val(formattedDate);
        $("#txtDueDate").val(formattedDate);
        $("#txtChallanNo").val(getNextChallanNo());
        $("#txtAmount").val("");

        // Show modal
        modal.css("display", "block");
    }

    // Function to close modal
    function closeModal() {
        modal.css("display", "none");
    }

    // Function to format date as YYYY-MM-DD for input[type=date]
    function formatDate(date) {
        var day = date.getDate();
        var month = date.getMonth() + 1;
        var year = date.getFullYear();

        day = day < 10 ? '0' + day : day;
        month = month < 10 ? '0' + month : month;

        return year + '-' + month + '-' + day;
    }

    // Function to get next challan number
    function getNextChallanNo() {
        var maxChallan = 0;

        // Find the highest challan number in the table
        $(".transactions-table tbody tr").each(function () {
            var challanNo = parseInt($(this).find("td:nth-child(3)").text());
            if (!isNaN(challanNo) && challanNo > maxChallan) {
                maxChallan = challanNo;
            }
        });

        return maxChallan + 1;
    }

    // Handle Convert to Sale button click
    $(".btn-convert").on("click", function () {
        var row = $(this).closest("tr");
        var date = row.find("td:nth-child(1)").text();
        var party = row.find("td:nth-child(2)").text();
        var challanNo = row.find("td:nth-child(3)").text();

        // Show confirmation dialog
        if (confirm("Are you sure you want to convert Challan #" + challanNo + " for " + party + " to a Sale?")) {
            // In a real application, you would make an AJAX call to the server
            // For this example, we'll just show an alert
            alert("Challan #" + challanNo + " converted to Sale successfully!");

            // Change the button to "Converted" and disable it
            $(this).text("CONVERTED").addClass("converted").prop("disabled", true);
        }
    });

    // Handle Bulk Convert To Sale button click
    $("#btnBulkConvert").on("click", function () {
        var selectedRows = [];

        // In a real application, you would have checkboxes to select rows
        // For this example, we'll just convert all rows with "Open" status
        $(".transactions-table tbody tr").each(function () {
            var status = $(this).find("td:nth-child(6)").text().trim();
            if (status === "Open") {
                var challanNo = $(this).find("td:nth-child(3)").text();
                selectedRows.push(challanNo);
            }
        });

        if (selectedRows.length === 0) {
            alert("No eligible challans found for conversion.");
            return;
        }

        // Show confirmation dialog
        if (confirm("Are you sure you want to convert " + selectedRows.length + " challans to Sales?")) {
            // In a real application, you would make an AJAX call to the server
            // For this example, we'll just show an alert
            alert(selectedRows.length + " challans converted to Sales successfully!");

            // Change the buttons to "Converted" and disable them
            $(".btn-convert").text("CONVERTED").addClass("converted").prop("disabled", true);
        }
    });

    // Handle table sorting
    $(".sortable").on("click", function () {
        var columnIndex = $(this).index();
        var table = $(".transactions-table");
        var rows = table.find("tbody tr").toArray();
        var isAscending = $(this).hasClass("asc");

        // Update sort direction
        $(".sortable").removeClass("asc desc");
        $(this).addClass(isAscending ? "desc" : "asc");

        // Update sort icon
        $(".sort-icon").removeClass("fa-arrow-up fa-arrow-down").addClass("fa-sort");
        var sortIcon = $(this).find(".sort-icon");
        sortIcon.removeClass("fa-sort").addClass(isAscending ? "fa-arrow-down" : "fa-arrow-up");

        // Sort the rows
        rows.sort(function (a, b) {
            var aValue = $(a).find("td").eq(columnIndex).text().trim();
            var bValue = $(b).find("td").eq(columnIndex).text().trim();

            // Handle date sorting
            if (columnIndex === 0 || columnIndex === 3) {
                aValue = parseDate(aValue);
                bValue = parseDate(bValue);
            }
            // Handle numeric sorting
            else if (columnIndex === 2 || columnIndex === 4) {
                aValue = parseFloat(aValue.replace(/[₹,]/g, "")) || 0;
                bValue = parseFloat(bValue.replace(/[₹,]/g, "")) || 0;
            }

            if (isAscending) {
                return aValue > bValue ? -1 : 1;
            } else {
                return aValue < bValue ? -1 : 1;
            }
        });

        // Reorder the rows in the table
        $.each(rows, function (index, row) {
            table.find("tbody").append(row);
        });
    });

    // Function to parse date string (DD/MM/YYYY) to Date object
    function parseDate(dateStr) {
        var parts = dateStr.split("/");
        if (parts.length < 3) return new Date(0);
        return new Date(parts[2], parts[1] - 1, parts[0]);
    }

    // Handle search functionality
    $(".search-input").on("keyup", function () {
        var searchText = $(this).val().toLowerCase();

        $(".transactions-table tbody tr").each(function () {
            var rowText = $(this).text().toLowerCase();
            var isMatch = rowText.indexOf(searchText) > -1;
            $(this).toggle(isMatch);
        });
    });

    // Add more button dropdown menu
    $(".btn-more").on("click", function (e) {
        e.stopPropagation();

        // Close any open dropdown
        $(".dropdown-menu").remove();

        // Create dropdown menu
        var dropdown = $("<div>").addClass("dropdown-menu");
        dropdown.append($("<a>").addClass("dropdown-item").text("View Details"));
        dropdown.append($("<a>").addClass("dropdown-item").text("Edit"));
        dropdown.append($("<a>").addClass("dropdown-item").text("Delete"));

        // Position dropdown
        var buttonPos = $(this).offset();
        dropdown.css({
            top: buttonPos.top + $(this).outerHeight(),
            left: buttonPos.left - 100
        });

        // Add dropdown to body
        $("body").append(dropdown);

        // Close dropdown when clicking elsewhere
        $(document).one("click", function () {
            dropdown.remove();
        });
    });

    // Calculate overdue days
    $(".transactions-table tbody tr").each(function () {
        var dueDateCell = $(this).find("td:nth-child(4)");
        var dueDateText = dueDateCell.find("span:first-child").text();

        if (dueDateText) {
            var dueDate = parseDate(dueDateText);
            var today = new Date();
            var diffTime = Math.abs(today - dueDate);
            var diffDays = Math.ceil(diffTime / (1000 * 60 * 60 * 24));

            // Update overdue text
            dueDateCell.find(".overdue").text("Overdue: " + diffDays + " days");
        }
    });
});