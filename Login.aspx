<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="col-md-12" style="background: url('images/7.jpg') no-repeat;background-size: 100%;min-height:570px;">
		<br/><br/><br/><br/><br/><br/><br/><br/><br/>
		<center>
        <p><asp:TextBox ID="TextBox1" style="color:black;font-weight:bold;" runat="server" placeholder="Username or Email"></asp:TextBox></p>
        <p><asp:TextBox ID="TextBox2" style="color:black;font-weight:bold;" runat="server" placeholder="Password"></asp:TextBox></p>
        <br/>
        <p class="remember_me">
          <label>
            <input type="checkbox" name="remember_me" id="remember_me">
            Remember me on this computer
          </label>
        </p>
        <p class="submit">
            <asp:Button ID="Button1" class="btn btn1" style="color:black;font-weight:bold;" 
                runat="Server" Text="Login" onclick="Button1_Click" /></p>
	  </center>
    </div>
</asp:Content>

