<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Donation.aspx.cs" Inherits="WebApplication1.Donation" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <asp:Button CssClass="butt" ID="Button1" runat="server" Text="Donate Book" BorderStyle="None" OnClick="Button1_Click" />
                
            </p>
<p>
    <asp:Label ID="Label1" CssClass="lbl" runat="server" Text="Library ID"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox1" CssClass="tbox" runat="server"></asp:TextBox>
&nbsp;&nbsp;
    <asp:Label ID="Label2" CssClass="lbl" runat="server" Text="Program Name"></asp:Label>
    <asp:TextBox ID="TextBox2" CssClass="tbox" runat="server"></asp:TextBox>
                
            </p>
<p>
    <asp:Label ID="Label3" CssClass="lbl" runat="server" Text="Book Name"></asp:Label>
    <asp:TextBox ID="TextBox3" CssClass="tbox" runat="server"></asp:TextBox>
                
            </p>
    <p>
        <asp:Button CssClass="butt" ID="Button4" Text="Submit" runat="server" OnClick="Button4_Click" /> 
        
        <asp:Button CssClass="butt" ID="Button5" runat="server" OnClick="Button5_Click" Text="Back" />
        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
&nbsp;</p>
     
            <p>
            <asp:Button CssClass="butt" ID="Button2" runat="server" Text="View Donation Box" BorderStyle="None" OnClick="Button2_Click" Width="200px" />
               
            </p>
<p>
    &nbsp;
    &nbsp;
    &nbsp;

    <p>
            <asp:Button CssClass="backbtn" ID="Button3" runat="server" Text="Back" BorderStyle="None" OnClick="Button3_Click" Width="200px" />
               
            </p>

            <asp:GridView ID="GridView1" CssClass="tableview" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                
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
