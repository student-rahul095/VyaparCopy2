<%@ Page Title="" Language="C#" MasterPageFile="~/Vyapar2.Master" AutoEventWireup="true" CodeBehind="Company.aspx.cs" Inherits="VyaparCopy2.Company" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="profile-content">
    <div class="page-title">
        <h2>Company Profile</h2>
    </div>
    <div class="profile-divider"></div>

    <div class="company-logo-section">
        <div class="logo-preview">
            <img id="company-logo" alt="Company Logo" />
        </div>
    </div>

    <div class="profile-form">
        <div class="form-sections">
            <div class="form-section">
                <div class="section-title">Basic Information</div>
                <div class="form-group">
                    <label for="business-name">Business Name</label>
                    <input type="text" class="form-control" id="business-name" />
                </div>
                <div class="form-row">
                    <div class="form-group">
                        <label for="gstin">GSTIN <i class="info-icon fa fa-info-circle"></i></label>
                        <input type="text" class="form-control" id="gstin" />
                    </div>
                    <div class="form-group">
                        <label for="email">Email</label>
                        <input type="text" class="form-control" id="email" />
                    </div>
                </div>
                <div class="form-group">
                    <label for="phone-number">Phone Number</label>
                    <input type="text" class="form-control" id="phone-number" />
                </div>
            </div>

            <div class="form-section">
                <div class="section-title">Additional Details</div>
                <div class="form-row">
                    <div class="form-group">
                        <label for="business-type">Business Type</label>
                        <select class="form-control" id="business-type"></select>
                    </div>
                    <div class="form-group">
                        <label for="business-category">Category</label>
                        <select class="form-control" id="business-category"></select>
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group">
                        <label for="state">State</label>
                        <select class="form-control" id="state"></select>
                    </div>
                    <div class="form-group">
                        <label for="pincode">Pincode</label>
                        <input type="text" class="form-control" id="pincode" />
                    </div>
                </div>
                <div class="form-group">
                    <label for="business-address">Business Address</label>
                    <textarea class="form-control address-textarea" id="business-address"></textarea>
                </div>
            </div>
        </div>

        <div class="form-section">
            <div class="section-title">Authorized Signature</div>
            <div class="signature-container">
                <div class="signature-box">
                    <img id="signature-image" alt="Signature" />
                </div>
            </div>
        </div>

        <div class="profile-footer">
            <a class="promo-link" href="#">Need help updating your profile?</a>
            <div class="action-buttons">
                <button type="button" class="btn-cancel">Cancel</button>
                <button type="button" class="btn-save">Save</button>
            </div>
        </div>
    </div>
</div>

</asp:Content>
