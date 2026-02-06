$(document).ready(function () {
    // Toggle between Sale/Credit/Cash
    $('.sale-type-item').click(function () {
        $('.sale-type-item').removeClass('active');
        $(this).addClass('active');
    });

    // Credit toggle switch
    $('#creditToggle').change(function () {
        if ($(this).is(':checked')) {
            $('.sale-type-item').removeClass('active');
            $('.sale-type-item:contains("Credit")').addClass('active');
        } else {
            $('.sale-type-item').removeClass('active');
            $('.sale-type-item:contains("Sale")').addClass('active');
        }
    });

    // Add new row to items table
    $('.btn-add-row').click(function () {
        const rowCount = $('.items-table tbody tr').length;
        const newRow = `
            <tr>
                <td>${rowCount + 1}</td>
                <td><input type="text" class="form-control" id="txtItem${rowCount + 1}" name="txtItem${rowCount + 1}" /></td>
                <td><input type="text" class="form-control" id="txtDesc${rowCount + 1}" name="txtDesc${rowCount + 1}" /></td>
                <td><input type="text" class="form-control" id="txtPacking${rowCount + 1}" name="txtPacking${rowCount + 1}" /></td>
                <td><input type="text" class="form-control" id="txtSize${rowCount + 1}" name="txtSize${rowCount + 1}" /></td>
                <td><input type="text" class="form-control qty-input" id="txtQty${rowCount + 1}" name="txtQty${rowCount + 1}" /></td>
                <td>
                    <select class="form-control" id="ddlUnit${rowCount + 1}" name="ddlUnit${rowCount + 1}">
                        <option value="NONE">NONE</option>
                    </select>
                </td>
                <td><input type="text" class="form-control price-input" id="txtPrice${rowCount + 1}" name="txtPrice${rowCount + 1}" /></td>
                <td>
                    <div class="discount-inputs">
                        <input type="text" class="form-control percent-input" id="txtDiscountPercent${rowCount + 1}" name="txtDiscountPercent${rowCount + 1}" />
                        <input type="text" class="form-control amount-input" id="txtDiscountAmount${rowCount + 1}" name="txtDiscountAmount${rowCount + 1}" />
                    </div>
                </td>
                <td>
                    <div class="tax-inputs">
                        <select class="form-control" id="ddlTaxPercent${rowCount + 1}" name="ddlTaxPercent${rowCount + 1}">
                            <option value="">Select</option>
                        </select>
                        <input type="text" class="form-control amount-input" id="txtTaxAmount${rowCount + 1}" name="txtTaxAmount${rowCount + 1}" />
                    </div>
                </td>
                <td><input type="text" class="form-control amount-input" id="txtAmount${rowCount + 1}" name="txtAmount${rowCount + 1}" readonly /></td>
                <td></td>
            </tr>
        `;
        $('.items-table tbody').append(newRow);
        bindCalculationEvents();
    });

    // Add item button
    $('.add-item-btn').click(function () {
        // This would typically open a modal or dropdown to select items
        alert('Add item functionality would be implemented here');
    });

    // Remove shipping address
    $('.btn-remove').click(function () {
        $('#txtShippingAddress').val('');
    });

    // Change shipping address
    $('.btn-change').click(function () {
        // This would typically open a modal to change address
        alert('Change address functionality would be implemented here');
    });

    // Calculate amounts when inputs change
    function bindCalculationEvents() {
        $('.qty-input, .price-input, .percent-input').off('input').on('input', function () {
            calculateRowAmount($(this).closest('tr'));
            updateTotals();
        });

        $('.tax-inputs select').off('change').on('change', function () {
            calculateRowAmount($(this).closest('tr'));
            updateTotals();
        });
    }

    // Calculate amount for a row
    function calculateRowAmount(row) {
        const qty = parseFloat(row.find('.qty-input').val()) || 0;
        const price = parseFloat(row.find('.price-input').val()) || 0;
        const discountPercent = parseFloat(row.find('.percent-input').val()) || 0;

        let amount = qty * price;

        // Calculate discount
        if (discountPercent > 0) {
            const discountAmount = amount * (discountPercent / 100);
            row.find('input[id^="txtDiscountAmount"]').val(discountAmount.toFixed(2));
            amount -= discountAmount;
        }

        // Calculate tax
        const taxPercent = parseFloat(row.find('select[id^="ddlTaxPercent"]').val()) || 0;
        if (taxPercent > 0) {
            const taxAmount = amount * (taxPercent / 100);
            row.find('input[id^="txtTaxAmount"]').val(taxAmount.toFixed(2));
            amount += taxAmount;
        }

        row.find('input[id^="txtAmount"]').val(amount.toFixed(2));
    }

    // Update totals
    function updateTotals() {
        let totalQty = 0;
        let totalTax = 0;
        let totalAmount = 0;

        $('.items-table tbody tr').each(function () {
            totalQty += parseFloat($(this).find('.qty-input').val()) || 0;
            totalTax += parseFloat($(this).find('input[id^="txtTaxAmount"]').val()) || 0;
            totalAmount += parseFloat($(this).find('input[id^="txtAmount"]').val()) || 0;
        });

        $('.total-qty').text(totalQty);
        $('.total-tax').text(totalTax.toFixed(2));
        $('.total-amount').text(totalAmount.toFixed(2));

        // Add shipping
        const shipping = parseFloat($('#txtShipping').val()) || 0;
        $('.shipping-total').text(shipping.toFixed(2));

        // Calculate final total
        let finalTotal = totalAmount + shipping;

        // Round off if checked
        if ($('#chkRoundOff').is(':checked')) {
            const roundedTotal = Math.round(finalTotal);
            const roundOff = roundedTotal - finalTotal;
            $('#txtRoundOff').val(roundOff.toFixed(2));
            finalTotal = roundedTotal;
        }

        $('#txtTotal').val(finalTotal.toFixed(2));
    }

    // Initialize calculations
    bindCalculationEvents();
    updateTotals();

    // Save button click
    $('.btn-save').click(function () {
        // This would typically submit the form or call an AJAX function
        alert('Save functionality would be implemented here');
        // In a real implementation, you would use:
        // __doPostBack('btnSave', '');
        // or
        // $('#form1').submit();
    });

    // Print button click
    $('.btn-print').click(function () {
        // This would typically open a print dialog or redirect to a print page
        alert('Print functionality would be implemented here');
    });

    // Link payment button click
    $('.btn-link-payment').click(function () {
        // This would typically open a payment modal or redirect to a payment page
        alert('Link payment functionality would be implemented here');
    });

    // Add image button click
    $('.btn-attachment:contains("ADD IMAGE")').click(function () {
        // This would typically open a file dialog
        alert('Add image functionality would be implemented here');
    });

    // Add document button click
    $('.btn-attachment:contains("ADD DOCUMENT")').click(function () {
        // This would typically open a file dialog
        alert('Add document functionality would be implemented here');
    });
});