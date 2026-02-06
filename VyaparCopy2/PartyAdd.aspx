<%@ Page Title="" Language="C#" MasterPageFile="~/Vyapar2.Master" AutoEventWireup="true" CodeBehind="PartyAdd.aspx.cs" Inherits="VyaparCopy2.PartyAdd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<!-- Add Party Modal Content -->
    <div class="modal-overlay">
        <div class="add-party-modal">
            <div class="modal-header">
                <h2 class="modal-title">Add Party</h2>
                <div class="modal-controls">
                    <button type="button" class="btn-settings">
                        <i class="icon-settings"></i>
                    </button>
                    <button type="button" id="btnCloseModal" class="btn-close">
                        <i class="icon-close"></i>
                    </button>
                </div>
            </div>

            <div class="modal-body">
                <div class="form-row">
                    <div class="form-group">
                        <label for="txtPartyName">Party Name *</label>
                        <input type="text" id="txtPartyName" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="txtGSTIN">GSTIN</label>
                        <div class="input-with-icon">
                            <input type="text" id="txtGSTIN" class="form-control" />
                            <i class="icon-info"></i>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="txtPhoneNumber">Phone Number</label>
                        <input type="text" id="txtPhoneNumber" class="form-control" />
                    </div>
                </div>

                <div class="tabs-container">
                    <ul class="nav-tabs">
                        <li class="tab-item active">
                            <a href="#tab-gst" data-toggle="tab">GST & Address</a>
                        </li>
                        <li class="tab-item">
                            <a href="#tab-credit" data-toggle="tab">Credit & Balance</a>
                        </li>
                        <li class="tab-item">
                            <a href="#tab-additional" data-toggle="tab">Additional Fields</a>
                        </li>
                    </ul>

                    <div class="tab-content">
                        <div id="tab-gst" class="tab-pane active">
                            <div class="form-group">
                                <label for="ddlGSTType">GST Type</label>
                                <div class="dropdown">
                                    <button class="dropdown-toggle" type="button" id="ddlGSTType" data-toggle="dropdown">
                                        Unregistered/Consumer
                                        <i class="icon-chevron-down"></i>
                                    </button>
                                    <div class="dropdown-menu">
                                        <a class="dropdown-item" href="#">Unregistered/Consumer</a>
                                        <a class="dropdown-item" href="#">Registered Business - Regular</a>
                                        <a class="dropdown-item" href="#">Registered Business - Composition</a>
                                    </div>
                                </div>
                            </div>

                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label for="txtBillingAddress">Billing Address</label>
                                    <textarea id="txtBillingAddress" class="form-control"></textarea>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="txtShippingAddress">Shipping Address</label>
                                    <textarea id="txtShippingAddress" class="form-control"></textarea>
                                </div>
                            </div>

                            <div class="form-check">
                                <input type="checkbox" id="chkDisableShipping" class="form-check-input" />
                                <label for="chkDisableShipping" class="form-check-label">Disable Shipping Address</label>
                                <button type="button" class="btn btn-add-address">Add</button>
                            </div>

                            <div class="form-group">
                                <label for="txtEmailID">Email ID</label>
                                <input type="email" id="txtEmailID" class="form-control" />
                            </div>
                        </div>

                        <div id="tab-credit" class="tab-pane">
                            <!-- Credit & Balance tab content -->
                            <p>Credit & Balance information will be displayed here.</p>
                        </div>

                        <div id="tab-additional" class="tab-pane">
                            <!-- Additional Fields tab content -->
                            <p>Additional fields will be displayed here.</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" id="btnCancel">Cancel</button>
                <button type="button" class="btn btn-primary" id="btnSaveAndNew">Save & New</button>
                <button type="button" class="btn btn-success" id="btnSave">Save</button>
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="Scripts" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            // Close modal and return to Party5.aspx
            $("#btnCloseModal, #btnCancel").click(function () {
                window.location.href = "Party5.aspx";
            });

            // Tab switching
            $(".nav-tabs a").click(function (e) {
                e.preventDefault();
                $(this).tab("show");
            });

            // Show dropdown menu
            $(".dropdown-toggle").click(function () {
                $(this).siblings(".dropdown-menu").toggle();
            });

            // Select dropdown item
            $(".dropdown-item").click(function () {
                var selectedText = $(this).text();
                $(this).closest(".dropdown").find(".dropdown-toggle").text(selectedText);
                $(this).closest(".dropdown-menu").hide();
            });

            // Hide dropdown when clicking elsewhere
            $(document).click(function (e) {
                if (!$(e.target).closest(".dropdown").length) {
                    $(".dropdown-menu").hide();
                }
            });

            // Save button click
            $("#btnSave").click(function () {
                // Validate form
                if ($("#txtPartyName").val() === "") {
                    alert("Party Name is required");
                    return;
                }

                // In a real application, you would save the party data here
                alert("Party saved successfully!");
                window.location.href = "Party5.aspx";
            });

            // Save & New button click
            $("#btnSaveAndNew").click(function () {
                // Validate form
                if ($("#txtPartyName").val() === "") {
                    alert("Party Name is required");
                    return;
                }

                // In a real application, you would save the party data here
                alert("Party saved successfully!");
                
                // Clear form for new entry
                $("#txtPartyName").val("");
                $("#txtGSTIN").val("");
                $("#txtPhoneNumber").val("");
                $("#txtBillingAddress").val("");
                $("#txtShippingAddress").val("");
                $("#txtEmailID").val("");
            });
        });
    </script>
</asp:Content>