<%@ Page Title="Daily Transactions" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DownloadInward.aspx.cs" Inherits="RTGS.DownloadInward" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     <div class="col-md-12">
            <section class="panel">
        <header class="panel-heading">
            <h3>Download Inward Data</h3> 
            <hr />     
            <span class="tools pull-right">
                <a href="javascript:;" class="fa fa-chevron-down"></a>

            </span>
        </header>
    <div class="col-md-12">
         <section class="panel">
             <div class="panel-body">
                    <div clasS="row">
                       <div class="col-md-3" id="MakerPanel" runat="server">
                            <ul class="list-inline">
                                <li><asp:CheckBox ID="ChkAllDay" runat="server" Text="All Day" CssClass="form-control" /></li>
                                <li><asp:LinkButton ID="ExportToPdfBtn" CssClass="btn btn-success" runat="server" Text="PDF" OnClick="ExportToPdfBtn_Click1" ></asp:LinkButton></li>
                                <li><asp:LinkButton ID="ExcelBtn" runat="server" CssClass="btn btn-info" Text="Excel" OnClick="ExcelBtn_Click"></asp:LinkButton></li>

                            </ul>
                        </div>
                    </div>
                    <div class="row">
                     <div class="col-md-12">
                     <div class="table-responsive">
                         <asp:DataGrid ID="BatchChecksGrid" runat="server" AutoGenerateColumns="false"  FooterStyle-Font-Bold="true"
                             CssClass="table  table-bordered table-striped table-hover" HeaderStyle-Font-Bold="true" 
                             FooterStyle-BackColor="#c0c0c0" HeaderStyle-BackColor="#c0c0c0"  ShowFooter="true">
                             <Columns>
                                 <asp:BoundColumn DataField = "20:Sender Ref"           HeaderStyle-BackColor="#c0c0c0" HeaderText="20:Sender Ref" />
                                 <asp:BoundColumn DataField = "21:Related Ref"          HeaderStyle-BackColor="#c0c0c0" HeaderText="21:Related Ref" />
                                 <asp:BoundColumn DataField = "Currency"                HeaderStyle-BackColor="#c0c0c0" HeaderText="Currency" />
                                 <asp:BoundColumn DataField = "Amount"                  HeaderStyle-BackColor="#c0c0c0" HeaderText="Amount" DataFormatString="{0:N}" ItemStyle-HorizontalAlign="Right" FooterStyle-HorizontalAlign="Right"  HeaderStyle-HorizontalAlign="Right" />
                                 <asp:BoundColumn DataField = "Debit Acc"               HeaderStyle-BackColor="#c0c0c0" HeaderText="Debit Acc" />
                                 <asp:BoundColumn DataField = "50:Ordering Cust AC"     HeaderStyle-BackColor="#c0c0c0" HeaderText="S50:Ordering Cust AC" />
                                 <asp:BoundColumn DataField = "50:Ordering Cust Name"   HeaderStyle-BackColor="#c0c0c0" HeaderText="50:Ordering Cust Name" />
                                 <asp:BoundColumn DataField = "Ordering Cust Address"   HeaderStyle-BackColor="#c0c0c0" HeaderText="Ordering Cust Address" />
                                 <asp:BoundColumn DataField = "52:Ordering Institution" HeaderStyle-BackColor="#c0c0c0" HeaderText="52:Ordering Institution" />
                                 <asp:BoundColumn DataField = "58/9:Bnef AC Number"     HeaderStyle-BackColor="#c0c0c0" HeaderText="58/9:Bnef AC Number" />
                                 <asp:BoundColumn DataField = "58/9:Bnef AC Name"       HeaderStyle-BackColor="#c0c0c0" HeaderText="58/9:Bnef AC Name"  />
                                 <asp:BoundColumn DataField = "70:Payment Details"      HeaderStyle-BackColor="#c0c0c0" HeaderText="70:Payment Details" />
                                 <asp:BoundColumn DataField = "72:Sender to Receiver"   HeaderStyle-BackColor="#c0c0c0" HeaderText="72:Sender to Receiver" />
                                 <asp:BoundColumn DataField = "71:Charges"              HeaderStyle-BackColor="#c0c0c0" HeaderText="71:Charges" />
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