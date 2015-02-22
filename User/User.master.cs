using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ExamServer;

public partial class User_User : System.Web.UI.MasterPage
{
    protected void Page_Init(object sender, EventArgs e)
    {
        try
        {
            WebStudent objUser = Session["User"] as WebStudent;

            if (objUser.StudentID > 0)
            {

            }
            else
            {
                Response.Redirect("~/Login.aspx");
            }

        }
        catch
        {
            Response.Redirect("~/Login.aspx");
        }
    }
}
