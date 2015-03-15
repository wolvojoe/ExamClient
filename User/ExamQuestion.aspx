<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="ExamQuestion.aspx.cs" Inherits="User_ExamAttempt" %>

<%@ Register Src="~/Question Types/MultipleChoice.ascx" TagPrefix="uc1" TagName="MultipleChoice" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">


</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="WideContent">

        <div class="SubHeader">
            <h2><asp:Label ID="lblExamName" runat="server" Text=""></asp:Label></h2>
        </div>

        <uc1:MultipleChoice runat="server" ID="MultipleChoice" />

        <div class="Row">
            <div class="RowContent">
                <asp:Label ID="lblQuestionNumber" runat="server" Text=""></asp:Label>
                <asp:Label ID="lblQuestion" runat="server" Text=""></asp:Label>
            </div>
        </div>

        <div class="Row">
            <div class="RowContent">

                <asp:Panel ID="pnlQuestion" runat="server">

                </asp:Panel>

            </div>
        </div>

    </div>

</asp:Content>

