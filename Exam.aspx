<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Exam.aspx.cs" Inherits="Exam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"> 
    <br/>
    <div id="response" style="float:right;height:40px;width:100px;top:100px;background-color:black;text-align:center;">
    
   <asp:ScriptManager ID="ScriptManager1" runat="server" />
        <asp:Timer runat="server" id="UpdateTimer" interval="100" ontick="UpdateTimer_Tick" />
        <asp:UpdatePanel runat="server" id="TimedPanel" updatemode="Conditional">
            <Triggers>
                <asp:AsyncPostBackTrigger controlid="UpdateTimer" eventname="Tick" />
            </Triggers>
            <ContentTemplate>
                <asp:Label runat="server" id="DateStampLabel" />
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
	<div class="container">
        <div class="row centered-form">
            <div class="col-xs-10 col-sm-10 col-md-10 ">
        
        	<div class="panel panel-default">
                        <asp:Button ID="Button1" class="btn btn-info btn-block" style="width:100px;color:black;font-weight:bold;" runat="server" Text="Submit" onclick="Button1_Click" />
                            <asp:Button ID="Button2" class="btn btn-info btn-block" style="width:100px;color:black;font-weight:bold;" runat="server" Text="Next" onclick="Button2_Click" />
                             <asp:Button ID="Button6" class="btn btn-info btn-block" style="width:100px;color:black;font-weight:bold;" runat="server" Text="Previous" onclick="Button3_Click" /><br/>
        		        <div class="panel-heading">
                            <asp:Label ID="Label3" class="panel-title" style="color:black;font-weight:bold;" runat="server" Text="Label"></asp:Label>
			 			</div>
			 			<div class="panel-body" style="background-color:#F6DDCC">
                            <asp:Label ID="Label2"  style="color:#342613;font-weight:bold;" runat="server" Text="Welcome"></asp:Label>
                        </div>
                        <asp:RadioButtonList style="color:black;font-weight:bold;" ID="RadioButtonList1" runat="server" 
                            onselectedindexchanged="RadioButtonList1_SelectedIndexChanged">
                        </asp:RadioButtonList>
	    		</div>
                <asp:Button ID="Button3" class="btn btn-info btn-block" style="width:100px;color:black;font-weight:bold;" runat="server" Text="Submit" onclick="Button1_Click" />
                <asp:Button ID="Button4" class="btn btn-info btn-block" style="width:100px;color:black;font-weight:bold;" runat="server" Text="Next" onclick="Button2_Click"/>
                <asp:Button ID="Button5" class="btn btn-info btn-block" style="width:100px;color:black;font-weight:bold;" runat="server" Text="Previous" onclick="Button3_Click" />
    		</div>
			
    	</div>
    </div>
</asp:Content>

