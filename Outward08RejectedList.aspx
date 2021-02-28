<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Outward08RejectedList.aspx.cs" Inherits="RTGS.Outward08RejectedList" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-12">
            <section class="panel">
                <header class="panel-heading">
                    Todays Outward08 Errot List
                </header>
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <asp:GridView ID="MyDataGrid" CssClass="table  table-bordered table-striped table-hover" runat="server" HeaderStyle-HorizontalAlign="Center"
                                AutoGenerateColumns="false">
                                <Columns>
                                    <asp:BoundField DataField="DebitorName" HeaderText="DebitorName" HeaderStyle-HorizontalAlign="Center" />
                                    <asp:BoundField DataField="DebitorAccountNo" HeaderText="DebitorAccountNo" HeaderStyle-HorizontalAlign="Center" />
                                    <asp:BoundField DataField="Amount" HeaderText="Amount" HeaderStyle-HorizontalAlign="Center" />
                                    <asp:BoundField DataField="CreditorName" HeaderText="CreditorName" HeaderStyle-HorizontalAlign="Center" />
                                    <asp:BoundField DataField="CreditorAccountNo" HeaderText="CreditorAccountNo" HeaderStyle-HorizontalAlign="Center" />
                                    <asp:BoundField DataField="InvRsn" HeaderText="InvRsn" HeaderStyle-HorizontalAlign="Center" />
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>
</asp:Content>

