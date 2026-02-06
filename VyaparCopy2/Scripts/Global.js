$(document).ready(function () {
    // Toggle submenu for sidebar navigation
    $('.has-submenu').click(function (e) {
        e.preventDefault();

        // Toggle the active class on the parent li
        $(this).parent().toggleClass('active');

        // Toggle the submenu visibility
        const submenu = $(this).parent().find('.submenu');
        submenu.slideToggle(200);

        // Toggle the chevron icon
        const icon = $(this).find('.submenu-icon');
        if (icon.hasClass('fa-chevron-down')) {
            icon.removeClass('fa-chevron-down').addClass('fa-chevron-up');
        } else {
            icon.removeClass('fa-chevron-up').addClass('fa-chevron-down');
        }

        // Close other open submenus
        $('.has-submenu').not(this).parent().removeClass('active');
        $('.has-submenu').not(this).parent().find('.submenu').slideUp(200);
        $('.has-submenu').not(this).find('.submenu-icon.fa-chevron-up')
            .removeClass('fa-chevron-up').addClass('fa-chevron-down');
    });

    // Initialize tabs
    $('.tab').click(function (e) {
        e.preventDefault();

        // Get the tab id
        const tabId = $(this).data('tab');

        // Remove active class from all tabs and tab contents
        $('.tab').removeClass('active');
        $('.tab-content').removeClass('active').hide();

        // Add active class to clicked tab and show corresponding content
        $(this).addClass('active');
        $('#' + tabId).addClass('active').show();
    });

    // Initialize tab panes
    $('.nav-tabs a').click(function (e) {
        e.preventDefault();

        // Get the tab id
        const tabId = $(this).attr('href').substring(1);

        // Remove active class from all tab items and tab panes
        $('.tab-item').removeClass('active');
        $('.tab-pane').removeClass('active').hide();

        // Add active class to clicked tab item and show corresponding pane
        $(this).parent().addClass('active');
        $('#' + tabId).addClass('active').show();
    });

    // Initialize first tab as active
    $('.tabs li:first-child .tab').addClass('active');
    $('.tab-content:first').addClass('active').show();

    // Initialize first tab pane as active
    $('.nav-tabs li:first-child').addClass('active');
    $('.tab-pane:first').addClass('active').show();

    // Toggle product/service switch
    $('#chkService').change(function () {
        if ($(this).is(':checked')) {
            // Service is selected
            $('.product-only').hide();
        } else {
            // Product is selected
            $('.product-only').show();
        }
    });

    // Add row functionality
    $('.btn-add-row').click(function (e) {
        e.preventDefault();
        alert('Add row functionality would be implemented here');
    });

    // Remove wholesale price section
    $('#btnRemoveWholesale').click(function (e) {
        e.preventDefault();
        $(this).closest('.pricing-section').slideUp();
    });

    // Date picker initialization
    $('#txtAsOfDate').click(function () {
        // This would typically initialize a date picker
        alert('Date picker would open here');
    });

    // Window control buttons
    $('.window-controls .minimize').click(function () {
        alert('Window would be minimized');
    });

    $('.window-controls .maximize').click(function () {
        alert('Window would be maximized/restored');
    });

    $('.window-controls .close').click(function () {
        alert('Window would be closed');
    });

    // Add Sale button
    $('.btn-add-sale').click(function () {
        window.location.href = 'AddSale.aspx';
    });

    // Add Purchase button
    $('.btn-add-purchase').click(function () {
        window.location.href = 'AddPurchase.aspx';
    });

    // Add Item button
    $('.btn-add-item').click(function () {
        window.location.href = 'AddItem.aspx';
    });

    // Add Party button
    $('.btn-add-party').click(function () {
        window.location.href = 'AddParty.aspx';
    });

    // Add Category button
    $('.btn-add-category').click(function () {
        window.location.href = 'AddCategory.aspx';
    });

    // Add Unit button
    $('.btn-add-unit').click(function () {
        window.location.href = 'AddUnit.aspx';
    });

    // Add Conversion button
    $('.btn-add-conversion').click(function () {
        window.location.href = 'AddConversion.aspx';
    });

    // Move To This Category button
    $('.btn-move-category').click(function () {
        alert('Move to category functionality would be implemented here');
    });

    // Adjust Item button
    $('.btn-adjust-item').click(function () {
        window.location.href = 'AdjustItem.aspx';
    });

    // Item row selection
    $('.item-row, .party-row, .category-row, .unit-row').click(function () {
        // Remove selected class from all rows
        $(this).siblings().removeClass('selected');
        // Add selected class to clicked row
        $(this).addClass('selected');
    });

    // Filter functionality
    $('.fa-filter').click(function () {
        alert('Filter options would appear here');
    });

    // Sort functionality
    $('.fa-sort, .fa-sort-down, .fa-sort-up').click(function () {
        alert('Sort options would appear here');
    });

    // Initialize sales chart on home page if canvas exists
    if ($('#saleChart').length) {
        initializeSalesChart();
    }

    // Calculate raw material costs
    calculateRawMaterialCosts();

    // Handle raw material quantity changes
    $('input[id^="txtQty"]').change(function () {
        calculateRawMaterialCosts();
    });

    // Handle raw material price changes
    $('input[id^="txtPrice"]').change(function () {
        calculateRawMaterialCosts();
    });
});

