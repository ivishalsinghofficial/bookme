<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="WebApplication1.homepage" %>


<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <p>
            <asp:Button CssClass="button" ID="Button1" runat="server" Text="Book" BorderStyle="None" OnClick="Button1_Click" />
                
            </p>
            <p>
            <asp:Button CssClass="button" ID="Button2" runat="server" Text="Donation Box" BorderStyle="None" OnClick="Button2_Click" />
               
            </p>
            <p>
            <asp:Button CssClass="button" ID="Button3" runat="server" Text="Notices" BorderStyle="None" OnClick="Button3_Click"/>
              </p>  
<br />

</asp:Content>



