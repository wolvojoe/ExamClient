using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ExamServer;

public partial class User_TakeExam : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int ExamID = Convert.ToInt32(Request.QueryString["ID"]);
        string strToken = Session["Token"] as string;

        var objExam = new WebExam();
        var objWebservice = new WebServiceAccess();
        objExam = objWebservice.GetExamDetails(strToken, ExamID);

        lblExamName.Text = objExam.ExamName;
        lblDescription.Text = objExam.ExamDescription;
    }
}