// Function to initialize sales chart
function initializeSalesChart() {
    const ctx = document.getElementById('saleChart').getContext('2d');

    // Sample data for the chart
    const labels = ['1 Apr', '4 Apr', '7 Apr', '10 Apr', '13 Apr', '16 Apr', '19 Apr', '22 Apr', '25 Apr', '28 Apr'];
    const data = [0, 0, 0, 0, 460, 0, 0, 0, 0, 0];

    // Create gradient for the area under the line
    const gradient = ctx.createLinearGradient(0, 0, 0, 300);
    gradient.addColorStop(0, 'rgba(33, 150, 243, 0.4)');
    gradient.addColorStop(1, 'rgba(33, 150, 243, 0)');

    // Create the chart
    new Chart(ctx, {
        type: 'line',
        data: {
            labels: labels,
            datasets: [{
                label: 'Sales',
                data: data,
                borderColor: '#2196f3',
                backgroundColor: gradient,
                borderWidth: 2,
                pointBackgroundColor: '#2196f3',
                pointRadius: 4,
                pointHoverRadius: 6,
                fill: true,
                tension: 0.4
            }]
        },
        options: {
            responsive: true,
            maintainAspectRatio: false,
            scales: {
                y: {
                    beginAtZero: true,
                    grid: {
                        color: '#f0f0f0'
                    }
                },
                x: {
                    grid: {
                        display: false
                    }
                }
            },
            plugins: {
                legend: {
                    display: false
                },
                tooltip: {
                    backgroundColor: '#333',
                    titleColor: '#fff',
                    bodyColor: '#fff',
                    displayColors: false,
                    callbacks: {
                        label: function (context) {
                            return '₹ ' + context.parsed.y;
                        }
                    }
                }
            }
        }
    });
}

// Function to calculate raw material costs
function calculateRawMaterialCosts() {
    let totalCost = 0;

    // Loop through each row
    for (let i = 1; i <= 3; i++) {
        const qty = parseFloat($('#txtQty' + i).val()) || 0;
        const price = parseFloat($('#txtPrice' + i).val()) || 0;
        const cost = qty * price;

        // Update cost field
        $('#txtCost' + i).val(cost);

        // Add to total
        totalCost += cost;
    }

    // Update total cost
    $('.total-cost-box').text('Total Estimated Cost (Raw Material + Additional Cost) = ₹ ' + totalCost.toFixed(2));




    // Initialize sidebar dropdown functionality
    $('.dropdown-toggle').click(function (e) {
        e.preventDefault();
        $(this).parent().toggleClass('active');
    });

    // Initialize tab functionality
    function initTabs() {
        $('.nav-tabs a').click(function (e) {
            e.preventDefault();
            var tabId = $(this).attr('href');

            // Hide all tab panes
            $('.tab-pane').removeClass('active');

            // Show the selected tab pane
            $(tabId).addClass('active');

            // Update active tab
            $('.tab-item').removeClass('active');
            $(this).parent().addClass('active');
        });
    }

    // Initialize dropdown functionality
    function initDropdowns() {
        $('.dropdown-toggle').click(function () {
            $(this).siblings('.dropdown-menu').toggle();
        });

        $('.dropdown-item').click(function () {
            var selectedText = $(this).text();
            $(this).closest('.dropdown').find('.dropdown-toggle').text(selectedText);
            $(this).closest('.dropdown-menu').hide();
        });

        // Hide dropdown when clicking elsewhere
        $(document).click(function (e) {
            if (!$(e.target).closest('.dropdown').length) {
                $('.dropdown-menu').hide();
            }
        });
    }

    // Initialize context menu functionality
    function initContextMenu() {
        $('.btn-more-options').click(function (e) {
            e.stopPropagation();
            $(this).siblings('.context-menu').toggle();
        });

        // Hide context menu when clicking elsewhere
        $(document).click(function () {
            $('.context-menu').hide();
        });
    }

    // Initialize party item selection
    function initPartySelection() {
        $('.party-item').click(function () {
            $('.party-item').removeClass('selected');
            $(this).addClass('selected');
            // In a real application, you would load the party details here
        });
    }

    // Initialize form validation
    function initFormValidation() {
        $('.btn-success, .btn-primary').click(function () {
            var requiredFields = $('input[required], textarea[required]');
            var isValid = true;

            requiredFields.each(function () {
                if ($(this).val() === '') {
                    $(this).addClass('is-invalid');
                    isValid = false;
                } else {
                    $(this).removeClass('is-invalid');
                }
            });

            return isValid;
        });

        // Remove validation error on input
        $('input, textarea').on('input', function () {
            if ($(this).val() !== '') {
                $(this).removeClass('is-invalid');
            }
        });
    }

    // Call initialization functions
    initTabs();
    initDropdowns();
    initContextMenu();
    initPartySelection();
    initFormValidation();

    // Handle window resize events
    $(window).resize(function () {
        // Adjust UI elements based on window size
        if ($(window).width() < 768) {
            // Mobile view adjustments
            $('.sidebar').addClass('collapsed');
            $('.main-content').addClass('expanded');
        } else {
            // Desktop view adjustments
            $('.sidebar').removeClass('collapsed');
            $('.main-content').removeClass('expanded');
        }
    }).trigger('resize'); // Trigger on page load

    // Handle modal close button
    $('.btn-close, .btn-cancel').click(function () {
        $('.modal-overlay').hide();
    });

    // Prevent modal from closing when clicking inside
    $('.add-party-modal').click(function (e) {
        e.stopPropagation();
    });

    // Close modal when clicking on overlay
    $('.modal-overlay').click(function () {
        $(this).hide();
    });
}