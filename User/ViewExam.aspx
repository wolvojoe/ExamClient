<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="ViewExam.aspx.cs" Inherits="User_TakeExam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="WideContent">
        <div class="SubHeader">
            <h2><asp:Label ID="lblExamName" runat="server" Text=""></asp:Label></h2>
        </div>

        <div class="TwoThirdContentLeft">

            <div class="Row">
                <div class="RowContent">
                    <asp:Label ID="lblDescription" runat="server" Text=""></asp:Label>
                </div>
            </div>

            <asp:Panel ID="pnlPassword" runat="server" Visible="false">
                <div class="Row">
                    <div class="RowContent">
                        <asp:Label ID="lblExamPassword" runat="server" Text="Password:"></asp:Label>
                    </div>


                    <div class="RowValue">
                        <asp:TextBox ID="txtExamPassword" runat="server" required="true"></asp:TextBox>
                    </div>
                </div>
            </asp:Panel>

            <div class="Row">
                <div class="RowValue">
                    <asp:Button ID="btnStartExam" runat="server" Text="Start" class="Button" OnClick="btnStart_Click" />
                </div>
            </div>





        </div>


        <div class="HalfContentRight">
            <div class="SubHeader">
                <h2>Exam Details</h2>
            </div>

            <div class="Row">
                <div class="RowContent">
                    <asp:Label ID="lblOpenDate" runat="server" Text="Open Date:"></asp:Label>
                </div>

                <div class="RowValue">
                    <asp:Label ID="lblOpenDateResult" runat="server"></asp:Label>
                </div>
            </div>

            <div class="Row">
                <div class="RowContent">
                    <asp:Label ID="lblClosedDate" runat="server" Text="Closed Date:"></asp:Label>
                </div>

                <div class="RowValue">
                    <asp:Label ID="lblClosedDateResult" runat="server"></asp:Label>
                </div>
            </div>


            <div class="Row">
                <div class="RowContent">
                    <asp:Label ID="lblTimeLimit" runat="server" Text="Time Limit:"></asp:Label>
                </div>

                <div class="RowValue">
                    <asp:Label ID="lblTimeLimitResult" runat="server"></asp:Label>
                </div>
            </div>


            <div class="Row">
                <div class="RowContent">
                    <asp:Label ID="lblNumberOfAttempts" runat="server" Text="Number of Attempts Allowed:"></asp:Label>
                </div>

                <div class="RowValue">
                    <asp:Label ID="lblNumberOfAttemptsResult" runat="server"></asp:Label>
                </div>
            </div>



            <div class="Row">
                <div class="RowContent">
                    <asp:Label ID="lblTrainingMode" runat="server" Text="Training Mode Enabled:"></asp:Label>
                </div>

                <div class="RowValue">
                    <asp:Label ID="lblTrainingModeEnabled" runat="server"></asp:Label>
                </div>
            </div>


            <div class="Row">
                <div class="RowContent">
                    <asp:Label ID="lblPassword" runat="server" Text="Password Required:"></asp:Label>
                </div>

                <div class="RowValue">
                    <asp:Label ID="lblPasswordRequired" runat="server"></asp:Label>
                </div>
            </div>

        </div>


    </div>

</asp:Content>

