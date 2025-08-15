using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Members : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=D:\\datanetprojects\\LibraryHandling\\App_Data\\LibraryData.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (con.State == ConnectionState.Open) {
            con.Close();
        }
        con.Open();
        display_data();

    }   
    protected void txtMemberID_TextChanged(object sender, EventArgs e)
    {

    }
    protected void btnInsert_Click(object sender, EventArgs e)
    {
        string manme = txtName.Text;
        string txtemail = txtEmail.Text;
        string htn = htmno.Text;
        string txtPhon = txtPhone.Text;
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "insert into MemebrManage values ('" + manme + "','" + txtemail + "','" + htn + "','"+txtPhon+"');";
        cmd.ExecuteNonQuery();
        txtName.Text = "";
        txtEmail.Text = "";
        htmno.Text = "";
        txtPhone.Text = "";

    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        string manme = txtName.Text;
        string txtemail = txtEmail.Text;
        string htn = htmno.Text;
        string txtPhon = txtPhone.Text;
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "update MemebrManage set Mname='" + manme + "',Mhtm='" + htn + "',Mcontact='" + txtPhon + "',Mmail='" + txtemail + "' where Mhtm='" + txtMemberID.Text+ "';";
        cmd.ExecuteNonQuery();
        txtName.Text = "";
        txtEmail.Text = "";
        htmno.Text = "";
        txtPhone.Text = "";
        txtMemberID.Text = "";


    }
    void display_data()
    {
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from MemebrManage;";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        string manme = txtName.Text;
        string txtemail = txtEmail.Text;
        string htn = htmno.Text;
        string txtPhon = txtPhone.Text;
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "delete from MemebrManage where Mname='" + manme + "' and Mhtm=" + htn + ";";
        cmd.ExecuteNonQuery();
        txtName.Text = "";
        txtEmail.Text = "";
        htmno.Text = "";
        txtPhone.Text = "";
    }
    protected void btnView_Click(object sender, EventArgs e)
    {
        display_data();

    }
    protected void txtName_TextChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

    string mname = ((TextBox)GridView1.Rows[e.RowIndex].Cells[0].Controls[0]).Text;
    string mmail = ((TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
    string mhtm = ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
    string mcontact = ((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text;

    SqlCommand cmd = new SqlCommand("UPDATE MemebrManage  SET Mname ='" + mname + "', Mmail ='" + mmail + "', Mhtm ='" + mhtm + "', Mcontact ='" + mcontact + "' @email WHERE Mhtm ='" + mhtm + "'", con);

        int t = cmd.ExecuteNonQuery();
        if (t > 0)
        {
            Response.Write("<script>alert('Data has been updated')</script>");
            GridView1.EditIndex = -1;
        }
    

    }
}