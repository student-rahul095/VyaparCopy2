<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddSale.aspx.cs" Inherits="VyaparCopy2.AddSale" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Invoice Form</title>
    <link href="Content/AddSale.css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="Scripts/AddSale.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="invoice-container">
            <div class="header">
                <div class="company-info">
                    <span>A.G PRINTERS</span>
                    <button type="button" class="close-btn">×</button>
                    <button type="button" class="add-btn">+</button>
                </div>
                <div class="sale-type">
                    <div class="sale-type-item active">Sale</div>
                    <div class="toggle-container">
                        <label class="switch">
                            <input type="checkbox" id="creditToggle" />
                            <span class="slider round"></span>
                        </label>
                    </div>
                    <div class="sale-type-item">Credit</div>
                    <div class="sale-type-item">Cash</div>
                </div>
            </div>

            <div class="customer-info">
                <div class="info-row">
                    <div class="info-col">
                        <label>Customer *</label>
                        <div class="select-container">
                            <asp:DropDownList ID="ddlCustomer" runat="server" CssClass="form-control">
                                <asp:ListItem Text="A.G PRINTERS" Value="A.G PRINTERS"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="balance">BAL: 0</div>
                    </div>
                    <div class="info-col">
                        <label>Billing Name(Optional)</label>
                        <asp:TextBox ID="txtBillingName" runat="server" CssClass="form-control" Text="A.G PRINTERS"></asp:TextBox>
                    </div>
                    <div class="info-col">
                        <label>Phone No</label>
                        <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" Text="+919251422057"></asp:TextBox>
                    </div>
                    <div class="info-col right-align">
                        <label>Invoice Number</label>
                        <asp:TextBox ID="txtInvoiceNumber" runat="server" CssClass="form-control" Text="119"></asp:TextBox>
                    </div>
                </div>

                <div class="info-row">
                    <div class="info-col">
                        <label>Billing Address</label>
                        <asp:TextBox ID="txtBillingAddress" runat="server" CssClass="form-control address-box" TextMode="MultiLine" 
                            Text="Mod Bhatta, Sojat Road Marg, loc Mod
Sojat City, Dist - Pali"></asp:TextBox>
                    </div>
                    <div class="info-col">
                        <label>Shipping Address</label>
                        <asp:TextBox ID="txtShippingAddress" runat="server" CssClass="form-control address-box" TextMode="MultiLine" 
                            Text="Mod Bhatta, Sojat Road Marg, loc Mod
