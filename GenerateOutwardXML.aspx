<%@ Page Title="Outward Transactions" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GenerateOutwardXML.aspx.cs" Inherits="RTGS.GenerateOutwardXML" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">            
    <div class="row">
        <div class="col-md-12">
            <section class="panel">
                <header class="panel-heading">
                    Outward to be sent
                </header>
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive"> 
                        <asp:GridView Id="MyDataGrid" Width="100%" Class="table  table-bordered table-striped table-hover" runat="server" 
	                autogeneratecolumns="false">
            	    <Columns>  
                        <asp:TemplateField Visible="false">
                            <ItemTemplate>
                                <asp:Label Text='<%#DataBinder.Eval(Container.DataItem,"OutwardID") %>' ID="lblTransID" runat="server" />
                                <asp:Label Text='<%#DataBinder.Eval(Container.DataItem,"FormName") %>' ID="lblFormType" runat="server" />
                            </ItemTemplate>

                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:CheckBox ID="chkTransID" runat="server" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField = "BizMsgIdr"         HeaderText ="Trans No." /> 
                        <asp:BoundField DataField = "FormName"              HeaderText="Form"/>    
                        <asp:BoundField DataField = "DbtrAcctId"       HeaderText="Sender A/C No" /> 
                        <asp:BoundField DataField = "FrBranch"        HeaderText="Sending Branch" /> 
                        <asp:BoundField DataField = "ToBank"              HeaderText="Receiving Bank" />   
                              
                        <asp:BoundField DataField = "SttlmAmt"      HeaderText="Amount"     HeaderStyle-HorizontalAlign ="Center" ItemStyle-HorizontalAlign="Right" DataFormatString="{0:N2}"  />       
                        <asp:BoundField DataField = "Ccy"    HeaderText="Currency"  HeaderStyle-HorizontalAlign="Center"  ItemStyle-HorizontalAlign="Center" />            
                        <asp:BoundField DataField = "Maker"             HeaderText="Maker"/> 
                        <asp:BoundField DataField = "Checker"           HeaderText="Checker"/>       
                        <%--<asp:TemplateField>
                            <ItemTemplate>
                                <a id= "popup" href="XMLGenerator.aspx?TransID=<%# Eval("TransID") %>&Type=<%# Eval("FormType") %>" style="text-align: center;padding: 2px;  width:75px; height:25px;color:white" class="btn btn-success">Generate</a>
                            </ItemTemplate>
                        </asp:TemplateField>--%>
               	    </Columns>
    	            </asp:GridView>
                        </div>
                        <div style="float:left;margin-top:20px;margin-left:5px">
                            <asp:CheckBox ID="CheckSelectAll" runat="server" Text="&nbsp;&nbsp;Select All" AutoPostBack="true" />
                        </div>
                         <div style="float:left;margin-top:20px;margin-left:50px">
                            <asp:DropDownList runat="server" ID="priority">
                                <asp:ListItem Text="98" />
                                <asp:ListItem Text="15" />
                                <asp:ListItem Text="20" />
                                <asp:ListItem Text="25" />
                                <asp:ListItem Text="30" />
                                <asp:ListItem Text="35" />
                                <asp:ListItem Text="40" />
                                <asp:ListItem Text="45" />
                                <asp:ListItem Text="50" />
                                <asp:ListItem Text="55" />
                                <asp:ListItem Text="60" />
                                <asp:ListItem Text="65" />
                                <asp:ListItem Text="70" />
                                <asp:ListItem Text="75" />
                                <asp:ListItem Text="80" />
                                <asp:ListItem Text="85" />
                                <asp:ListItem Text="90" />
                                <asp:ListItem Text="95" />
                                <asp:ListItem Text="98" />
                            </asp:DropDownList>
                        </div>
                        <div style="float:left;margin-top:20px;margin-left:50px">
                            <asp:Button Text="Generate MX" ID="btnGenerate" CssClass="btn btn-success" runat="server" OnClick="btnGenerate_Click" /></div>
                            <asp:Label ID="Msg" runat="server" style="color:red;font-weight:bold" />
                         <div style="float:left; margin-top:20px;margin-left:50px">
                            <asp:Button Text="Generate MT" ID="btnMT" CssClass="btn btn-success" runat="server" OnClick="btnMT_Click"  /></div>
                         <%--<div style="float:left; margin-top:20px;margin-left:50px">
                            <asp:Button Text="Return to Maker" ID="btnReturn" CssClass="btn btn-danger" runat="server" OnClick="btnReturn_Click"   /></div>--%>
                         <div style="float:left; margin-top:20px;margin-left:50px;">
                             <asp:LinkButton ID="BtnEmptyCart" runat="server"  style="vertical-align:bottom" Text="Empty Cart" OnClick="BtnEmptyCart_Click" />
                         </div>                      
                         <div style="float:left; margin-top:20px;margin-left:300px">
                            <asp:DropDownList runat="server" ID="ddlPauseMins">
                                <asp:ListItem Text="" />
                                <asp:ListItem Text="5" />
                                <asp:ListItem Text="10" />
                                <asp:ListItem Text="15" />
                                <asp:ListItem Text="20" />
                                <asp:ListItem Text="25" />
                                <asp:ListItem Text="30" />
                                <asp:ListItem Text="0" />
                            </asp:DropDownList>&nbsp;&nbsp;
                            <asp:Button Text="Pause" ID="btnPause" CssClass="btn btn-danger" runat="server" OnClick="btnPause_Click" />
                         </div>
                    </div>
                </div>
            </section>
        </div>
    </div>
</asp:Content>
