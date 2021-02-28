<%@ Page Title="Message" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Messages.aspx.cs" Inherits="RTGS.Messages" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server"> 
    <div class="row">
        <div class="col-md-12">
            <section class="panel">
                <header class="panel-heading">
                    Message
                       
                    <span class="tools pull-right">
                        <a href="javascript:;" class="fa fa-chevron-down"></a>

                    </span>
                </header>
                <div class="form-group">
                            <div class="col-sm-offset-0 col-sm-2">
                                <div>
                                    <a href="EditMessage.aspx" class="btn btn-success">Add New Message</a>
                                </div>
                            </div>
                        </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                 
                                <asp:datagrid Id="MyDataGrid" runat="server" CssClass="table  table-bordered table-striped table-hover"
	                            autogeneratecolumns="false" >
            	                <Columns>    
                                    <asp:BoundColumn DataField = "MessageDate"      HeaderText="Entry Date"/>       
                                    <asp:BoundColumn DataField = "MessageFrom"      HeaderText="From"/>       
                                    <asp:BoundColumn DataField = "BranchName"       HeaderText="Branch"/>       
                                    <asp:BoundColumn DataField = "ExpiryDate"       HeaderText="Expiry Date"/>       
                                    <asp:BoundColumn DataField = "DaysLeft"         HeaderText="Days Left"/>       
                                    <asp:BoundColumn DataField = "MessageText"      HeaderText="Message"/>       
                                    <asp:TemplateColumn HeaderText="">
                                        <ItemTemplate>
                                            <a href="ExpireMessage.aspx?MessageID=<%#DataBinder.Eval(Container.DataItem, "MessageID")%>">Expire Now</a>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
            	                </Columns>
	                        </asp:datagrid>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>
</asp:Content>
