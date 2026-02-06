using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VyaparCopy2
{
    public partial class SaleInvoice : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Load data for the GridView
                BindTransactionsData();
            }
        }

        private void BindTransactionsData()
        {
            // Create a DataTable to hold the transaction data
            DataTable dt = new DataTable();
            dt.Columns.Add("Date", typeof(DateTime));
            dt.Columns.Add("InvoiceNo", typeof(int));
            dt.Columns.Add("PartyName", typeof(string));
            dt.Columns.Add("TransactionType", typeof(string));
            dt.Columns.Add("PaymentType", typeof(string));
            dt.Columns.Add("Amount", typeof(decimal));
            dt.Columns.Add("BalanceDue", typeof(decimal));
            dt.Columns.Add("Status", typeof(string));

            // Add sample data (in a real application, this would come from a database)
            dt.Rows.Add(new DateTime(2025, 1, 11), 116, "Pratiksha", "Sale", "Cash", 755, 755, "Unpaid");
            dt.Rows.Add(new DateTime(2024, 12, 18), 115, "Sunil Chemist", "Sale", "Cash", 3400, 3400, "Unpaid");
            dt.Rows.Add(new DateTime(2024, 12, 9), 114, "Taj Henna Products", "Sale", "Cash", 220, 220, "Unpaid");
            dt.Rows.Add(new DateTime(2024, 12, 6), 113, "Taj Henna Products", "Sale", "Cash", 110, 110, "Unpaid");

            // Bind the DataTable to the GridView
            gvTransactions.DataSource = dt;
            gvTransactions.DataBind();
        }

        protected void gvTransactions_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                // Apply row styling based on data
                string status = DataBinder.Eval(e.Row.DataItem, "Status").ToString();
                if (status == "Unpaid")
                {
                    // You can add additional styling here if needed
                }
            }
        }
    }
}