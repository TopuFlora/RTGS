<%@ Page Title="Inward Transactions" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="InwardList.aspx.cs" Inherits="RTGS.InwardList" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">            
   <div class="row">
        <div class="col-md-12">
            <section class="panel">
                    <header class="panel-heading">
                       Todays Inward List
                    </header>
                    <div class="row">
                         <div class="col-md-6">
                              <div style="float:left; margin-left:20px">
                                  <asp:DropDownList ID="BranchList" runat="server"  CssClass="form-control" DataTextField="BranchName" DataValueField="RoutingNo" AutoPostBack="true"></asp:DropDownList>
                              </div>
                              <div style="float:left; margin-left:3px">
                                  <asp:DropDownList ID="StatusList" runat="server"  CssClass="form-control" AutoPostBack="true">
                                      <asp:ListItem Text="All" Value="0"></asp:ListItem>
                                      <asp:ListItem Text="Pending" Value="3"></asp:ListItem>
                                      <asp:ListItem Text="Approved" Value="2"></asp:ListItem>
                                      <asp:ListItem Text="Returned" Value="6"></asp:ListItem>
                                  </asp:DropDownList>
                              </div>
                         </div>                           
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">  
                                <asp:GridView Id="MyDataGrid" Class="table  table-bordered table-striped table-hover" runat="server" 
	                            autogeneratecolumns="false">
            	                <Columns>  
                                    <asp:TemplateField Visible="false">
                                        <ItemTemplate>
                                            <asp:Label Text='<%#DataBinder.Eval(Container.DataItem,"InwardID") %>' ID="lblTransID" runat="server" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField = "Mins"              HeaderText="Mins."              HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="center"/> 
                                    <asp:BoundField DataField = "Form"              HeaderText="Form"               HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left"/>       
                                    <asp:BoundField DataField = "BizMsgIdr"         HeaderText="Msg ID"             HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left"/>  
                                    <asp:BoundField DataField = "MsgID"             HeaderText="Msg ID"             HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left"/>  
                                    <asp:BoundField DataField = "EndToEndID"        HeaderText="End To End ID"      HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left"/>  
                                    <asp:BoundField DataField = "ToBranch"          HeaderText="Branch"             HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left"/>           
                                    <asp:BoundField DataField = "FrBank"            HeaderText="From Bank"          HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left"/>       
                                    <asp:BoundField DataField = "Ccy"               HeaderText="CCY"                HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" />                   
                                    <asp:BoundField DataField = "SttlmAmt"          HeaderText="Amount"             HeaderStyle-HorizontalAlign="Right" ItemStyle-HorizontalAlign="Right" DataFormatString="{0:N2}"  /> 
                                    <asp:BoundField DataField = "DbtrNm"            HeaderText="Sender's Name"      HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left"  />       
                                    <asp:BoundField DataField = "CdtrNm"            HeaderText="Receiver Name"      HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left" /> 
                                    <asp:BoundField DataField = "CdtrAcctId"        HeaderText="Receiver A/C No"    HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left" />  
                                                
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <a id= "popup" href="RedirectMaker.aspx?InwardID=<%# Eval("InwardID") %>&Form=<%# Eval("Form") %>&StatusID=<%# Eval("StatusID") %>" style="text-align: center;padding: 2px;  width:90px; height:25px;" class="<%# Eval("CssClass") %>"><%# Eval("StatusName") %></a>
                                        </ItemTemplate>
                                    </asp:TemplateField>
               	                </Columns>
    	                        </asp:GridView>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
</asp:Content>
