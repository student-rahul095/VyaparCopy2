<%@ Page Title="" Language="C#" MasterPageFile="~/Vyapar2.Master" AutoEventWireup="true" CodeBehind="Items.aspx.cs" Inherits="VyaparCopy2.Items" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <div class="item-list-container">
        <div class="tab-header">
            <ul class="nav-tabs">
                <li class="tab-item active"><a href="#products">PRODUCTS</a></li>
                <li class="tab-item"><a href="#services">SERVICES</a></li>
                <li class="tab-item"><a href="#category">CATEGORY</a></li>
                <li class="tab-item"><a href="#units">UNITS</a></li>
            </ul>
        </div>
        
        <div class="tab-content">
            <div class="tab-pane active" id="products">
                <div class="item-details">
                    <div class="item-header">
                        <div class="item-title">
                            <h3>3 PLY CORRUGATED BOX</h3>
                            <i class="fas fa-share-alt"></i>
                        </div>
                        <div class="item-actions">
                            <button type="button" class="btn-adjust-item">
                                <i class="fas fa-sliders-h"></i> ADJUST ITEM
                            </button>
                        </div>
                    </div>
                    
                    <div class="item-info">
                        <div class="info-row">
                            <div class="info-label">SALE PRICE:</div>
                            <div class="info-value">₹ 0.00 (excl)</div>
                        </div>
                        <div class="info-row">
                            <div class="info-label">PURCHASE PRICE:</div>
                            <div class="info-value">₹ 7.00 (excl)</div>
                        </div>
                        <div class="info-row">
                            <div class="info-label">STOCK QUANTITY:</div>
                            <div class="info-value">2634</div>
                        </div>
                        <div class="info-row">
                            <div class="info-label">STOCK VALUE:</div>
                            <div class="info-value">₹ 18,912.00</div>
                        </div>
                    </div>
                    
                    <div class="transactions-section">
                        <div class="section-header">
                            <h3>TRANSACTIONS</h3>
                            <div class="search-box">
                                <i class="fas fa-search"></i>
                            </div>
                        </div>
                        
                        <div class="transactions-table">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>TYPE <i class="fas fa-filter"></i></th>
                                        <th>INVOICE/ <i class="fas fa-filter"></i></th>
                                        <th>NAME <i class="fas fa-filter"></i></th>
                                        <th><i class="fas fa-sort-down"></i> DATE <i class="fas fa-filter"></i></th>
                                        <th>QUANTITY <i class="fas fa-filter"></i></th>
                                        <th>PRICE/UNIT <i class="fas fa-filter"></i></th>
                                        <th>STATUS <i class="fas fa-filter"></i></th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td><span class="transaction-type purchase">Purchase</span></td>
                                        <td>4074</td>
                                        <td>Satyam Packaging</td>
                                        <td>03/03/2023</td>
                                        <td>212 Box</td>
                                        <td>₹ 6.50</td>
                                        <td><span class="status unpaid">Unpaid</span></td>
                                        <td><i class="fas fa-ellipsis-v"></i></td>
                                    </tr>
                                    <tr>
                                        <td><span class="transaction-type purchase">Purchase</span></td>
                                        <td>4074</td>
                                        <td>Satyam Packaging</td>
                                        <td>03/03/2023</td>
                                        <td>210 Box</td>
                                        <td>₹ 12.50</td>
                                        <td><span class="status unpaid">Unpaid</span></td>
                                        <td><i class="fas fa-ellipsis-v"></i></td>
                                    </tr>
                                    <tr>
                                        <td><span class="transaction-type purchase">Purchase</span></td>
                                        <td>4074</td>
                                        <td>Satyam Packaging</td>
                                        <td>22/08/2022</td>
                                        <td>324 Box</td>
                                        <td>₹ 6.50</td>
                                        <td><span class="status unpaid">Unpaid</span></td>
                                        <td><i class="fas fa-ellipsis-v"></i></td>
                                    </tr>
                                    <tr>
                                        <td><span class="transaction-type purchase">Purchase</span></td>
                                        <td>4074</td>
                                        <td>Satyam Packaging</td>
                                        <td>22/08/2022</td>
                                        <td>323 Box</td>
                                        <td>₹ 7.00</td>
                                        <td><span class="status unpaid">Unpaid</span></td>
                                        <td><i class="fas fa-ellipsis-v"></i></td>
                                    </tr>
                                    <tr>
                                        <td><span class="transaction-type purchase">Purchase</span></td>
                                        <td>2798</td>
                                        <td>Satyam Packaging</td>
                                        <td>17/12/2021</td>
                                        <td>420 Box</td>
                                        <td>₹ 6.50</td>
                                        <td><span class="status unpaid">Unpaid</span></td>
                                        <td><i class="fas fa-ellipsis-v"></i></td>
                                    </tr>
                                    <tr>
                                        <td><span class="transaction-type purchase">Purchase</span></td>
                                        <td>2798</td>
                                        <td>Satyam Packaging</td>
                                        <td>17/12/2021</td>
                                        <td>426 Box</td>
                                        <td>₹ 7.00</td>
                                        <td><span class="status unpaid">Unpaid</span></td>
                                        <td><i class="fas fa-ellipsis-v"></i></td>
                                    </tr>
                                    <tr>
                                        <td><span class="transaction-type purchase">Purchase</span></td>
                                        <td>2774</td>
                                        <td>Satyam Packaging</td>
                                        <td>25/11/2021</td>
                                        <td>406 Box</td>
                                        <td>₹ 6.50</td>
                                        <td><span class="status paid">Paid</span></td>
                                        <td><i class="fas fa-ellipsis-v"></i></td>
                                    </tr>
                                    <tr>
                                        <td><span class="transaction-type purchase">Purchase</span></td>
                                        <td>2707</td>
                                        <td>Satyam Packaging</td>
                                        <td>09/10/2021</td>
                                        <td>313 Box</td>
                                        <td>₹ 7.00</td>
                                        <td><span class="status paid">Paid</span></td>
                                        <td><i class="fas fa-ellipsis-v"></i></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                
                <div class="item-sidebar">
                    <div class="bulk-update">
                        <div class="bulk-icon">
                            <i class="fas fa-boxes"></i>
                        </div>
                        <div class="bulk-text">
                            <h4>Bulk Items Update</h4>
                            <p>Update/Edit multiple items at a time.</p>
                        </div>
                    </div>
                    
                    <div class="search-items">
                        <i class="fas fa-search"></i>
                    </div>
                    
                    <div class="add-item-container">
                        <button type="button" class="btn-add-item">
                            <i class="fas fa-plus"></i> Add Item
                        </button>
                        <div class="dropdown-icon">
                            <i class="fas fa-chevron-down"></i>
                        </div>
                        <div class="more-options">
                            <i class="fas fa-ellipsis-v"></i>
                        </div>
                    </div>
                    
                    <div class="item-list-header">
                        <div class="sort-icon">
                            <i class="fas fa-sort"></i> ITEM
                        </div>
                        <div class="filter-icon">
                            <i class="fas fa-filter"></i>
                        </div>
                        <div>QUANTITY</div>
                    </div>
                    
                    <div class="items-list">
                        <div class="item-row selected">
                            <div class="item-name">3 Ply Corrugated Box</div>
                            <div class="item-quantity">2634</div>
                            <div class="item-options"><i class="fas fa-ellipsis-v"></i></div>
                        </div>
                        <div class="item-row">
                            <div class="item-name">5 Filtered Henna Powder</div>
                            <div class="item-quantity negative">-15</div>
                            <div class="item-options"><i class="fas fa-ellipsis-v"></i></div>
                        </div>
                        <div class="item-row">
                            <div class="item-name">Alovera Powder</div>
                            <div class="item-quantity">5</div>
                            <div class="item-options"><i class="fas fa-ellipsis-v"></i></div>
                        </div>
                        <div class="item-row">
                            <div class="item-name">Amla Powder</div>
                            <div class="item-quantity">118.4</div>
                            <div class="item-options"><i class="fas fa-ellipsis-v"></i></div>
                        </div>
                        <div class="item-row">
                            <div class="item-name">Aritha Powder</div>
                            <div class="item-quantity">111.5</div>
                            <div class="item-options"><i class="fas fa-ellipsis-v"></i></div>
                        </div>
                        <div class="item-row">
                            <div class="item-name">Beetroot powder</div>
                            <div class="item-quantity">0.3</div>
                            <div class="item-options"><i class="fas fa-ellipsis-v"></i></div>
                        </div>
                        <div class="item-row">
                            <div class="item-name">Behera Powder</div>
                            <div class="item-quantity negative">-0.25</div>
                            <div class="item-options"><i class="fas fa-ellipsis-v"></i></div>
                        </div>
                        <div class="item-row">
                            <div class="item-name">Belly Henna 1kg Pack</div>
                            <div class="item-quantity negative">-16</div>
                            <div class="item-options"><i class="fas fa-ellipsis-v"></i></div>
                        </div>
                        <div class="item-row">
                            <div class="item-name">Bhavnagar Herbal Henna Brown 30gm</div>
                            <div class="item-quantity">0.33</div>
                            <div class="item-options"><i class="fas fa-ellipsis-v"></i></div>
                        </div>
                        <div class="item-row">
                            <div class="item-name">Bhawnagar Herbal Henna Black - 40 Gm</div>
                            <div class="item-quantity">41.23</div>
                            <div class="item-options"><i class="fas fa-ellipsis-v"></i></div>
                        </div>
                        <div class="item-row">
                            <div class="item-name">Bhringraj dry leaves</div>
                            <div class="item-quantity negative">-5</div>
                            <div class="item-options"><i class="fas fa-ellipsis-v"></i></div>
                        </div>
                        <div class="item-row">
                            <div class="item-name">bhringraj Powder</div>
                            <div class="item-quantity negative">-5</div>
                            <div class="item-options"><i class="fas fa-ellipsis-v"></i></div>
                        </div>
                        <div class="item-row">
                            <div class="item-name">brahmi Powder</div>
                            <div class="item-quantity negative">-5</div>
                            <div class="item-options"><i class="fas fa-ellipsis-v"></i></div>
                        </div>
                        <div class="item-row">
                            <div class="item-name">Bridal Oil</div>
                            <div class="item-quantity">1.3</div>
                            <div class="item-options"><i class="fas fa-ellipsis-v"></i></div>
                        </div>
                        <div class="item-row">
                            <div class="item-name">Cellophane Paper</div>
                            <div class="item-quantity negative">-6.5</div>
                            <div class="item-options"><i class="fas fa-ellipsis-v"></i></div>
                        </div>
                        <div class="item-row">
                            <div class="item-name">Chandan Powder 1st</div>
                            <div class="item-quantity negative">-5.9</div>
                            <div class="item-options"><i class="fas fa-ellipsis-v"></i></div>
                        </div>
                        <div class="item-row">
                            <div class="item-name">Chandan Powder 2nd</div>
                            <div class="item-quantity">35.5</div>
                            <div class="item-options"><i class="fas fa-ellipsis-v"></i></div>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="tab-pane" id="category">
                <div class="category-container">
                    <div class="category-sidebar">
                        <div class="search-categories">
                            <i class="fas fa-search"></i>
                        </div>
                        
                        <div class="add-category-container">
                            <button type="button" class="btn-add-category">
                                <i class="fas fa-plus"></i> Add Category
                            </button>
                        </div>
                        
                        <div class="category-list-header">
                            <div>CATEGORY</div>
                            <div>ITEM</div>
                        </div>
                        
                        <div class="categories-list">
                            <div class="category-row selected">
                                <div class="category-name">Items not in any Category</div>
                                <div class="category-count">77</div>
                                <div class="category-options"><i class="fas fa-ellipsis-v"></i></div>
                            </div>
                            <div class="category-row">
                                <div class="category-name">Printing</div>
                                <div class="category-count">1</div>
                                <div class="category-options"><i class="fas fa-ellipsis-v"></i></div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="category-content">
                        <div class="category-header">
                            <h3>ITEMS NOT IN ANY CATEGORY</h3>
                            <div class="category-count">77</div>
                        </div>
                        
                        <div class="category-actions">
                            <button type="button" class="btn-move-category">
                                Move To This Category
                            </button>
                        </div>
                        
                        <div class="items-section">
                            <div class="section-header">
                                <h3>ITEMS</h3>
                                <div class="search-box">
                                    <i class="fas fa-search"></i>
                                </div>
                            </div>
                            
                            <div class="items-table">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>NAME <i class="fas fa-filter"></i></th>
                                            <th>QUANTITY <i class="fas fa-filter"></i></th>
                                            <th>STOCK VALUE <i class="fas fa-filter"></i></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>3 Ply Corrugated Box</td>
                                            <td>2634</td>
                                            <td>₹ 18,912.00</td>
                                        </tr>
                                        <tr>
                                            <td>5 Filtered Henna Powder</td>
                                            <td class="negative">-15</td>
                                            <td>₹ 0.00</td>
                                        </tr>
                                        <tr>
                                            <td>Alovera Powder</td>
                                            <td>5</td>
                                            <td>₹ 295.00</td>
                                        </tr>
                                        <tr>
                                            <td>Amla Powder</td>
                                            <td>118.4</td>
                                            <td>₹ 9,458.00</td>
                                        </tr>
                                        <tr>
                                            <td>Aritha Powder</td>
                                            <td>111.5</td>
                                            <td>₹ 11,207.50</td>
                                        </tr>
                                        <tr>
                                            <td>Beetroot powder</td>
                                            <td>0.3</td>
                                            <td>₹ 37.50</td>
                                        </tr>
                                        <tr>
                                            <td>Behera Powder</td>
                                            <td class="negative">-0.25</td>
                                            <td>₹ 0.00</td>
                                        </tr>
                                        <tr>
                                            <td>Belly Henna 1kg Pack</td>
                                            <td class="negative">-16</td>
                                            <td>₹ 0.00</td>
                                        </tr>
                                        <tr>
                                            <td>Bhavnagar Herbal Henna Brown 30gm</td>
                                            <td>0.33</td>
                                            <td>₹ 1,440.00</td>
                                        </tr>
                                        <tr>
                                            <td>Bhawnagar Herbal Henna Black - 40 Gm</td>
                                            <td>41.23</td>
                                            <td>₹ 8,275.91</td>
                                        </tr>
                                        <tr>
                                            <td>Bhringraj dry leaves</td>
                                            <td class="negative">-5</td>
                                            <td>₹ 0.00</td>
                                        </tr>
                                        <tr>
                                            <td>bhringraj Powder</td>
                                            <td class="negative">-5</td>
                                            <td>₹ 0.00</td>
                                        </tr>
                                        <tr>
                                            <td>brahmi Powder</td>
                                            <td class="negative">-5</td>
                                            <td>₹ 0.00</td>
                                        </tr>
                                        <tr>
                                            <td>Bridal Oil</td>
                                            <td>1.3</td>
                                            <td>₹ 526.00</td>
                                        </tr>
                                        <tr>
                                            <td>Cellophane Paper</td>
                                            <td class="negative">-6.5</td>
                                            <td>₹ 0.00</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="tab-pane" id="units">
                <div class="units-container">
                    <div class="units-header">
                        <h3>BAGS</h3>
                        <div class="units-actions">
                            <button type="button" class="btn-add-conversion">
                                Add Conversion
                            </button>
                        </div>
                    </div>
                    
                    <div class="units-sidebar">
                        <div class="search-units">
                            <i class="fas fa-search"></i>
                        </div>
                        
                        <div class="add-unit-container">
                            <button type="button" class="btn-add-unit">
                                <i class="fas fa-plus"></i> Add Units
                            </button>
                        </div>
                        
                        <div class="units-list-header">
                            <div>FULLNAME</div>
                            <div>SHORTNAME</div>
                        </div>
                        
                        <div class="units-list">
                            <div class="unit-row selected">
                                <div class="unit-name">BAGS</div>
                                <div class="unit-shortname">Bag</div>
                                <div class="unit-options"><i class="fas fa-ellipsis-v"></i></div>
                            </div>
                            <div class="unit-row">
                                <div class="unit-name">BOTTLES</div>
                                <div class="unit-shortname">Btl</div>
                                <div class="unit-options"><i class="fas fa-ellipsis-v"></i></div>
                            </div>
                            <div class="unit-row">
                                <div class="unit-name">BOX</div>
                                <div class="unit-shortname">Box</div>
                                <div class="unit-options"><i class="fas fa-ellipsis-v"></i></div>
                            </div>
                            <div class="unit-row">
                                <div class="unit-name">BUNDLES</div>
                                </div>
                            </div>
                        </div>
                    </div>
</asp:Content>
