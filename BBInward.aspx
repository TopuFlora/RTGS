<%@ Page Title="BB Inward" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BBInward.aspx.cs" Inherits="RTGS.BBInward" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-12">
            <section class="panel">
                <header class="panel-heading">Todays RTSX Responses</header>
                <div class="row">
                    <div class="col-md-6">
                        <div style="float: left; margin-left: 3px">
                            <asp:DropDownList ID="FormList" runat="server" CssClass="form-control" AutoPostBack="true">
                                <asp:ListItem Text="all" Value="0"></asp:ListItem>
                                <asp:ListItem Text="camt.004" Value="camt.004"></asp:ListItem>
                                <asp:ListItem Text="camt.005" Value="camt.005"></asp:ListItem>
                                <asp:ListItem Text="camt.006" Value="camt.006"></asp:ListItem>
                                <asp:ListItem Text="camt.019" Value="camt.019"></asp:ListItem>
                                <asp:ListItem Text="camt.025" Value="camt.025"></asp:ListItem>
                                <asp:ListItem Text="camt.052" Value="camt.052"></asp:ListItem>
                                <asp:ListItem Text="camt.053" Value="camt.053"></asp:ListItem>
                                <asp:ListItem Text="camt.054" Value="camt.054"></asp:ListItem>
                                <asp:ListItem Text="pacs.002" Value="pacs.002"></asp:ListItem>
                                <asp:ListItem Text="unknown" Value="Other"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>

<%--                    <div class="col-md-6">
                        <div style="float: left; margin-left: 3px">
                            <asp:Button ID="btncamt54" CssClass="btn btn-success"  runat="server" Text="DAILY CAMT54 DOWNLOAD" OnClick="btncamt54_Click" /> 
                        </div>
                    </div>--%>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <asp:GridView ID="MyDataGrid" Class="table  table-bordered table-striped table-hover" runat="server"
                                AutoGenerateColumns="false">
                                <Columns>
                                    <asp:HyperLinkField DataTextField="SLNo" DataNavigateUrlFormatString="XslTransform.aspx?FormName={0}&BBID={1}" Target="_new" HeaderText="SL No" DataNavigateUrlFields="Form, BBID" />
                                    <asp:BoundField DataField="Form" HeaderText="Form" HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left" />
                                    <asp:BoundField DataField="FileName" HeaderText="File Name" HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left" />
                                    <asp:BoundField DataField="CreDtTm" HeaderText="Creation Time" HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left" />
                                    <asp:BoundField DataField="MsgId" HeaderText="Msg ID" HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left" />
                                    <asp:BoundField DataField="Message" HeaderText="Message Body" HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left" />
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>
</asp:Content>
