<%@ Page Title="" Language="C#" MasterPageFile="~/Vyapar2.Master" AutoEventWireup="true" CodeBehind="EditProfile.aspx.cs" Inherits="VyaparCopy2.EditProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="edit-profile-container">
        <h2 class="page-title">Edit Profile</h2>
        
        <div class="profile-content">
            <div class="profile-logo">
                <img src="Content/images/pankhudi-logo.png" alt="Pankhudi Beauty Logo" class="company-logo" />
            </div>
            
            <div class="profile-form">
                <div class="form-section">
                    <h3>Business Details</h3>
                    <div class="form-row">
                        <div class="form-group">
                            <label for="txtBusinessName">Business Name*</label>
                            <asp:TextBox ID="txtBusinessName" runat="server" CssClass="form-control" Text="Pankhudi Beauty Products"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group">
                            <label for="txtPhoneNumber">Phone Number</label>
                            <asp:TextBox ID="txtPhoneNumber" runat="server" CssClass="form-control" Text="8005859094"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group">
                            <label for="txtGSTIN">GSTIN</label>
                            <div class="input-with-icon">
                                <asp:TextBox ID="txtGSTIN" runat="server" CssClass="form-control" Text="08BBCPD4011Q1ZR"></asp:TextBox>
                                <i class="fas fa-check-circle text-success"></i>
                            </div>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group">
                            <label for="txtEmailID">Email ID</label>
                            <asp:TextBox ID="txtEmailID" runat="server" CssClass="form-control" Text="help@pankhudhenna.com"></asp:TextBox>
                        </div>
                    </div>
                </div>
                
                <div class="form-section">
                    <h3>More Details</h3>
                    <div class="form-row">
                        <div class="form-group">
                            <label for="ddlBusinessType">Business Type</label>
                            <asp:DropDownList ID="ddlBusinessType" runat="server" CssClass="form-control">
                                <asp:ListItem Text="Manufacturing" Value="manufacturing"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group">
                            <label for="txtBusinessAddress">Business Address</label>
                            <asp:TextBox ID="txtBusinessAddress" runat="server" CssClass="form-control" TextMode="MultiLine" 
                                Text="Kailash Nagar Behind Ganga Petrol Pump Sojat City, Rajasthan 306104"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group">
                            <label for="ddlBusinessCategory">Business Category</label>
                            <asp:DropDownList ID="ddlBusinessCategory" runat="server" CssClass="form-control">
                                <asp:ListItem Text="Select Business Category" Value=""></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group">
                            <label for="ddlState">State</label>
                            <asp:DropDownList ID="ddlState" runat="server" CssClass="form-control">
                                <asp:ListItem Text="Rajasthan" Value="rajasthan"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group">
                            <label for="txtPincode">Pincode</label>
                            <asp:TextBox ID="txtPincode" runat="server" CssClass="form-control" Text="306104"></asp:TextBox>
                        </div>
                    </div>
                </div>
                
                <div class="form-section">
                    <h3>Add Signature</h3>
                    <div class="signature-box">
                        <img src="Content/images/signature.png" alt="Signature" class="signature-image" />
                    </div>
                </div>
            </div>
        </div>
        
        <div class="profile-footer">
            <div class="gst-promo">
                <a href="#" class="gst-link">Get GST Filing at Most Competitive Prices!</a>
            </div>
            <div class="action-buttons">
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn-cancel" />
                <asp:Button ID="btnSaveChanges" runat="server" Text="Save Changes" CssClass="btn-save-changes" />
            </div>
        </div>
    </div>
</asp:Content>
