$(document).ready(function () {
    // Add Party Button Click - Show Modal
    $("#btnAddParty").click(function () {
        $("#addPartyModal").css("display", "block");
    });

    // Close Modal when clicking the X
    $(".close").click(function () {
        $("#addPartyModal").css("display", "none");
    });

    // Close Modal when clicking outside the modal
    $(window).click(function (event) {
        if ($(event.target).is("#addPartyModal")) {
            $("#addPartyModal").css("display", "none");
        }
    });

    // Party Item Click - Select Party
    $(document).on("click", ".party-item", function () {
        $(".party-item").removeClass("selected");
        $(this).addClass("selected");

        // In a real application, you would load the party details here
        // For demo purposes, we're just showing the static content
    });

    // Show Context Menu for Transaction Options
    $(document).on("click", ".table-row .options", function (e) {
        e.preventDefault();
        e.stopPropagation();

        var contextMenu = $("#contextMenu");

        // Position the context menu
        contextMenu.css({
            display: "block",
            left: e.pageX + "px",
            top: e.pageY + "px"
        });

        // Store the row reference for later use
        contextMenu.data("row", $(this).closest(".table-row"));
    });

    // Hide Context Menu when clicking elsewhere
    $(document).click(function () {
        $("#contextMenu").css("display", "none");
    });

    // Context Menu Item Click
    $("#contextMenu li").click(function () {
        var action = $(this).text().trim();
        var row = $("#contextMenu").data("row");

        // Handle different actions
        switch (action) {
            case "View/Edit":
                // Code to view/edit the transaction
                alert("View/Edit transaction");
                break;
            case "Delete":
                // Code to delete the transaction
                alert("Delete transaction");
                break;
            case "Duplicate":
                // Code to duplicate the transaction
                alert("Duplicate transaction");
                break;
            case "Open PDF":
                // Code to open PDF
                alert("Open PDF");
                break;
            case "Preview":
                // Code to preview the transaction
                alert("Preview transaction");
                break;
            case "Print":
                // Code to print the transaction
                alert("Print transaction");
                break;
            case "Convert To Return":
                // Code to convert to return
                alert("Convert to return");
                break;
            case "Make Payment":
                // Code to make payment
                alert("Make payment");
                break;
            case "Payment History":
                // Code to view payment history
                alert("View payment history");
                break;
            case "View History":
                // Code to view history
                alert("View history");
                break;
        }

        // Hide the context menu
        $("#contextMenu").css("display", "none");
    });

    // Toggle dropdown for Add Party button
    $(".dropdown-toggle").click(function (e) {
        e.stopPropagation();
        // Code to show dropdown options
        alert("Show dropdown options");
    });

    // More options button click
    $(".more-options").click(function (e) {
        e.stopPropagation();
        // Code to show more options
        alert("Show more options");
    });
});

// Function to close modal (used in server-side button)
function closeModal() {
    $("#addPartyModal").css("display", "none");
    return false;
}