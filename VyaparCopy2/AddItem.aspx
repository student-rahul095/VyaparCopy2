<%@ Page Title="" Language="C#" MasterPageFile="~/Vyapar2.Master" AutoEventWireup="true" CodeBehind="AddItem.aspx.cs" Inherits="VyaparCopy2.AddItem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="add-item-container">
        <div class="add-item-header">
            <h2>Add Item</h2>
            <div class="toggle-container">
                <span>Product</span>
                <label class="switch">
                    <asp:CheckBox ID="chkService" runat="server" />
                    <span class="slider round"></span>
                </label>
                <span>Service</span>
            </div>
            <div class="header-actions">
                <button type="button" class="btn-settings"><i class="fas fa-cog"></i></button>
                <button type="button" class="btn-close"><i class="fas fa-times"></i></button>
            </div>
        </div>

        <div class="add-item-form">
            <div class="form-row">
                <div class="form-group">
                    <label for="txtItemName">Item Name *</label>
                    <asp:TextBox ID="txtItemName" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="txtItemName">Item Name1 *</label>
                    <asp:TextBox ID="txtname1" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="txtItemName">Item Name2 *</label>
                    <asp:TextBox ID="txtname2" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="txtItemHSN">Item HSN</label>
                    <div class="input-with-icon">
                        <asp:TextBox ID="txtItemHSN" runat="server" CssClass="form-control"></asp:TextBox>
                        <i class="fas fa-search"></i>
                    </div>
                </div>
                <div class="form-group">
                    <label for="txtItemHSN">Item HSN1</label>
                    <div class="input-with-icon">
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                        <i class="fas fa-search"></i>
                    </div>
                </div>
                <div class="form-group">
                    <label for="txtItemCode">Item Code</label>
                    <div class="input-with-button">
                        <asp:TextBox ID="txtItemCode" runat="server" CssClass="form-control" Text="38632121338"></asp:TextBox>
                        <asp:Button ID="btnAssignCode" runat="server" Text="Assign Code" CssClass="btn-assign" />
                    </div>
                </div>
                <div class="form-group">
                    <asp:Button ID="btnSelectUnit" runat="server" Text="Select Unit" CssClass="btn-select-unit" />
                </div>
            </div>

            <div class="form-row">
                <div class="form-group">
                    <label for="ddlCategory">Category</label>
                    <asp:DropDownList ID="ddlCategory" runat="server" CssClass="form-control">
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <label for="txtDescription">Description</label>
                    <asp:TextBox ID="txtDescription" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:LinkButton ID="btnAddItemImage" runat="server" CssClass="btn-add-image">
                        <i class="fas fa-camera"></i> Add Item Image
                    </asp:LinkButton>
                </div>
            </div>

            <div class="tabs-container">
                <ul class="tabs">
                    <li><a href="#" class="tab" data-tab="pricing">Pricing</a></li>
                    <li><a href="#" class="tab" data-tab="stock">Stock</a></li>
                    <li><a href="#" class="tab" data-tab="online-store">Online Store</a></li>
                    <li><a href="#" class="tab" data-tab="manufacturing">Manufacturing</a></li>
                </ul>

                <div class="tab-content" id="pricing">
                    <div class="pricing-section">
                        <h3>Sale Price</h3>
                        <div class="price-inputs">
                            <div class="form-group">
                                <asp:TextBox ID="txtSalePrice" runat="server" CssClass="form-control" placeholder="Sale Price"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:DropDownList ID="ddlSaleTax" runat="server" CssClass="form-control">
                                    <asp:ListItem Text="Without Tax" Value="without-tax"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="form-group">
                                <asp:TextBox ID="txtDiscount" runat="server" CssClass="form-control" placeholder="Disc. On Sale Price"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:DropDownList ID="ddlDiscountType" runat="server" CssClass="form-control">
                                    <asp:ListItem Text="Percentage" Value="percentage"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>

                    <div class="pricing-section">
                        <h3>Wholesale Price
                            <asp:LinkButton ID="btnRemoveWholesale" runat="server"><i class="fas fa-times-circle"></i> Remove</asp:LinkButton></h3>
                        <div class="price-inputs">
                            <div class="form-group">
                                <asp:TextBox ID="txtWholesalePrice" runat="server" CssClass="form-control" placeholder="Wholesale Price"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:DropDownList ID="ddlWholesaleTax" runat="server" CssClass="form-control">
                                    <asp:ListItem Text="Without Tax" Value="without-tax"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="form-group">
                                <asp:TextBox ID="txtMinWholesaleQty" runat="server" CssClass="form-control" placeholder="Minimum Wholesale Qty"></asp:TextBox>
                                <i class="fas fa-info-circle"></i>
                            </div>
                        </div>
                    </div>

                    <div class="pricing-section">
                        <h3>Purchase Price</h3>
                        <div class="price-inputs">
                            <div class="form-group">
                                <asp:TextBox ID="txtPurchasePrice" runat="server" CssClass="form-control" placeholder="Purchase Price"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:DropDownList ID="ddlPurchaseTax" runat="server" CssClass="form-control">
                                    <asp:ListItem Text="Without Tax" Value="without-tax"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>

                    <div class="pricing-section">
                        <h3>Taxes</h3>
                        <div class="price-inputs">
                            <div class="form-group">
                                <label>Tax Rate</label>
                                <asp:DropDownList ID="ddlTaxRate" runat="server" CssClass="form-control">
                                    <asp:ListItem Text="None" Value="none"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="tab-content" id="stock">
                    <div class="stock-section">
                        <div class="form-row">
                            <div class="form-group">
                                <label for="txtOpeningQuantity">Opening Quantity</label>
                                <div class="input-with-badge">
                                    <asp:TextBox ID="txtOpeningQuantity" runat="server" CssClass="form-control"></asp:TextBox>
                                    <span class="badge">Batch</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="txtAtPrice">At Price</label>
                                <div class="input-with-currency">
                                    <span class="currency">₹</span>
                                    <asp:TextBox ID="txtAtPrice" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="txtAsOfDate">As Of Date</label>
                                <div class="input-with-icon">
                                    <asp:TextBox ID="txtAsOfDate" runat="server" CssClass="form-control" Text="19/04/2023"></asp:TextBox>
                                    <i class="fas fa-calendar"></i>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group">
                                <label for="txtMinStockToMaintain">Min Stock To Maintain</label>
                                <asp:TextBox ID="txtMinStockToMaintain" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="txtLocation">Location</label>
                                <asp:TextBox ID="txtLocation" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="tab-content" id="online-store">
                    <div class="online-store-section">
                        <div class="form-row">
                            <div class="form-group">
                                <label for="txtOnlineStorePrice">Online Store Price</label>
                                <div class="input-with-currency">
                                    <span class="currency">₹</span>
                                    <asp:TextBox ID="txtOnlineStorePrice" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="txtOnlineDescription">Description</label>
                                <asp:TextBox ID="txtOnlineDescription" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="tab-content" id="manufacturing">
                    <div class="manufacturing-section">
                        <h3>Raw Material</h3>
                        <div class="raw-material-table">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>RAW MATERIAL</th>
                                        <th>QTY</th>
                                        <th>UNIT</th>
                                        <th>PURCHASE PRICE/UNIT (₹)</th>
                                        <th>ESTIMATED COST (₹)</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>Amla Powder</td>
                                        <td>
                                            <asp:TextBox ID="txtQty1" runat="server" CssClass="form-control" Text="1"></asp:TextBox></td>
                                        <td>
                                            <asp:DropDownList ID="ddlUnit1" runat="server" CssClass="form-control">
                                                <asp:ListItem Text="KILOGRAMS (KG)" Value="kg"></asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtPrice1" runat="server" CssClass="form-control" Text="85"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox ID="txtCost1" runat="server" CssClass="form-control" Text="85" ReadOnly="true"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td></td>
                                        <td></td>
                                        <td>
                                            <asp:DropDownList ID="ddlUnit2" runat="server" CssClass="form-control">
                                                <asp:ListItem Text="None" Value="none"></asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtPrice2" runat="server" CssClass="form-control" Text="0"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox ID="txtCost2" runat="server" CssClass="form-control" Text="0" ReadOnly="true"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td></td>
                                        <td></td>
                                        <td>
                                            <asp:DropDownList ID="ddlUnit3" runat="server" CssClass="form-control">
                                                <asp:ListItem Text="None" Value="none"></asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtPrice3" runat="server" CssClass="form-control" Text="0"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox ID="txtCost3" runat="server" CssClass="form-control" Text="0" ReadOnly="true"></asp:TextBox></td>
                                    </tr>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <td colspan="5" class="text-right">TOTAL:</td>
                                        <td>₹ 85.00</td>
                                    </tr>
                                </tfoot>
                            </table>
                            <div class="add-row">
                                <asp:LinkButton ID="btnAddRow" runat="server" CssClass="btn-add-row"><i class="fas fa-plus"></i> Add Row</asp:LinkButton>
                            </div>
                        </div>

                        <div class="additional-cost">
                            <h3>Additional Cost</h3>
                            <div class="additional-cost-table">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>CHARGES</th>
                                            <th>ESTIMATED COST (₹)</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>
                                                <asp:DropDownList ID="ddlCharges1" runat="server" CssClass="form-control">
                                                    <asp:ListItem Text="Select" Value=""></asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>
                                                <asp:DropDownList ID="ddlCharges2" runat="server" CssClass="form-control">
                                                    <asp:ListItem Text="Select" Value=""></asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                            <td></td>
                                        </tr>
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <td colspan="2" class="text-right">
                                                <div class="payment-type">
                                                    <span>Payment Type</span>
                                                    <asp:DropDownList ID="ddlPaymentType" runat="server" CssClass="form-control">
                                                        <asp:ListItem Text="Bank..." Value="bank"></asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                                TOTAL:
                                            </td>
                                            <td>₹ 0.00</td>
                                        </tr>
                                    </tfoot>
                                </table>
                                <div class="add-row">
                                    <asp:LinkButton ID="btnAddCostRow" runat="server" CssClass="btn-add-row"><i class="fas fa-plus"></i> Add Row</asp:LinkButton>
                                </div>
                            </div>
                        </div>

                        <div class="total-cost">
                            <div class="total-cost-box">
                                Total Estimated Cost (Raw Material + Additional Cost) = ₹ 85.00
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="form-actions">
                <div class="learn-more">
                    <asp:LinkButton ID="btnLearnManufacturing" runat="server" CssClass="btn-learn">
                        Learn how to use Manufacturing <i class="fas fa-play-circle"></i> Watch Video
                    </asp:LinkButton>
                </div>
                <div class="save-actions">
                    <asp:Button ID="btnSaveNew" runat="server" Text="Save & New" CssClass="btn-save-new" />
                    <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn-save" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
