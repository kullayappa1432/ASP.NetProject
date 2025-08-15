using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class LibraryHandling : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=D:\\datanetprojects\\LibraryHandling\\App_Data\\LibraryData.mdf;Integrated Security=True;User Instance=True");

    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (con.State ==ConnectionState.Open) {
            con.Close();
        }
        con.Open();
        display_data();


    }
    protected void bookID_TextChanged(object sender, EventArgs e)
    {

    }
    protected void bookTitle_TextChanged(object sender, EventArgs e)
    {

    }
    protected void isbn_TextChanged(object sender, EventArgs e)
    {

    }


    protected void Insert_Click(object sender, EventArgs e)
    {
        string title=bookTitle.Text;
        string autname=authorName.Text;
        int bno=int.Parse(isbn.Text);

        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "insert into Librarydata values ('"+title+"','"+autname+"',"+bno+");";
        cmd.ExecuteNonQuery();
        bookTitle.Text = "";
        authorName.Text = "";
        isbn.Text = "";

    }
    void display_data() {
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from Librarydata;";
        cmd.ExecuteNonQuery();
        DataTable dt=new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void Delete_Click(object sender, EventArgs e)
    {
        string title = bookTitle.Text;
        string autname = authorName.Text;
        int bno = int.Parse(isbn.Text);

        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "delete from Librarydata where bookTitle='"+title+"' and isbn="+bno+";";
        cmd.ExecuteNonQuery();
        bookTitle.Text = "";
        authorName.Text = "";
        isbn.Text = "";

    }
    protected void Update_Click(object sender, EventArgs e)
    {
        string title = bookTitle.Text;
        string autname = authorName.Text;
        int bno = int.Parse(isbn.Text);
        int upno = int.Parse(bookID.Text);

        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "update Librarydata set bookTitle='" + title + "',isbn=" + bno + ",authorName='" + autname + "' where isbn=" + upno + ";";
        cmd.ExecuteNonQuery();
        bookTitle.Text = "";
        authorName.Text = "";
        isbn.Text = "";
    }
    protected void view_Click(object sender, EventArgs e)
    {
        display_data();
    }



    protected void authorName_TextChanged(object sender, EventArgs e)
    {

    }
}
