<%@ Page Title="Outward Transactions" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OutwardList.aspx.cs" Inherits="RTGS.OutwardList" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-12">
            <section class="panel">
                <header class="panel-heading">
                    Todays Outward List
                </header>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-4">
                            <div style="float: left; margin-left: 3px">
                                <asp:DropDownList ID="BranchList" runat="server" Width="350px" CssClass="form-control" DataTextField="BranchName" DataValueField="RoutingNo" AutoPostBack="true"></asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-md-2"></div>
                        <div class="col-md-6"></div>
                        <div style="float: left; margin-left: 3px">
                            <asp:TextBox ID="MsgID" placeholder="Enter Message ID" runat="server" Width="350" CssClass="form-control" />
                        </div>
                        <div style="float: left; margin-left: 3px">
                            <asp:DropDownList ID="StatusList" runat="server" CssClass="form-control" DataTextField="StatusName" DataValueField="StatusID"></asp:DropDownList>
                        </div>
                        <div style="float: left; margin-left: 3px">
                            <asp:Button ID="BtnChangeStatus" CssClass="btn btn-success" runat="server" Text="Change Status" OnClick="BtnChangeStatus_Click" />
                        </div>
                    </div>
                </div>

                <div class="row">

                    <div class="col-md-12">

                        <div class="table-responsive">
                            <asp:GridView ID="MyDataGrid" CssClass="table  table-bordered table-striped table-hover" runat="server" HeaderStyle-HorizontalAlign="Center"
                                AutoGenerateColumns="false">
                                <Columns>
                                    <asp:HyperLinkField DataTextField="BizMsgIdr" DataNavigateUrlFormatString="RedirectChecker.aspx?OutwardID={0}&Form={1}" HeaderText="Msg ID" DataNavigateUrlFields="OutwardID,FormName" />
                                    <asp:BoundField DataField="FormName" HeaderText="Form" HeaderStyle-HorizontalAlign="Center" />
                                    <asp:BoundField DataField="MsgID" HeaderText="Msg ID" HeaderStyle-HorizontalAlign="Center" />
                                    <asp:BoundField DataField="EndToEndID" HeaderText="End To End ID" HeaderStyle-HorizontalAlign="Center" />
                                    <asp:BoundField DataField="DbtrAcctId" HeaderText="Sender A/C No" HeaderStyle-HorizontalAlign="Center" />
                                    <asp:BoundField DataField="FrBranch" HeaderText="Snd Branch" HeaderStyle-HorizontalAlign="Center" />
                                    <asp:BoundField DataField="ToBank" HeaderText="Rcv Bank" HeaderStyle-HorizontalAlign="Center" />
                                    <asp:BoundField DataField="SttlmAmt" HeaderText="Amount" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Right" DataFormatString="{0:N2}" />
                                    <asp:BoundField DataField="Ccy" HeaderText="CCY" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" />
                                    <asp:BoundField DataField="SvcLvlPrtry" HeaderText="Prty" HeaderStyle-HorizontalAlign="Center" />
                                    <asp:BoundField DataField="StatusName" HeaderText="Status" HeaderStyle-HorizontalAlign="Center" />
                                    <asp:HyperLinkField DataTextField="RTSX" DataNavigateUrlFormatString="RedirectCamt005.aspx?OutwardID={0}&FormName={1}&StatusID={2}" HeaderText="RTSX" DataNavigateUrlFields="OutwardID,FormName,StatusID" />
                                    <asp:HyperLinkField DataTextField="POST" DataNavigateUrlFormatString="PostTransaction.aspx?OutwardID={0}&FormName={1}&StatusID={2}&SvcLvlPrtry={3}" HeaderText="POST" DataNavigateUrlFields="OutwardID,FormName,StatusID,SvcLvlPrtry" />
                                </Columns>
                            </asp:GridView>
                        </div>

                    </div>
                </div>
            </section>
        </div>
    </div>
</asp:Content>
