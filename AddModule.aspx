<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddModule.aspx.cs" Inherits="AddModule" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="col-md-12" style="background: url('images/8.jpg') no-repeat;background-size: 100%;min-height:570px;">
		<br/>
		<br/><br/><br/><br/><br/>
		<div class="container">
        <div class="row centered-form">
        <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
        	<div class="panel panel-default">
        		<div class="panel-heading">
			    		<h3 class="panel-title" style="color:black;font-weight:bold;">Add a new module</small></h3>
			 			</div>
			 			<div class="panel-body" style="background-color:#F6DDCC">
			    		
						    <div class="form-group">
			    				<asp:TextBox ID="TextBox1" required class="form-control input-sm" style="color:black;font-weight:bold;" runat="server" placeholder="Module Name"></asp:TextBox>
			    			</div>
			    			<div class="form-group">
			    				<asp:TextBox ID="TextBox2" required class="form-control input-sm" style="color:black;font-weight:bold;" runat="server" placeholder="Course Id"></asp:TextBox>
			    			</div>
                            <div class="form-group">
			    				<asp:TextBox ID="TextBox3" required class="form-control input-sm" style="color:black;font-weight:bold;" runat="server" placeholder="Sequence Number"></asp:TextBox>
			    			</div>
			    			<div class="col-xs-6 col-sm-6 col-md-6">
                                <asp:Button ID="Button1" Text="Save" class="btn btn-info btn-block" 
                                style="color:black;font-weight:bold;" runat="server" onclick="Button1_Click"  />
                             </div>
                             <div class="col-xs-6 col-sm-6 col-md-6">
                             <asp:Button ID="Button2" Text="Clear" class="btn btn-info btn-block" 
                                style="color:black;font-weight:bold;" runat="server" onclick="Button2_Click"  />
			    	        </div>
                            <asp:Label ID="Label1"  style="color:#342613;font-weight:bold;" runat="server" Text=""></asp:Label>
			    	</div>
	    		</div>
    		</div>
			
    	</div>
    </div>
	</div>
</asp:Content>

