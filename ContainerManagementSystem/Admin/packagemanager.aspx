<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="packagemanager.aspx.cs" Inherits="ContainerManagementSystem.Admin.packagemanager" %>

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
    </style>
    <div class="col-md-4">
        </div>
    <div class="col-md-4">
     <div class="form-group">
      <label for="email">Select Package :</label><br>
          <asp:DropDownList ID="package" AutopostBack="true" runat="server" OnSelectedIndexChanged="package_SelectedIndexChanged">

    </asp:DropDownList>
    </div>
    <div class="form-group">
      <label for="pwd">Package Description</label><br>
      <asp:TextBox ID="txt_package_D" placeholder="Package Description" runat="server">

    </asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txt_package_D" SetFocusOnError="true" ValidationGroup="grp" ForeColor="Red" runat="server" ErrorMessage="Package Description is Required"></asp:RequiredFieldValidator>
    </div>
    <div class="form-group">
        <label for="pwd">Package Price</label><br>
        <asp:TextBox ID="txt_package_p" placeholder="Package Price"  runat="server">
    </asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txt_package_p" SetFocusOnError="true" ValidationGroup="grp" ForeColor="Red" runat="server"  ErrorMessage="Package Price is Required"></asp:RequiredFieldValidator>
        </div>
<div class="form-group">
    <label for="pwd">Package Days to Deliver</label><br>
      <asp:TextBox ID="txt_package_Days" placeholder="Package Days" runat="server">
    </asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"  ForeColor="Red" SetFocusOnError="true" ValidationGroup="grp" ControlToValidate="txt_package_Days"  ErrorMessage="Package Days is Required"></asp:RequiredFieldValidator>
    </div>


   <asp:Button ID="btn_update" class="btn btn-default" ValidationGroup="grp" runat="server" Text="Update" OnClick="btn_update_Click" />
    </div>
</asp:Content>
