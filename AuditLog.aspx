<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AuditLog.aspx.cs" Inherits="RTGS.AuditLog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-12">
            <section class="panel">
                <header class="panel-heading">
                    Audit Log  
                </header>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="alert alert-success">
                                <div class="row">
                                    <div class="col-md-12" style="text-align: center">
                                        <h4>Please Enter Transaction ID or part of User Name then click Search Button</h4>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <hr style="margin-top: 0px" />
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="col-md-4">
                                            <div class="form-horizontal">
                                                <div class="form-group">
                                                    <div class="col-sm-12">
                                                        <asp:TextBox ID="InputData" runat="server" CssClass="form-control" MaxLength="30" placeholder="Enter Trans ID or part of User Name" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="col-sm-4">
                                                <asp:DropDownList ID="ddlDay" CssClass="form-control" runat="server">
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
                                            <div class="col-sm-4">
                                                <asp:DropDownList ID="ddlMonth" CssClass="form-control" runat="server">
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
                                            <div class="col-sm-4">
                                                <asp:DropDownList ID="ddlYear" Style="width: 80px" CssClass="form-control" runat="server">
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
                                        </div>
                                        <div class="col-md-2">
                                            <div class="form-horizontal">
                                                <div class="form-group">
                                                    <div class="col-sm-12">
                                                        <asp:DropDownList ID="ClearingType" CssClass="form-control" runat="server">
                                                            <asp:ListItem Text="Outward" />
                                                            <asp:ListItem Text="Inward" />
                                                        </asp:DropDownList>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-2">
                                            <div class="form-horizontal">
                                                <div class="form-group">
                                                    <div class="col-sm-12">
                                                        <asp:Button ID="SubmitBtn" runat="server" CssClass="btn btn-success" Text="Search" OnClick="SubmitBtn_Click" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="mtop10"></div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="pull-left">
                                <span style="font-size: 13px; font-weight: bold; text-transform: uppercase; color: #31708F;">Search Results </span>
                            </div>
                            <div class="pull-right">
                                <div style="margin-bottom: 10px">
                                    <asp:Button ID="ExcelBtn" runat="server" CssClass="btn btn-success" Text="Excel" OnClick="ExcelBtn_Click" />
                                    <asp:Button ID="PDFBtn" runat="server" Visible="false" CssClass="btn btn-success" Text="PDF" />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div style="width: 100%; overflow-x: auto">
                                <div class="table-responsive">
                                    <asp:DataGrid ID="SearchGrid" runat="server" AutoGenerateColumns="true" ItemStyle-Wrap="false"
                                        CssClass="table  table-bordered table-striped table-hover" AllowPaging="False">
                                        <Columns>
                                            <asp:HyperLinkColumn DataNavigateUrlField="OutwardID" Text="Data" DataNavigateUrlFormatString="AuditData.aspx?OutwardID={0}" Target="_blank" />
                                            <%--
                                       <asp:BoundColumn DataField = "TransID"               HeaderText="Trans ID" />
                                        <asp:BoundColumn DataField = "Form"                 HeaderText="Form" />
                                        <asp:BoundColumn DataField = "CreateTime"           HeaderText="Create Time" />
                                        <asp:BoundColumn DataField = "Maker"                HeaderText="Maker" />
                                        <asp:BoundColumn DataField = "MakeTime"             HeaderText="Make Time" />
                                        <asp:BoundColumn DataField = "Checker"              HeaderText="Checker" />
                                        <asp:BoundColumn DataField = "CheckTime"            HeaderText="Check Time" />                                   
                                        <asp:BoundColumn DataField = "DeletedBy"            HeaderText="DeletedBy" />
                                        <asp:BoundColumn DataField = "DeleteTime"            HeaderText="Delete Time" />--%>
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
<asp:Content ID="Content2" ContentPlaceHolderID="Rightcolumn" runat="server">
</asp:Content>
