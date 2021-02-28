<%@ Page Title="Daily Transactions" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DailyTransactions.aspx.cs" Inherits="RTGS.DailyTransactions" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     <div class="col-md-12">
            <section class="panel">
        <header class="panel-heading">
            <h3>Daily Transactions Report</h3> 
            <hr />     
            <span class="tools pull-right">
                <a href="javascript:;" class="fa fa-chevron-down"></a>

            </span>
        </header>
    <div class="col-md-12">
         <section class="panel">
             <div class="panel-body">
                    <div class="row">
                        <div class="col-md-1">
                             <asp:DropDownList ID="TypeList" runat="server" Width="100px" CssClass="form-control">
                                 <asp:ListItem Text="Outward" Value="0" />
                                 <asp:ListItem Text="Inward" Value="1" />
                             </asp:DropDownList>
                        </div>
                        <div class="col-md-2">
                             <asp:DropDownList ID="BranchList" runat="server"  CssClass="form-control" Width="180px" DataTextField="BranchName" DataValueField="RoutingNo"></asp:DropDownList>
                        </div>
                        <div class="col-md-1">
                            <asp:DropDownList ID="CCYList" Width="80px" CssClass="form-control" runat="server" >
                                <asp:ListItem Text="BDT" />
                                <asp:ListItem Text="USD" />
                                <asp:ListItem Text="EUR" />
                                <asp:ListItem Text="GBP" />
                                <asp:ListItem Text="CAD" />
                                <asp:ListItem Text="YEN" />
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-2">
                            <asp:DropDownList ID="StatusList" Width="130px" CssClass="form-control" runat="server">
                                <asp:ListItem Text="Completed" Value="1" />
                                <asp:ListItem Text="Incomplete" Value="0" />
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-3">
                            <table border="0">
                                <tr>
                                    <td>
                                        <asp:DropDownList id="ddlDay" Width="80px" CssClass="form-control" runat="server">
                                            <asp:ListItem Value="01">01</asp:ListItem>
                                            <asp:ListItem Value="02">02</asp:ListItem>
                                            <asp:ListItem Value="03">03</asp:ListItem>
                                            <asp:ListItem Value="04">04</asp:ListItem>
                                            <asp:ListItem Value="05">05</asp:ListItem>
                                            <asp:ListItem Value="06">06</asp:ListItem>
                                            <asp:ListItem Value="07">07</asp:ListItem>
                                            <asp:ListItem Value="08">08</asp:ListItem>
                                            <asp:ListItem Value="09">09</asp:ListItem>
                                            <asp:ListItem Value="10">10</asp:ListItem>
                                            <asp:ListItem Value="11">11</asp:ListItem>
                                            <asp:ListItem Value="12">12</asp:ListItem>
                                            <asp:ListItem Value="13">13</asp:ListItem>
                                            <asp:ListItem Value="14">14</asp:ListItem>
                                            <asp:ListItem Value="15">15</asp:ListItem>
                                            <asp:ListItem Value="16">16</asp:ListItem>
                                            <asp:ListItem Value="17">17</asp:ListItem>
                                            <asp:ListItem Value="18">18</asp:ListItem>
                                            <asp:ListItem Value="19">19</asp:ListItem>
                                            <asp:ListItem Value="20">20</asp:ListItem>
                                            <asp:ListItem Value="21">21</asp:ListItem>
                                            <asp:ListItem Value="22">22</asp:ListItem>
                                            <asp:ListItem Value="23">23</asp:ListItem>
                                            <asp:ListItem Value="24">24</asp:ListItem>
                                            <asp:ListItem Value="25">25</asp:ListItem>
                                            <asp:ListItem Value="26">26</asp:ListItem>
                                            <asp:ListItem Value="27">27</asp:ListItem>
                                            <asp:ListItem Value="28">28</asp:ListItem>
                                            <asp:ListItem Value="29">29</asp:ListItem>
                                            <asp:ListItem Value="30">30</asp:ListItem>
                                            <asp:ListItem Value="31">31</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td>
                                        <asp:DropDownList id="ddlMonth" Width="80px" CssClass="form-control" runat="server">
                                            <asp:ListItem Value="01">Jan</asp:ListItem>
                                            <asp:ListItem Value="02">Feb</asp:ListItem>
                                            <asp:ListItem Value="03">Mar</asp:ListItem>
                                            <asp:ListItem Value="04">Apr</asp:ListItem>
                                            <asp:ListItem Value="05">May</asp:ListItem>
                                            <asp:ListItem Value="06">Jun</asp:ListItem>
                                            <asp:ListItem Value="07">Jul</asp:ListItem>
                                            <asp:ListItem Value="08">Aug</asp:ListItem>
                                            <asp:ListItem Value="09">Sep</asp:ListItem>
                                            <asp:ListItem Value="10">Oct</asp:ListItem>
                                            <asp:ListItem Value="11">Nov</asp:ListItem>
                                            <asp:ListItem Value="12">Dec</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td>
                                        <asp:DropDownList id="ddlYear" width="80px" CssClass="form-control" runat="server">
                                            <asp:ListItem Value="2004">2004</asp:ListItem>
                                            <asp:ListItem Value="2005">2005</asp:ListItem>
                                            <asp:ListItem Value="2006">2006</asp:ListItem>
                                            <asp:ListItem Value="2007">2007</asp:ListItem>
                                            <asp:ListItem Value="2008">2008</asp:ListItem>
                                            <asp:ListItem Value="2009">2009</asp:ListItem>
                                            <asp:ListItem Value="2010">2010</asp:ListItem>
                                            <asp:ListItem Value="2011">2011</asp:ListItem>
                                            <asp:ListItem Value="2012">2012</asp:ListItem>
                                            <asp:ListItem Value="2013">2013</asp:ListItem>
                                            <asp:ListItem Value="2014">2014</asp:ListItem>
                                            <asp:ListItem Value="2015">2015</asp:ListItem>
                                            <asp:ListItem Value="2016">2016</asp:ListItem>
                                            <asp:ListItem Value="2017">2017</asp:ListItem>
                                            <asp:ListItem Value="2018">2018</asp:ListItem>
                                            <asp:ListItem Value="2019">2019</asp:ListItem>
                                            <asp:ListItem Value="2020">2020</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>

                            </table>                                                                                        
                        </div>
                        <div class="col-md-3">
                            <ul class="list-inline">
                                <li><asp:LinkButton ID="BtnRun" CssClass="btn btn-success" runat="server" Text="Go" OnClick="BtnRun_Click" ></asp:LinkButton></li>
                                <li><asp:LinkButton ID="ExportToPdfBtn" CssClass="btn btn-success" runat="server" Text="PDF" OnClick="ExportToPdfBtn_Click1" ></asp:LinkButton></li>
                               <li><asp:LinkButton ID="ExcelBtn" runat="server" CssClass="btn btn-info" Text="Excel" OnClick="ExcelBtn_Click"></asp:LinkButton></li>
                            </ul>
                        </div>
                    </div>
                    <div class="mtop10">
                    </div>
                    <div class="row">
                     <div class="col-md-12">
                     <div class="table-responsive">
                         <asp:DataGrid ID="BatchChecksGrid" runat="server" AutoGenerateColumns="false"  FooterStyle-Font-Bold="true"
                             CssClass="table  table-bordered table-striped table-hover" HeaderStyle-Font-Bold="true" 
                             FooterStyle-BackColor="#c0c0c0" HeaderStyle-BackColor="#c0c0c0"  ShowFooter="true">
                             <Columns>
                                 <asp:BoundColumn DataField = "FormName"        HeaderStyle-BackColor="#c0c0c0" HeaderText="Form" />
                                 <asp:BoundColumn DataField = "SttlmDt"         HeaderStyle-BackColor="#c0c0c0" HeaderText="Stlmnt Date" />
                                 <asp:BoundColumn DataField = "Branch"          HeaderStyle-BackColor="#c0c0c0" HeaderText="Branch" />
                                 <asp:BoundColumn DataField = "DbtrAcctId"      HeaderStyle-BackColor="#c0c0c0" HeaderText="Sender A/C No" />
                                 <asp:BoundColumn DataField = "DbtrNm"          HeaderStyle-BackColor="#c0c0c0" HeaderText="Sender Name" />
                                 <asp:BoundColumn DataField = "CdtrAcctId"      HeaderStyle-BackColor="#c0c0c0" HeaderText="Receiver A/C No" />
                                 <asp:BoundColumn DataField = "CdtrNm"          HeaderStyle-BackColor="#c0c0c0" HeaderText="Receiver Name" />
                                 <asp:BoundColumn DataField = "SttlmAmt"        HeaderStyle-BackColor="#c0c0c0" HeaderText="Amount" DataFormatString="{0:N}" ItemStyle-HorizontalAlign="Right" FooterStyle-HorizontalAlign="Right"  HeaderStyle-HorizontalAlign="Right" />
                                 <asp:BoundColumn DataField = "CCY"             HeaderStyle-BackColor="#c0c0c0" HeaderText="Cur" />
                                 <asp:BoundColumn DataField = "Bank"            HeaderStyle-BackColor="#c0c0c0" HeaderText="Bank" />
                                 <asp:BoundColumn DataField = "StatusName"      HeaderStyle-BackColor="#c0c0c0" HeaderText="Status" />
                             </Columns>
                         </asp:DataGrid>
                            </div>
                        </div>
                    </div>
                </div>
             </section>
        </div>
    </section>
</div> 
 </asp:Content>