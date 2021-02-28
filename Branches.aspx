<%@ Page Title="Bank Settings" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Branches.aspx.cs" Inherits="RTGS.Branches" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-7">
            <div class="panel panel-primary">
                <div class="panel-heading"><h3 class="panel-title"><b>Branches</b></h3></div>
                <div class="panel-body">
                      <asp:DropDownList ID="BankList" runat="server" Width="250px" CssClass="form-control" AutoPostBack="true"  DataTextField="BankName" DataValueField="BankCD" /><br />
                      <asp:DataGrid CssClass="table table-bordered" ID="MyDataGrid" HeaderStyle-CssClass="GrayBackWhiteFont" FooterStyle-CssClass="GrayBackWhiteFont"
                            ItemStyle-CssClass="NormalSmall"
                            runat="server" CellSpacing="1" CellPadding="5" AutoGenerateColumns="false" DataKeyField="BranchID"
                            GridLines="None" BorderWidth="0px"  ShowFooter="true" Height="0px"  
                            OnItemCommand="MyDataGrid_ItemCommand" >
                            <Columns>
                                <asp:EditCommandColumn CausesValidation="False" EditText="Edit" ItemStyle-Width="150px" UpdateText="Update"
                                    CancelText="Cancel">
                                    <FooterStyle CssClass="red"></FooterStyle>
                                    <ItemStyle CssClass="CommandButton" />
                                </asp:EditCommandColumn>
                                <asp:TemplateColumn HeaderText="Routing No" HeaderStyle-Width="150px" >
                                    <ItemTemplate>
                                        <%#DataBinder.Eval(Container.DataItem, "RoutingNo")%>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="RoutingNo" runat="server" MaxLength="9" Width="70px" Text='<%#DataBinder.Eval(Container.DataItem,"RoutingNo") %>'></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorRoutingNo" CssClass="NormalRed"
                                            runat="server" ControlToValidate="RoutingNo" ErrorMessage="*" Display="dynamic">
                                        </asp:RequiredFieldValidator>                                            
                                    </EditItemTemplate>
                                    <FooterTemplate>
                                        <asp:TextBox ID="AddRoutingNo" runat="server" MaxLength="9" Width="70px" Text='<%#DataBinder.Eval(Container.DataItem,"RoutingNo") %>'></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorAddRoutingNo" CssClass="NormalRed"
                                            runat="server" ControlToValidate="AddRoutingNo" ErrorMessage="*" Display="dynamic">
                                        </asp:RequiredFieldValidator>
                                    </FooterTemplate>
                                </asp:TemplateColumn>
                                <asp:TemplateColumn HeaderText="Branch Name" HeaderStyle-Width="350px" >
                                    <ItemTemplate>
                                        <%#DataBinder.Eval(Container.DataItem, "BranchName")%>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="BranchName" runat="server" Width="250px" Text='<%#DataBinder.Eval(Container.DataItem,"BranchName") %>'></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorBranchName" CssClass="NormalRed"
                                            runat="server" ControlToValidate="BranchName" ErrorMessage="*" Display="dynamic">
                                        </asp:RequiredFieldValidator>
                                    </EditItemTemplate>
                                    <FooterTemplate>
                                        <asp:TextBox ID="AddBranchName" runat="server" Width="250px" ></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorAddBranchName" CssClass="NormalRed"
                                            runat="server" ControlToValidate="AddBranchName" ErrorMessage="*" Display="dynamic">
                                        </asp:RequiredFieldValidator>
                                    </FooterTemplate>
                                </asp:TemplateColumn>
                                <asp:TemplateColumn HeaderText="">
                                    <FooterTemplate>
                                      <asp:Button CommandName="Insert" Text="Add" ID="btnAdd" CssClass="alert-success" Runat="server" />
                                    </FooterTemplate>
                                    <ItemTemplate>
                                    </ItemTemplate>
                                 </asp:TemplateColumn>
                            </Columns>
                            <FooterStyle CssClass="GrayBackWhiteFont" />
                            <AlternatingItemStyle BackColor="#EFEFEF" />
                            <HeaderStyle CssClass="panel-heading" Font-Bold="True" ForeColor="Black" />
                        </asp:DataGrid>
                      <asp:Label ID="lblMsg" runat="server" CssClass="action" ></asp:Label>
                </div>
            </div>
        </div>
    </div>
    <asp:Label ID="Msg" runat="server" CssClass="NormalRed"></asp:Label>
</asp:Content>