<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="admin_index.aspx.cs" Inherits="ContainerManagementSystem.Admin.admin_index" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
      <style>
          html { width: 100%; height:100%; overflow:hidden; }
    body { 
	width: 100%;
	height:100%;
	font-family: 'Open Sans', sans-serif;
	background: #092756;
	background: -moz-radial-gradient(0% 100%, ellipse cover, rgba(104,128,138,.4) 10%,rgba(138,114,76,0) 40%),-moz-linear-gradient(top,  rgba(57,173,219,.25) 0%, rgba(42,60,87,.4) 100%), -moz-linear-gradient(-45deg,  #670d10 0%, #092756 100%);
	background: -webkit-radial-gradient(0% 100%, ellipse cover, rgba(104,128,138,.4) 10%,rgba(138,114,76,0) 40%), -webkit-linear-gradient(top,  rgba(57,173,219,.25) 0%,rgba(42,60,87,.4) 100%), -webkit-linear-gradient(-45deg,  #670d10 0%,#092756 100%);
	background: -o-radial-gradient(0% 100%, ellipse cover, rgba(104,128,138,.4) 10%,rgba(138,114,76,0) 40%), -o-linear-gradient(top,  rgba(57,173,219,.25) 0%,rgba(42,60,87,.4) 100%), -o-linear-gradient(-45deg,  #670d10 0%,#092756 100%);
	background: -ms-radial-gradient(0% 100%, ellipse cover, rgba(104,128,138,.4) 10%,rgba(138,114,76,0) 40%), -ms-linear-gradient(top,  rgba(57,173,219,.25) 0%,rgba(42,60,87,.4) 100%), -ms-linear-gradient(-45deg,  #670d10 0%,#092756 100%);
	background: -webkit-radial-gradient(0% 100%, ellipse cover, rgba(104,128,138,.4) 10%,rgba(138,114,76,0) 40%), linear-gradient(to bottom,  rgba(57,173,219,.25) 0%,rgba(42,60,87,.4) 100%), linear-gradient(135deg,  #670d10 0%,#092756 100%);
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#3E1D6D', endColorstr='#092756',GradientType=1 );
}
        label {
        color:white
        }
        .lab{
        color:white
        }
    </style>
    <div class="col-md-1">
       </div>
     <div class="col-md-2">
         <asp:RadioButtonList AutoPostBack="true" ID="Report_radio" runat="server" >
             
             <asp:ListItem Text="Delivery Group Report" Value="0" />
         </asp:RadioButtonList>
         <br><br>
     <div id="div_email" runat="server" class="form-group"  >
                    <asp:Label class="lab" ID="lbl_register_email" runat="server">Email: </asp:Label>
                    <asp:RequiredFieldValidator ID="valid_reg_email" runat="server" ControlToValidate="txt_register_email"
                        ErrorMessage="Email is required" ForeColor="Red" ValidationGroup="grp2"></asp:RequiredFieldValidator>

                    <asp:TextBox ID="txt_register_email" runat="server" Width="200px" class="form-control" ValidationGroup="grp2"></asp:TextBox>
                  <br>
                    <asp:Button ID="btn_find_email" runat="server" Text="Find" class="btn btn-primary"  ValidationGroup="grp2" OnClick="btn_find_email_Click" />
                </div>
          <br><br>
          <div id="div_date" runat="server" class="form-group" >
                    <asp:Label ID="Label1" class="lab" runat="server">From : </asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="fromdates"
                        ErrorMessage="Date is required" ForeColor="Red" ValidationGroup="grp3"></asp:RequiredFieldValidator>

                    <asp:TextBox ID="fromdates" runat="server" Width="200px" class="form-control" ValidationGroup="grp2"></asp:TextBox>
                  <br>
              <asp:Label ID="Label2" class="lab" runat="server">To : </asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="todates"
                        ErrorMessage="Date is required" ForeColor="Red" ValidationGroup="grp3"></asp:RequiredFieldValidator>

                    <asp:TextBox ID="todates" runat="server" Width="200px" class="form-control" ValidationGroup="grp3"></asp:TextBox>
              <br>
                    <asp:Button ID="btn_find_dates" runat="server" Text="Find" class="btn btn-primary"  ValidationGroup="grp3" OnClick="btn_find_dates_Click"/>
                </div>
         </div>
            <div class="col-md-5">
    <asp:GridView ID="Reports"  runat="server">

    </asp:GridView>
            </div>
</asp:Content>
