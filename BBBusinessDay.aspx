<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BBBusinessDay.aspx.cs" Inherits="RTGS.Forms.BBBusinessDay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
         <div class="col-md-12">
            <section class="panel">
                    <div class="panel-heading">
                        <span class="col-md-4">Todays Business Day Information</span><span class="col-md-4"></span>
                        <span class="col-md-4"></span>
                        <asp:LinkButton ID="bntGen" runat="server" Text="Get Latest" OnClick="bntGen_Click" />
                    </div>
                    <asp:DataList ID="PanelList" Width="100%" runat="server" RepeatColumns="3" RepeatDirection="Horizontal">
                        <ItemTemplate>
                            <div class="col-md-4" style="width:350px">
                                <div class="panel panel-primary">
                                       <div class="panel panel-info">
                                            <div class="panel-heading"><h5 class="panel-title"><%# Eval("TpPrtryId") %></h5></div>
                                            <div class="panel-body">
                                                <table class="table table-striped table-hover fa-bold">
                                                    <tr><td>Schdl Time</td><td nowrap><asp:Label ID="lblSchdldTm" runat="server" Text='<%# Eval("SchdldTm") %>' /></td></tr>
                                                    <tr><td nowrap>Start Time</td><td nowrap><asp:Label ID="lblStartTime" runat="server" Text='<%# Eval("StartTm") %>' /></td></tr>
                                                    <tr><td>End Time</td><td nowrap><asp:Label ID="LblEndTime" runat="server" Text='<%# Eval("EndTm") %>' /></td></tr>
                                                </table>
                                            </div>
                                        </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:DataList>
          </section>
        </div>
    </div>
</asp:Content>
