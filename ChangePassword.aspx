<%@ Page Title="Change My Password" Language="C#" MasterPageFile="~/SiteNoRole.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="RTGS.ChangePassword" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">  
<div class="row">
    <div class="col-md-12">
        <section class="panel"> 
           <header class="panel-heading">CHANGE PASSWORD</header>
           <div class="panel-body">
              
               <table width="745px">
                   <tr>
                       <td width="80"></td>
                       <td colspan="2"> <asp:Label ID="HdrMsg" CssClass=" alert-danger" runat="server" /></td>
                   </tr>
                   <tr>
                       <td></td>
                       <td style="width: 120px" class="NormalBold">Old Password</td>
                       <td style="width: 500px">
                           <asp:TextBox ID="OldPassword" runat="Server" TextMode="Password" CssClass="form-control" Width="200px" MaxLength="20"></asp:TextBox>
                           <asp:RequiredFieldValidator
                               ID="ReqValOldPassword"
                               CssClass="NormalRed" runat="server"
                               ControlToValidate="OldPassword"
                               ErrorMessage="*" Display="dynamic"></asp:RequiredFieldValidator>
                       </td>
                   </tr>
                   <tr>
                       <td></td>
                       <td class="NormalBold">New Passsword</td>
                       <td>
                           <asp:TextBox ID="NewPassword" runat="Server" TextMode="Password" CssClass="form-control" Width="200px" MaxLength="20"></asp:TextBox>
                           <asp:RequiredFieldValidator
                               ID="ReqValNewPassword"
                               CssClass="NormalRed" runat="server"
                               ControlToValidate="NewPassword"
                               ErrorMessage="*" Display="dynamic"></asp:RequiredFieldValidator>
                       </td>
                   </tr>
                   <tr>
                       <td></td>
                       <td class="NormalBold">Confirm</td>
                       <td>
                           <asp:TextBox ID="ConfirmPassword" runat="Server" TextMode="Password" CssClass="form-control" Width="200px" MaxLength="20"></asp:TextBox>
                           <asp:RequiredFieldValidator
                               ID="ReqValConfirmPassword"
                               CssClass="NormalRed" runat="server"
                               ControlToValidate="ConfirmPassword"
                               ErrorMessage="*" Display="dynamic"></asp:RequiredFieldValidator>
                       </td>
                   </tr>
                   <tr>
                       <td></td>
                       <td colspan="2">
                           <asp:Label ID="Msg" runat="Server" CssClass="NormalRed"></asp:Label>
                       </td>
                   </tr>
                   <tr>
                       <td></td>
                       <td colspan="2">
                           <asp:Button ID="ChangePwdBtn" runat="server" CssClass="btn btn-success" Text="Change" OnClick="ChangePwdBtn_Click" />
                           <asp:Button ID="GoToLoginBtn" runat="server" CausesValidation="false" CssClass="btn btn-success" Visible="false" Text="Go To Login Page" OnClick="GoToLoginBtn_Click"  />
                       </td>
                   </tr>
                   <tr>
                       <td colspan="3" height="30px"></td>
                   </tr>
                   <tr>
                       <td></td>
                       <td colspan="2" class="NormalBold">Password Policy</td>
                   </tr>
                   <tr>
                       <td></td>
                       <td colspan="2" class="Normal">1. Password must be minimum 6 characters long.</td>
                   </tr>
                   <tr>
                       <td></td>
                       <td colspan="2" class="Normal">2. Password must contain both alphabet(both lower and upper) and numbers and also special characters.</td>
                   </tr>
                   <tr>
                       <td></td>
                       <td colspan="2" class="Normal">3. Password must be changed within 90 days or it will deactivate.</td>
                   </tr>

                   <tr>
                       <td></td>
                       <td colspan="2" class="Normal">4. While changing password you can not use the same password that you have used the last 3 times.</td>
                   </tr>

               </table>
            </div>
        </section>
    </div>
    </div>
</asp:Content>
