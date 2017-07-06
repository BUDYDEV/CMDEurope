<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="P_register.aspx.cs" Inherits="ContainerManagementSystem.P_register1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <title></title>
</head>
<body>
    <div align="center">
    <form class="form-horizontal" runat="server" method="POST" >
  <fieldset>
   
      <h1 style="color:white">Register</h1>
    
    <div class="control-group">
      <!-- Username -->
      <label class="control-label"  for="FullName">FullName</label>
      <div class="controls">
      
          <asp:TextBox ID="fullname" runat="server" class="textbox"></asp:TextBox>
         
      </div>
        <asp:RequiredFieldValidator ID="valid_login_pass" runat="server" 
                            ErrorMessage="fullname is required" ControlToValidate="fullname" 
                            AutoPostBack="false" ForeColor="Red" SetFocusOnError="True" ValidationGroup="grp1" ></asp:RequiredFieldValidator>
    </div>
 
    <div class="control-group">
      <!-- E-mail -->
      <label class="control-label" for="email">E-mail</label>
      <div class="controls">
        
          <asp:TextBox ID="email" runat="server" class="textbox"></asp:TextBox>
         
      </div>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ErrorMessage="email is required" ControlToValidate="email" 
                            AutoPostBack="false" ForeColor="Red" SetFocusOnError="True" ValidationGroup="grp1" ></asp:RequiredFieldValidator>
    </div>
 
    <div class="control-group">
      <!-- Password-->
      <label class="control-label" for="password">Password</label>
      <div class="controls">
        
          <asp:TextBox ID="password" runat="server"  TextMode="Password"  class="textbox" ></asp:TextBox>
         
      </div>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ErrorMessage="password is required" ControlToValidate="password" 
                            AutoPostBack="false" ForeColor="Red" SetFocusOnError="True" ValidationGroup="grp1" ></asp:RequiredFieldValidator>
    </div>
 
    <div class="control-group">
      <!-- Password -->
      <label class="control-label"for="cpassword">Password (Confirm)</label>
      <div class="controls">
        
          <asp:TextBox ID="cpassword" TextMode="Password" class="textbox"  runat="server"></asp:TextBox>
          
      </div>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ErrorMessage="confirm password is required" ControlToValidate="cpassword" 
                            AutoPostBack="false" ForeColor="Red" SetFocusOnError="True" ValidationGroup="grp1" ></asp:RequiredFieldValidator>
    </div>
 <br>
    <div class="control-group">
      <!-- Button -->
      <div class="controls">
       
         <asp:Button class="w3-btn w3-black" ID="btn_Register" runat="server" Text="Register"  ValidationGroup="grp1"  OnClick="btn_Register_Click" />
         
      </div>
    </div>
  </fieldset>
</form>
        </div>
</body>
</html>

<style>
  .textbox { 
    border: 1px solid #848484; 
    
    
    border: 1px solid #848484;
    outline:0; 
    height:25px; 
    width: 275px; 
    padding-left:20px; 
    padding-right:20px;
  }
   
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
    
