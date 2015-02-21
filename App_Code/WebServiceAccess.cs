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

    public bool Login()
    {
        var temp = new ExamServer.WebService();
        temp.StudentLogin()



    }
}