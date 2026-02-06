<%@ Page Title="" Language="C#" MasterPageFile="~/Vyapar2.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="VyaparCopy2.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="dashboard-container">
        <div class="dashboard-stats">
            <div class="stat-card">
                <div class="stat-header">
                    <h3>Total Receivable</h3>
                </div>
                <div class="stat-value">
                    <span class="currency">₹</span> 20,532
                </div>
                <div class="stat-footer">
                    <span>From 12 Parties</span>
                    <div class="stat-icon down">
                        <i class="fas fa-arrow-down"></i>
                    </div>
                </div>
            </div>
            
            <div class="stat-card">
                <div class="stat-header">
                    <h3>Total Payable</h3>
                </div>
                <div class="stat-value">
                    <span class="currency">₹</span> 73,593
                </div>
                <div class="stat-footer">
                    <span>From 3 Parties</span>
                    <div class="stat-icon up">
                        <i class="fas fa-arrow-up"></i>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="dashboard-chart-container">
            <div class="chart-header">
                <div class="chart-title">
                    <h3>Total Sale</h3>
                    <div class="sale-value">
                        <span class="currency">₹</span> 460
                        <span class="sale-change">86% less than last month</span>
                    </div>
                </div>
                <div class="chart-filter">
                    <asp:DropDownList ID="ddlTimeFilter" runat="server" CssClass="form-control">
                        <asp:ListItem Text="This Month" Value="this-month"></asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            
            <div class="chart-area">
                <canvas id="saleChart" height="300"></canvas>
            </div>
            
            <div class="empty-state">
                <img src="Content/images/empty-store.png" alt="Empty Store" />
                <h3>It Looks So Empty in Here!</h3>
                <p>Add one of our widgets to get started and view your business operations</p>
            </div>
        </div>
        
        <div class="dashboard-reports">
            <div class="reports-header">
                <h3>Most Used Reports</h3>
                <a href="#" class="view-all">View All</a>
            </div>
            
            <div class="reports-grid">
                <div class="report-card">
                    <span>Sale Report</span>
                    <i class="fas fa-chevron-right"></i>
                </div>
                <div class="report-card">
                    <span>All Transactions</span>
                    <i class="fas fa-chevron-right"></i>
                </div>
                <div class="report-card">
                    <span>Daybook Report</span>
                    <i class="fas fa-chevron-right"></i>
                </div>
                <div class="report-card">
                    <span>Party Statement</span>
                    <i class="fas fa-chevron-right"></i>
                </div>
            </div>
            
            <div class="add-widget">
                <button type="button" class="btn-add-widget">
                    Add Widget of Your Choice <i class="fas fa-plus"></i>
                </button>
            </div>
        </div>
    </div>
</asp:Content>
