
<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddQuestions.aspx.cs" Inherits="AddQuestions" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="col-md-12" style="background: url('images/8.jpg') no-repeat;background-size: 100%;min-height:570px;">
		<br/>
		<br/><br/>
		<div class="container">
        <div class="row centered-form">
        <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
        	<div class="panel panel-default">
        		<div class="panel-heading">
			    		<h3 class="panel-title" style="color:black;font-weight:bold;">Add a new question</small></h3>
			 			</div>
			 			<div class="panel-body" style="background-color:#F6DDCC">
			    		<div class="form-group">
			    				<asp:TextBox ID="TextBox1" required class="form-control input-sm" style="color:black;font-weight:bold;" runat="server" placeholder="Module Id"></asp:TextBox>
			    			</div>
			    			<div class="form-group">
			    				<asp:TextBox ID="TextBox2" required class="form-control input-sm" style="color:black;font-weight:bold;" runat="server" placeholder="Instruction"></asp:TextBox>
			    			</div>
                            <div class="form-group">
			    				<asp:TextBox ID="TextBox3" required class="form-control input-sm" style="color:black;font-weight:bold;" runat="server" placeholder="Question"></asp:TextBox>
			    			</div>
                            <div class="form-group">
                                <asp:DropDownList placeholder="select" class="form-control input-sm" style="color:black;font-weight:bold;" ID="DropDownList1" runat="server" 
                                    onselectedindexchanged="DropDownList1_SelectedIndexChanged" AutoPostBack=true>
                                    <asp:ListItem>Number of options</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                    <asp:ListItem>7</asp:ListItem>
                                    <asp:ListItem>8</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                             
                            <asp:Repeater ID="Repeater1" runat="server" 
                                onitemcommand="Repeater1_ItemCommand">
                                <ItemTemplate>
                                    <font color=green>Option <%#Container.ItemIndex+1 %></font>
                                    <div class="form-group">
                                        <asp:TextBox ID="txtTextBox1" runat="server" />
                                    </div>
                                </ItemTemplate>
                            
                                <SeparatorTemplate>
                                </SeparatorTemplate>
                            </asp:Repeater>
                            <div class="form-group">
                                <asp:DropDownList placeholder="select" class="form-control input-sm" style="color:black;font-weight:bold;" ID="DropDownList2" runat="server" 
                                    onselectedindexchanged="DropDownList2_SelectedIndexChanged">
                                    <asp:ListItem>Correct Option</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                    <asp:ListItem>7</asp:ListItem>
                                    <asp:ListItem>8</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="form-group">
                                <asp:DropDownList placeholder="select" class="form-control input-sm" 
                                    style="color:black;font-weight:bold; height: 20px;" ID="DropDownList3" runat="server" 
                                    onselectedindexchanged="DropDownList3_SelectedIndexChanged">
                                    <asp:ListItem>Difficulty Level</asp:ListItem>
                                    <asp:ListItem>Easy</asp:ListItem>
                                    <asp:ListItem>Medium</asp:ListItem>
                                    <asp:ListItem>Hard</asp:ListItem>
                                    <asp:ListItem>Difficult</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="form-group">
			    			<div class="col-xs-6 col-sm-6 col-md-6">
                                <asp:Button ID="Button1" Text="Save" class="btn btn-info btn-block" 
                              
                                style="color:black;font-weight:bold;" runat="server" onclick="Button1_Click"  />
                             </div>
                             <div class="col-xs-6 col-sm-6 col-md-6">
                             <asp:Button ID="Button2" Text="Clear" class="btn btn-info btn-block" 
                                style="color:black;font-weight:bold;" runat="server" onclick="Button2_Click"  />
			    	        </div>
                            </div>
                            <asp:Label ID="Label1"  style="color:#342613;font-weight:bold;" runat="server" Text=""></asp:Label>
			    	</div>
	    		</div>
    		</div>
			
    	</div>
    </div>
	</div>
</asp:Content>

