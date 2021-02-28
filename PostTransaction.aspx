<%@ Page Title="Post Transactions" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PostTransaction.aspx.cs" Inherits="RTGS.PostTransaction" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">            
    <div class="row">
        <div class="col-md-12">
            <section class="panel">
                <header class="panel-heading">
                    Post Transaction Activities
                </header>
                <div class="panel-body">   
                   <div class="row">
                        <table width="50%">
                            <tr>
                                <td align="center">Current Priority Level</td>
                                <td>New Priority Level</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td align="center"><asp:Label ID="lblSvcLvlPrtry"  runat="server" CssClass="orm-control" /></td>
                                <td>
                                    <asp:TextBox ID="TxtNewSvcLvlPrtry" Width="60" MaxLength="2" runat="server" CssClass="form-control" />
                                     <asp:RangeValidator id="RangeCheck1" runat="server" ControlToValidate="TxtNewSvcLvlPrtry"
                                                Type="Integer" MinimumValue="11" MaximumValue="99" CssClass="normal-red" 
                                                 ErrorMessage="11-99 Numeric" Display="Dynamic" />
                                </td>
                                <td> <asp:LinkButton ID="BtnChangePriority" Width="100" runat="server"  Text="Change" OnClick="BtnChangePriority_Click" /></td>
                            </tr>
                        </table>
                    </div>
           </section>
            <br />
            <section class="panel">
                <header class="panel-heading">
                    CancelTransaction
                </header>
                <div class="panel-body">   
                   <div class="row">
                        <div class="col-md-4">
                              <div style="float:left; margin-left:3px">
                                  <asp:LinkButton ID="BtnCancel" runat="server" Text="Request to Cancel this Transaction" OnClick="BtnCancel_Click" />
                              </div>
                        </div> 
                    </div>
           </section>
       </div>           
    </div>
</asp:Content>
