using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ExamServer;

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


    public WebStudent GetUser(string strToken)
    {
        var temp = new ExamServer.WebService();
        return temp.GetStudentDetails(strToken);

    }
}