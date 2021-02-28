<%@ Page Title="Daily Transactions" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DailyDeptUploads.aspx.cs" Inherits="RTGS.DailyDeptUploads" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     <div class="col-md-12">
            <section class="panel">
        <header class="panel-heading">
            <h3>Daily Inward Downloads</h3> 
        </header>
            </section>
         <section class="panel">
                    <div class="row">
                        <div class="col-md-2">
                             <asp:DropDownList ID="FormList" runat="server" Width="150px" CssClass="form-control">
                                 <asp:ListItem Text="All" Value="0" />
                                 <asp:ListItem Text="pacs.008" Value="pacs.008" />
                                 <asp:ListItem Text="pacs.004" Value="pacs.004" />
                             </asp:DropDownList>
                        </div>
                        <div class="col-md-2">
                             <asp:DropDownList ID="DeptList" runat="server"  CssClass="form-control" Width="180px" DataTextField="DeptName" DataValueField="DeptID"></asp:DropDownList>
                        </div>
                        <div class="col-md-1">

                        </div>
                        <div class="col-md-3">
                            <ul class="list-inline">
                                <li><asp:LinkButton ID="BtnRun" CssClass="btn btn-success" runat="server" Text="Go" OnClick="BtnRun_Click" ></asp:LinkButton></li>
                            </ul>
                        </div>
                    </div>

                 <div class="row">
                     <div class="col-md-12">
                         <div class="table-responsive">
                             <asp:GridView ID="InwardGrid" Width="300px" CssClass="table  table-bordered table-striped table-hover" runat="server" AutoGenerateColumns="false" > 
                                <Columns>
                                    <asp:TemplateField HeaderStyle-BackColor="#c0c0c0"  HeaderText="Time">
                                        <ItemTemplate>
                                            <a href="DownloadInward.aspx?TimeID=<%# Eval("TimeID") %>&Form=<%# FrmName %>&DeptID=<%# DeptID %>"><%# Eval("Time") %></a>
                                        </ItemTemplate>
                                     </asp:TemplateField>
                                     <asp:HyperLinkField    DataTextField="CNT"     HeaderStyle-BackColor="#c0c0c0" DataNavigateUrlFormatString="DownloadInward.aspx?Time={0}" HeaderText="CNT" DataNavigateUrlFields="Time" />
                                     <asp:BoundField        DataField="Downloaded"  HeaderStyle-BackColor="#c0c0c0" HeaderText="Downloaded" />
                                 </Columns>
                             </asp:GridView>
                         </div>
                     </div>
                 </div>
             </section>

</div> 
 </asp:Content>