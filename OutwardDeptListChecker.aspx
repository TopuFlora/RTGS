<%@ Page Title="Outward Transactions" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OutwardDeptListChecker.aspx.cs" Inherits="RTGS.OutwardDeptListChecker" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">            
    <div class="row">
        <div class="col-md-12">
            <section class="panel">
                    <header class="panel-heading">
                       Todays Outward List
                    </header>
                    <div class="panel-body">
                     <div class="row">
                         <div class="col-md-6">
                              <div style="float:left; margin-left:3px">
                                  <asp:DropDownList ID="DeptList" runat="server" Width="350px"  CssClass="form-control" DataTextField="DeptName" DataValueField="DeptID" AutoPostBack="true"></asp:DropDownList>
                              </div>
                              <div style="float:left; margin-left:50px">
                                    <asp:Label ID="LblTotalCnt" CssClass="form-control" runat="server" />
                              </div>
                         </div> 
                      </div>                       
                </div>
                        
                        <div class="row">
                            
                            <div class="col-md-12">
    
                             <div class="table-responsive">
                                 <asp:GridView Id="MyDataGrid" CssClass="table  table-bordered table-striped table-hover" runat="server" HeaderStyle-HorizontalAlign="Center"
	                                autogeneratecolumns="false">
            	                    <Columns>  
                                        <asp:HyperLinkField DataTextField="BizMsgIdr" DataNavigateUrlFormatString="RedirectChecker.aspx?OutwardID={0}&Form={1}" HeaderText="Msg ID" DataNavigateUrlFields="OutwardID,FormName" /> 
                                        <asp:BoundField DataField = "FormName"          HeaderText="Form"           HeaderStyle-HorizontalAlign="Center"/> 
                                        <asp:BoundField DataField = "InstrId"  HeaderText="Intr. ID" /> 
				    	                <asp:BoundField DataField = "TxId"  HeaderText="Tx ID" />  
					
					                    <asp:BoundField DataField = "DbtrAcctId"        HeaderText="Sender A/C No"  HeaderStyle-HorizontalAlign="Center"/> 
                                        <asp:BoundField DataField = "DeptName"          HeaderText="Department"     HeaderStyle-HorizontalAlign="Center"/>         
                                        <asp:BoundField DataField = "ToBank"            HeaderText="Receiving Bank" HeaderStyle-HorizontalAlign="Center"/>   
                                        <asp:BoundField DataField = "Ccy"               HeaderText="CCY"      HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" />       
					                    <asp:BoundField DataField = "SttlmAmt"          HeaderText="Amount"         HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Right" DataFormatString="{0:N2}" />       
                                        
                                        <asp:BoundField DataField = "StatusName"        HeaderText="Status"         HeaderStyle-HorizontalAlign="Center"/>       
                                        <asp:BoundField DataField = "Maker"             HeaderText="Maker"          HeaderStyle-HorizontalAlign="Center"/> 
                                        <asp:BoundField DataField = "MakeTime"          HeaderText="Make Time"      HeaderStyle-HorizontalAlign="Center"/> 
                                    </Columns>
	                             </asp:GridView>
                             </div>
                                
                         </div>
                        </div>
                  </section>
                    </div>
              
        </div>
    
</asp:Content>
