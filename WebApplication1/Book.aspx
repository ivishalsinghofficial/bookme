<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Book.aspx.cs" Inherits="WebApplication1.Book" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="overflow-x: auto; height:300px; width: 100%;  overflow: auto; margin-left: 25%" >
    
    
    <asp:GridView ID="GridView1" runat="server" CssClass="mygrdContent" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header" RowStyle-CssClass="rows"  AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"  EnableViewState="False">
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
      <asp:Label ID="Label1" runat="server" Text="Select Book Name" CssClass="labels"></asp:Label>
                    </p>
        <p>

    <asp:DropDownList CssClass="dropdown" ID="DropDownList1" runat="server">
        <asp:ListItem>GIS</asp:ListItem>
        <asp:ListItem>Software Quality Assurance</asp:ListItem>
        <asp:ListItem>Security in Computing</asp:ListItem>
        <asp:ListItem>Business Intelligence</asp:ListItem>
        <asp:ListItem>Cyber Law</asp:ListItem>
    </asp:DropDownList>
    <br /></p>
        <p>
    <asp:Label  ID="Label2" runat="server" Text="Enter Library ID" CssClass="labels"></asp:Label>

            </p>
        <p>
    <asp:TextBox CssClass="tboxes" ID="TextBox1" runat="server"></asp:TextBox>
        </p>
                
                <p>
    <asp:Label ID="Label3"  CssClass="labels" runat="server" Text="Enter Mobile Number"></asp:Label>

                </p>
                <p>
     <asp:TextBox ID="TextBox2" CssClass="tboxes" runat="server"></asp:TextBox>

                </p>
                <p>
    <asp:Button CssClass="button" ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />

                </p>
                <p>
                    
     <asp:Label ID="Label4" CssClass="labels" runat="server" Text="Label"></asp:Label>

                </p>
        </div>
            </asp:Content>


