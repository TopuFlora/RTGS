<%@ Page Title="Bank Settings" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CBAccounts.aspx.cs" Inherits="RTGS.CBAccounts" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-6">
            <div class="panel panel-primary">
                <div class="panel-heading"><h3 class="panel-title"><b>Central Bank Account List</b></h3></div>
                <div class="panel-body">
                      <asp:DropDownList ID="BankList" runat="server" Width="250px" CssClass="form-control" AutoPostBack="true"  DataTextField="BankName" DataValueField="BIC" /><br />
                      <asp:DataGrid CssClass="table table-bordered" ID="MyDataGrid" HeaderStyle-CssClass="GrayBackWhiteFont" FooterStyle-CssClass="GrayBackWhiteFont"
                            ItemStyle-CssClass="NormalSmall"
                            runat="server" CellSpacing="1" CellPadding="5" AutoGenerateColumns="false" DataKeyField="AcctID"
                            GridLines="None" BorderWidth="0px"  ShowFooter="true" Height="0px"  
                            OnItemCommand="MyDataGrid_ItemCommand" >
                            <Columns>
                                <asp:EditCommandColumn CausesValidation="False" EditText="Edit" ItemStyle-Width="150px" UpdateText="Update"
                                    CancelText="Cancel">
                                    <ItemStyle CssClass="CommandButton" />
                                </asp:EditCommandColumn>
                                <asp:TemplateColumn HeaderText="Currency">
                                    <ItemTemplate>
                                        <%#DataBinder.Eval(Container.DataItem, "CCY")%>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <%#DataBinder.Eval(Container.DataItem,"CCY") %>
                                    </EditItemTemplate>
                                    <FooterTemplate>
                                        <asp:DropDownList ID="AddCCY" runat="server">
                                            <asp:ListItem Text="BDT" />
                                            <asp:ListItem Text="USD" />
                                            <asp:ListItem Text="GBP" />
                                            <asp:ListItem Text="EUR" />
                                            <asp:ListItem Text="CAD" />
                                            <asp:ListItem Text="JPY" />
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorAddCCY" CssClass="NormalRed"
                                            runat="server" ControlToValidate="AddCCY" ErrorMessage="*" Display="dynamic">
                                        </asp:RequiredFieldValidator>
                                    </FooterTemplate>
                                </asp:TemplateColumn>
                                <asp:TemplateColumn HeaderText="Account Type">
                                    <ItemTemplate>
                                        <%#DataBinder.Eval(Container.DataItem, "AcctType")%>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <%#DataBinder.Eval(Container.DataItem,"AcctType") %>
                                    </EditItemTemplate>
                                    <FooterTemplate>
                                        <asp:DropDownList ID="AddAcctType" runat="server">
                                            <asp:ListItem Text="SA" />
                                            <asp:ListItem Text="ILF" />
                                            <asp:ListItem Text="CLI" />
                                            <asp:ListItem Text="GL" />
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorAddAcctType" CssClass="NormalRed"
                                            runat="server" ControlToValidate="AddAcctType" ErrorMessage="*" Display="dynamic">
                                        </asp:RequiredFieldValidator>
                                    </FooterTemplate>
                                </asp:TemplateColumn>
                                <asp:TemplateColumn HeaderText="Account No">
                                    <ItemTemplate>
                                        <%#DataBinder.Eval(Container.DataItem, "AcctNo")%>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="AcctNo" runat="server" MaxLength="35" Width="120px" Text='<%#DataBinder.Eval(Container.DataItem,"AcctNo") %>'></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorAcctNo" CssClass="NormalRed"
                                            runat="server" ControlToValidate="AcctNo" ErrorMessage="*" Display="dynamic">
                                        </asp:RequiredFieldValidator>
                                    </EditItemTemplate>
                                    <FooterTemplate>
                                        <asp:TextBox ID="AddAcctNo" runat="server" MaxLength="35" Width="120px" Text='<%#DataBinder.Eval(Container.DataItem,"AcctNo") %>'></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorAddAcctNo" CssClass="NormalRed"
                                            runat="server" ControlToValidate="AddAcctNo" ErrorMessage="*" Display="dynamic">
                                        </asp:RequiredFieldValidator>
                                    </FooterTemplate>
                                </asp:TemplateColumn>
                                <asp:TemplateColumn HeaderText="">
                                    <FooterTemplate>
                                      <asp:Button CommandName="Insert" Text="Add" ID="btnAdd" CssClass="alert-success" Runat="server" />
                                    </FooterTemplate>
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