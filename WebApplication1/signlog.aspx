<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="signlog.aspx.cs" Inherits="WebApplication1.signlog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Login In</p>
    <p>
        <asp:Label ID="Label1" runat="server" CssClass="labelsign" Text="Username"></asp:Label></p>
    <p>
        <asp:TextBox ID="TextBox1" CssClass="tboxes" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label2" runat="server"  CssClass="labelsign" Text="Password"></asp:Label></p>
    <p>
        <asp:TextBox ID="TextBox2" CssClass="tboxes" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="Button1" CssClass="button" runat="server" OnClick="Button1_Click" Text="Log In" />
   </p>
    <p>
        <asp:Label ID="Label9"  CssClass="labelsign" runat="server" Text="Label"></asp:Label>
    </p>
    <p>
        <asp:Label ID="Label8"  CssClass="labelsign" runat="server" Text="Real otp"></asp:Label>
    </p>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <hr />
    <p>
        <asp:Label ID="Label10" CssClass="labelsign" runat="server" Text="Sign Up"/></p>
    <p>
        <asp:Label ID="Label3"  CssClass="labelsign" runat="server" Text="Username"></asp:Label></p>
    <p>
        <asp:TextBox ID="TextBox3" CssClass="tboxes" runat="server"></asp:TextBox>
    </p>
    <br />
    <p>
    <asp:Label ID="Label4"  CssClass="labelsign" runat="server" Text="Password"></asp:Label></p>
    <p>
    <asp:TextBox ID="TextBox4" CssClass="tboxes" runat="server"></asp:TextBox></p>
    <br />
    <br />
    <p>
    <asp:Label ID="Label5"  CssClass="labelsign" runat="server" Text="Phone Number"></asp:Label></p>
    <p>
    <asp:TextBox ID="TextBox5" CssClass="tboxes" runat="server"></asp:TextBox> <asp:Button ID="Button3" CssClass="sendotp" runat="server" OnClick="Button3_Click" Text="Send OTP" />
    
    </p><br />
    <br />
    <p>
    <asp:Label ID="Label6"  CssClass="labelsign" runat="server" Text="Enter OTP:"></asp:Label></p>
    <p>
    <asp:TextBox ID="TextBox6" CssClass="tboxes" runat="server"></asp:TextBox></p>
    <br />
    <br />
    <p>
    <asp:Button ID="Button2" CssClass="button" runat="server" OnClick="Button2_Click" Text="Button" />
    
        </p><br />
    <br />
    Status:-
    <asp:Label ID="Label7"  CssClass="labelsign" runat="server" Text="Label"></asp:Label>
</asp:Content>
