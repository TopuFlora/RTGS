<%@ Page Title="Bank Settings" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CurrencyRates.aspx.cs" Inherits="RTGS.CurrencyRates" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title"><b>Currency Conversion Rates</b></h3>
                </div>
                <div class="panel-body">
                    <asp:DataGrid CssClass="table table-bordered" ID="MyDataGrid" HeaderStyle-CssClass="GrayBackWhiteFont" FooterStyle-CssClass="GrayBackWhiteFont"
                        ItemStyle-CssClass="NormalSmall"
                        runat="server" CellSpacing="1" CellPadding="5" AutoGenerateColumns="false" DataKeyField="CCY"
                        GridLines="None" BorderWidth="0px" ShowFooter="true" Height="0px"
                        OnItemCommand="MyDataGrid_ItemCommand">
                        <Columns>
                            <asp:EditCommandColumn CausesValidation="False" EditText="Edit" ItemStyle-Width="150px" UpdateText="Update" CancelText="Cancel">
                                <FooterStyle CssClass="red"></FooterStyle>
                                <ItemStyle CssClass="CommandButton" />
                            </asp:EditCommandColumn>
                            <asp:BoundColumn DataField="CCY" ItemStyle-Width="60px" HeaderText="CCY" ReadOnly="true" />
                            <asp:TemplateColumn HeaderText="Current Rate">
                                <ItemTemplate>
                                    <%#DataBinder.Eval(Container.DataItem, "Rate")%>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:TemplateColumn HeaderText="Suggested Rate">
                                <ItemTemplate>
                                    <%#DataBinder.Eval(Container.DataItem, "TempRate")%>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="TempRate" runat="server" Width="70px" Text='<%#DataBinder.Eval(Container.DataItem,"TempRate") %>'></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorRate" CssClass="NormalRed"
                                        runat="server" ControlToValidate="TempRate" ErrorMessage="*" Display="dynamic">
                                    </asp:RequiredFieldValidator>
                                </EditItemTemplate>
                            </asp:TemplateColumn>
                            <asp:TemplateColumn HeaderText="Maker">
                                <ItemTemplate>
                                    <%#DataBinder.Eval(Container.DataItem, "Maker")%>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:TemplateColumn HeaderText="Make Time">
                                <ItemTemplate>
                                    <%#DataBinder.Eval(Container.DataItem, "MakeTime")%>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:TemplateColumn HeaderText="Checker">
                                <ItemTemplate>
                                    <%#DataBinder.Eval(Container.DataItem, "Checker")%>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:TemplateColumn HeaderText="Check Time">
                                <ItemTemplate>
                                    <%#DataBinder.Eval(Container.DataItem, "CheckTime")%>
                                </ItemTemplate>
                            </asp:TemplateColumn>                        </Columns>
                        <FooterStyle CssClass="GrayBackWhiteFont" />
                        <AlternatingItemStyle BackColor="#EFEFEF" />
                        <HeaderStyle CssClass="panel-heading" Font-Bold="True" ForeColor="Black" />
                    </asp:DataGrid>
                    <asp:Label ID="lblMsg" runat="server" CssClass="action"></asp:Label>
                </div>
            </div>
        </div>
    </div>
    <asp:Label ID="Msg" runat="server" CssClass="NormalRed"></asp:Label>
</asp:Content>
