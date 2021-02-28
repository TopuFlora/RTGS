<%@ Page Title="Inward Transactions" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SettlementReport.aspx.cs" Inherits="RTGS.SettlementReport" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">

</div>
     <div class="col-md-12">
            <section class="panel">
        <header class="panel-heading">
            <h4>Net Settlement Report</h4> 
            <hr />     
            <span class="tools pull-right">
                <a href="javascript:;" class="fa fa-chevron-down"></a>

            </span>
        </header>
    <div class="col-md-12">
         <section class="panel">
             <div class="panel-body">
                    <div class="row">
                        <div class="col-md-2">
                             <asp:DropDownList ID="SearchType" Width="120px" runat="server" CssClass="form-control" >
                                 <asp:ListItem Text="Bank Wise" Value ="0" />
                                 <asp:ListItem Text="Branch Wise" Value="1" />
                             </asp:DropDownList>
                        </div>
                        <div class="col-md-1">
                             <asp:DropDownList ID="CurrencyList" runat="server" Width="80px"  CssClass="form-control">
                                <asp:ListItem Text="BDT" Value="BDT" />
                                <asp:ListItem Text="USD" Value="USD" />
                                <asp:ListItem Text="CAD" Value="CAD" />
                                <asp:ListItem Text="EUR" Value="EUR" />
                                <asp:ListItem Text="GBP" Value="GBP" />
                                <asp:ListItem Text="Yen" Value="Yen" />
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
                                        <asp:DropDownList ID="ddlYear" Width="80px" CssClass="form-control" runat="server">
                                            <asp:ListItem Value="2015">2015</asp:ListItem>
                                            <asp:ListItem Value="2016">2016</asp:ListItem>
                                            <asp:ListItem Value="2017">2017</asp:ListItem>
                                            <asp:ListItem Value="2018">2018</asp:ListItem>
                                            <asp:ListItem Value="2019">2019</asp:ListItem>
                                            <asp:ListItem Value="2020">2020</asp:ListItem>
                                            <asp:ListItem Value="2021">2021</asp:ListItem>
                                            <asp:ListItem Value="2022">2022</asp:ListItem>
                                            <asp:ListItem Value="2023">2023</asp:ListItem>
                                            <asp:ListItem Value="2024">2024</asp:ListItem>
                                            <asp:ListItem Value="2025">2025</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>

                            </table>
                        </div>
                        <div class="col-md-4">
                            <ul class="list-inline">
                                <li>
                                    <asp:LinkButton ID="BtnGO" CssClass="btn btn-success" runat="server" Text="Go" OnClick="BtnGO_Click"></asp:LinkButton></li>
                                <li>
                                    <asp:LinkButton ID="PdfBtn" CssClass="btn btn-success" runat="server" Text="PDF" OnClick="PdfBtn_Click"></asp:LinkButton></li>
                               <li><asp:LinkButton ID="StartBtn" runat="server" CssClass="btn btn-info" Text="Export to Excel" OnClick="StartBtn_Click" ></asp:LinkButton></li>
                            </ul>
                        </div>
                        
                    </div>
                    <div class="mtop10"></div>
                    <div class="row">
                     <div class="col-md-12">
                     <div class="table-responsive">
                        <asp:DataGrid ID="BatchChecksGrid" runat="server" AutoGenerateColumns="false" 
                            CssClass="table  table-bordered table-striped table-hover" ShowFooter="true" FooterStyle-Font-Bold="true"
                            AllowPaging="false">
                            <Columns>
                               <asp:BoundColumn  DataField = "Name" HeaderText="Bank"       HeaderStyle-BackColor="#c0c0c0" ItemStyle-Width="140px"       FooterText="Total" />
                               <asp:BoundColumn  DataField = "iOCE" HeaderText=""           HeaderStyle-BackColor="#c0c0c0" ItemStyle-Width="80px" ItemStyle-HorizontalAlign="Center" FooterStyle-HorizontalAlign="Center" />
                               <asp:BoundColumn  DataField = "OCE"  HeaderText="Outward"    HeaderStyle-BackColor="#c0c0c0" ItemStyle-Width="140px"       HeaderStyle-HorizontalAlign="Right" DataFormatString="{0:N}"  ItemStyle-HorizontalAlign="Right" FooterStyle-HorizontalAlign="Right" />
                               <asp:BoundColumn  DataField = "iICE" HeaderText=""           HeaderStyle-BackColor="#c0c0c0" ItemStyle-Width="80px" ItemStyle-HorizontalAlign="Center" FooterStyle-HorizontalAlign="Center" />
                               <asp:BoundColumn  DataField = "ICE"  HeaderText="Inward"     HeaderStyle-BackColor="#c0c0c0" ItemStyle-Width="140px"       HeaderStyle-HorizontalAlign="Right" DataFormatString="{0:N}"  ItemStyle-HorizontalAlign="Right" FooterStyle-HorizontalAlign="Right" />
                            </Columns>
                        </asp:DataGrid>
                    </div>
                    </div>
                </div>
         </section>
    </div>
</div> 

     
 </asp:Content>