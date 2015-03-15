using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ExamServer;

public partial class User_ExamAttempt : System.Web.UI.Page
{
    private WebStudent objUser = new WebStudent();
    private string strToken;
    private int intResultID;

    private Result objResult = new Result();
    private WebExam objExam = new WebExam();

    protected void Page_Load(object sender, EventArgs e)
    {

        strToken = Session["Token"] as string;

        if (Request.QueryString["ID"] != null && IsPostBack == false)
        {
            intResultID = Convert.ToInt32(Request.QueryString["ID"]);

            LoadResult(intResultID);
            LoadExam();
            LoadQuestion();


            lblExamName.Text = objExam.ExamName;
        }
    }


    private void LoadQuestion()
    {
        var GetNextQuestion = new WebServiceAccess();
        Question ThisQuestion = new Question();

        ThisQuestion = GetNextQuestion.GetNextQuestion(strToken, objResult.ResultID);

        lblQuestion.Text = ThisQuestion.QuestionName;

        MultipleChoice ctlMultipleChoice = new MultipleChoice();
        ctlMultipleChoice.objQuestion = ThisQuestion;
        ctlMultipleChoice.strToken = strToken;
        pnlQuestion.Controls.Add(ctlMultipleChoice);

    }

    private void LoadResult(int ResultID)
    {
        var objWebservice = new WebServiceAccess();
        objResult = objWebservice.GetResultDetails(strToken, ResultID);
    }

    private void LoadExam()
    {
        var objWebservice = new WebServiceAccess();
        objExam = objWebservice.GetExamDetails(strToken, objResult.ExamID);
    }
}