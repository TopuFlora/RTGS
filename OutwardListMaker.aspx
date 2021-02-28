<%@ Page Title="Outward Transactions" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OutwardListMaker.aspx.cs" Inherits="RTGS.OutwardListMaker" %>
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
                                  <asp:DropDownList ID="BranchList" runat="server" Width="350px" Height="32px" CssClass="form-control" DataTextField="BranchName" DataValueField="RoutingNo" AutoPostBack="true"></asp:DropDownList>
                              </div>
                         <div  style="float:left; margin-left:3px">
                           <asp:Button ID="btnNewEntry" CssClass="btn btn-success btn-sm" runat="server"
                                                Text="New Transaction Entry" OnClick="btnNewEntry_Click"  />
                         </div>  
                         </div>  
                    </div>                     
                </div>
                        
                        <div class="row">
                            
                            <div class="col-md-12">
    
                             <div class="table-responsive">
                                 <asp:GridView Id="MyDataGrid" Class="table  table-bordered table-striped table-hover"
	                            runat="server"
	                            autogeneratecolumns="false">
            	                <Columns>
                                    <asp:HyperLinkField DataTextField="BizMsgIdr" DataNavigateUrlFormatString="RedirectMaker.aspx?OutwardID={0}&Form={1}&StatusID={2}" HeaderText="Msg ID" DataNavigateUrlFields="OutwardID,FormName,StatusID" /> 
                                    <asp:BoundField DataField = "FormName"   HeaderText="Form"  />      
                                    <asp:BoundField DataField = "FrBranch" HeaderText="From Branch" />   
                                    <asp:BoundField DataField = "DbtrAcctId"  HeaderText="Sender A/C No" /> 

                                    <asp:BoundField DataField = "CdtrNm" HeaderText="Receiver" />   
                                    <asp:BoundField DataField = "ToBranch" HeaderText="Receiving Branch" />   
      
                                    <asp:BoundField DataField = "SttlmAmt"        HeaderText="Amount" ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Right" DataFormatString="{0:N2}"  />       
                                    <asp:BoundField DataField = "Ccy"       HeaderText="CCY" ItemStyle-HorizontalAlign="Center"    />       
                                    <asp:BoundField DataField = "StatusName"         HeaderText="Status"        />       
                                    <asp:BoundField DataField = "Maker"    HeaderText="Maker"/> 
                                    <asp:BoundField DataField = "MakeTime"    HeaderText="Make Time"/>                                       
           	                </Columns>
	                        </asp:GridView>
                             </div>
                                
                         </div>
                        </div>
                  </section>
                    </div>
              
        </div>
    
</asp:Content>
