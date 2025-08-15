using System;

public partial class ExamRigistration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // Page Load logic (if any)
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            string name = txtName.Text.Trim();
            string email = txtEmail.Text.Trim();
            string mobile = txtMobile.Text.Trim();
            string course = ddlCourse.SelectedValue;
            string subject = txtSubject.Text.Trim();
            Response.Write("<script>alert('Successfully submitted your details!');</script>");

         
        }
    }
    protected void txtName_TextChanged(object sender, EventArgs e)
    {

    }
}
