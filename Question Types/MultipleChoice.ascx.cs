using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ExamServer;

public partial class MultipleChoice : System.Web.UI.UserControl
{

    public Question objQuestion { get; set; }
    public string strToken;

    protected void Page_Load(object sender, EventArgs e)
    {
        LoadAnswers();
    }

    private void LoadAnswers()
    {
        List<WebAnswer> AllAnswers = new List<WebAnswer>();

        WebServiceAccess GetAnswers = new WebServiceAccess();
        AllAnswers = GetAnswers.GetAnswersList(strToken, objQuestion.QuestionID);

        foreach (WebAnswer x in AllAnswers)
        {
            rdoAnswers.Items.Add(new ListItem(x.AnswerName, Convert.ToString(x.AnswerID)));
        }
        
    }


}