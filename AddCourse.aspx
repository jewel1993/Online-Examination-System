<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddCourse.aspx.cs" Inherits="AddCourse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"> 
    <div class="col-md-12" style="background: ; no-repeat;background-size: 100%;min-height:570px;">
		<br/>
		<br/><br/><br/><br/><br/>
		<div class="container">
        <div class="row centered-form">
        <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
        	<div class="panel panel-default">
        		<div class="panel-heading">
			    		<h3 class="panel-title" style="color:black;font-weight:bold;">Add a new course</h3>
			 			</div>
			 			<div class="panel-body" style="background-color:#F6DDCC">
			    			
						<div class="form-group">
			    				<asp:TextBox ID="TextBox1" required class="form-control input-sm" style="color:black;font-weight:bold;" runat="server" placeholder="Course Name"></asp:TextBox>
			    			</div>
			    			<div class="form-group">
			    				<asp:TextBox ID="TextBox2" required class="form-control input-sm" style="color:black;font-weight:bold;" runat="server" placeholder="Description"></asp:TextBox>
			    			</div>
							<div class="row">
                                <div class="col-xs-2 col-sm-2 col-md-2">	
                                        <asp:Label ID="Label1"  style="color:#342613;font-weight:bold;" runat="server" Text="Logo:"></asp:Label>
			    				</div>
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<asp:FileUpload ID="FileUpload1" runat="server" />
			    					</div>
			    				</div>
								
			    			</div>
			    			<div class="col-xs-6 col-sm-6 col-md-6">
                                <asp:Button ID="Button1" Text="Save" class="btn btn-info btn-block" 
                                style="color:black;font-weight:bold;" runat="server" onclick="Button1_Click"  />
                             </div>
                             <div class="col-xs-6 col-sm-6 col-md-6">
                             <asp:Button ID="Button2" Text="Clear" class="btn btn-info btn-block" 
                                style="color:black;font-weight:bold;" runat="server" onclick="Button2_Click"  />
			    	        </div>
                            <asp:Label ID="Label2"  style="color:#342613;font-weight:bold;" runat="server" Text=""></asp:Label>
                    </div>
	    		</div>
    		</div>
			
    	</div>
    </div>
	</div>
</asp:Content>

