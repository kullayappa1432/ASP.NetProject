using System;
using System.Data;
using System.Data.SqlClient;

public partial class Reports : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadReportData();
        }
    }

    private void LoadReportData()
    {
        string connectionString = "Data Source=.\\SQLEXPRESS;AttachDbFilename=D:\\datanetprojects\\LibraryHandling\\App_Data\\LibraryData.mdf;Integrated Security=True;User Instance=True";

        using (SqlConnection conn = new SqlConnection(connectionString))
        {
            string query = @"
                SELECT 
                    t.TransactionID,
                    m.Name AS MemberName,
                    b.Title AS BookTitle,
                    t.IssueDate,
                    t.ReturnDate,
                    CASE 
                        WHEN t.ReturnDate IS NULL THEN 'Borrowed'
                        ELSE 'Returned'
                    END AS Status
                FROM Transactions t
                INNER JOIN Members m ON t.MemberID = m.MemberID
                INNER JOIN Books b ON t.BookID = b.BookID
                ORDER BY t.IssueDate DESC";

            SqlDataAdapter da = new SqlDataAdapter(query, conn);
            DataTable dt = new DataTable();
            da.Fill(dt);

            GridViewReports.DataSource = dt;
            GridViewReports.DataBind();
        }
    }
    protected void GridViewReports_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
