<%@ Page Title="Inward Transactions" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="InwardDeptList.aspx.cs" Inherits="RTGS.InwardDeptList" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">            
   <div class="row">
        <div class="col-md-12">
            <section class="panel">
                    <header class="panel-heading">
                        <p>Todays Inward List</p>
                    </header>
                    <div class="row">
                        <div class="col-md-9">
                              <div style="float:left; margin-left:20px">
                                  <asp:DropDownList ID="DeptList" runat="server"  CssClass="form-control" DataTextField="DeptName" DataValueField="DeptID" ></asp:DropDownList>
                              </div>
                              <div style="float:left; margin-left:3px">
                                  <asp:DropDownList ID="StatusList" runat="server"  CssClass="form-control">
                                      <asp:ListItem Text="All"      Value="0"></asp:ListItem>
                                      <asp:ListItem Text="Pending"  Value="3"></asp:ListItem>
                                      <asp:ListItem Text="Approved" Value="2"></asp:ListItem>
                                      <asp:ListItem Text="Returned" Value="6"></asp:ListItem>
                                  </asp:DropDownList>
                              </div>
                              <div style="float:left; margin-left:3px">
                                    <asp:TextBox ID="SrchAmount" runat="server" CssClass="form-control" placeholder="Amount Search" />
                              </div>
                              <div style="float:left; margin-left:3px">
                                    <asp:Button ID="BtnSearch" runat="server" CssClass="btn-success" Text="Search" />
                              </div>
                              <div style="float:left; margin-left:50px">
                                    <asp:Label ID="LblTotalCnt" CssClass="form-control" runat="server" />
                              </div>
                         </div>  
                        <div class="col-md-3">
                            <div style="float: left; margin-left: 20px">
                                <asp:DropDownList ID="DeptList1" runat="server" CssClass="form-control" DataTextField="DeptName" DataValueField="DeptID"></asp:DropDownList>
                            </div>
                            <div style="float: left; margin-left: 20px">
                                <asp:Button ID="BtnMove" runat="server" CssClass="btn-info" Text="Move Selected" OnClick="BtnMove_Click" />
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
                                            <asp:Label Text='<%#DataBinder.Eval(Container.DataItem,"Form") %>' ID="lblFormType" runat="server" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="chkTransID" runat="server" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField = "Mins"              HeaderText="Mins."              HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="center"/> 
                                    <asp:BoundField DataField = "Form"              HeaderText="Form"               HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left"/>       
                                    <asp:BoundField DataField = "Instruction"       HeaderText="Instruction"        HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left"/>  
                                    <asp:BoundField DataField = "MsgID"             HeaderText="Msg ID"             HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left"/>  
                                    <asp:BoundField DataField = "EndToEndID"        HeaderText="End To End ID"      HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left"/>  
				                    <asp:BoundField DataField = "TxID"        	    HeaderText="Trans ID"      HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left"/>  
                                    <asp:BoundField DataField = "DeptName"          HeaderText="Dept"               HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left"/>           
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
