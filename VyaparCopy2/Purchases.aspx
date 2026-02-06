<%@ Page Title="" Language="C#" MasterPageFile="~/Vyapar2.Master" AutoEventWireup="true" CodeBehind="Purchases.aspx.cs" Inherits="VyaparCopy2.Purchases" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/Purchases.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <div class="purchase-container">
            <!-- Header Section -->
            <div class="header-section">
                <div class="filter-controls">
                    <div class="custom-dropdown">
                        <asp:DropDownList ID="ddlCustom" runat="server" CssClass="form-control">
                            <asp:ListItem Text="Custom" Value="Custom"></asp:ListItem>
                            <asp:ListItem Text="Today" Value="Today"></asp:ListItem>
                            <asp:ListItem Text="This Week" Value="This Week"></asp:ListItem>
                            <asp:ListItem Text="This Month" Value="This Month"></asp:ListItem>
                            <asp:ListItem Text="This Year" Value="This Year"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    
                    <div class="date-range">
                        <span class="between-label">Between</span>
                        <asp:TextBox ID="txtFromDate" runat="server" CssClass="form-control date-input" 
                            Text="03/07/2023" placeholder="From Date"></asp:TextBox>
                        <span class="to-label">To</span>
                        <asp:TextBox ID="txtToDate" runat="server" CssClass="form-control date-input" 
                            Text="30/04/2025" placeholder="To Date"></asp:TextBox>
                    </div>
                    
                    <div class="firm-dropdown">
                        <asp:DropDownList ID="ddlFirms" runat="server" CssClass="form-control">
                            <asp:ListItem Text="ALL FIRMS" Value="ALL"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    
                    <div class="user-dropdown">
                        <asp:DropDownList ID="ddlUsers" runat="server" CssClass="form-control">
                            <asp:ListItem Text="ALL USERS" Value="ALL"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                
                <div class="action-controls">
                    <button type="button" class="btn-excel" id="btnExcelReport">
                        <i class="fas fa-file-excel"></i>
                        <span>Excel Report</span>
                    </button>
                    <button type="button" class="btn-print" id="btnPrint">
                        <i class="fas fa-print"></i>
                        <span>Print</span>
                    </button>
                </div>
            </div>

            <!-- Summary Cards Section -->
            <div class="summary-section">
                <div class="summary-card paid-card">
                    <div class="card-content">
                        <div class="card-title">Paid</div>
                        <div class="card-amount">₹ <span id="paidAmount">16,186.00</span></div>
                    </div>
                    <div class="card-icon">+</div>
                </div>
                
                <div class="summary-card unpaid-card">
                    <div class="card-content">
                        <div class="card-title">Unpaid</div>
                        <div class="card-amount">₹ <span id="unpaidAmount">4,19,985.00</span></div>
                    </div>
                </div>
                
                <div class="summary-operator">=</div>
                
                <div class="summary-card total-card">
                    <div class="card-content">
                        <div class="card-title">Total</div>
                        <div class="card-amount">₹ <span id="totalAmount">4,36,171.00</span></div>
                    </div>
                </div>
            </div>

            <!-- Transactions Section -->
            <div class="transactions-section">
                <div class="section-header">
                    <h3>TRANSACTIONS</h3>
                    <button type="button" class="btn-add-purchase" id="btnAddPurchase">
                        <i class="fas fa-plus"></i> Add Purchase
                    </button>
                </div>
                
                <div class="search-container">
                    <asp:TextBox ID="txtSearch" runat="server" CssClass="search-input" 
                        placeholder="Search transactions..."></asp:TextBox>
                    <i class="fas fa-search search-icon"></i>
                </div>
                
                <div class="table-container">
                    <table class="transactions-table">
                        <thead>
                            <tr>
                                <th class="sortable" data-column="date">
                                    DATE <i class="fas fa-sort"></i>
                                </th>
                                <th class="sortable" data-column="invoice">
                                    INVOICE NO. <i class="fas fa-sort"></i>
                                </th>
                                <th class="sortable" data-column="party">
                                    PARTY NAME <i class="fas fa-sort"></i>
                                </th>
                                <th class="sortable" data-column="payment">
                                    PAYMENT TYPE <i class="fas fa-sort"></i>
                                </th>
                                <th class="sortable" data-column="amount">
                                    AMOUNT <i class="fas fa-sort"></i>
                                </th>
                                <th class="sortable" data-column="balance">
                                    BALANCE DUE <i class="fas fa-sort"></i>
                                </th>
                                <th class="sortable" data-column="status">
                                    STATUS <i class="fas fa-sort"></i>
                                </th>
                                <th>ACTIONS</th>
                            </tr>
                        </thead>
                        <tbody id="transactionsTableBody">
                            <asp:Repeater ID="rptTransactions" runat="server">
                                <ItemTemplate>
                                    <tr class="transaction-row" data-id='<%# Eval("Id") %>'>
                                        <td class="date-cell"><%# Eval("Date", "{0:dd/MM/yyyy}") %></td>
                                        <td class="invoice-cell"><%# Eval("InvoiceNo") %></td>
                                        <td class="party-cell"><%# Eval("PartyName") %></td>
                                        <td class="payment-cell"><%# Eval("PaymentType") %></td>
                                        <td class="amount-cell"><%# Eval("Amount") %></td>
                                        <td class="balance-cell"><%# Eval("BalanceDue") %></td>
                                        <td class="status-cell">
                                            <span class="status-badge <%# Eval("Status").ToString().ToLower() %>">
                                                <%# Eval("Status") %>
                                            </span>
                                        </td>
                                        <td class="actions-cell">
                                            <button type="button" class="btn-action btn-print-row" title="Print">
                                                <i class="fas fa-print"></i>
                                            </button>
                                            <button type="button" class="btn-action btn-share" title="Share">
                                                <i class="fas fa-share"></i>
                                            </button>
                                            <button type="button" class="btn-action btn-more" title="More Options">
                                                <i class="fas fa-ellipsis-v"></i>
                                            </button>
                                        </td>
                                    </tr>
                                </ItemTemplate>
                            </asp:Repeater>
                        </tbody>
                    </table>
                </div>
                
                <!-- Pagination -->
                <div class="pagination-container">
                    <div class="pagination-info">
                        Showing <span id="showingFrom">1</span> to <span id="showingTo">15</span> 
                        of <span id="totalRecords">150</span> entries
                    </div>
                    <div class="pagination-controls">
                        <button type="button" class="btn-page" id="btnPrevious">Previous</button>
                        <div class="page-numbers" id="pageNumbers">
                            <button type="button" class="btn-page-number active">1</button>
                            <button type="button" class="btn-page-number">2</button>
                            <button type="button" class="btn-page-number">3</button>
                            <span class="page-dots">...</span>
                            <button type="button" class="btn-page-number">10</button>
                        </div>
                        <button type="button" class="btn-page" id="btnNext">Next</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- Hidden fields for postback -->
        <asp:HiddenField ID="hdnCurrentPage" runat="server" Value="1" />
        <asp:HiddenField ID="hdnSortColumn" runat="server" Value="" />
        <asp:HiddenField ID="hdnSortDirection" runat="server" Value="ASC" />
        <asp:HiddenField ID="hdnSearchTerm" runat="server" Value="" />
    <script src="Scripts/Purchases.js"></script>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Scripts" runat="server">
</asp:Content>
