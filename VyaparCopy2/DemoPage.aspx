<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DemoPage.aspx.cs" Inherits="VyaparCopy2.DemoPage" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Profile</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link href="Content/demopage.css" rel="stylesheet" />
</head>
<body>
    <div class="container">
        <aside class="sidebar">
            <div class="sidebar-header">
                Pankhudi Beauty ... &gt;
            </div>
            <nav class="sidebar-nav">
                <ul>
                    <li class="active"><a href="#"><i class="fas fa-home"></i> Home</a></li>
                    <li><a href="#"><i class="fas fa-user-friends"></i> Parties</a></li>
                    <li><a href="#"><i class="fas fa-box"></i> Items</a></li>
                    <li><a href="#"><i class="fas fa-receipt"></i> Sale</a></li>
                    <li><a href="#"><i class="fas fa-shopping-cart"></i> Purchase & Expense</a></li>
                    <li><a href="#"><i class="fas fa-chart-line"></i> Grow Your Business</a></li>
                    <li><a href="#"><i class="fas fa-university"></i> Cash & Bank</a></li>
                    <li><a href="#"><i class="fas fa-file-alt"></i> Reports</a></li>
                    <li><a href="#"><i class="fas fa-sync"></i> Sync, Share & Backups</a></li>
                    <li><a href="#"><i class="fas fa-hand-holding-usd"></i> Apply For Loan</a></li>
                    <li><a href="#"><i class="fas fa-th-large"></i> Other Products</a></li>
                    <li><a href="#"><i class="fas fa-wrench"></i> Utilities</a></li>
                    <li><a href="#"><i class="fas fa-cog"></i> Settings</a></li>
                    <li><a href="#"><i class="fas fa-clipboard-list"></i> Plan Info</a></li>
                </ul>
            </nav>
        </aside>
        <main class="main-content">
            <header class="main-header">
                <h1>Edit Profile</h1>
            </header>
            <section class="profile-section">
                <div class="profile-picture">
                    <img src="https://i.imgur.com/3h2wT6i.png" alt="Company Logo">
                    <button class="edit-icon"><i class="fas fa-pencil-alt"></i></button>
                </div>
                <div class="form-container">
                    <div class="form-column">
                        <h2>Business Details</h2>
                        <div class="form-group">
                            <label for="business-name">Business Name*</label>
                            <input type="text" id="business-name" value="Pankhudi Beauty Products">
                        </div>
                        <div class="form-group">
                            <label for="phone-number">Phone Number</label>
                            <input type="text" id="phone-number" value="8005859094">
                        </div>
                        <div class="form-group">
                            <label for="gstin">GSTIN <i class="fas fa-info-circle"></i></label>
                            <div class="input-with-icon">
                                <input type="text" id="gstin" value="08BBCPD4011Q1ZR">
                                <i class="fas fa-check-circle success-icon"></i>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="email-id">Email ID</label>
                            <input type="email" id="email-id" value="help@pankhudihenna.com">
                        </div>
                    </div>
                    <div class="form-column">
                        <h2>More Details</h2>
                        <div class="form-group">
                            <label for="business-type">Business Type</label>
                            <select id="business-type">
                                <option>Manufacturing</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="business-category">Business Category</label>
                            <select id="business-category">
                                <option>Select Business Category</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="state">State</label>
                            <select id="state">
                                <option>Rajasthan</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="pincode">Pincode</label>
                            <input type="text" id="pincode" value="306104">
                        </div>
                    </div>
                    <div class="form-column">
                        <div class="form-group">
                            <label for="business-address">Business Address</label>
                            <textarea id="business-address" rows="3">Kailash Nagar Behind Ganga Petrol Pump Sojat City, Rajasthan 306104</textarea>
                        </div>
                        <div class="form-group">
                            <label for="signature">Add Signature</label>
                            <div class="signature-box">
                                <img src="https://i.imgur.com/M6L3bJF.png" alt="Signature">
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <footer class="main-footer">
                <div class="promo-banner">
                    <a href="#">Get GST Filing at Most Competitive Prices!</a>
                </div>
                <div class="action-buttons">
                    <button class="btn btn-cancel">Cancel</button>
                    <button class="btn btn-save">Save Changes</button>
                </div>
            </footer>
        </main>
    </div>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="Scripts/WebForms/demopage.js"></script>
</body>
</html>


