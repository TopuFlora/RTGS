<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AuditData.aspx.cs" Inherits="RTGS.AuditData" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-12">
            <section class="panel">
                <header class="panel-heading">
                    Audit Data 
                </header>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="pull-left">
                               <span style="font-size: 13px;font-weight: bold;text-transform: uppercase;color: #31708F;"> Search Results </span>
                            </div>
                            <div class="pull-right">
                                 <div style="margin-bottom:10px">
                                     <asp:Button ID="ExcelBtn" runat="server" CssClass="btn btn-success" Text="Excel" OnClick="ExcelBtn_Click" />
                                 </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">   
                        <div class="col-md-12"> 
                            <div style="width:100%; overflow-x:auto">
                                <div class="table-responsive">
                                   <asp:DataGrid ID="AuditGrid" runat="server" AutoGenerateColumns="true" ItemStyle-Wrap="false"
                                       CssClass="table  table-bordered table-striped table-hover" AllowPaging="False">
                                   <Columns>
                                 </Columns>
                                </asp:DataGrid>                     
                                </div>
                            </div>                          
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>
</asp:Content>
