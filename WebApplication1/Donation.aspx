<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Donation.aspx.cs" Inherits="WebApplication1.Donation" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <asp:Button CssClass="button" ID="Button1" runat="server" Text="Donate Book" BorderStyle="None" OnClick="Button1_Click" />
                
            </p>
<p>
    <asp:Label ID="Label1" CssClass="labelsign" runat="server" Text="Library ID"></asp:Label></p>
    <p>
&nbsp;<asp:TextBox ID="TextBox1" CssClass="tboxes" runat="server"></asp:TextBox></p>
&nbsp;&nbsp;
    <p>
    <asp:Label ID="Label2" CssClass="labelsign" runat="server" Text="Program Name"></asp:Label></p>
    <p>
    <asp:TextBox ID="TextBox2" CssClass="tboxes" runat="server"></asp:TextBox>
                
            </p>
<p>
    <asp:Label ID="Label3" CssClass="labelsign" runat="server" Text="Book Name"></asp:Label></p>
    <p>
    <asp:TextBox ID="TextBox3" CssClass="tboxes" runat="server"></asp:TextBox>
                
            </p>
    <p>
        <asp:Button CssClass="button" ID="Button4" Text="Submit" runat="server" OnClick="Button4_Click" /> 
        </p>
    <p>
        
        <asp:Button CssClass="button" ID="Button5" runat="server" OnClick="Button5_Click" Text="Back" /></p>
    <p>
        <asp:Label ID="Label4" CssClass="labelsign" runat="server" Text="Label"></asp:Label>
&nbsp;</p>
     
            <p>
            <asp:Button CssClass="button" ID="Button2" runat="server" Text="View Donation Box" BorderStyle="None" OnClick="Button2_Click" />
               
            </p>
<p>


    </p>
            <asp:Button CssClass="button" ID="Button3" runat="server" Text="Back" BorderStyle="None" OnClick="Button3_Click" style="margin-left:40%; width:200px;" />
               
            <p>

            <asp:GridView ID="GridView1"  CssClass="mygrdContent" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header" RowStyle-CssClass="rows" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" style="margin-left:30%">
                
                <Columns>
                    <asp:BoundField DataField="Library_Id" HeaderText="Library_Id" SortExpression="Library_Id" />
                    <asp:BoundField DataField="Program_Name" HeaderText="Program_Name" SortExpression="Program_Name" />
                    <asp:BoundField DataField="Book_Name" HeaderText="Book_Name" SortExpression="Book_Name" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DonationBoxConnectionString %>" SelectCommand="SELECT * FROM [donation_1]" OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
               
            </p>
    &nbsp;
    &nbsp;
    &nbsp;
    &nbsp;

    
</asp:Content>
