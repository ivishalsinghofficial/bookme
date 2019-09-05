<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Book.aspx.cs" Inherits="WebApplication1.Book" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="overflow-x: auto; height:300px; width: 100%;  overflow: auto;">
    
    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CssClass="tableview">
    <Columns>
        <asp:BoundField DataField="Book_Name" HeaderText="Book_Name" SortExpression="Book_Name" />
        <asp:BoundField DataField="Author_Name" HeaderText="Author_Name" SortExpression="Author_Name" />
        <asp:BoundField DataField="Available_Counts" HeaderText="Available_Counts" SortExpression="Available_Counts" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BookmeConnectionString %>" SelectCommand="SELECT * FROM [bookme]"
    UpdateCommand="Update bookme set Available_Counts = Available_Counts - 1" OnSelecting="SqlDataSource1_Selecting"
    ></asp:SqlDataSource>
    <br />
        </div>
    </asp:Content>


<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <div style="overflow-x: auto; height:auto; width: 100%;  overflow: auto;">
                <p>
                    <asp:Label ID="Label1" runat="server" Text="Select Book Name" CssClass="lbl"></asp:Label>
&nbsp;:-&nbsp;
    <asp:DropDownList CssClass="tbox" ID="DropDownList1" runat="server">
        <asp:ListItem>GIS</asp:ListItem>
        <asp:ListItem>Software Quality Assurance</asp:ListItem>
        <asp:ListItem>Security in Computing</asp:ListItem>
        <asp:ListItem>Business Intelligence</asp:ListItem>
        <asp:ListItem>Cyber Law</asp:ListItem>
    </asp:DropDownList>
    <br />
    <asp:Label  ID="Label2" runat="server" Text="Enter Library ID" CssClass="lbl"></asp:Label>
&nbsp;:-
    <asp:TextBox CssClass="tbox" ID="TextBox1" runat="server"></asp:TextBox>

                </p>
                <p>
                    <asp:Label ID="Label3"  CssClass="lbl" runat="server" Text="Enter Mobile Number"></asp:Label>

                </p>
                <p>
                    <asp:TextBox ID="TextBox2" CssClass="tbox" runat="server"></asp:TextBox>

                </p>
                <p>
    <asp:Button CssClass="butt" ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />

                </p>
                <p>
                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>

                </p>
        </div>
            </asp:Content>


