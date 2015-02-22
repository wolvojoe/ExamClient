using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {

        var Login = new WebServiceAccess();
        
        string strToken;
        strToken = Login.Login(txtEmail.Text, txtPassword.Text);

        if (strToken.Length > 0)
        {
            var objUser = Login.GetUser(strToken);
       
            Session.Add("User", objUser);
            Session.Add("Token", strToken);
            Response.Redirect("user/dashboard.aspx", false);
        }

    }




}