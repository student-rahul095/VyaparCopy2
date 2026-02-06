<%@ Page Title="" Language="C#" MasterPageFile="~/Vyapar2.Master" AutoEventWireup="true" CodeBehind="DeliveryChallan.aspx.cs" Inherits="VyaparCopy2.Scripts.DeliveryChallan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/DeliveryChallan.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="main-container">
            <!-- Header Section -->
            <div class="header">
                <h1>DELIVERY CHALLAN</h1>
            </div>

            <!-- Transactions Section -->
            <div class="transactions-container">
                <div class="transactions-header">
                    <h2>TRANSACTIONS</h2>
                </div>
                
                <div class="transactions-controls">
                    <div class="search-container">
                        <i class="fa fa-search search-icon"></i>
                        <input type="text" class="search-input" placeholder="Search..." />
                    </div>
                    
                    <div class="action-buttons">
                        <button type="button" id="btnBulkConvert" class="btn btn-outline">
                            Bulk Convert To Sale
                        </button>
                        <button type="button" id="btnAddChallan" class="btn btn-primary">
                            <i class="fa fa-plus"></i> Add Delivery Challan
                        </button>
                    </div>
                </div>
                
                <!-- Transactions Table -->
                <div class="table-container">
                    <table class="transactions-table">
                        <thead>
                            <tr>
                                <th class="sortable">
                                    <div class="th-content">
                                        <i class="fa fa-arrow-down sort-icon"></i>
                                        <span>DATE</span>
                                        <i class="fa fa-filter filter-icon"></i>
                                    </div>
                                </th>
                                <th class="sortable">
                                    <div class="th-content">
                                        <span>PARTY</span>
                                        <i class="fa fa-filter filter-icon"></i>
                                    </div>
                                </th>
                                <th class="sortable">
                                    <div class="th-content">
                                        <span>Challan</span>
                                        <i class="fa fa-filter filter-icon"></i>
                                    </div>
                                </th>
                                <th class="sortable">
                                    <div class="th-content">
                                        <span>DUE DATE</span>
                                        <i class="fa fa-filter filter-icon"></i>
                                    </div>
                                </th>
                                <th class="sortable">
                                    <div class="th-content">
                                        <span>TOTAL AMOUNT</span>
                                        <i class="fa fa-filter filter-icon"></i>
                                    </div>
                                </th>
                                <th class="sortable">
                                    <div class="th-content">
                                        <span>STATUS</span>
                                        <i class="fa fa-filter filter-icon"></i>
                                    </div>
                                </th>
                                <th>
                                    <div class="th-content">
                                        <span>ACTION</span>
                                    </div>
                                </th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>23/02/2022</td>
                                <td>Unique Small Scall Industry</td>
                                <td>3</td>
                                <td>
                                    <div class="due-date">
                                        <span>23/02/2022</span>
                                        <span class="overdue">Overdue: 1151 days</span>
                                    </div>
                                </td>
                                <td>₹ 0.00</td>
                                <td><span class="status-open">Open</span></td>
                                <td>
                                    <button type="button" class="btn btn-convert">CONVERT TO SALE</button>
                                </td>
                                <td>
                                    <button type="button" class="btn-more">
                                        <i class="fa fa-ellipsis-v"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td>23/02/2022</td>
                                <td>Unique Small Scall Industry</td>
                                <td>2</td>
                                <td>
                                    <div class="due-date">
                                        <span>23/02/2022</span>
                                        <span class="overdue">Overdue: 1151 days</span>
                                    </div>
                                </td>
                                <td>₹ 0.00</td>
                                <td><span class="status-open">Open</span></td>
                                <td>
                                    <button type="button" class="btn btn-convert">CONVERT TO SALE</button>
                                </td>
                                <td>
                                    <button type="button" class="btn-more">
                                        <i class="fa fa-ellipsis-v"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td>21/09/2021</td>
                                <td>Manisha Panda</td>
                                <td>1</td>
                                <td>
                                    <div class="due-date">
                                        <span>21/09/2021</span>
                                        <span class="overdue">Overdue: 1306 days</span>
                                    </div>
                                </td>
                                <td>₹ 1,365.00</td>
                                <td><span class="status-open">Open</span></td>
                                <td>
                                    <button type="button" class="btn btn-convert">CONVERT TO SALE</button>
                                </td>
                                <td>
                                    <button type="button" class="btn-more">
                                        <i class="fa fa-ellipsis-v"></i>
                                    </button>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

        <!-- Add Delivery Challan Modal -->
        <div id="addChallanModal" class="modal">
            <div class="modal-content">
                <div class="modal-header">
                    <h2>Add Delivery Challan</h2>
                    <span class="close">&times;</span>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label for="txtDate">Date</label>
                        <input type="date" id="txtDate" class="form-control" runat="server" />
                    </div>
                    <div class="form-group">
                        <label for="ddlParty">Party</label>
                        <asp:DropDownList ID="ddlParty" runat="server" CssClass="form-control">
                            <asp:ListItem Text="Unique Small Scall Industry" Value="1"></asp:ListItem>
                            <asp:ListItem Text="Manisha Panda" Value="2"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <label for="txtChallanNo">Challan No.</label>
                        <input type="text" id="txtChallanNo" class="form-control" runat="server" />
                    </div>
                    <div class="form-group">
                        <label for="txtDueDate">Due Date</label>
                        <input type="date" id="txtDueDate" class="form-control" runat="server" />
                    </div>
                    <div class="form-group">
                        <label for="txtAmount">Amount</label>
                        <input type="text" id="txtAmount" class="form-control" runat="server" />
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" id="btnCancel">Cancel</button>
                    <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-primary"   />
                </div>
            </div>
        </div>

        <!-- Scripts -->
        <%--<script src="Scripts/jquery-3.6.0.min.js"></script>--%>
    <script src="Scripts/DeliveryChallan.js"></script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Scripts" runat="server">
</asp:Content>
