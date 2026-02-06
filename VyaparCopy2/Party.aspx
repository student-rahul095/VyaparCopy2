<%@ Page Title="" Language="C#" MasterPageFile="~/Vyapar2.Master" AutoEventWireup="true" CodeBehind="Party.aspx.cs" Inherits="VyaparCopy2.Party" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet" />
    <link href="Content/PartyList.css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="Scripts/PartyList.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
   <%-- <div class="page-header">
        <h1>NAME</h1>
    </div>
    
    <div class="party-details-container">
        <div class="party-list-section">
            <div class="import-parties">
                <div class="import-icon">
                    <i class="fas fa-address-book"></i>
                </div>
                <div class="import-text">
                    <h4>Import Parties</h4>
                    <p>Use contacts from your Phone or Gmail to create parties.</p>
                </div>
                <div class="import-arrow">
                    <i class="fas fa-chevron-right"></i>
                </div>
            </div>
            
            <div class="search-parties">
                <div class="search-box">
                    <i class="fas fa-search"></i>
                </div>
            </div>
            
            <div class="add-party-container">
                <button type="button" class="btn-add-party">
                    <i class="fas fa-plus"></i> Add Party
                </button>
                <div class="dropdown-icon">
                    <i class="fas fa-chevron-down"></i>
                </div>
                <div class="more-options">
                    <i class="fas fa-ellipsis-v"></i>
                </div>
            </div>
            
            <div class="party-list-header">
                <div class="party-column">
                    <span>PARTY</span>
                    <i class="fas fa-filter"></i>
                </div>
                <div class="amount-column">
                    <span>AMOUNT</span>
                </div>
            </div>
            
            <div class="party-list">
                <div class="party-row selected">
                    <div class="party-name">A.G.PRINTERS</div>
                    <div class="party-amount">0.00</div>
                    <div class="party-options"><i class="fas fa-ellipsis-v"></i></div>
                </div>
                <div class="party-row">
                    <div class="party-name">Afroj</div>
                    <div class="party-amount">0.00</div>
                    <div class="party-options"><i class="fas fa-ellipsis-v"></i></div>
                </div>
                <div class="party-row">
                    <div class="party-name">Arihant Flexpack</div>
                    <div class="party-amount">0.00</div>
                    <div class="party-options"><i class="fas fa-ellipsis-v"></i></div>
                </div>
                <div class="party-row">
                    <div class="party-name">Armar Enterprises</div>
                    <div class="party-amount">0.00</div>
                    <div class="party-options"><i class="fas fa-ellipsis-v"></i></div>
                </div>
                <div class="party-row">
                    <div class="party-name">ART PACKAGING</div>
                    <div class="party-amount">0.00</div>
                    <div class="party-options"><i class="fas fa-ellipsis-v"></i></div>
                </div>
                <div class="party-row">
                    <div class="party-name">Asma beevi</div>
                    <div class="party-amount">0.00</div>
                    <div class="party-options"><i class="fas fa-ellipsis-v"></i></div>
                </div>
                <div class="party-row">
                    <div class="party-name">Ayesha karediya</div>
                    <div class="party-amount">0.00</div>
                    <div class="party-options"><i class="fas fa-ellipsis-v"></i></div>
                </div>
                <div class="party-row">
                    <div class="party-name">Aysha's Mehnd</div>
                    <div class="party-amount">676.80</div>
                    <div class="party-options"><i class="fas fa-ellipsis-v"></i></div>
                </div>
                <div class="party-row">
                    <div class="party-name">Basant khatri</div>
                    <div class="party-amount">0.00</div>
                    <div class="party-options"><i class="fas fa-ellipsis-v"></i></div>
                </div>
                <div class="party-row">
                    <div class="party-name">Benoy</div>
                    <div class="party-amount">0.00</div>
                    <div class="party-options"><i class="fas fa-ellipsis-v"></i></div>
                </div>
                <div class="party-row">
                    <div class="party-name">Bhohra Ram Himtts</div>
                    <div class="party-amount">19,575.00</div>
                    <div class="party-options"><i class="fas fa-ellipsis-v"></i></div>
                </div>
            </div>
        </div>
        
        <div class="party-detail-section">
            <div class="party-header">
                <h2>A.G.PRINTERS</h2>
                <div class="party-actions">
                    <button type="button" class="btn-whatsapp"><i class="fab fa-whatsapp"></i></button>
                    <button type="button" class="btn-call"><i class="fas fa-phone"></i></button>
                    <button type="button" class="btn-reminder"><i class="fas fa-bell"></i></button>
                </div>
            </div>
            
            <div class="party-info">
                <div class="info-row">
                    <div class="info-label">Phone:</div>
                    <div class="info-value">+919251422057</div>
                </div>
                <div class="info-row">
                    <div class="info-label">Address:</div>
                    <div class="info-value">Mod Bhatta, Sojat Road Marg, loc Mod Sojat City, Dist - Pali</div>
                </div>
                <div class="info-row">
                    <div class="info-label">Email:</div>
                    <div class="info-value">m9414123229@gmail.com</div>
                </div>
                <div class="info-row">
                    <div class="info-label">Gstin:</div>
                    <div class="info-value">08AJAPC7089E1ZB</div>
                </div>
                <div class="info-row">
                    <div class="info-label">No Credit Limit Set:</div>
                    <div class="info-value">
                        <a href="#" class="set-credit-limit">Set Credit Limit</a>
                    </div>
                </div>
                <div class="info-row">
                    <div class="info-label">Party Status:</div>
                    <div class="info-value">
                        <label class="switch">
                            <input type="checkbox" checked>
                            <span class="slider round"></span>
                        </label>
                    </div>
                </div>
            </div>
            
            <div class="transactions-section">
                <h3>TRANSACTIONS</h3>
                <div class="search-transactions">
                    <div class="search-box">
                        <i class="fas fa-search"></i>
                    </div>
                </div>
                
                <div class="transactions-table">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>TYPE <i class="fas fa-filter"></i></th>
                                <th>NUMBER <i class="fas fa-filter"></i></th>
                                <th>DATE <i class="fas fa-filter"></i></th>
                                <th>TOTAL <i class="fas fa-filter"></i></th>
                                <th>BALANCE/ UNUSED <i class="fas fa-filter"></i></th>
                                <th>STATUS <i class="fas fa-filter"></i></th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><span class="transaction-type purchase">Purchase</span></td>
                                <td>202</td>
                                <td>26/04/2024</td>
                                <td>₹ 7,887.00</td>
                                <td>₹ 5,000.00</td>
                                <td><span class="status partial">Partial</span></td>
                                <td><i class="fas fa-ellipsis-v"></i></td>
                            </tr>
                            <tr>
                                <td><span class="transaction-type payment">Payment-Out</span></td>
                                <td>32</td>
                                <td>28/02/2024</td>
                                <td>₹ 5,000.00</td>
                                <td>₹ 5,000.00</td>
                                <td><span class="status unused">Unused</span></td>
                                <td><i class="fas fa-ellipsis-v"></i></td>
                            </tr>
                            <tr>
                                <td><span class="transaction-type payment">Payment-Out</span></td>
                                <td></td>
                                <td>28/01/2022</td>
                                <td>₹ 4,990.00</td>
                                <td>₹ 4,990.00</td>
                                <td><span class="status unused">Unused</span></td>
                                <td><i class="fas fa-ellipsis-v"></i></td>
                            </tr>
                            <tr>
                                <td><span class="transaction-type purchase">Purchase</span></td>
                                <td>202</td>
                                <td>21/01/2022</td>
                                <td>₹ 4,990.00</td>
                                <td>₹ 4,990.00</td>
                                <td><span class="status unpaid">Unpaid</span></td>
                                <td><i class="fas fa-ellipsis-v"></i></td>
                            </tr>
                            <tr>
                                <td><span class="transaction-type payment">Payment-Out</span></td>
                                <td></td>
                                <td>12/01/2022</td>
                                <td>₹ 2,495.00</td>
                                <td>₹ 2,495.00</td>
                                <td><span class="status unused">Unused</span></td>
                                <td><i class="fas fa-ellipsis-v"></i></td>
                            </tr>
                            <tr>
                                <td><span class="transaction-type purchase">Purchase</span></td>
                                <td></td>
                                <td>10/01/2022</td>
                                <td>₹ 2,495.00</td>
                                <td>₹ 2,495.00</td>
                                <td><span class="status unpaid">Unpaid</span></td>
                                <td><i class="fas fa-ellipsis-v"></i></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                
                <div id="contextMenu" class="context-menu">
                    <div class="menu-item">View/Edit</div>
                    <div class="menu-item">Delete</div>
                    <div class="menu-item">Duplicate</div>
                    <div class="menu-item">Open PDF</div>
                    <div class="menu-item">Preview</div>
                    <div class="menu-item">Print</div>
                    <div class="menu-item">Convert To Return</div>
                    <div class="menu-item">Make Payment</div>
                    <div class="menu-item">Payment History</div>
                    <div class="menu-item">View History</div>
                </div>
            </div>
        </div>
    </div>--%>

   <%--<!-- Party List Page Content -->
    <div class="edit-profile-container">
        <!-- Header with Name -->
        <div class="list-header">
            <div class="header-title">NAME</div>
        </div>

        <!-- Import Parties Section -->
        <div class="import-parties-section">
            <div class="import-card">
                <div class="import-icon">
                    <i class="icon-import"></i>
                </div>
                <div class="import-content">
                    <h3>Import Parties</h3>
                    <p>Use contacts from your Phone or Gmail to create parties</p>
                </div>
                <div class="import-arrow">
                    <i class="icon-arrow-right"></i>
                </div>
            </div>
        </div>

        <!-- Party List and Details -->
        <div class="party-container">
            <!-- Left Side - Party List -->
            <div class="party-list">
                <div class="list-controls">
                    <div class="search-box">
                        <i class="icon-search"></i>
                    </div>
                    <div class="add-party-btn-container">
                        <button type="button" id="btnAddParty" class="btn btn-add-party">
                            <i class="icon-plus"></i> Add Party
                        </button>
                        <button type="button" class="btn btn-dropdown">
                            <i class="icon-chevron-down"></i>
                        </button>
                    </div>
                    <button type="button" class="btn btn-more-options">
                        <i class="icon-more"></i>
                    </button>
                </div>

                <div class="list-filters">
                    <div class="filter-label">PARTY</div>
                    <button class="btn-filter">
                        <i class="icon-filter"></i>
                    </button>
                    <div class="filter-label">AMOUNT</div>
                </div>

                <div class="party-items">
                    <div class="party-item selected">
                        <div class="party-name">A.G.PRINTERS</div>
                        <div class="party-amount">0.00</div>
                        <button class="btn-more-options">
                            <i class="icon-more"></i>
                        </button>
                    </div>
                    <div class="party-item">
                        <div class="party-name">Afroj</div>
                        <div class="party-amount">0.00</div>
                        <button class="btn-more-options">
                            <i class="icon-more"></i>
                        </button>
                    </div>
                    <div class="party-item">
                        <div class="party-name">Arihant Flexpack</div>
                        <div class="party-amount">0.00</div>
                        <button class="btn-more-options">
                            <i class="icon-more"></i>
                        </button>
                    </div>
                    <div class="party-item">
                        <div class="party-name">Armar Enterprises</div>
                        <div class="party-amount">0.00</div>
                        <button class="btn-more-options">
                            <i class="icon-more"></i>
                        </button>
                    </div>
                    <div class="party-item">
                        <div class="party-name">ART PACKAGING</div>
                        <div class="party-amount">0.00</div>
                        <button class="btn-more-options">
                            <i class="icon-more"></i>
                        </button>
                    </div>
                    <div class="party-item">
                        <div class="party-name">Asma beevi</div>
                        <div class="party-amount">0.00</div>
                        <button class="btn-more-options">
                            <i class="icon-more"></i>
                        </button>
                    </div>
                    <div class="party-item">
                        <div class="party-name">Ayesha karediya</div>
                        <div class="party-amount">0.00</div>
                        <button class="btn-more-options">
                            <i class="icon-more"></i>
                        </button>
                    </div>
                    <div class="party-item">
                        <div class="party-name">Aysha's Mehnd</div>
                        <div class="party-amount">676.80</div>
                        <button class="btn-more-options">
                            <i class="icon-more"></i>
                        </button>
                    </div>
                    <div class="party-item">
                        <div class="party-name">Basant khatri</div>
                        <div class="party-amount">0.00</div>
                        <button class="btn-more-options">
                            <i class="icon-more"></i>
                        </button>
                    </div>
                    <div class="party-item">
                        <div class="party-name">Benoy</div>
                        <div class="party-amount">0.00</div>
                        <button class="btn-more-options">
                            <i class="icon-more"></i>
                        </button>
                    </div>
                    <div class="party-item">
                        <div class="party-name">Bhotra Ram Himtts</div>
                        <div class="party-amount">19,575.00</div>
                        <button class="btn-more-options">
                            <i class="icon-more"></i>
                        </button>
                    </div>
                    <div class="party-item">
                        <div class="party-name">Boxify Shanti Packs</div>
                        <div class="party-amount">0.00</div>
                        <button class="btn-more-options">
                            <i class="icon-more"></i>
                        </button>
                    </div>
                    <div class="party-item">
                        <div class="party-name">Ganesh kesarwani</div>
                        <div class="party-amount">2,205.00</div>
                        <button class="btn-more-options">
                            <i class="icon-more"></i>
                        </button>
                    </div>
                    <div class="party-item">
                        <div class="party-name">Garima yadav</div>
                        <div class="party-amount">0.00</div>
                        <button class="btn-more-options">
                            <i class="icon-more"></i>
                        </button>
                    </div>
                    <div class="party-item">
                        <div class="party-name">Ghoomar Handloon</div>
                        <div class="party-amount">0.00</div>
                        <button class="btn-more-options">
                            <i class="icon-more"></i>
                        </button>
                    </div>
                    <div class="party-item">
                        <div class="party-name">Ghoomar Henna</div>
                        <div class="party-amount">7,540.00</div>
                        <button class="btn-more-options">
                            <i class="icon-more"></i>
                        </button>
                    </div>
                    <div class="party-item">
                        <div class="party-name">Jora Singh</div>
                        <div class="party-amount">0.00</div>
                        <button class="btn-more-options">
                            <i class="icon-more"></i>
                        </button>
                    </div>
                </div>
            </div>

            <!-- Right Side - Party Details -->
            <div class="party-details">
                <div class="party-header">
                    <h2 class="party-title">A.G.PRINTERS</h2>
                    <div class="party-actions">
                        <button class="btn-action btn-chat">
                            <i class="icon-chat"></i>
                        </button>
                        <button class="btn-action btn-whatsapp">
                            <i class="icon-whatsapp"></i>
                        </button>
                        <button class="btn-action btn-call">
                            <i class="icon-call"></i>
                        </button>
                    </div>
                </div>

                <div class="party-info">
                    <div class="info-row">
                        <div class="info-label">Phone:</div>
                        <div class="info-value">+919251422057</div>
                    </div>
                    <div class="info-row">
                        <div class="info-label">Address:</div>
                        <div class="info-value">Mod Bhata, Sojat Road Marg, loc Mod Sojat City, Dist - Pali</div>
                    </div>
                    <div class="info-row">
                        <div class="info-label">Email:</div>
                        <div class="info-value">m9414123229@gmail.com</div>
                    </div>
                    <div class="info-row">
                        <div class="info-label">Gstin:</div>
                        <div class="info-value">08AJAPC7089E1ZB</div>
                    </div>
                    <div class="info-row">
                        <div class="info-label">No Credit Limit Set:</div>
                        <div class="info-value">
                            <a href="#" class="link-set-limit">Set Credit Limit</a>
                        </div>
                    </div>
                    <div class="info-row">
                        <div class="info-label">Party Status:</div>
                        <div class="info-value">
                            <label class="switch">
                                <input type="checkbox" checked="checked" />
                                <span class="slider round"></span>
                            </label>
                        </div>
                    </div>
                </div>

                <div class="transactions-section">
                    <h3 class="section-title">TRANSACTIONS</h3>
                    <div class="search-container">
                        <input type="text" class="search-input" placeholder="Search transactions..." />
                        <i class="icon-search"></i>
                    </div>

                    <div class="transactions-table">
                        <div class="table-header">
                            <div class="header-cell">
                                <span>TYPE</span>
                                <button class="btn-filter"><i class="icon-filter"></i></button>
                            </div>
                            <div class="header-cell">
                                <span>NUMBER</span>
                                <button class="btn-filter"><i class="icon-filter"></i></button>
                            </div>
                            <div class="header-cell">
                                <span>DATE</span>
                                <button class="btn-filter"><i class="icon-filter"></i></button>
                            </div>
                            <div class="header-cell">
                                <span>TOTAL</span>
                                <button class="btn-filter"><i class="icon-filter"></i></button>
                            </div>
                            <div class="header-cell">
                                <span>BALANCE/UN...</span>
                                <button class="btn-filter"><i class="icon-filter"></i></button>
                            </div>
                            <div class="header-cell">
                                <span>STATUS</span>
                                <button class="btn-filter"><i class="icon-filter"></i></button>
                            </div>
                            <div class="header-cell"></div>
                        </div>

                        <div class="table-body">
                            <div class="table-row">
                                <div class="table-cell type-cell">
                                    <span class="type-indicator purchase"></span>
                                    <span>Purchase</span>
                                </div>
                                <div class="table-cell">26/04/2024</div>
                                <div class="table-cell">₹ 7,887.00</div>
                                <div class="table-cell">₹ 5,000.00</div>
                                <div class="table-cell">Partial</div>
                                <div class="table-cell">
                                    <button class="btn-more-options">
                                        <i class="icon-more"></i>
                                    </button>
                                    <div class="context-menu">
                                        <ul>
                                            <li><a href="#">View/Edit</a></li>
                                            <li><a href="#">Delete</a></li>
                                            <li><a href="#">Duplicate</a></li>
                                            <li><a href="#">Open PDF</a></li>
                                            <li><a href="#">Preview</a></li>
                                            <li><a href="#">Print</a></li>
                                            <li><a href="#">Convert To Return</a></li>
                                            <li><a href="#">Make Payment</a></li>
                                            <li><a href="#">Payment History</a></li>
                                            <li><a href="#">View History</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="table-row">
                                <div class="table-cell type-cell">
                                    <span class="type-indicator payment"></span>
                                    <span>Payment-Out</span>
                                </div>
                                <div class="table-cell">32</div>
                                <div class="table-cell">28/02/2024</div>
                                <div class="table-cell">₹ 5,000.00</div>
                                <div class="table-cell">₹ 5,000.00</div>
                                <div class="table-cell">Unused</div>
                                <div class="table-cell">
                                    <button class="btn-more-options">
                                        <i class="icon-more"></i>
                                    </button>
                                </div>
                            </div>
                            <div class="table-row">
                                <div class="table-cell type-cell">
                                    <span class="type-indicator payment"></span>
                                    <span>Payment-Out</span>
                                </div>
                                <div class="table-cell"></div>
                                <div class="table-cell">28/01/2022</div>
                                <div class="table-cell">₹ 4,990.00</div>
                                <div class="table-cell">₹ 4,990.00</div>
                                <div class="table-cell">Unused</div>
                                <div class="table-cell">
                                    <button class="btn-more-options">
                                        <i class="icon-more"></i>
                                    </button>
                                </div>
                            </div>
                            <div class="table-row">
                                <div class="table-cell type-cell">
                                    <span class="type-indicator purchase"></span>
                                    <span>Purchase</span>
                                </div>
                                <div class="table-cell">202</div>
                                <div class="table-cell">21/01/2022</div>
                                <div class="table-cell">₹ 4,990.00</div>
                                <div class="table-cell">₹ 4,990.00</div>
                                <div class="table-cell">Unpaid</div>
                                <div class="table-cell">
                                    <button class="btn-more-options">
                                        <i class="icon-more"></i>
                                    </button>
                                </div>
                            </div>
                            <div class="table-row">
                                <div class="table-cell type-cell">
                                    <span class="type-indicator payment"></span>
                                    <span>Payment-Out</span>
                                </div>
                                <div class="table-cell"></div>
                                <div class="table-cell">12/01/2022</div>
                                <div class="table-cell">₹ 2,495.00</div>
                                <div class="table-cell">₹ 2,495.00</div>
                                <div class="table-cell">Unused</div>
                                <div class="table-cell">
                                    <button class="btn-more-options">
                                        <i class="icon-more"></i>
                                    </button>
                                </div>
                            </div>
                            <div class="table-row">
                                <div class="table-cell type-cell">
                                    <span class="type-indicator purchase"></span>
                                    <span>Purchase</span>
                                </div>
                                <div class="table-cell"></div>
                                <div class="table-cell">10/01/2022</div>
                                <div class="table-cell">₹ 2,495.00</div>
                                <div class="table-cell">₹ 2,495.00</div>
                                <div class="table-cell">Unpaid</div>
                                <div class="table-cell">
                                    <button class="btn-more-options">
                                        <i class="icon-more"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>--%>



    <div class="container">
            <div class="header">
                <div class="header-text">NAME</div>
            </div>
            
            <div class="content">
                <div class="left-panel">
                    <div class="import-section">
                        <div class="import-icon">
                            <i class="fas fa-file-import"></i>
                        </div>
                        <div class="import-details">
                            <h3>Import Parties</h3>
                            <p>Use contacts from your Phone or Gmail to create parties.</p>
                        </div>
                        <div class="import-arrow">
                            <i class="fas fa-chevron-right"></i>
                        </div>
                    </div>
                    
                    <div class="search-section">
                        <div class="search-box">
                            <i class="fas fa-search"></i>
                        </div>
                        
                        <div class="add-party-section">
                            <button type="button" id="btnAddParty" class="btn-add-party">
                                <i class="fas fa-plus"></i> Add Party
                            </button>
                            <div class="dropdown-toggle">
                                <i class="fas fa-chevron-down"></i>
                            </div>
                            <div class="more-options">
                                <i class="fas fa-ellipsis-v"></i>
                            </div>
                        </div>
                    </div>
                    
                    <div class="party-list-header">
                        <div class="party-header">
                            <i class="fas fa-sort-up"></i> PARTY
                        </div>
                        <div class="filter-icon">
                            <i class="fas fa-filter"></i>
                        </div>
                        <div class="amount-header">AMOUNT</div>
                    </div>
                    
                    <div class="party-list">
                        <asp:Repeater ID="rptParties" runat="server">
                            <ItemTemplate>
                                <div class="party-item">
                                    <div class="party-name"><%# Eval("PartyName") %></div>
                                    <div class="party-amount"><%# Eval("Amount", "{0:0.00}") %></div>
                                    <div class="party-options"><i class="fas fa-ellipsis-v"></i></div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                        
                        <!-- Static items for demonstration -->
                        <div class="party-item selected">
                            <div class="party-name">A.G.PRINTERS</div>
                            <div class="party-amount">0.00</div>
                            <div class="party-options"><i class="fas fa-ellipsis-v"></i></div>
                        </div>
                        <div class="party-item">
                            <div class="party-name">Afroj</div>
                            <div class="party-amount">0.00</div>
                            <div class="party-options"><i class="fas fa-ellipsis-v"></i></div>
                        </div>
                        <div class="party-item">
                            <div class="party-name">Arihant Flexpack</div>
                            <div class="party-amount">0.00</div>
                            <div class="party-options"><i class="fas fa-ellipsis-v"></i></div>
                        </div>
                        <div class="party-item">
                            <div class="party-name">Armar Enterprises</div>
                            <div class="party-amount">0.00</div>
                            <div class="party-options"><i class="fas fa-ellipsis-v"></i></div>
                        </div>
                        <div class="party-item">
                            <div class="party-name">ART PACKAGING</div>
                            <div class="party-amount">0.00</div>
                            <div class="party-options"><i class="fas fa-ellipsis-v"></i></div>
                        </div>
                        <div class="party-item">
                            <div class="party-name">Asma beevi</div>
                            <div class="party-amount">0.00</div>
                            <div class="party-options"><i class="fas fa-ellipsis-v"></i></div>
                        </div>
                        <div class="party-item">
                            <div class="party-name">Ayesha karediya</div>
                            <div class="party-amount">0.00</div>
                            <div class="party-options"><i class="fas fa-ellipsis-v"></i></div>
                        </div>
                        <div class="party-item">
                            <div class="party-name">Aysha's Mehnd</div>
                            <div class="party-amount">676.80</div>
                            <div class="party-options"><i class="fas fa-ellipsis-v"></i></div>
                        </div>
                        <div class="party-item">
                            <div class="party-name">Basant khatri</div>
                            <div class="party-amount">0.00</div>
                            <div class="party-options"><i class="fas fa-ellipsis-v"></i></div>
                        </div>
                        <div class="party-item">
                            <div class="party-name">Benoy</div>
                            <div class="party-amount">0.00</div>
                            <div class="party-options"><i class="fas fa-ellipsis-v"></i></div>
                        </div>
                        <div class="party-item">
                            <div class="party-name">Bhohra Ram Himtte</div>
                            <div class="party-amount">19,575.00</div>
                            <div class="party-options"><i class="fas fa-ellipsis-v"></i></div>
                        </div>
                    </div>
                </div>
                
                <div class="right-panel">
                    <div class="party-details">
                        <div class="party-name">A.G.PRINTERS</div>
                        <div class="party-actions">
                            <div class="action-icon chat"><i class="fas fa-comment-alt"></i></div>
                            <div class="action-icon whatsapp"><i class="fab fa-whatsapp"></i></div>
                            <div class="action-icon reminder"><i class="fas fa-bell"></i></div>
                        </div>
                    </div>
                    
                    <div class="party-info">
                        <div class="info-row">
                            <div class="info-label">Phone:</div>
                            <div class="info-value">+919251422057</div>
                        </div>
                        <div class="info-row">
                            <div class="info-label">Email:</div>
                            <div class="info-value">m9414123229@gmail.com</div>
                        </div>
                        <div class="info-row">
                            <div class="info-label">Address:</div>
                            <div class="info-value">Mod Bhatta, Sojat Road Marg, loc Mod Sojat City, Dist : Pali</div>
                        </div>
                        <div class="info-row">
                            <div class="info-label">No Credit Limit Set:</div>
                            <div class="info-value">
                                <a href="#" class="set-credit-link">Set Credit Limit</a>
                            </div>
                            <div class="info-label">Gstin:</div>
                            <div class="info-value">08AJAPC7089E1ZB</div>
                        </div>
                        <div class="info-row">
                            <div class="info-label">Party Status:</div>
                            <div class="info-value">
                                <label class="switch">
                                    <input type="checkbox" checked="checked" />
                                    <span class="slider round"></span>
                                </label>
                            </div>
                        </div>
                    </div>
                    
                    <div class="transactions-section">
                        <div class="section-header">
                            <div class="section-title">TRANSACTIONS</div>
                            <div class="section-search">
                                <input type="text" placeholder="Search..." />
                                <i class="fas fa-search"></i>
                            </div>
                        </div>
                        
                        <div class="transactions-table">
                            <div class="table-header">
                                <div class="header-cell type">TYPE <i class="fas fa-filter"></i></div>
                                <div class="header-cell number">NUMBER <i class="fas fa-filter"></i></div>
                                <div class="header-cell date">DATE <i class="fas fa-filter"></i></div>
                                <div class="header-cell total">TOTAL <i class="fas fa-filter"></i></div>
                                <div class="header-cell balance">BALANCE/ UN... <i class="fas fa-filter"></i></div>
                                <div class="header-cell status">STATUS <i class="fas fa-filter"></i></div>
                                <div class="header-cell options"></div>
                            </div>
                            
                            <div class="table-body">
                                <div class="table-row">
                                    <div class="cell type"><span class="dot purchase"></span> Purchase</div>
                                    <div class="cell number"></div>
                                    <div class="cell date">26/04/2024</div>
                                    <div class="cell total">₹ 7,887.00</div>
                                    <div class="cell balance">₹ 5,000.00</div>
                                    <div class="cell status">Partial</div>
                                    <div class="cell options"><i class="fas fa-ellipsis-v"></i></div>
                                </div>
                                <div class="table-row">
                                    <div class="cell type"><span class="dot payment"></span> Payment-Out</div>
                                    <div class="cell number">32</div>
                                    <div class="cell date">28/02/2024</div>
                                    <div class="cell total">₹ 5,000.00</div>
                                    <div class="cell balance">₹ 5,000.00</div>
                                    <div class="cell status">Unpaid</div>
                                    <div class="cell options"><i class="fas fa-ellipsis-v"></i></div>
                                </div>
                                <div class="table-row">
                                    <div class="cell type"><span class="dot payment"></span> Payment-Out</div>
                                    <div class="cell number"></div>
                                    <div class="cell date">28/01/2022</div>
                                    <div class="cell total">₹ 4,990.00</div>
                                    <div class="cell balance">₹ 4,990.00</div>
                                    <div class="cell status">Unpaid</div>
                                    <div class="cell options"><i class="fas fa-ellipsis-v"></i></div>
                                </div>
                                <div class="table-row">
                                    <div class="cell type"><span class="dot purchase"></span> Purchase</div>
                                    <div class="cell number">202</div>
                                    <div class="cell date">21/01/2022</div>
                                    <div class="cell total">₹ 4,990.00</div>
                                    <div class="cell balance">₹ 4,990.00</div>
                                    <div class="cell status">Unpaid</div>
                                    <div class="cell options"><i class="fas fa-ellipsis-v"></i></div>
                                </div>
                                <div class="table-row">
                                    <div class="cell type"><span class="dot payment"></span> Payment-Out</div>
                                    <div class="cell number"></div>
                                    <div class="cell date">12/01/2022</div>
                                    <div class="cell total">₹ 2,495.00</div>
                                    <div class="cell balance">₹ 2,495.00</div>
                                    <div class="cell status">Unpaid</div>
                                    <div class="cell options"><i class="fas fa-ellipsis-v"></i></div>
                                </div>
                                <div class="table-row">
                                    <div class="cell type"><span class="dot purchase"></span> Purchase</div>
                                    <div class="cell number"></div>
                                    <div class="cell date">10/01/2022</div>
                                    <div class="cell total">₹ 2,495.00</div>
                                    <div class="cell balance">₹ 2,495.00</div>
                                    <div class="cell status">Unpaid</div>
                                    <div class="cell options"><i class="fas fa-ellipsis-v"></i></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <!-- Add Party Modal -->
        <div id="addPartyModal" class="modal">
            <div class="modal-content">
                <div class="modal-header">
                    <h2>Add New Party</h2>
                    <span class="close">&times;</span>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label for="txtPartyName">Party Name</label>
                        <asp:TextBox ID="txtPartyName" runat="server" CssClass="form-control" placeholder="Enter party name"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="txtPhone">Phone Number</label>
                        <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" placeholder="Enter phone number"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="txtEmail">Email</label>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Enter email address"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="txtAddress">Address</label>
                        <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3" placeholder="Enter address"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="txtGstin">GSTIN</label>
                        <asp:TextBox ID="txtGstin" runat="server" CssClass="form-control" placeholder="Enter GSTIN"></asp:TextBox>
                    </div>
                </div>
                <div class="modal-footer">
                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn btn-secondary" OnClientClick="return closeModal();" />
                    <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-primary"   />
                </div>
            </div>
        </div>
        
        <!-- Context Menu -->
        <div id="contextMenu" class="context-menu">
            <ul>
                <li><i class="fas fa-eye"></i> View/Edit</li>
                <li><i class="fas fa-trash"></i> Delete</li>
                <li><i class="fas fa-copy"></i> Duplicate</li>
                <li><i class="fas fa-file-pdf"></i> Open PDF</li>
                <li><i class="fas fa-search"></i> Preview</li>
                <li><i class="fas fa-print"></i> Print</li>
                <li><i class="fas fa-exchange-alt"></i> Convert To Return</li>
                <li><i class="fas fa-money-bill"></i> Make Payment</li>
                <li><i class="fas fa-history"></i> Payment History</li>
                <li><i class="fas fa-clock"></i> View History</li>
            </ul>
        </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="Scripts" runat="server">
   <%-- <script type="text/javascript">
        $(document).ready(function () {
            // Open Add Party modal when button is clicked
            $("#btnAddParty").click(function () {
                window.location.href = "Party6.aspx";
            });

            // Show context menu on more options click
            $(".btn-more-options").click(function (e) {
                e.stopPropagation();
                $(this).siblings(".context-menu").toggle();
            });

            // Hide context menu when clicking elsewhere
            $(document).click(function () {
                $(".context-menu").hide();
            });

            // Party item selection
            $(".party-item").click(function () {
                $(".party-item").removeClass("selected");
                $(this).addClass("selected");
                // In a real application, you would load the party details here
            });
        });
    </script>--%>
</asp:Content>
