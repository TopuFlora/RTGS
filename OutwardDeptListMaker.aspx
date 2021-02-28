<%@ Page Title="Outward Transactions" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OutwardDeptListMaker.aspx.cs" Inherits="RTGS.OutwardDeptListMaker" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">            
    <div class="row">
        <div class="col-md-12">
            <section class="panel">
                    <header class="panel-heading">
                       Todays Outward List
                    </header>
                    <div class="panel-body">
                     <div class="row">
                         <div class="col-md-9">
                              <div style="float:left; margin-left:3px">
                                  <asp:DropDownList ID="DeptList" runat="server" Width="350px" Height="32px" CssClass="form-control" DataTextField="DeptName" DataValueField="DeptID" AutoPostBack="true"></asp:DropDownList>
                              </div>
                         <div  style="float:left; margin-left:3px">
                           <asp:Button ID="btnNewEntry" CssClass="btn btn-success btn-sm" runat="server"
                                                Text="New Transaction Entry" OnClick="btnNewEntry_Click"  />
                         </div> 
                        <div  style="float:left; margin-left:50px">
                           <asp:Button ID="btnBulkUpload" CssClass="btn btn-success btn-sm" runat="server"
                                                Text="Bulk Upload" OnClick="btnBulkUpload_Click"  />
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
                                    <asp:BoundField DataField = "DeptName" HeaderText="Department" />   

    				    <asp:BoundField DataField = "InstrId"  HeaderText="Intr. ID" /> 
				    <asp:BoundField DataField = "TxId"  HeaderText="Tx ID" />  
                                    <asp:BoundField DataField = "DbtrAcctId"  HeaderText="Sender A/C No" /> 

                                    <asp:BoundField DataField = "CdtrNm" HeaderText="Receiving Bank" />   
                                    <asp:BoundField DataField = "ToBranch" HeaderText="Receiving Branch" />   
                                     <asp:BoundField DataField = "Ccy"       HeaderText="CCY"       />      
                                    <asp:BoundField DataField = "SttlmAmt"        HeaderText="Amount"  DataFormatString="{0:N2}"  />       
      
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
