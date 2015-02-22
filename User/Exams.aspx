<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="Exams.aspx.cs" Inherits="User_Exams" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="WideContent">
        <div class="SubHeader">
            <h2>Exams</h2>
        </div>

        <div class="GridRow">
            <asp:GridView ID="gvExams" runat="server" AllowPaging="True" pagesize="5"  OnPageIndexChanging="gvExams_PageIndexChanging" AutoGenerateColumns="False">

                <Columns>
                    <asp:BoundField HeaderText="Exam Name" DataField="Exam_Name"/>
                    <asp:BoundField HeaderText="Active" DataField="Exam_Active"/>
                    <asp:BoundField HeaderText="Date From" DataField="Exam_Open_Date"/>
                    <asp:BoundField HeaderText="Date To" DataField="Exam_Closed_Date"/>

                    <asp:TemplateField HeaderText="View">
                      <ItemTemplate>
                       <asp:HyperLink ID="HyperLink1" runat="server" Text="View"  NavigateUrl='<%# Eval("pkExam_ID", "viewexam.aspx?ID={0}") %>'>
                           <img class="TableImage" src="../Images/png/magnifying-glass-3x.png"/>
                       </asp:HyperLink>
                      </ItemTemplate>
                    </asp:TemplateField>

                </Columns>

            </asp:GridView>
        </div>
    </div>
</asp:Content>

