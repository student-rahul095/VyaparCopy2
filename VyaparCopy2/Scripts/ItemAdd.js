$(document).ready(function () {
    // Open modal when button is clicked
    $("#openModalBtn").click(function () {
        $("#addItemModal").fadeIn(300);
        $("body").css("overflow", "hidden");
    });

    // Close modal when close button is clicked
    $(".close-btn").click(function () {
        closeModal();
    });

    // Close modal when clicking outside the modal content
    $(window).click(function (event) {
        if ($(event.target).is("#addItemModal")) {
            closeModal();
        }
    });

    // Function to close the modal
    function closeModal() {
        $("#addItemModal").fadeOut(300);
        $("body").css("overflow", "auto");
    }

    // Tab navigation
    $(".tab-item").click(function () {
        const tabId = $(this).data("tab");

        // Remove active class from all tabs and tab panes
        $(".tab-item").removeClass("active");
        $(".tab-pane").removeClass("active").hide();

        // Add active class to clicked tab and show corresponding tab pane
        $(this).addClass("active");
        $("#" + tabId).addClass("active").show();
    });

    // Set default active tab
    $(".tab-item[data-tab='pricing']").click();

    // Toggle between Product and Service
    $("#itemTypeToggle").change(function () {
        if ($(this).is(":checked")) {
            // Service is selected
            $(".manufacturing-section").hide();
        } else {
            // Product is selected
            $(".manufacturing-section").show();
        }
    });

    // Calculate estimated cost for raw materials
    function calculateRawMaterialCost() {
        let total = 0;

        // Loop through each row
        for (let i = 1; i <= 3; i++) {
            const qty = parseFloat($("#rawMaterialQty" + i).val()) || 0;
            const price = parseFloat($("#rawMaterialPrice" + i).val()) || 0;
            const cost = qty * price;

            // Update the cost field
            $("#rawMaterialCost" + i).val(cost.toFixed(2));

            // Add to total
            total += cost;
        }

        // Update total
        $(".total-cost-summary .alert-info").text("Total Estimated Cost (Raw Material + Additional Cost) = ₹ " + total.toFixed(2));
        return total;
    }

    // Add event listeners for quantity and price changes
    $("[id^=rawMaterialQty], [id^=rawMaterialPrice]").on("input", function () {
        calculateRawMaterialCost();
    });

    // Add row functionality for raw materials
    $(".manufacturing-section .btn-add-row").first().click(function () {
        const rowCount = $(".manufacturing-section .table tbody tr").length + 1;
        const newRow = `
            <tr>
                <td>${rowCount}</td>
                <td>
                    <input type="text" class="form-control" id="rawMaterialName${rowCount}" name="rawMaterialName${rowCount}" placeholder="">
                </td>
                <td>
                    <input type="text" class="form-control" id="rawMaterialQty${rowCount}" name="rawMaterialQty${rowCount}" placeholder="">
                </td>
                <td>
                    <select class="form-control" id="rawMaterialUnit${rowCount}" name="rawMaterialUnit${rowCount}">
                        <option value="none">None</option>
                        <option value="kg">KILOGRAMS (KG)</option>
                        <option value="g">GRAMS (G)</option>
                        <option value="l">LITERS (L)</option>
                        <option value="ml">MILLILITERS (ML)</option>
                    </select>
                </td>
                <td>
                    <input type="text" class="form-control" id="rawMaterialPrice${rowCount}" name="rawMaterialPrice${rowCount}" placeholder="0">
                </td>
                <td>
                    <input type="text" class="form-control" id="rawMaterialCost${rowCount}" name="rawMaterialCost${rowCount}" placeholder="0" disabled>
                </td>
            </tr>
        `;

        $(".manufacturing-section .table tbody").append(newRow);

        // Add event listeners for the new row
        $(`#rawMaterialQty${rowCount}, #rawMaterialPrice${rowCount}`).on("input", function () {
            calculateRawMaterialCost();
        });
    });

    // Add row functionality for additional costs
    $(".manufacturing-section .btn-add-row").last().click(function () {
        const rowCount = $(".manufacturing-section .table:last tbody tr").length + 1;
        const newRow = `
            <tr>
                <td>${rowCount}</td>
                <td>
                    <select class="form-control" id="additionalCostType${rowCount}" name="additionalCostType${rowCount}">
                        <option value="">Select</option>
                        <option value="labor">Labor</option>
                        <option value="packaging">Packaging</option>
                        <option value="transport">Transport</option>
                    </select>
                </td>
                <td>
                    <input type="text" class="form-control" id="additionalCost${rowCount}" name="additionalCost${rowCount}" placeholder="">
                </td>
            </tr>
        `;

        $(".manufacturing-section .table:last tbody").append(newRow);
    });

    // Initialize datepicker for date fields
    if ($.fn.datepicker) {
        $("#asOfDate").datepicker({
            dateFormat: "dd/mm/yy",
            changeMonth: true,
            changeYear: true
        });
    }

    // Save button click handler
    $("#saveBtn, #saveAndNewBtn").click(function (e) {
        e.preventDefault();

        // Validate required fields
        if (!$("#itemName").val()) {
            alert("Please enter Item Name");
            $("#itemName").focus();
            return false;
        }

        // Show success message
        alert("Item saved successfully!");

        // If Save & New button was clicked, reset the form
        if ($(this).attr("id") === "saveAndNewBtn") {
            $("#form1")[0].reset();
            $(".tab-item[data-tab='pricing']").click();
        } else {
            // Otherwise close the modal
            closeModal();
        }
    });

    // Initialize the form with default values
    function initializeForm() {
        // Set default date to today
        const today = new Date();
        const dd = String(today.getDate()).padStart(2, '0');
        const mm = String(today.getMonth() + 1).padStart(2, '0');
        const yyyy = today.getFullYear();
        const formattedDate = dd + '/' + mm + '/' + yyyy;

        $("#asOfDate").val(formattedDate);

        // Calculate initial costs
        calculateRawMaterialCost();
    }

    // Call initialize function
    initializeForm();
});