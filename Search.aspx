<%@ Page Title="Search Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" EnableViewState="true" CodeBehind="Search.aspx.cs" Inherits="RTGS.Search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-12">
            <section class="panel">
                <header class="panel-heading">Search</header>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-4">
                            <div>
                                <div class="form-horizontal">
                                    <div class="form-group">
                                        <div class="col-sm-4">
                                            <div class="checkbox">
                                                <label>
                                                    <asp:CheckBox ID="ChkSenderActNo" runat="server" Text="Sender Act." />
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-sm-8">
                                            <asp:TextBox ID="TxtSenderActNo" runat="server" CssClass="form-control" placeholder="Sender Account Number" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div>
                                <div class="form-horizontal">
                                    <div class="form-group">
                                        <div class="col-sm-4">
                                            <div class="checkbox">
                                                <label>
                                                    <asp:CheckBox ID="ChkReceiversAct" runat="server" Text="Receivers Act." />
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-sm-8">
                                            <asp:TextBox ID="TxtReceiversAct" runat="server" CssClass="form-control" placeholder="Receivers Account Number" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div>
                                <div class="form-horizontal">
                                    <div class="form-group">
                                        <div class="col-sm-4">
                                            <div class="checkbox">
                                                <label>
                                                    <asp:CheckBox ID="ChkDept" runat="server" Text="" />
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-sm-8">
                                            <asp:DropDownList ID="ddlDeptList" Visible="false" CssClass="form-control" runat="server" DataTextField="DeptName" DataValueField="DeptID" />
                                            <asp:DropDownList ID="ddlBranchList" Visible="false" CssClass="form-control" runat="server" DataTextField="BranchName" DataValueField="RoutingNo" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div>
                                <div class="form-horizontal">
                                    <div class="form-group">
                                        <div class="col-sm-4">
                                            <div class="checkbox">
                                                <label>
                                                    <asp:CheckBox ID="ChkCCY" runat="server" Text="Currency" />
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-sm-8">
                                            <asp:DropDownList ID="ddListCCY" DataTextField="CCY" CssClass="form-control" runat="server"></asp:DropDownList>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div>
                                <div class="form-horizontal">
                                    <div class="form-group">
                                        <div class="col-sm-4">
                                            <div class="checkbox">
                                                <label>
                                                    <asp:CheckBox ID="ChkOtherBank" runat="server" Text="Other Bank" />
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-sm-8">
                                            <asp:DropDownList ID="ddListOtherBank" CssClass="form-control" runat="server" DataTextField="BankName" DataValueField="BIC" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div>
                                <div class="form-horizontal">
                                    <div class="form-group">
                                        <div class="col-sm-4">
                                            <div class="checkbox">
                                                <label>
                                                    <asp:CheckBox ID="ChkAmount" runat="server" Text="Amount" />
                                                </label>
                                                <asp:DropDownList ID="ddlListComparer" runat="server">
                                                    <asp:ListItem Text="=" />
                                                    <asp:ListItem Text=">" />
                                                    <asp:ListItem Text="<" />
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-sm-8">
                                            <asp:TextBox ID="TxtAmount" runat="server" CssClass="form-control" placeholder="Amount" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="alert alert-success">
                                <div class="row">
                                    <div class="col-md-12" style="text-align: center">
                                        <h4>Please Select Inward / Outward then click Search Button</h4>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <hr style="margin-top: 0px" />
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="row">
                                        <div class="col-md-1" style="text-align:center"><label style="padding-top:8px">FROM</label></div>
                                        <div class="col-md-1">
                                            <asp:DropDownList ID="ddlFrDay" CssClass="form-control" runat="server">
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
                                        </div>
                                        <div class="col-md-1">
                                            <asp:DropDownList ID="ddlFrMonth" CssClass="form-control" runat="server">
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
                                        </div>
                                        <div class="col-md-1">
                                            <asp:DropDownList ID="ddlFrYear" Style="width: 90px" CssClass="form-control" runat="server">
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
                                        </div>
                                        <div class="col-md-1" style="text-align:center"><label style="padding-top:8px">TO</label></div>
                                        <div class="col-md-1">
                                            <asp:DropDownList ID="ddlToDay" CssClass="form-control" runat="server">
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
                                        </div>
                                        <div class="col-md-1">
                                            <asp:DropDownList ID="ddlToMonth" CssClass="form-control" runat="server">
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
                                        </div>
                                        <div class="col-md-1">
                                            <asp:DropDownList ID="ddlToYear" Style="width: 90px" CssClass="form-control" runat="server">
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
                                        </div>
                                        <div class="col-md-3">
                                            <div>
                                                <div class="form-horizontal">
                                                    <div class="form-group">
                                                        <div class="col-sm-12">
                                                            <asp:DropDownList ID="ddlFormID" CssClass="form-control" runat="server">
                                                                <asp:ListItem Value="01" style="color:red">Outward</asp:ListItem>
                                                                <asp:ListItem Value="08" style="color:red">...Pacs.008</asp:ListItem>
                                                                <asp:ListItem Value="09" style="color:red">...Pacs.009</asp:ListItem>
                                                                <asp:ListItem Value="04" style="color:red">...Pacs.004</asp:ListItem>

                                                                <asp:ListItem Value="11" style="color:blue">Inward</asp:ListItem>
                                                                <asp:ListItem Value="18" style="color:blue">...Pacs.008</asp:ListItem>
                                                                <asp:ListItem Value="19" style="color:blue">...Pacs.009</asp:ListItem>
                                                                <asp:ListItem Value="14" style="color:blue">...Pacs.004</asp:ListItem>                                                        
                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-1">
                                            <div>
                                                <div class="form-horizontal">
                                                    <div class="form-group">
                                                        <div class="col-sm-12">
                                                            <asp:Button ID="BtnSubmit" CssClass="btn btn-success" runat="server" Text="Search" OnClick="BtnSubmit_Click" />
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>

                    </div>

                    <div class="mtop10"></div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="pull-left">
                                <span style="font-size: 13px; font-weight: bold; text-transform: uppercase; color: #31708F;">Search Results </span>
                            </div>
                            <div style="float: left; margin-left: 50px">
                                <asp:Label ID="lblRowCount" runat="server" CssClass="form-control" />
                            </div>
                            <div class="pull-right">
                                <div style="margin-bottom: 10px">
                                    <asp:Button ID="ExcelBtn" runat="server" Text="Excel" CssClass="btn btn-success" OnClick="ExcelBtn_Click" />
                                    <asp:Button ID="PdfBtn" runat="server" Text="Pdf" CssClass="btn btn-success" OnClick="PdfBtn_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <asp:DataGrid ID="SearchGrid" runat="server" AutoGenerateColumns="false" CssClass="table  table-bordered table-striped table-hover" AllowPaging="False">
                                    <Columns>
                                        <asp:BoundColumn DataField="FormName" HeaderText="Form" />
                                        <asp:BoundColumn DataField="SttlmDt" HeaderText="Sttlm Dt" />
                                        <asp:BoundColumn DataField="BankBIC" HeaderText="Other Bank" />
                                        <asp:BoundColumn DataField="Instruction" HeaderText="Instruction" />
                                        <asp:BoundColumn DataField="DeptName" HeaderText="Dept" />
                                        <asp:BoundColumn DataField="SttlmAmt" HeaderText="Amount" DataFormatString="{0:N2}" ItemStyle-HorizontalAlign="Right" />
                                        <asp:BoundColumn DataField="Ccy" HeaderText="CCY" />
                                        <asp:BoundColumn DataField="DbtrNm" HeaderText="Sender Name" />
                                        <asp:BoundColumn DataField="DbtrAcctId" HeaderText="Sender A/C" />
                                        <asp:BoundColumn DataField="CdtrNm" HeaderText="Receiver Name" />
                                        <asp:BoundColumn DataField="CdtrAcctId" HeaderText="Receiver A/C" />
                                        <asp:BoundColumn DataField="StatusName" HeaderText="Status" />
                                    </Columns>
                                </asp:DataGrid>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Rightcolumn" runat="server">
</asp:Content>