Sojat City, Dist - Pali"></asp:TextBox>
                        <div class="address-actions">
                            <button type="button" class="btn-remove">Remove</button>
                            <button type="button" class="btn-change">Change</button>
                        </div>
                    </div>
                    <div class="info-col right-align">
                        <label>Invoice Date</label>
                        <div class="date-input">
                            <asp:TextBox ID="txtInvoiceDate" runat="server" CssClass="form-control" Text="19/04/2025"></asp:TextBox>
                            <span class="calendar-icon">📅</span>
                        </div>
                        <label>State of supply</label>
                        <asp:DropDownList ID="ddlState" runat="server" CssClass="form-control">
                            <asp:ListItem Text="Select" Value=""></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
            </div>

            <div class="items-section">
                <table class="items-table">
                    <thead>
                        <tr>
                            <th class="barcode-col"><span class="barcode-icon">⋮⋮⋮</span></th>
                            <th>ITEM</th>
                            <th>DESCRIPTION</th>
                            <th>PACKING CH.</th>
                            <th>SIZE</th>
                            <th>QTY</th>
                            <th>UNIT</th>
                            <th>
                                PRICE/UNIT
                                <div class="price-unit-select">
                                    <asp:DropDownList ID="ddlPriceUnit" runat="server">
                                        <asp:ListItem Text="Without Tax" Value="Without Tax"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </th>
                            <th>
                                DISCOUNT
                                <div class="discount-cols">
                                    <div>%</div>
                                    <div>AMOUNT</div>
                                </div>
                            </th>
                            <th>
                                TAX
                                <div class="tax-cols">
                                    <div>%</div>
                                    <div>AMOUNT</div>
                                </div>
                            </th>
                            <th>AMOUNT</th>
                            <th class="add-item-col"><button type="button" class="add-item-btn">+</button></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td><asp:TextBox ID="txtItem1" runat="server" CssClass="form-control"></asp:TextBox></td>
                            <td><asp:TextBox ID="txtDesc1" runat="server" CssClass="form-control"></asp:TextBox></td>
                            <td><asp:TextBox ID="txtPacking1" runat="server" CssClass="form-control"></asp:TextBox></td>
                            <td><asp:TextBox ID="txtSize1" runat="server" CssClass="form-control"></asp:TextBox></td>
                            <td><asp:TextBox ID="txtQty1" runat="server" CssClass="form-control qty-input"></asp:TextBox></td>
                            <td>
                                <asp:DropDownList ID="ddlUnit1" runat="server" CssClass="form-control">
                                    <asp:ListItem Text="NONE" Value="NONE"></asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td><asp:TextBox ID="txtPrice1" runat="server" CssClass="form-control price-input"></asp:TextBox></td>
                            <td>
                                <div class="discount-inputs">
                                    <asp:TextBox ID="txtDiscountPercent1" runat="server" CssClass="form-control percent-input"></asp:TextBox>
                                    <asp:TextBox ID="txtDiscountAmount1" runat="server" CssClass="form-control amount-input"></asp:TextBox>
                                </div>
                            </td>
                            <td>
                                <div class="tax-inputs">
                                    <asp:DropDownList ID="ddlTaxPercent1" runat="server" CssClass="form-control">
                                        <asp:ListItem Text="Select" Value=""></asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:TextBox ID="txtTaxAmount1" runat="server" CssClass="form-control amount-input"></asp:TextBox>
                                </div>
                            </td>
                            <td><asp:TextBox ID="txtAmount1" runat="server" CssClass="form-control amount-input" ReadOnly="true"></asp:TextBox></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td><asp:TextBox ID="txtItem2" runat="server" CssClass="form-control"></asp:TextBox></td>
                            <td><asp:TextBox ID="txtDesc2" runat="server" CssClass="form-control"></asp:TextBox></td>
                            <td><asp:TextBox ID="txtPacking2" runat="server" CssClass="form-control"></asp:TextBox></td>
                            <td><asp:TextBox ID="txtSize2" runat="server" CssClass="form-control"></asp:TextBox></td>
                            <td><asp:TextBox ID="txtQty2" runat="server" CssClass="form-control qty-input"></asp:TextBox></td>
                            <td>
                                <asp:DropDownList ID="ddlUnit2" runat="server" CssClass="form-control">
                                    <asp:ListItem Text="NONE" Value="NONE"></asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td><asp:TextBox ID="txtPrice2" runat="server" CssClass="form-control price-input"></asp:TextBox></td>
                            <td>
                                <div class="discount-inputs">
                                    <asp:TextBox ID="txtDiscountPercent2" runat="server" CssClass="form-control percent-input"></asp:TextBox>
                                    <asp:TextBox ID="txtDiscountAmount2" runat="server" CssClass="form-control amount-input"></asp:TextBox>
                                </div>
                            </td>
                            <td>
                                <div class="tax-inputs">
                                    <asp:DropDownList ID="ddlTaxPercent2" runat="server" CssClass="form-control">
                                        <asp:ListItem Text="Select" Value=""></asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:TextBox ID="txtTaxAmount2" runat="server" CssClass="form-control amount-input"></asp:TextBox>
                                </div>
                            </td>
                            <td><asp:TextBox ID="txtAmount2" runat="server" CssClass="form-control amount-input" ReadOnly="true"></asp:TextBox></td>
                            <td></td>
                        </tr>
                    </tbody>
                    <tfoot>
                        <tr>
                            <td colspan="2">
                                <button type="button" class="btn-add-row">ADD ROW</button>
                            </td>
                            <td colspan="3" class="text-right">TOTAL</td>
                            <td class="total-qty">0</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td class="total-tax">0</td>
                            <td class="total-amount">0</td>
                            <td></td>
                        </tr>
                    </tfoot>
                </table>
            </div>

            <div class="footer-section">
                <div class="description-section">
                    <div class="description-box">
                        <label>Description</label>
                        <asp:TextBox ID="txtDescription" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                    </div>
                    <div class="attachment-buttons">
                        <button type="button" class="btn-attachment">
                            <span class="icon">📷</span> ADD IMAGE
                        </button>
                        <button type="button" class="btn-attachment">
                            <span class="icon">📄</span> ADD DOCUMENT
                        </button>
                    </div>
                </div>
                <div class="totals-section">
                    <div class="shipping-row">
                        <label>Shipping</label>
                        <asp:TextBox ID="txtShipping" runat="server" CssClass="form-control shipping-input"></asp:TextBox>
                        <div class="shipping-total">0</div>
                    </div>
                    <div class="round-off-row">
                        <div class="round-off-check">
                            <asp:CheckBox ID="chkRoundOff" runat="server" Checked="true" />
                            <label for="<%= chkRoundOff.ClientID %>">Round Off</label>
                        </div>
                        <asp:TextBox ID="txtRoundOff" runat="server" CssClass="form-control round-off-input" Text="0"></asp:TextBox>
                        <div class="total-label">Total</div>
                        <asp:TextBox ID="txtTotal" runat="server" CssClass="form-control total-input" ReadOnly="true"></asp:TextBox>
                    </div>
                </div>
            </div>

            <div class="action-buttons">
                <button type="button" class="btn-link-payment">
                    <span class="icon">🔗</span> LINK PAYMENT
                </button>
                <div class="right-buttons">
                    <div class="dropdown">
                        <button type="button" class="btn-print">Print</button>
                        <button type="button" class="btn-dropdown">▼</button>
                    </div>
                    <button type="button" class="btn-save">Save</button>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
