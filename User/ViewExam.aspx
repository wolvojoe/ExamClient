<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="ViewExam.aspx.cs" Inherits="User_TakeExam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="WideContent">
        <div class="SubHeader">
            <h2><asp:Label ID="lblExamName" runat="server" Text=""></asp:Label></h2>
        </div>

        <div class="HalfContentRight">
            <div class="SubHeader">
                <h2>Exam Details</h2>
            </div>

            <div class="Row">
                <div class="RowContent">
                    <asp:Label ID="lblDescription" runat="server" Text=""></asp:Label>
                </div>
            </div>

        </div>


    </div>

</asp:Content>

