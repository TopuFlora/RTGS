<%@ Page Title="Outward Entry" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OutwardEntryChoice.aspx.cs" Inherits="RTGS.OutwardEntryChoice" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <div style="margin-top:10px">
            <div class="row">
        <div class="col-md-12">
            <section class="panel">
        <header class="panel-heading">
            <h4>Choose Type of Transaction</h4>   
            <span class="tools pull-right">
                <a href="javascript:;" class="fa fa-chevron-down"></a>

            </span>
        </header>
        <div class="row" style="font-weight:bold;margin-top:15px">
            <div class="col-md-12">
                <div class="panel panel-info">
                    
                    <div class="panel-body">
                        <table class="table table-striped table-hover" style="width:70%">
                                <tr>
                                    <td>
                                        <asp:Button ID="SingleCustomerCredit" Text="FI  to  FI  Customer Credit Transfer (Single)" Width="350px" CssClass="btn btn-primary" runat="server" OnClick="SingleCustomerCredit_Click" />
                                    </td>
                                    <td>
                                        <asp:Button ID="Bulk" Text="Upload (Bulk)" Width="350px" CssClass="btn btn-primary" runat="server" OnClick="SingleCustomerCreditBulk_Click" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Button ID="FICredit" Text="Financial Institution Credit Transfer (Single)" Width="350px" CssClass="btn btn-success" runat="server" OnClick="FICredit_Click" />
                                    </td>
                                    <td>
                                        <asp:Button ID="FICreditBulk" Text="Financial Institution Credit Transfer (Bulk)" Width="350px" CssClass="btn btn-success" runat="server" Visible="false" OnClick="FICreditBulk_Click" />
                                    </td>
                                </tr>
                                
                        </table>
            </div>
            </div>
            </div>
        </div>
    </section>
        </div>
    </div>
        </div>
</asp:Content>
