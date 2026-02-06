<%@ Page Title="" Language="C#" MasterPageFile="~/Vyapar2.Master" AutoEventWireup="true" CodeBehind="ItemAdd.aspx.cs" Inherits="VyaparCopy2.ItemAdd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/ItemAdd.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <div>
            <button type="button" id="openModalBtn" class="btn-primary">Open Add Item Modal</button>
        </div>

        <!-- Modal Container -->
        <div id="addItemModal" class="modal">
            <!-- Modal Content -->
            <div class="modal-content">
                <!-- Modal Header -->
                <div class="modal-header">
                    <div class="header-left">
                        <h2>Add Item</h2>
                        <div class="toggle-container">
                            <span>Product</span>
                            <label class="switch">
                                <input type="checkbox" id="itemTypeToggle" />
                                <span class="slider round"></span>
                            </label>
                            <span>Service</span>
                        </div>
                    </div>
                    <div class="header-right">
                        <button type="button" class="icon-btn settings-btn">
                            <i class="fas fa-cog"></i>
                        </button>
                        <button type="button" class="icon-btn close-btn">
                            <i class="fas fa-times"></i>
                        </button>
                    </div>
                </div>

                <!-- Modal Body -->
                <div class="modal-body">
                    <!-- Item Details Section -->
                    <div class="form-row">
                        <div class="form-group">
                            <label for="itemName">Item Name <span class="required">*</span></label>
                            <asp:TextBox ID="itemName" runat="server" CssClass="form-control" placeholder="Item Name"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="itemHSN">Item HSN</label>
                            <div class="input-with-icon">
                                <asp:TextBox ID="itemHSN" runat="server" CssClass="form-control" placeholder="Item HSN"></asp:TextBox>
                                <i class="fas fa-search"></i>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="itemCode">Item Code</label>
                            <asp:TextBox ID="itemCode" runat="server" CssClass="form-control" placeholder="38632121338"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Button ID="selectUnitBtn" runat="server" Text="Select Unit" CssClass="btn-secondary" />
                        </div>
                    </div>

                    <div class="form-row">
                        <div class="form-group">
                            <label for="category">Category</label>
                            <asp:DropDownList ID="category" runat="server" CssClass="form-control">
                                <asp:ListItem Text="Select Category" Value=""></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="form-group">
                            <label for="description">Description</label>
                            <asp:TextBox ID="description" runat="server" CssClass="form-control" placeholder="Description"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <button type="button" class="btn-image">
                                <i class="fas fa-camera"></i> Add Item Image
                            </button>
                        </div>
                    </div>

                    <!-- Tabs Navigation -->
                    <div class="tabs-container">
                        <ul class="tabs-nav">
                            <li class="tab-item" data-tab="pricing">Pricing</li>
                            <li class="tab-item" data-tab="stock">Stock</li>
                            <li class="tab-item" data-tab="online-store">Online Store</li>
                            <li class="tab-item" data-tab="manufacturing">Manufacturing</li>
                        </ul>
                    </div>

                    <!-- Tab Content -->
                    <div class="tab-content">
                        <!-- Pricing Tab -->
                        <div id="pricing" class="tab-pane">
                            <div class="pricing-section">
                                <h3>Sale Price</h3>
                                <div class="form-row">
                                    <div class="form-group">
                                        <label for="salePrice">Sale Price</label>
                                        <asp:TextBox ID="salePrice" runat="server" CssClass="form-control" placeholder="Sale Price"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label for="salePriceTax">Tax</label>
                                        <asp:DropDownList ID="salePriceTax" runat="server" CssClass="form-control">
                                            <asp:ListItem Text="With Tax" Value="with-tax"></asp:ListItem>
                                            <asp:ListItem Text="Without Tax" Value="without-tax"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group">
                                        <label for="discountType">Disc. On Sale Price</label>
                                        <asp:TextBox ID="discountAmount" runat="server" CssClass="form-control" placeholder="Discount"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label for="discountType">&nbsp;</label>
                                        <asp:DropDownList ID="discountType" runat="server" CssClass="form-control">
                                            <asp:ListItem Text="Percentage" Value="percentage"></asp:ListItem>
                                            <asp:ListItem Text="Amount" Value="amount"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>

                                <div class="wholesale-section">
                                    <div class="section-header">
                                        <h3>Wholesale Price</h3>
                                        <button type="button" class="btn-remove">
                                            <i class="fas fa-times-circle"></i> Remove
                                        </button>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group">
                                            <label for="wholesalePrice">Wholesale Price</label>
                                            <asp:TextBox ID="wholesalePrice" runat="server" CssClass="form-control" placeholder="Wholesale Price"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label for="wholesaleTax">Tax</label>
                                            <asp:DropDownList ID="wholesaleTax" runat="server" CssClass="form-control">
                                                <asp:ListItem Text="Without Tax" Value="without-tax"></asp:ListItem>
                                                <asp:ListItem Text="With Tax" Value="with-tax"></asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                        <div class="form-group">
                                            <label for="minWholesaleQty">Minimum Wholesale Qty</label>
                                            <div class="input-with-icon">
                                                <asp:TextBox ID="minWholesaleQty" runat="server" CssClass="form-control" placeholder="Min Qty"></asp:TextBox>
                                                <i class="fas fa-info-circle"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-row">
                                    <div class="form-group col-half">
                                        <div class="section-box">
                                            <h3>Purchase Price</h3>
                                            <div class="form-row">
                                                <div class="form-group">
                                                    <label for="purchasePrice">Purchase Price</label>
                                                    <asp:TextBox ID="purchasePrice" runat="server" CssClass="form-control" placeholder="Purchase Price"></asp:TextBox>
                                                </div>
                                                <div class="form-group">
                                                    <label for="purchaseTax">Tax</label>
                                                    <asp:DropDownList ID="purchaseTax" runat="server" CssClass="form-control">
                                                        <asp:ListItem Text="Without Tax" Value="without-tax"></asp:ListItem>
                                                        <asp:ListItem Text="With Tax" Value="with-tax"></asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group col-half">
                                        <div class="section-box">
                                            <h3>Taxes</h3>
                                            <div class="form-row">
                                                <div class="form-group">
                                                    <label for="taxRate">Tax Rate</label>
                                                    <asp:DropDownList ID="taxRate" runat="server" CssClass="form-control">
                                                        <asp:ListItem Text="None" Value="none"></asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Stock Tab -->
                        <div id="stock" class="tab-pane">
                            <div class="stock-section">
                                <div class="form-row">
                                    <div class="form-group">
                                        <label for="openingQuantity">Opening Quantity</label>
                                        <div class="input-group">
                                            <asp:TextBox ID="openingQuantity" runat="server" CssClass="form-control" placeholder="Opening Quantity"></asp:TextBox>
                                            <span class="input-group-addon">Batch</span>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="atPrice">At Price</label>
                                        <div class="input-with-icon">
                                            <span class="currency-symbol">₹</span>
                                            <asp:TextBox ID="atPrice" runat="server" CssClass="form-control with-symbol" placeholder="Price"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="asOfDate">As Of Date</label>
                                        <div class="input-with-icon">
                                            <asp:TextBox ID="asOfDate" runat="server" CssClass="form-control" placeholder="DD/MM/YYYY" TextMode="Date"></asp:TextBox>
                                            <i class="fas fa-calendar"></i>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="form-group">
                                        <label for="minStockToMaintain">Min Stock To Maintain</label>
                                        <asp:TextBox ID="minStockToMaintain" runat="server" CssClass="form-control" placeholder="Min Stock To Maintain"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label for="location">Location</label>
                                        <asp:TextBox ID="location" runat="server" CssClass="form-control" placeholder="Location"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Online Store Tab -->
                        <div id="online-store" class="tab-pane">
                            <div class="online-store-section">
                                <h3>Online Store Price</h3>
                                <div class="form-row">
                                    <div class="form-group">
                                        <div class="input-with-icon">
                                            <span class="currency-symbol">₹</span>
                                            <asp:TextBox ID="onlineStorePrice" runat="server" CssClass="form-control with-symbol" placeholder="Online Store Price"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="onlineStoreDescription">Description</label>
                                        <asp:TextBox ID="onlineStoreDescription" runat="server" CssClass="form-control" placeholder="Description"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Manufacturing Tab -->
                        <div id="manufacturing" class="tab-pane">
                            <div class="manufacturing-section">
                                <h3>Raw Material</h3>
                                <div class="table-responsive">
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
                                                    <asp:TextBox ID="rawMaterialQty1" runat="server" CssClass="form-control" placeholder="1"></asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="rawMaterialUnit1" runat="server" CssClass="form-control">
                                                        <asp:ListItem Text="KILOGRAMS (KG)" Value="kg"></asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="rawMaterialPrice1" runat="server" CssClass="form-control" placeholder="85"></asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="rawMaterialCost1" runat="server" CssClass="form-control" placeholder="85" Enabled="false"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>
                                                    <asp:TextBox ID="rawMaterialName2" runat="server" CssClass="form-control" placeholder=""></asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="rawMaterialQty2" runat="server" CssClass="form-control" placeholder=""></asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="rawMaterialUnit2" runat="server" CssClass="form-control">
                                                        <asp:ListItem Text="None" Value="none"></asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="rawMaterialPrice2" runat="server" CssClass="form-control" placeholder="0"></asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="rawMaterialCost2" runat="server" CssClass="form-control" placeholder="0" Enabled="false"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>3</td>
                                                <td>
                                                    <asp:TextBox ID="rawMaterialName3" runat="server" CssClass="form-control" placeholder=""></asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="rawMaterialQty3" runat="server" CssClass="form-control" placeholder=""></asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="rawMaterialUnit3" runat="server" CssClass="form-control">
                                                        <asp:ListItem Text="None" Value="none"></asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="rawMaterialPrice3" runat="server" CssClass="form-control" placeholder="0"></asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="rawMaterialCost3" runat="server" CssClass="form-control" placeholder="0" Enabled="false"></asp:TextBox>
                                                </td>
                                            </tr>
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <td colspan="5">
                                                    <button type="button" class="btn-add-row">
                                                        <i class="fas fa-plus"></i> Add Row
                                                    </button>
                                                </td>
                                                <td class="text-right">
                                                    <strong>TOTAL: ₹ 85.00</strong>
                                                </td>
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>

                                <h3>Additional Cost</h3>
                                <div class="table-responsive">
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
                                                    <asp:DropDownList ID="additionalCostType1" runat="server" CssClass="form-control">
                                                        <asp:ListItem Text="Select" Value=""></asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="additionalCost1" runat="server" CssClass="form-control" placeholder=""></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>
                                                    <asp:DropDownList ID="additionalCostType2" runat="server" CssClass="form-control">
                                                        <asp:ListItem Text="Select" Value=""></asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="additionalCost2" runat="server" CssClass="form-control" placeholder=""></asp:TextBox>
                                                </td>
                                            </tr>
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <td colspan="2">
                                                    <div class="payment-type">
                                                        <span>Payment Type</span>
                                                        <asp:DropDownList ID="paymentType" runat="server" CssClass="form-control">
                                                            <asp:ListItem Text="Bank..." Value="bank"></asp:ListItem>
                                                        </asp:DropDownList>
                                                    </div>
                                                    <button type="button" class="btn-add-row">
                                                        <i class="fas fa-plus"></i> Add Row
                                                    </button>
                                                </td>
                                                <td class="text-right">
                                                    <strong>TOTAL: ₹ 0.00</strong>
                                                </td>
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>

                                <div class="total-cost-summary">
                                    <div class="alert alert-info">
                                        Total Estimated Cost (Raw Material + Additional Cost) = ₹ 85.00
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Modal Footer -->
                <div class="modal-footer">
                    <div class="footer-left">
                        <button type="button" class="btn-link">
                            Learn how to use Manufacturing <i class="fas fa-info-circle"></i>
                        </button>
                        <button type="button" class="btn-link">
                            <i class="fas fa-play-circle"></i> Watch Video
                        </button>
                    </div>
                    <div class="footer-right">
                        <asp:Button ID="saveAndNewBtn" runat="server" Text="Save & New" CssClass="btn-secondary" />
                        <asp:Button ID="saveBtn" runat="server" Text="Save" CssClass="btn-primary" />
                    </div>
                </div>
            </div>
        </div> 

    <%--<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>--%>
    <script src="Scripts/ItemAdd.js"></script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Scripts" runat="server">
</asp:Content>
