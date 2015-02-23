using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ExamServer;

public partial class User_account : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        WebStudent objUser = Session["User"] as WebStudent;

        txtFirstName.Text = objUser.StudentFirstName;
        txtLastName.Text = objUser.StudentLastName;
        txtEmailUpdate.Text = objUser.StudentEmail;
        txtDepartmentName.Text = objUser.StudentDepartmentName;

    }


}