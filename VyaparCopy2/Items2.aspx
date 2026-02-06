<%@ Page Title="" Language="C#" MasterPageFile="~/Vyapar2.Master" AutoEventWireup="true" CodeBehind="Items2.aspx.cs" Inherits="VyaparCopy2.Items2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <!-- Font Awesome for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link href="Content/Items.css" rel="stylesheet" />
    <script src="Scripts/Items.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <!-- Main Navigation Tabs -->
    <div class="nav-tabs-container">
        <ul class="nav-tabs">
            <li class="nav-tab" data-tab="products">PRODUCTS</li>
            <li class="nav-tab" data-tab="services">SERVICES</li>
            <li class="nav-tab" data-tab="category">CATEGORY</li>
            <li class="nav-tab active" data-tab="units">UNITS</li>
        </ul>
    </div>

    <!-- Tab Content -->
    <div class="tab-content">
        <!-- PRODUCTS Tab Content -->
        <div id="products" class="tab-pane">
            <h2>Products Content</h2>
            <p>Products tab content will go here.</p>
        </div>

        <!-- SERVICES Tab Content -->
        <div id="services" class="tab-pane">
            <h2>Services Content</h2>
            <p>Services tab content will go here.</p>
        </div>

        <!-- CATEGORY Tab Content -->
        <div id="category" class="tab-pane">
            <div class="content-container">
                <div class="left-panel">
                    <div class="search-container">
                        <button class="search-btn"><i class="fa fa-search"></i></button>
                    </div>
                    <button class="add-btn" id="addCategoryBtn">
                        <i class="fa fa-plus"></i> Add Category
                    </button>
                    <div class="list-header">
                        <div class="category-col">CATEGORY</div>
                        <div class="item-col">ITEM</div>
                    </div>
                    <div class="list-container">
                        <div class="list-item">
                            <div class="category-col">Items not in any Category</div>
                            <div class="item-col">77</div>
                            <div class="action-col"><i class="fa fa-ellipsis-v"></i></div>
                        </div>
                        <div class="list-item">
                            <div class="category-col">Printing</div>
                            <div class="item-col">1</div>
                            <div class="action-col"><i class="fa fa-ellipsis-v"></i></div>
                        </div>
                    </div>
                </div>
                <div class="right-panel">
                    <div class="panel-header">
                        <h3>ITEMS NOT IN ANY CATEGORY</h3>
                        <span class="item-count">77</span>
                    </div>
                    <div class="action-button">
                        <button class="move-btn">Move To This Category</button>
                    </div>
                    <div class="items-section">
                        <h3>ITEMS</h3>
                        <div class="search-box">
                            <input type="text" placeholder="Search...">
                            <i class="fa fa-search"></i>
                        </div>
                        <div class="items-table">
                            <div class="table-header">
                                <div class="name-col">NAME <i class="fa fa-filter"></i></div>
                                <div class="quantity-col">QUANTITY <i class="fa fa-filter"></i></div>
                                <div class="value-col">STOCK VALUE <i class="fa fa-filter"></i></div>
                            </div>
                            <div class="table-body">
                                <!-- Sample items -->
                                <div class="table-row">
                                    <div class="name-col">3 Ply Corrugated Box</div>
                                    <div class="quantity-col positive">2634</div>
                                    <div class="value-col">₹ 18,912.00</div>
                                </div>
                                <div class="table-row">
                                    <div class="name-col">5 Filtered Henna Powder</div>
                                    <div class="quantity-col negative">-15</div>
                                    <div class="value-col">₹ 0.00</div>
                                </div>
                                <!-- More items would go here -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- UNITS Tab Content -->
        <div id="units" class="tab-pane active">
            <div class="content-container">
                <div class="left-panel">
                    <div class="search-container">
                        <button class="search-btn"><i class="fa fa-search"></i></button>
                    </div>
                    <button class="add-btn" id="addUnitsBtn">
                        <i class="fa fa-plus"></i> Add Units
                    </button>
                    <div class="list-header">
                        <div class="fullname-col">FULLNAME</div>
                        <div class="shortname-col">SHORTNAME</div>
                    </div>
                    <div class="list-container">
                        <div class="list-item">
                            <div class="fullname-col">BAGS</div>
                            <div class="shortname-col">Bag</div>
                            <div class="action-col"><i class="fa fa-ellipsis-v"></i></div>
                        </div>
                        <div class="list-item">
                            <div class="fullname-col">BOTTLES</div>
                            <div class="shortname-col">Btl</div>
                            <div class="action-col"><i class="fa fa-ellipsis-v"></i></div>
                        </div>
                        <div class="list-item">
                            <div class="fullname-col">BOX</div>
                            <div class="shortname-col">Box</div>
                            <div class="action-col"><i class="fa fa-ellipsis-v"></i></div>
                        </div>
                        <div class="list-item">
                            <div class="fullname-col">BUNDLES</div>
                            <div class="shortname-col">Bdl</div>
                            <div class="action-col"><i class="fa fa-ellipsis-v"></i></div>
                        </div>
                        <div class="list-item">
                            <div class="fullname-col">CANS</div>
                            <div class="shortname-col">Can</div>
                            <div class="action-col"><i class="fa fa-ellipsis-v"></i></div>
                        </div>
                        <!-- More units would go here -->
                    </div>
                </div>
                <div class="right-panel">
                    <div class="panel-header">
                        <h3>BAGS</h3>
                    </div>
                    <div class="action-button">
                        <button class="conversion-btn">Add Conversion</button>
                    </div>
                    <div class="units-section">
                        <h3>UNITS</h3>
                        <div class="search-box">
                            <input type="text" placeholder="Search...">
                            <i class="fa fa-search"></i>
                        </div>
                        <div class="conversion-table">
                            <div class="table-header">
                                <div class="number-col">#</div>
                                <div class="conversion-col">CONVERSION</div>
                            </div>
                            <div class="table-body">
                                <div class="table-row">
                                    <div class="number-col">1</div>
                                    <div class="conversion-col">1 BAGS = 30 PIECES</div>
                                </div>
                                <div class="table-row">
                                    <div class="number-col">2</div>
                                    <div class="conversion-col">1 BAGS = 30 PACKS</div>
                                </div>
                                <!-- More conversions would go here -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal for Add Category -->
    <div id="addCategoryModal" class="modal">
        <div class="modal-content">
            <div class="modal-header">
                <h2>Add Category</h2>
                <span class="close">&times;</span>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <label for="categoryName">Category Name:</label>
                    <input type="text" id="categoryName" class="form-control" placeholder="Enter category name">
                </div>
                <div class="form-group">
                    <label for="categoryDescription">Description (Optional):</label>
                    <textarea id="categoryDescription" class="form-control" placeholder="Enter description"></textarea>
                </div>
            </div>
            <div class="modal-footer">
                <button class="cancel-btn">Cancel</button>
                <button class="save-btn">Save</button>
            </div>
        </div>
    </div>

    <!-- Modal for Add Units -->
    <div id="addUnitsModal" class="modal">
        <div class="modal-content">
            <div class="modal-header">
                <h2>Add Units</h2>
                <span class="close">&times;</span>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <label for="unitFullName">Full Name:</label>
                    <input type="text" id="unitFullName" class="form-control" placeholder="Enter full name (e.g. KILOGRAMS)">
                </div>
                <div class="form-group">
                    <label for="unitShortName">Short Name:</label>
                    <input type="text" id="unitShortName" class="form-control" placeholder="Enter short name (e.g. Kg)">
                </div>
            </div>
            <div class="modal-footer">
                <button class="cancel-btn">Cancel</button>
                <button class="save-btn">Save</button>
            </div>
        </div>
    </div>

  
    
  <%--  <!-- jQuery and Bootstrap JS (if needed) -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>--%>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Scripts" runat="server">
</asp:Content>
