<%@ Page Title="" Language="C#" MasterPageFile="~/Vyapar2.Master" AutoEventWireup="true" CodeBehind="SaleInvoice.aspx.cs" Inherits="VyaparCopy2.SaleInvoice" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/SaleInvoice.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <div class="dashboard-container">
            <!-- Filter Section -->
            <div class="filter-section">
                <div class="filter-group">
                    <div class="dropdown">
                        <button class="btn btn-secondary dropdown-toggle custom-dropdown" type="button">
                            Custom <i class="fa fa-chevron-down"></i>
                        </button>
                    </div>
                    <div class="date-filter">
                        <span class="date-label">Between</span>
                        <input type="text" class="form-control date-input" value="01/12/2024" />
                        <span class="date-label">To</span>
                        <input type="text" class="form-control date-input" value="11/01/2025" />
                    </div>
                </div>
                <div class="filter-group">
                    <div class="dropdown">
                        <asp:DropDownList ID="ddlFirms" runat="server" CssClass="form-control dropdown-select">
                            <asp:ListItem Text="ALL FIRMS" Value="0" Selected="True"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="dropdown">
                        <asp:DropDownList ID="ddlUsers" runat="server" CssClass="form-control dropdown-select">
                            <asp:ListItem Text="ALL USERS" Value="0" Selected="True"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="action-buttons">
                    <button type="button" class="btn btn-light action-btn" title="Graph">
                        <i class="fa fa-bar-chart"></i>
                    </button>
                    <button type="button" class="btn btn-light action-btn" title="Excel Report">
                        <i class="fa fa-file-excel-o"></i>
                    </button>
                    <button type="button" class="btn btn-light action-btn" title="Print">
                        <i class="fa fa-print"></i>
                    </button>
                </div>
            </div>

            <!-- Summary Section -->
            <div class="summary-section">
                <div class="summary-box paid">
                    <div class="summary-label">Paid</div>
                    <div class="summary-value">₹ 0.00</div>
                </div>
                <div class="operator">+</div>
                <div class="summary-box unpaid">
                    <div class="summary-label">Unpaid</div>
                    <div class="summary-value">₹ 4,485.00</div>
                </div>
                <div class="operator">=</div>
                <div class="summary-box total">
                    <div class="summary-label">Total</div>
                    <div class="summary-value">₹ 4,485.00</div>
                </div>
            </div>

            <!-- Transactions Section -->
            <div class="transactions-section">
                <div class="section-header">
                    <h4>TRANSACTIONS</h4>
                </div>
                <div class="transactions-controls">
                    <div class="search-box">
                        <i class="fa fa-search search-icon"></i>
                        <input type="text" class="form-control search-input" placeholder="Search..." />
                    </div>
                    <button type="button" id="btnAddSale" class="btn btn-primary add-sale-btn">
                        <i class="fa fa-plus"></i> Add Sale
                    </button>
                </div>
                <div class="transactions-table-container">
                    <asp:GridView ID="gvTransactions" runat="server" AutoGenerateColumns="false" CssClass="table transactions-table"
                        OnRowDataBound="gvTransactions_RowDataBound">
                        <Columns>
                            <asp:TemplateField HeaderText="DATE">
                                <HeaderTemplate>
                                    <div class="header-with-sort">
                                        DATE <i class="fa fa-sort"></i>
                                    </div>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <%# Eval("Date", "{0:dd/MM/yyyy}") %>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="INVOICE NO.">
                                <HeaderTemplate>
                                    <div class="header-with-sort">
                                        INVOICE NO. <i class="fa fa-sort"></i>
                                    </div>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <%# Eval("InvoiceNo") %>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="PARTY NAME">
                                <HeaderTemplate>
                                    <div class="header-with-sort">
                                        PARTY NAME <i class="fa fa-sort"></i>
                                    </div>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <%# Eval("PartyName") %>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="TRANSACTION TYPE">
                                <HeaderTemplate>
                                    <div class="header-with-sort">
                                        TRANSACTION TYPE <i class="fa fa-sort"></i>
                                    </div>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <%# Eval("TransactionType") %>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="PAYMENT TYPE">
                                <HeaderTemplate>
                                    <div class="header-with-sort">
                                        PAYMENT TYPE <i class="fa fa-sort"></i>
                                    </div>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <%# Eval("PaymentType") %>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="AMOUNT">
                                <HeaderTemplate>
                                    <div class="header-with-sort">
                                        AMOUNT <i class="fa fa-sort"></i>
                                    </div>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <%# Eval("Amount") %>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="BALANCE DUE">
                                <HeaderTemplate>
                                    <div class="header-with-sort">
                                        BALANCE DUE <i class="fa fa-sort"></i>
                                    </div>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <%# Eval("BalanceDue") %>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="STATUS">
                                <HeaderTemplate>
                                    <div class="header-with-sort">
                                        STATUS <i class="fa fa-sort"></i>
                                    </div>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <span class='<%# Eval("Status").ToString() == "Unpaid" ? "status-unpaid" : "status-paid" %>'>
                                        <%# Eval("Status") %>
                                    </span>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="">
                                <ItemTemplate>
                                    <div class="action-icons">
                                        <button type="button" class="btn btn-sm btn-light action-icon" title="Print">
                                            <i class="fa fa-print"></i>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-light action-icon" title="Share">
                                            <i class="fa fa-share-alt"></i>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-light action-icon" title="More">
                                            <i class="fa fa-ellipsis-v"></i>
                                        </button>
                                    </div>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>

        <!-- Add Sale Modal -->
        <div class="modal fade" id="addSaleModal" tabindex="-1" role="dialog" aria-labelledby="addSaleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="addSaleModalLabel">Add New Sale</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="txtDate">Date</label>
                                <input type="date" class="form-control" id="txtDate" runat="server" />
                            </div>
                            <div class="form-group col-md-6">
                                <label for="txtInvoiceNo">Invoice No.</label>
                                <input type="text" class="form-control" id="txtInvoiceNo" runat="server" />
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="txtPartyName">Party Name</label>
                                <input type="text" class="form-control" id="txtPartyName" runat="server" />
                            </div>
                            <div class="form-group col-md-6">
                                <label for="ddlTransactionType">Transaction Type</label>
                                <asp:DropDownList ID="ddlTransactionType" runat="server" CssClass="form-control">
                                    <asp:ListItem Text="Sale" Value="Sale" Selected="True"></asp:ListItem>
                                    <asp:ListItem Text="Purchase" Value="Purchase"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="ddlPaymentType">Payment Type</label>
                                <asp:DropDownList ID="ddlPaymentType" runat="server" CssClass="form-control">
                                    <asp:ListItem Text="Cash" Value="Cash" Selected="True"></asp:ListItem>
                                    <asp:ListItem Text="Credit" Value="Credit"></asp:ListItem>
                                    <asp:ListItem Text="UPI" Value="UPI"></asp:ListItem>
                                    <asp:ListItem Text="Bank Transfer" Value="Bank Transfer"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="txtAmount">Amount</label>
                                <input type="number" class="form-control" id="txtAmount" runat="server" />
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="txtBalanceDue">Balance Due</label>
                                <input type="number" class="form-control" id="txtBalanceDue" runat="server" />
                            </div>
                            <div class="form-group col-md-6">
                                <label for="ddlStatus">Status</label>
                                <asp:DropDownList ID="ddlStatus" runat="server" CssClass="form-control">
                                    <asp:ListItem Text="Paid" Value="Paid"></asp:ListItem>
                                    <asp:ListItem Text="Unpaid" Value="Unpaid" Selected="True"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                        <asp:Button ID="btnSaveSale" runat="server" Text="Save" CssClass="btn btn-primary"  />
                    </div>
                </div>
            </div>
        </div>

        <!-- Scripts -->
        <%--<script src="Scripts/jquery-3.6.0.min.js"></script>--%>
        <script src="Scripts/bootstrap.bundle.min.js"></script>
    <script src="Scripts/SaleInvoice.js"></script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Scripts" runat="server">
</asp:Content>
