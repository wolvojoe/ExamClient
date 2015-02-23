<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="Account.aspx.cs" Inherits="User_account" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Label ID="lblPageTitle" runat="server" Text=""></asp:Label>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="WideContent">
        <div class="SubHeader">
            <h2>Account</h2>
        </div>


        <div class="Row">
            <div class="RowContent">
                <asp:Label ID="lblFirstName" runat="server" Text="First Name:"></asp:Label>
            </div>

            <div class="RowValue">
                <asp:TextBox ID="txtFirstName" runat="server" CssClass="TextBox"></asp:TextBox>
            </div>
        </div>

        <div class="Row">
            <div class="RowContent">
                <asp:Label ID="lblLastName" runat="server" Text="Last Name:"></asp:Label>
            </div>

            <div class="RowValue">
                <asp:TextBox ID="txtLastName" runat="server" CssClass="TextBox"></asp:TextBox>
            </div>
        </div>

        <div class="Row">
            <div class="RowContent">
                <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
            </div>

            <div class="RowValue">
                <asp:TextBox ID="txtEmailUpdate" runat="server" CssClass="TextBox"></asp:TextBox>
            </div>
        </div>

        <div class="Row">
            <div class="RowContent">
                <asp:Label ID="lblPassword" runat="server" Text="Change Password:"></asp:Label>
            </div>

            <div class="RowValue">
                <asp:TextBox ID="txtPasswordUpdate" runat="server" CssClass="TextBox" TextMode="Password"></asp:TextBox>
            </div>
        </div>

        <div class="Row">
            <div class="RowContent">
                <asp:Label ID="lblDepartment" runat="server" Text="Department:"></asp:Label>
            </div>

            <div class="RowValue">
                <asp:TextBox ID="txtDepartmentName" runat="server" CssClass="TextBox"></asp:TextBox>
            </div>
        </div>


    </div>

</asp:Content>

