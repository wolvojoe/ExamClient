using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ExamServer;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for WebServiceAccess
/// </summary>
public class WebServiceAccess
{
	public WebServiceAccess()
	{


	}

    public string Login(string strEmail, string strPassword)
    {
        var temp = new ExamServer.WebService();
        string strToken = "";
        strToken = temp.StudentLogin(strEmail, strPassword);

        return strToken;

    }

    public DataTable GetExams(string strToken)
    {
        var temp = new ExamServer.WebService();
        return temp.GetExams(strToken);

    }


    public WebStudent GetUser(string strToken)
    {
        var temp = new ExamServer.WebService();
        return temp.GetStudentDetails(strToken);
    }


    public WebExam GetExamDetails(string strToken, int intExamID)
    {
        var ExamDetails = new ExamServer.WebService();
        return ExamDetails.GetExam(strToken, intExamID);
    }

    public Result GetResultDetails(string strToken, int intResultID)
    {
        var ResultDetails = new ExamServer.WebService();
        return ResultDetails.GetResult(strToken, intResultID);
    }



    public bool ValidateExam(string strToken, int intExamID, string strPassword)
    {
        var temp = new ExamServer.WebService();
        return temp.ValidatePassword(strToken, intExamID, strPassword);
    }


    public int StartExam(string strToken, int intExam)
    {
        var ExamDetails = new ExamServer.WebService();
        return ExamDetails.StartExam(strToken, intExam);
    }

    public Question GetNextQuestion(string strToken, int intResult)
    {
        var ExamDetails = new ExamServer.WebService();
        return ExamDetails.GetNextQuestion(strToken, intResult);
    }

    public List<WebAnswer> GetAnswersList(string strToken, int intQuestion)
    {
        var ExamDetails = new ExamServer.WebService();
        return ExamDetails.GetAnswersList(strToken, intQuestion).ToList();
    }

    public string GetSiteName()
    {
        var temp = new ExamServer.WebService();
        return temp.GetSiteName();

    }


}