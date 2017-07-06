<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HandleDeliery.aspx.cs" Inherits="ContainerManagementSystem.HandleDeliery" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        html {
            width: 100%;
            height: 100%;
            overflow: hidden;
        }

        body {
            width: 100%;
            height: 100%;
            font-family: 'Open Sans', sans-serif;
            background: #092756;
            background: -moz-radial-gradient(0% 100%, ellipse cover, rgba(104,128,138,.4) 10%,rgba(138,114,76,0) 40%),-moz-linear-gradient(top, rgba(57,173,219,.25) 0%, rgba(42,60,87,.4) 100%), -moz-linear-gradient(-45deg, #670d10 0%, #092756 100%);
            background: -webkit-radial-gradient(0% 100%, ellipse cover, rgba(104,128,138,.4) 10%,rgba(138,114,76,0) 40%), -webkit-linear-gradient(top, rgba(57,173,219,.25) 0%,rgba(42,60,87,.4) 100%), -webkit-linear-gradient(-45deg, #670d10 0%,#092756 100%);
            background: -o-radial-gradient(0% 100%, ellipse cover, rgba(104,128,138,.4) 10%,rgba(138,114,76,0) 40%), -o-linear-gradient(top, rgba(57,173,219,.25) 0%,rgba(42,60,87,.4) 100%), -o-linear-gradient(-45deg, #670d10 0%,#092756 100%);
            background: -ms-radial-gradient(0% 100%, ellipse cover, rgba(104,128,138,.4) 10%,rgba(138,114,76,0) 40%), -ms-linear-gradient(top, rgba(57,173,219,.25) 0%,rgba(42,60,87,.4) 100%), -ms-linear-gradient(-45deg, #670d10 0%,#092756 100%);
            background: -webkit-radial-gradient(0% 100%, ellipse cover, rgba(104,128,138,.4) 10%,rgba(138,114,76,0) 40%), linear-gradient(to bottom, rgba(57,173,219,.25) 0%,rgba(42,60,87,.4) 100%), linear-gradient(135deg, #670d10 0%,#092756 100%);
            filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#3E1D6D', endColorstr='#092756',GradientType=1 );
        }

        .left {
            float: left;
            width: 33%;
        }

        .btn {
            display: inline-block;
            *display: inline;
            *zoom: 1;
            padding: 4px 10px 4px;
            margin-bottom: 0;
            font-size: 13px;
            line-height: 18px;
            color: #333333;
            text-align: center;
            text-shadow: 0 1px 1px rgba(255, 255, 255, 0.75);
            vertical-align: middle;
            background-color: #f5f5f5;
            background-image: -moz-linear-gradient(top, #ffffff, #e6e6e6);
            background-image: -ms-linear-gradient(top, #ffffff, #e6e6e6);
            background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#ffffff), to(#e6e6e6));
            background-image: -webkit-linear-gradient(top, #ffffff, #e6e6e6);
            background-image: -o-linear-gradient(top, #ffffff, #e6e6e6);
            background-image: linear-gradient(top, #ffffff, #e6e6e6);
            background-repeat: repeat-x;
            filter: progid:dximagetransform.microsoft.gradient(startColorstr=#ffffff, endColorstr=#e6e6e6, GradientType=0);
            border-color: #e6e6e6 #e6e6e6 #e6e6e6;
            border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
            border: 1px solid #e6e6e6;
            -webkit-border-radius: 4px;
            -moz-border-radius: 4px;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05);
            -moz-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05);
            box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05);
            cursor: pointer;
            *margin-left: .3em;
        }

            .btn:hover, .btn:active, .btn.active, .btn.disabled, .btn[disabled] {
                background-color: #e6e6e6;
            }

        .btn-large {
            padding: 9px 14px;
            font-size: 15px;
            line-height: normal;
            -webkit-border-radius: 5px;
            -moz-border-radius: 5px;
            border-radius: 5px;
        }

        .btn:hover {
            color: #333333;
            text-decoration: none;
            background-color: #e6e6e6;
            background-position: 0 -15px;
            -webkit-transition: background-position 0.1s linear;
            -moz-transition: background-position 0.1s linear;
            -ms-transition: background-position 0.1s linear;
            -o-transition: background-position 0.1s linear;
            transition: background-position 0.1s linear;
        }

        .btn-primary, .btn-primary:hover {
            text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
            color: #ffffff;
        }

            .btn-primary.active {
                color: rgba(255, 255, 255, 0.75);
            }

        .btn-primary {
            background-color: #4a77d4;
            background-image: -moz-linear-gradient(top, #6eb6de, #4a77d4);
            background-image: -ms-linear-gradient(top, #6eb6de, #4a77d4);
            background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#6eb6de), to(#4a77d4));
            background-image: -webkit-linear-gradient(top, #6eb6de, #4a77d4);
            background-image: -o-linear-gradient(top, #6eb6de, #4a77d4);
            background-image: linear-gradient(top, #6eb6de, #4a77d4);
            background-repeat: repeat-x;
            filter: progid:dximagetransform.microsoft.gradient(startColorstr=#6eb6de, endColorstr=#4a77d4, GradientType=0);
            border: 1px solid #3762bc;
            text-shadow: 1px 1px 1px rgba(0,0,0,0.4);
            box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.5);
        }

            .btn-primary:hover, .btn-primary:active, .btn-primary.active, .btn-primary.disabled, .btn-primary[disabled] {
                filter: none;
                background-color: #4a77d4;
            }

        .btn-block {
            width: 100%;
            display: block;
        }

        .control-label {
            color: white
        }
    </style>
    <div class="container" runat="server">


        <div runat="server" class="control-group">
            <label class="control-label">Reference #</label>
            <div runat="server" class="controls">
                <asp:TextBox ID="referenceid" readonly="true" runat="server" Width="250px"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="valid_refernceid" runat="server" 
                            ErrorMessage="referenceid is required" ControlToValidate="referenceid" 
                            AutoPostBack="false" ForeColor="Red" SetFocusOnError="True" ValidationGroup="grp1" ></asp:RequiredFieldValidator>
                <p class="help-block"></p>

            </div>
           
        </div>
        <div class="left">

            <fieldset>
                <!-- Address form -->

                <h2 style="color: wheat">Shipper Address</h2>

                <!-- full-name input-->
                <div class="control-group">
                    <label class="control-label">Full Name</label>
                    <div class="controls">
                        <asp:TextBox ID="fullname" runat="server" placeholder="fullname" ></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ErrorMessage="fullname is required" ControlToValidate="fullname" 
                            AutoPostBack="false" ForeColor="Red" SetFocusOnError="True" ValidationGroup="grp1" ></asp:RequiredFieldValidator>
                        <p class="help-block"></p>
                    </div>
                </div>
                <!-- address-line1 input-->
                <div class="control-group">
                    <label class="control-label">Address Line 1</label>
                    <div class="controls">
                        <asp:TextBox runat="server" ID="addressline" placeholder="address line">
                        </asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ErrorMessage="addressline is required" ControlToValidate="addressline" 
                            AutoPostBack="false" ForeColor="Red" SetFocusOnError="True" ValidationGroup="grp1" ></asp:RequiredFieldValidator>
                        <p class="help-block"></p>
                    </div>
                </div>

                <!-- city input-->
                <div class="control-group">
                    <label class="control-label">City / Town</label>
                    <div class="controls">
                        <asp:TextBox runat="server" ID="city" placeholder="city" class="input-xlarge">
                           </asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ErrorMessage="city is required" ControlToValidate="city" 
                            AutoPostBack="false" ForeColor="Red" SetFocusOnError="True" ValidationGroup="grp1" ></asp:RequiredFieldValidator>
                        <p class="help-block"></p>
                    </div>
                </div>


            
                <!-- country select -->
                <div class="control-group">
                    <label class="control-label">Country</label>
                    <div class="controls">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem Value="White"> White </asp:ListItem>
                      
                           <asp:ListItem value="" selected="selected">(please select a country)</asp:ListItem>
                           <asp:ListItem value="AF">Afghanistan</asp:ListItem>
                           <asp:ListItem value="AL">Albania</asp:ListItem>
                           <asp:ListItem value="DZ">Algeria</asp:ListItem>
                           <asp:ListItem value="AS">American Samoa</asp:ListItem>
                           <asp:ListItem value="AD">Andorra</asp:ListItem>
                           <asp:ListItem value="AO">Angola</asp:ListItem>
                           <asp:ListItem value="AI">Anguilla</asp:ListItem>
                           <asp:ListItem value="AQ">Antarctica</asp:ListItem>
                           <asp:ListItem value="AG">Antigua and Barbuda</asp:ListItem>
                           <asp:ListItem value="AR">Argentina</asp:ListItem>
                           <asp:ListItem value="AM">Armenia</asp:ListItem>
                           <asp:ListItem value="AW">Aruba</asp:ListItem>
                           <asp:ListItem value="AU">Australia</asp:ListItem>
                           <asp:ListItem value="AT">Austria</asp:ListItem>
                           <asp:ListItem value="AZ">Azerbaijan</asp:ListItem>
                           <asp:ListItem value="BS">Bahamas</asp:ListItem>
                           <asp:ListItem value="BH">Bahrain</asp:ListItem>
                           <asp:ListItem value="BD">Bangladesh</asp:ListItem>
                           <asp:ListItem value="BB">Barbados</asp:ListItem>
                           <asp:ListItem value="BY">Belarus</asp:ListItem>
                           <asp:ListItem value="BE">Belgium</asp:ListItem>
                           <asp:ListItem value="BZ">Belize</asp:ListItem>
                           <asp:ListItem value="BJ">Benin</asp:ListItem>
                           <asp:ListItem value="BM">Bermuda</asp:ListItem>
                           <asp:ListItem value="BT">Bhutan</asp:ListItem>
                           <asp:ListItem value="BO">Bolivia</asp:ListItem>
                           <asp:ListItem value="BA">Bosnia and Herzegowina</asp:ListItem>
                           <asp:ListItem value="BW">Botswana</asp:ListItem>
                           <asp:ListItem value="BV">Bouvet Island</asp:ListItem>
                           <asp:ListItem value="BR">Brazil</asp:ListItem>
                           <asp:ListItem value="IO">British Indian Ocean Territory</asp:ListItem>
                           <asp:ListItem value="BN">Brunei Darussalam</asp:ListItem>
                           <asp:ListItem value="BG">Bulgaria</asp:ListItem>
                           <asp:ListItem value="BF">Burkina Faso</asp:ListItem>
                           <asp:ListItem value="BI">Burundi</asp:ListItem>
                           <asp:ListItem value="KH">Cambodia</asp:ListItem>
                           <asp:ListItem value="CM">Cameroon</asp:ListItem>
                           <asp:ListItem value="CA">Canada</asp:ListItem>
                           <asp:ListItem value="CV">Cape Verde</asp:ListItem>
                           <asp:ListItem value="KY">Cayman Islands</asp:ListItem>
                           <asp:ListItem value="CF">Central African Republic</asp:ListItem>
                           <asp:ListItem value="TD">Chad</asp:ListItem>
                           <asp:ListItem value="CL">Chile</asp:ListItem>
                           <asp:ListItem value="CN">China</asp:ListItem>
                           <asp:ListItem value="CX">Christmas Island</asp:ListItem>
                           <asp:ListItem value="CC">Cocos (Keeling) Islands</asp:ListItem>
                           <asp:ListItem value="CO">Colombia</asp:ListItem>
                           <asp:ListItem value="KM">Comoros</asp:ListItem>
                           <asp:ListItem value="CG">Congo</asp:ListItem>
                           <asp:ListItem value="CD">Congo, the Democratic Republic of the</asp:ListItem>
                           <asp:ListItem value="CK">Cook Islands</asp:ListItem>
                           <asp:ListItem value="CR">Costa Rica</asp:ListItem>
                           <asp:ListItem value="CI">Cote d'Ivoire</asp:ListItem>
                           <asp:ListItem value="HR">Croatia (Hrvatska)</asp:ListItem>
                           <asp:ListItem value="CU">Cuba</asp:ListItem>
                           <asp:ListItem value="CY">Cyprus</asp:ListItem>
                           <asp:ListItem value="CZ">Czech Republic</asp:ListItem>
                           <asp:ListItem value="DK">Denmark</asp:ListItem>
                           <asp:ListItem value="DJ">Djibouti</asp:ListItem>
                           <asp:ListItem value="DM">Dominica</asp:ListItem>
                           <asp:ListItem value="DO">Dominican Republic</asp:ListItem>
                           <asp:ListItem value="TP">East Timor</asp:ListItem>
                           <asp:ListItem value="EC">Ecuador</asp:ListItem>
                           <asp:ListItem value="EG">Egypt</asp:ListItem>
                           <asp:ListItem value="SV">El Salvador</asp:ListItem>
                           <asp:ListItem value="GQ">Equatorial Guinea</asp:ListItem>
                           <asp:ListItem value="ER">Eritrea</asp:ListItem>
                           <asp:ListItem value="EE">Estonia</asp:ListItem>
                           <asp:ListItem value="ET">Ethiopia</asp:ListItem>
                           <asp:ListItem value="FK">Falkland Islands (Malvinas)</asp:ListItem>
                           <asp:ListItem value="FO">Faroe Islands</asp:ListItem>
                           <asp:ListItem value="FJ">Fiji</asp:ListItem>
                           <asp:ListItem value="FI">Finland</asp:ListItem>
                           <asp:ListItem value="FR">France</asp:ListItem>
                           <asp:ListItem value="FX">France, Metropolitan</asp:ListItem>
                           <asp:ListItem value="GF">French Guiana</asp:ListItem>
                           <asp:ListItem value="PF">French Polynesia</asp:ListItem>
                           <asp:ListItem value="TF">French Southern Territories</asp:ListItem>
                           <asp:ListItem value="GA">Gabon</asp:ListItem>
                           <asp:ListItem value="GM">Gambia</asp:ListItem>
                           <asp:ListItem value="GE">Georgia</asp:ListItem>
                           <asp:ListItem value="DE">Germany</asp:ListItem>
                           <asp:ListItem value="GH">Ghana</asp:ListItem>
                           <asp:ListItem value="GI">Gibraltar</asp:ListItem>
                           <asp:ListItem value="GR">Greece</asp:ListItem>
                           <asp:ListItem value="GL">Greenland</asp:ListItem>
                           <asp:ListItem value="GD">Grenada</asp:ListItem>
                           <asp:ListItem value="GP">Guadeloupe</asp:ListItem>
                           <asp:ListItem value="GU">Guam</asp:ListItem>
                           <asp:ListItem value="GT">Guatemala</asp:ListItem>
                           <asp:ListItem value="GN">Guinea</asp:ListItem>
                           <asp:ListItem value="GW">Guinea-Bissau</asp:ListItem>
                           <asp:ListItem value="GY">Guyana</asp:ListItem>
                           <asp:ListItem value="HT">Haiti</asp:ListItem>
                           <asp:ListItem value="HM">Heard and Mc Donald Islands</asp:ListItem>
                           <asp:ListItem value="VA">Holy See (Vatican City State)</asp:ListItem>
                           <asp:ListItem value="HN">Honduras</asp:ListItem>
                           <asp:ListItem value="HK">Hong Kong</asp:ListItem>
                           <asp:ListItem value="HU">Hungary</asp:ListItem>
                           <asp:ListItem value="IS">Iceland</asp:ListItem>
                           <asp:ListItem value="IN">India</asp:ListItem>
                           <asp:ListItem value="ID">Indonesia</asp:ListItem>
                           <asp:ListItem value="IR">Iran (Islamic Republic of)</asp:ListItem>
                           <asp:ListItem value="IQ">Iraq</asp:ListItem>
                           <asp:ListItem value="IE">Ireland</asp:ListItem>
                           <asp:ListItem value="IL">Israel</asp:ListItem>
                           <asp:ListItem value="IT">Italy</asp:ListItem>
                           <asp:ListItem value="JM">Jamaica</asp:ListItem>
                           <asp:ListItem value="JP">Japan</asp:ListItem>
                           <asp:ListItem value="JO">Jordan</asp:ListItem>
                           <asp:ListItem value="KZ">Kazakhstan</asp:ListItem>
                           <asp:ListItem value="KE">Kenya</asp:ListItem>
                           <asp:ListItem value="KI">Kiribati</asp:ListItem>
                           <asp:ListItem value="KP">Korea, Democratic People's Republic of</asp:ListItem>
                           <asp:ListItem value="KR">Korea, Republic of</asp:ListItem>
                           <asp:ListItem value="KW">Kuwait</asp:ListItem>
                           <asp:ListItem value="KG">Kyrgyzstan</asp:ListItem>
                           <asp:ListItem value="LA">Lao People's Democratic Republic</asp:ListItem>
                           <asp:ListItem value="LV">Latvia</asp:ListItem>
                           <asp:ListItem value="LB">Lebanon</asp:ListItem>
                           <asp:ListItem value="LS">Lesotho</asp:ListItem>
                           <asp:ListItem value="LR">Liberia</asp:ListItem>
                           <asp:ListItem value="LY">Libyan Arab Jamahiriya</asp:ListItem>
                           <asp:ListItem value="LI">Liechtenstein</asp:ListItem>
                           <asp:ListItem value="LT">Lithuania</asp:ListItem>
                           <asp:ListItem value="LU">Luxembourg</asp:ListItem>
                           <asp:ListItem value="MO">Macau</asp:ListItem>
                           <asp:ListItem value="MK">Macedonia, The Former Yugoslav Republic of</asp:ListItem>
                           <asp:ListItem value="MG">Madagascar</asp:ListItem>
                           <asp:ListItem value="MW">Malawi</asp:ListItem>
                           <asp:ListItem value="MY">Malaysia</asp:ListItem>
                           <asp:ListItem value="MV">Maldives</asp:ListItem>
                           <asp:ListItem value="ML">Mali</asp:ListItem>
                           <asp:ListItem value="MT">Malta</asp:ListItem>
                           <asp:ListItem value="MH">Marshall Islands</asp:ListItem>
                           <asp:ListItem value="MQ">Martinique</asp:ListItem>
                           <asp:ListItem value="MR">Mauritania</asp:ListItem>
                           <asp:ListItem value="MU">Mauritius</asp:ListItem>
                           <asp:ListItem value="YT">Mayotte</asp:ListItem>
                           <asp:ListItem value="MX">Mexico</asp:ListItem>
                           <asp:ListItem value="FM">Micronesia, Federated States of</asp:ListItem>
                           <asp:ListItem value="MD">Moldova, Republic of</asp:ListItem>
                           <asp:ListItem value="MC">Monaco</asp:ListItem>
                           <asp:ListItem value="MN">Mongolia</asp:ListItem>
                           <asp:ListItem value="MS">Montserrat</asp:ListItem>
                           <asp:ListItem value="MA">Morocco</asp:ListItem>
                           <asp:ListItem value="MZ">Mozambique</asp:ListItem>
                           <asp:ListItem value="MM">Myanmar</asp:ListItem>
                           <asp:ListItem value="NA">Namibia</asp:ListItem>
                           <asp:ListItem value="NR">Nauru</asp:ListItem>
                           <asp:ListItem value="NP">Nepal</asp:ListItem>
                           <asp:ListItem value="NL">Netherlands</asp:ListItem>
                           <asp:ListItem value="AN">Netherlands Antilles</asp:ListItem>
                           <asp:ListItem value="NC">New Caledonia</asp:ListItem>
                           <asp:ListItem value="NZ">New Zealand</asp:ListItem>
                           <asp:ListItem value="NI">Nicaragua</asp:ListItem>
                           <asp:ListItem value="NE">Niger</asp:ListItem>
                           <asp:ListItem value="NG">Nigeria</asp:ListItem>
                           <asp:ListItem value="NU">Niue</asp:ListItem>
                           <asp:ListItem value="NF">Norfolk Island</asp:ListItem>
                           <asp:ListItem value="MP">Northern Mariana Islands</asp:ListItem>
                           <asp:ListItem value="NO">Norway</asp:ListItem>
                           <asp:ListItem value="OM">Oman</asp:ListItem>
                           <asp:ListItem value="PK">Pakistan</asp:ListItem>
                           <asp:ListItem value="PW">Palau</asp:ListItem>
                           <asp:ListItem value="PA">Panama</asp:ListItem>
                           <asp:ListItem value="PG">Papua New Guinea</asp:ListItem>
                           <asp:ListItem value="PY">Paraguay</asp:ListItem>
                           <asp:ListItem value="PE">Peru</asp:ListItem>
                           <asp:ListItem value="PH">Philippines</asp:ListItem>
                           <asp:ListItem value="PN">Pitcairn</asp:ListItem>
                           <asp:ListItem value="PL">Poland</asp:ListItem>
                           <asp:ListItem value="PT">Portugal</asp:ListItem>
                           <asp:ListItem value="PR">Puerto Rico</asp:ListItem>
                           <asp:ListItem value="QA">Qatar</asp:ListItem>
                           <asp:ListItem value="RE">Reunion</asp:ListItem>
                           <asp:ListItem value="RO">Romania</asp:ListItem>
                           <asp:ListItem value="RU">Russian Federation</asp:ListItem>
                           <asp:ListItem value="RW">Rwanda</asp:ListItem>
                           <asp:ListItem value="KN">Saint Kitts and Nevis</asp:ListItem>
                           <asp:ListItem value="LC">Saint LUCIA</asp:ListItem>
                           <asp:ListItem value="VC">Saint Vincent and the Grenadines</asp:ListItem>
                           <asp:ListItem value="WS">Samoa</asp:ListItem>
                           <asp:ListItem value="SM">San Marino</asp:ListItem>
                           <asp:ListItem value="ST">Sao Tome and Principe</asp:ListItem>
                           <asp:ListItem value="SA">Saudi Arabia</asp:ListItem>
                           <asp:ListItem value="SN">Senegal</asp:ListItem>
                           <asp:ListItem value="SC">Seychelles</asp:ListItem>
                           <asp:ListItem value="SL">Sierra Leone</asp:ListItem>
                           <asp:ListItem value="SG">Singapore</asp:ListItem>
                           <asp:ListItem value="SK">Slovakia (Slovak Republic)</asp:ListItem>
                           <asp:ListItem value="SI">Slovenia</asp:ListItem>
                           <asp:ListItem value="SB">Solomon Islands</asp:ListItem>
                           <asp:ListItem value="SO">Somalia</asp:ListItem>
                           <asp:ListItem value="ZA">South Africa</asp:ListItem>
                           <asp:ListItem value="GS">South Georgia and the South Sandwich Islands</asp:ListItem>
                           <asp:ListItem value="ES">Spain</asp:ListItem>
                           <asp:ListItem value="LK">Sri Lanka</asp:ListItem>
                           <asp:ListItem value="SH">St. Helena</asp:ListItem>
                           <asp:ListItem value="PM">St. Pierre and Miquelon</asp:ListItem>
                           <asp:ListItem value="SD">Sudan</asp:ListItem>
                           <asp:ListItem value="SR">Suriname</asp:ListItem>
                           <asp:ListItem value="SJ">Svalbard and Jan Mayen Islands</asp:ListItem>
                           <asp:ListItem value="SZ">Swaziland</asp:ListItem>
                           <asp:ListItem value="SE">Sweden</asp:ListItem>
                           <asp:ListItem value="CH">Switzerland</asp:ListItem>
                           <asp:ListItem value="SY">Syrian Arab Republic</asp:ListItem>
                           <asp:ListItem value="TW">Taiwan, Province of China</asp:ListItem>
                           <asp:ListItem value="TJ">Tajikistan</asp:ListItem>
                           <asp:ListItem value="TZ">Tanzania, United Republic of</asp:ListItem>
                           <asp:ListItem value="TH">Thailand</asp:ListItem>
                           <asp:ListItem value="TG">Togo</asp:ListItem>
                           <asp:ListItem value="TK">Tokelau</asp:ListItem>
                           <asp:ListItem value="TO">Tonga</asp:ListItem>
                           <asp:ListItem value="TT">Trinidad and Tobago</asp:ListItem>
                           <asp:ListItem value="TN">Tunisia</asp:ListItem>
                           <asp:ListItem value="TR">Turkey</asp:ListItem>
                           <asp:ListItem value="TM">Turkmenistan</asp:ListItem>
                           <asp:ListItem value="TC">Turks and Caicos Islands</asp:ListItem>
                           <asp:ListItem value="TV">Tuvalu</asp:ListItem>
                           <asp:ListItem value="UG">Uganda</asp:ListItem>
                           <asp:ListItem value="UA">Ukraine</asp:ListItem>
                           <asp:ListItem value="AE">United Arab Emirates</asp:ListItem>
                           <asp:ListItem value="GB">United Kingdom</asp:ListItem>
                           <asp:ListItem value="US">United States</asp:ListItem>
                           <asp:ListItem value="UM">United States Minor Outlying Islands</asp:ListItem>
                           <asp:ListItem value="UY">Uruguay</asp:ListItem>
                           <asp:ListItem value="UZ">Uzbekistan</asp:ListItem>
                           <asp:ListItem value="VU">Vanuatu</asp:ListItem>
                           <asp:ListItem value="VE">Venezuela</asp:ListItem>
                           <asp:ListItem value="VN">Viet Nam</asp:ListItem>
                           <asp:ListItem value="VG">Virgin Islands (British)</asp:ListItem>
                           <asp:ListItem value="VI">Virgin Islands (U.S.)</asp:ListItem>
                           <asp:ListItem value="WF">Wallis and Futuna Islands</asp:ListItem>
                           <asp:ListItem value="EH">Western Sahara</asp:ListItem>
                           <asp:ListItem value="YE">Yemen</asp:ListItem>
                           <asp:ListItem value="YU">Yugoslavia</asp:ListItem>
                           <asp:ListItem value="ZM">Zambia</asp:ListItem>
                           <asp:ListItem value="ZW">Zimbabwe</asp:ListItem>
                            
                        </asp:DropDownList>
                    </div>
                </div>
                <p class="help-block"></p>
                <div class="control-group">
                    <label class="control-label" id="Package">Package :</label>
                    <div class="controls">
                        <asp:DropDownList ID="package" runat="server" AutoPostBack="true" OnSelectedIndexChanged="package_SelectedIndexChanged">
                        </asp:DropDownList>
                    </div>
                    <p class="help-block"></p>
                </div>

            </fieldset>

        </div>

        <div class="left">
            <fieldset>

                <h2 style="color: wheat">Consignee Address</h2>

                <!-- full-name input-->
                <div class="control-group">
                    <label class="control-label">Full Name</label>
                    <div class="controls">
                        <asp:TextBox runat="server" ID="R_fullname"  type="text" placeholder="full name">
                             
                       </asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ErrorMessage="fullname is required" ControlToValidate="R_fullname" 
                            AutoPostBack="false" ForeColor="Red" SetFocusOnError="True" ValidationGroup="grp1" ></asp:RequiredFieldValidator>
                        <p class="help-block"></p>
                    </div>
                </div>
                <!-- address-line1 input-->
                <div class="control-group">
                    <label class="control-label">Address Line 1</label>
                    <div class="controls">
                        <asp:TextBox runat="server" ID="R_addressline1" name="address-line1" type="text" placeholder="address line 1">
                        </asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ErrorMessage="addressline is required" ControlToValidate="R_addressline1" 
                            AutoPostBack="false" ForeColor="Red" SetFocusOnError="True" ValidationGroup="grp1" ></asp:RequiredFieldValidator>
                        <p class="help-block"></p>
                    </div>
                </div>

                <!-- city input-->
                <div class="control-group">
                    <label class="control-label">City / Town</label>
                    <div class="controls">
                        <asp:TextBox runat="server" ID="R_city" type="text" placeholder="city" > </asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                            ErrorMessage="city is required" ControlToValidate="R_city" 
                            AutoPostBack="false" ForeColor="Red" SetFocusOnError="True" ValidationGroup="grp1" ></asp:RequiredFieldValidator>
                        <p class="help-block"></p>
                    </div>
                </div>

              
                <!-- country select -->
                <div class="control-group">
                    <label class="control-label">Country</label>
                    <div class="controls">
                        <asp:DropDownList ID="R_DropDownList2" runat="server">
                           <asp:ListItem value="" selected="selected">(please select a country)</asp:ListItem>
                           <asp:ListItem value="AF">Afghanistan</asp:ListItem>
                           <asp:ListItem value="AL">Albania</asp:ListItem>
                           <asp:ListItem value="DZ">Algeria</asp:ListItem>
                           <asp:ListItem value="AS">American Samoa</asp:ListItem>
                           <asp:ListItem value="AD">Andorra</asp:ListItem>
                           <asp:ListItem value="AO">Angola</asp:ListItem>
                           <asp:ListItem value="AI">Anguilla</asp:ListItem>
                           <asp:ListItem value="AQ">Antarctica</asp:ListItem>
                           <asp:ListItem value="AG">Antigua and Barbuda</asp:ListItem>
                           <asp:ListItem value="AR">Argentina</asp:ListItem>
                           <asp:ListItem value="AM">Armenia</asp:ListItem>
                           <asp:ListItem value="AW">Aruba</asp:ListItem>
                           <asp:ListItem value="AU">Australia</asp:ListItem>
                           <asp:ListItem value="AT">Austria</asp:ListItem>
                           <asp:ListItem value="AZ">Azerbaijan</asp:ListItem>
                           <asp:ListItem value="BS">Bahamas</asp:ListItem>
                           <asp:ListItem value="BH">Bahrain</asp:ListItem>
                           <asp:ListItem value="BD">Bangladesh</asp:ListItem>
                           <asp:ListItem value="BB">Barbados</asp:ListItem>
                           <asp:ListItem value="BY">Belarus</asp:ListItem>
                           <asp:ListItem value="BE">Belgium</asp:ListItem>
                           <asp:ListItem value="BZ">Belize</asp:ListItem>
                           <asp:ListItem value="BJ">Benin</asp:ListItem>
                           <asp:ListItem value="BM">Bermuda</asp:ListItem>
                           <asp:ListItem value="BT">Bhutan</asp:ListItem>
                           <asp:ListItem value="BO">Bolivia</asp:ListItem>
                           <asp:ListItem value="BA">Bosnia and Herzegowina</asp:ListItem>
                           <asp:ListItem value="BW">Botswana</asp:ListItem>
                           <asp:ListItem value="BV">Bouvet Island</asp:ListItem>
                           <asp:ListItem value="BR">Brazil</asp:ListItem>
                           <asp:ListItem value="IO">British Indian Ocean Territory</asp:ListItem>
                           <asp:ListItem value="BN">Brunei Darussalam</asp:ListItem>
                           <asp:ListItem value="BG">Bulgaria</asp:ListItem>
                           <asp:ListItem value="BF">Burkina Faso</asp:ListItem>
                           <asp:ListItem value="BI">Burundi</asp:ListItem>
                           <asp:ListItem value="KH">Cambodia</asp:ListItem>
                           <asp:ListItem value="CM">Cameroon</asp:ListItem>
                           <asp:ListItem value="CA">Canada</asp:ListItem>
                           <asp:ListItem value="CV">Cape Verde</asp:ListItem>
                           <asp:ListItem value="KY">Cayman Islands</asp:ListItem>
                           <asp:ListItem value="CF">Central African Republic</asp:ListItem>
                           <asp:ListItem value="TD">Chad</asp:ListItem>
                           <asp:ListItem value="CL">Chile</asp:ListItem>
                           <asp:ListItem value="CN">China</asp:ListItem>
                           <asp:ListItem value="CX">Christmas Island</asp:ListItem>
                           <asp:ListItem value="CC">Cocos (Keeling) Islands</asp:ListItem>
                           <asp:ListItem value="CO">Colombia</asp:ListItem>
                           <asp:ListItem value="KM">Comoros</asp:ListItem>
                           <asp:ListItem value="CG">Congo</asp:ListItem>
                           <asp:ListItem value="CD">Congo, the Democratic Republic of the</asp:ListItem>
                           <asp:ListItem value="CK">Cook Islands</asp:ListItem>
                           <asp:ListItem value="CR">Costa Rica</asp:ListItem>
                           <asp:ListItem value="CI">Cote d'Ivoire</asp:ListItem>
                           <asp:ListItem value="HR">Croatia (Hrvatska)</asp:ListItem>
                           <asp:ListItem value="CU">Cuba</asp:ListItem>
                           <asp:ListItem value="CY">Cyprus</asp:ListItem>
                           <asp:ListItem value="CZ">Czech Republic</asp:ListItem>
                           <asp:ListItem value="DK">Denmark</asp:ListItem>
                           <asp:ListItem value="DJ">Djibouti</asp:ListItem>
                           <asp:ListItem value="DM">Dominica</asp:ListItem>
                           <asp:ListItem value="DO">Dominican Republic</asp:ListItem>
                           <asp:ListItem value="TP">East Timor</asp:ListItem>
                           <asp:ListItem value="EC">Ecuador</asp:ListItem>
                           <asp:ListItem value="EG">Egypt</asp:ListItem>
                           <asp:ListItem value="SV">El Salvador</asp:ListItem>
                           <asp:ListItem value="GQ">Equatorial Guinea</asp:ListItem>
                           <asp:ListItem value="ER">Eritrea</asp:ListItem>
                           <asp:ListItem value="EE">Estonia</asp:ListItem>
                           <asp:ListItem value="ET">Ethiopia</asp:ListItem>
                           <asp:ListItem value="FK">Falkland Islands (Malvinas)</asp:ListItem>
                           <asp:ListItem value="FO">Faroe Islands</asp:ListItem>
                           <asp:ListItem value="FJ">Fiji</asp:ListItem>
                           <asp:ListItem value="FI">Finland</asp:ListItem>
                           <asp:ListItem value="FR">France</asp:ListItem>
                           <asp:ListItem value="FX">France, Metropolitan</asp:ListItem>
                           <asp:ListItem value="GF">French Guiana</asp:ListItem>
                           <asp:ListItem value="PF">French Polynesia</asp:ListItem>
                           <asp:ListItem value="TF">French Southern Territories</asp:ListItem>
                           <asp:ListItem value="GA">Gabon</asp:ListItem>
                           <asp:ListItem value="GM">Gambia</asp:ListItem>
                           <asp:ListItem value="GE">Georgia</asp:ListItem>
                           <asp:ListItem value="DE">Germany</asp:ListItem>
                           <asp:ListItem value="GH">Ghana</asp:ListItem>
                           <asp:ListItem value="GI">Gibraltar</asp:ListItem>
                           <asp:ListItem value="GR">Greece</asp:ListItem>
                           <asp:ListItem value="GL">Greenland</asp:ListItem>
                           <asp:ListItem value="GD">Grenada</asp:ListItem>
                           <asp:ListItem value="GP">Guadeloupe</asp:ListItem>
                           <asp:ListItem value="GU">Guam</asp:ListItem>
                           <asp:ListItem value="GT">Guatemala</asp:ListItem>
                           <asp:ListItem value="GN">Guinea</asp:ListItem>
                           <asp:ListItem value="GW">Guinea-Bissau</asp:ListItem>
                           <asp:ListItem value="GY">Guyana</asp:ListItem>
                           <asp:ListItem value="HT">Haiti</asp:ListItem>
                           <asp:ListItem value="HM">Heard and Mc Donald Islands</asp:ListItem>
                           <asp:ListItem value="VA">Holy See (Vatican City State)</asp:ListItem>
                           <asp:ListItem value="HN">Honduras</asp:ListItem>
                           <asp:ListItem value="HK">Hong Kong</asp:ListItem>
                           <asp:ListItem value="HU">Hungary</asp:ListItem>
                           <asp:ListItem value="IS">Iceland</asp:ListItem>
                           <asp:ListItem value="IN">India</asp:ListItem>
                           <asp:ListItem value="ID">Indonesia</asp:ListItem>
                           <asp:ListItem value="IR">Iran (Islamic Republic of)</asp:ListItem>
                           <asp:ListItem value="IQ">Iraq</asp:ListItem>
                           <asp:ListItem value="IE">Ireland</asp:ListItem>
                           <asp:ListItem value="IL">Israel</asp:ListItem>
                           <asp:ListItem value="IT">Italy</asp:ListItem>
                           <asp:ListItem value="JM">Jamaica</asp:ListItem>
                           <asp:ListItem value="JP">Japan</asp:ListItem>
                           <asp:ListItem value="JO">Jordan</asp:ListItem>
                           <asp:ListItem value="KZ">Kazakhstan</asp:ListItem>
                           <asp:ListItem value="KE">Kenya</asp:ListItem>
                           <asp:ListItem value="KI">Kiribati</asp:ListItem>
                           <asp:ListItem value="KP">Korea, Democratic People's Republic of</asp:ListItem>
                           <asp:ListItem value="KR">Korea, Republic of</asp:ListItem>
                           <asp:ListItem value="KW">Kuwait</asp:ListItem>
                           <asp:ListItem value="KG">Kyrgyzstan</asp:ListItem>
                           <asp:ListItem value="LA">Lao People's Democratic Republic</asp:ListItem>
                           <asp:ListItem value="LV">Latvia</asp:ListItem>
                           <asp:ListItem value="LB">Lebanon</asp:ListItem>
                           <asp:ListItem value="LS">Lesotho</asp:ListItem>
                           <asp:ListItem value="LR">Liberia</asp:ListItem>
                           <asp:ListItem value="LY">Libyan Arab Jamahiriya</asp:ListItem>
                           <asp:ListItem value="LI">Liechtenstein</asp:ListItem>
                           <asp:ListItem value="LT">Lithuania</asp:ListItem>
                           <asp:ListItem value="LU">Luxembourg</asp:ListItem>
                           <asp:ListItem value="MO">Macau</asp:ListItem>
                           <asp:ListItem value="MK">Macedonia, The Former Yugoslav Republic of</asp:ListItem>
                           <asp:ListItem value="MG">Madagascar</asp:ListItem>
                           <asp:ListItem value="MW">Malawi</asp:ListItem>
                           <asp:ListItem value="MY">Malaysia</asp:ListItem>
                           <asp:ListItem value="MV">Maldives</asp:ListItem>
                           <asp:ListItem value="ML">Mali</asp:ListItem>
                           <asp:ListItem value="MT">Malta</asp:ListItem>
                           <asp:ListItem value="MH">Marshall Islands</asp:ListItem>
                           <asp:ListItem value="MQ">Martinique</asp:ListItem>
                           <asp:ListItem value="MR">Mauritania</asp:ListItem>
                           <asp:ListItem value="MU">Mauritius</asp:ListItem>
                           <asp:ListItem value="YT">Mayotte</asp:ListItem>
                           <asp:ListItem value="MX">Mexico</asp:ListItem>
                           <asp:ListItem value="FM">Micronesia, Federated States of</asp:ListItem>
                           <asp:ListItem value="MD">Moldova, Republic of</asp:ListItem>
                           <asp:ListItem value="MC">Monaco</asp:ListItem>
                           <asp:ListItem value="MN">Mongolia</asp:ListItem>
                           <asp:ListItem value="MS">Montserrat</asp:ListItem>
                           <asp:ListItem value="MA">Morocco</asp:ListItem>
                           <asp:ListItem value="MZ">Mozambique</asp:ListItem>
                           <asp:ListItem value="MM">Myanmar</asp:ListItem>
                           <asp:ListItem value="NA">Namibia</asp:ListItem>
                           <asp:ListItem value="NR">Nauru</asp:ListItem>
                           <asp:ListItem value="NP">Nepal</asp:ListItem>
                           <asp:ListItem value="NL">Netherlands</asp:ListItem>
                           <asp:ListItem value="AN">Netherlands Antilles</asp:ListItem>
                           <asp:ListItem value="NC">New Caledonia</asp:ListItem>
                           <asp:ListItem value="NZ">New Zealand</asp:ListItem>
                           <asp:ListItem value="NI">Nicaragua</asp:ListItem>
                           <asp:ListItem value="NE">Niger</asp:ListItem>
                           <asp:ListItem value="NG">Nigeria</asp:ListItem>
                           <asp:ListItem value="NU">Niue</asp:ListItem>
                           <asp:ListItem value="NF">Norfolk Island</asp:ListItem>
                           <asp:ListItem value="MP">Northern Mariana Islands</asp:ListItem>
                           <asp:ListItem value="NO">Norway</asp:ListItem>
                           <asp:ListItem value="OM">Oman</asp:ListItem>
                           <asp:ListItem value="PK">Pakistan</asp:ListItem>
                           <asp:ListItem value="PW">Palau</asp:ListItem>
                           <asp:ListItem value="PA">Panama</asp:ListItem>
                           <asp:ListItem value="PG">Papua New Guinea</asp:ListItem>
                           <asp:ListItem value="PY">Paraguay</asp:ListItem>
                           <asp:ListItem value="PE">Peru</asp:ListItem>
                           <asp:ListItem value="PH">Philippines</asp:ListItem>
                           <asp:ListItem value="PN">Pitcairn</asp:ListItem>
                           <asp:ListItem value="PL">Poland</asp:ListItem>
                           <asp:ListItem value="PT">Portugal</asp:ListItem>
                           <asp:ListItem value="PR">Puerto Rico</asp:ListItem>
                           <asp:ListItem value="QA">Qatar</asp:ListItem>
                           <asp:ListItem value="RE">Reunion</asp:ListItem>
                           <asp:ListItem value="RO">Romania</asp:ListItem>
                           <asp:ListItem value="RU">Russian Federation</asp:ListItem>
                           <asp:ListItem value="RW">Rwanda</asp:ListItem>
                           <asp:ListItem value="KN">Saint Kitts and Nevis</asp:ListItem>
                           <asp:ListItem value="LC">Saint LUCIA</asp:ListItem>
                           <asp:ListItem value="VC">Saint Vincent and the Grenadines</asp:ListItem>
                           <asp:ListItem value="WS">Samoa</asp:ListItem>
                           <asp:ListItem value="SM">San Marino</asp:ListItem>
                           <asp:ListItem value="ST">Sao Tome and Principe</asp:ListItem>
                           <asp:ListItem value="SA">Saudi Arabia</asp:ListItem>
                           <asp:ListItem value="SN">Senegal</asp:ListItem>
                           <asp:ListItem value="SC">Seychelles</asp:ListItem>
                           <asp:ListItem value="SL">Sierra Leone</asp:ListItem>
                           <asp:ListItem value="SG">Singapore</asp:ListItem>
                           <asp:ListItem value="SK">Slovakia (Slovak Republic)</asp:ListItem>
                           <asp:ListItem value="SI">Slovenia</asp:ListItem>
                           <asp:ListItem value="SB">Solomon Islands</asp:ListItem>
                           <asp:ListItem value="SO">Somalia</asp:ListItem>
                           <asp:ListItem value="ZA">South Africa</asp:ListItem>
                           <asp:ListItem value="GS">South Georgia and the South Sandwich Islands</asp:ListItem>
                           <asp:ListItem value="ES">Spain</asp:ListItem>
                           <asp:ListItem value="LK">Sri Lanka</asp:ListItem>
                           <asp:ListItem value="SH">St. Helena</asp:ListItem>
                           <asp:ListItem value="PM">St. Pierre and Miquelon</asp:ListItem>
                           <asp:ListItem value="SD">Sudan</asp:ListItem>
                           <asp:ListItem value="SR">Suriname</asp:ListItem>
                           <asp:ListItem value="SJ">Svalbard and Jan Mayen Islands</asp:ListItem>
                           <asp:ListItem value="SZ">Swaziland</asp:ListItem>
                           <asp:ListItem value="SE">Sweden</asp:ListItem>
                           <asp:ListItem value="CH">Switzerland</asp:ListItem>
                           <asp:ListItem value="SY">Syrian Arab Republic</asp:ListItem>
                           <asp:ListItem value="TW">Taiwan, Province of China</asp:ListItem>
                           <asp:ListItem value="TJ">Tajikistan</asp:ListItem>
                           <asp:ListItem value="TZ">Tanzania, United Republic of</asp:ListItem>
                           <asp:ListItem value="TH">Thailand</asp:ListItem>
                           <asp:ListItem value="TG">Togo</asp:ListItem>
                           <asp:ListItem value="TK">Tokelau</asp:ListItem>
                           <asp:ListItem value="TO">Tonga</asp:ListItem>
                           <asp:ListItem value="TT">Trinidad and Tobago</asp:ListItem>
                           <asp:ListItem value="TN">Tunisia</asp:ListItem>
                           <asp:ListItem value="TR">Turkey</asp:ListItem>
                           <asp:ListItem value="TM">Turkmenistan</asp:ListItem>
                           <asp:ListItem value="TC">Turks and Caicos Islands</asp:ListItem>
                           <asp:ListItem value="TV">Tuvalu</asp:ListItem>
                           <asp:ListItem value="UG">Uganda</asp:ListItem>
                           <asp:ListItem value="UA">Ukraine</asp:ListItem>
                           <asp:ListItem value="AE">United Arab Emirates</asp:ListItem>
                           <asp:ListItem value="GB">United Kingdom</asp:ListItem>
                           <asp:ListItem value="US">United States</asp:ListItem>
                           <asp:ListItem value="UM">United States Minor Outlying Islands</asp:ListItem>
                           <asp:ListItem value="UY">Uruguay</asp:ListItem>
                           <asp:ListItem value="UZ">Uzbekistan</asp:ListItem>
                           <asp:ListItem value="VU">Vanuatu</asp:ListItem>
                           <asp:ListItem value="VE">Venezuela</asp:ListItem>
                           <asp:ListItem value="VN">Viet Nam</asp:ListItem>
                           <asp:ListItem value="VG">Virgin Islands (British)</asp:ListItem>
                           <asp:ListItem value="VI">Virgin Islands (U.S.)</asp:ListItem>
                           <asp:ListItem value="WF">Wallis and Futuna Islands</asp:ListItem>
                           <asp:ListItem value="EH">Western Sahara</asp:ListItem>
                           <asp:ListItem value="YE">Yemen</asp:ListItem>
                           <asp:ListItem value="YU">Yugoslavia</asp:ListItem>
                           <asp:ListItem value="ZM">Zambia</asp:ListItem>
                           <asp:ListItem value="ZW">Zimbabwe</asp:ListItem>
                       </asp:DropDownList>
                    </div>
                </div>
                <p class="help-block"></p>
                <div class="control-group">
                    <label class="control-label">Expected Delivery date</label>
                    <div class="controls">
                        <asp:TextBox runat="server" ID="R_expectedate" name="postal-code" type="text" readonly="true">
                             </asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                            ErrorMessage="Select Package  " ControlToValidate="R_expectedate" 
                            AutoPostBack="false" ForeColor="Red" SetFocusOnError="True" ValidationGroup="grp1" ></asp:RequiredFieldValidator>
                        <p class="help-block"></p>
                    </div>
                </div>
            </fieldset>

        </div>


        <div class="left">
            <asp:Button class="btn btn-primary btn-block btn-large" ID="btn_create" runat="server"  ValidationGroup="grp1" Text="Create" OnClick="btn_create_Click" />
            <asp:Button class="btn btn-primary btn-block btn-large" ID="btn_update" runat="server"  ValidationGroup="grp1" Text="Update" />
            <asp:Button class="btn btn-primary btn-block btn-large" ID="btn_delete" runat="server"  ValidationGroup="grp1" Text="Delete" />
        </div>



    </div>





    </div>
  


  

                </div>
  


  

</asp:Content>
