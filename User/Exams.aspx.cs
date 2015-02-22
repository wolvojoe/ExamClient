using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ExamServer;

public partial class User_Exams : System.Web.UI.Page
{

    private WebStudent objUser = new WebStudent();
    private string strToken;

    protected void Page_Load(object sender, EventArgs e)
    {
        objUser = Session["User"] as WebStudent;
        strToken = Session["Token"].ToString();

        GetExams();
    }


    private void GetExams()
    {
        var GetAllExams = new WebServiceAccess();

        gvExams.DataSource = GetAllExams.GetExams(strToken);
        gvExams.DataBind();
    }

    protected void gvExams_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvExams.PageIndex = e.NewPageIndex;
        GetExams();
    }
}