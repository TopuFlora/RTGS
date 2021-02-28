<%@ Page Title="Bank Settings" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Banks.aspx.cs" Inherits="RTGS.Banks" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-11">
            <div class="panel panel-primary">
                <div class="panel-heading"><h3 class="panel-title"><b>Banks</b></h3></div>
                <div class="panel-body">
                      <asp:DataGrid CssClass="table table-bordered" ID="MyDataGrid" HeaderStyle-CssClass="GrayBackWhiteFont" 
                          FooterStyle-CssClass="GrayBackWhiteFont" ItemStyle-CssClass="NormalSmall"
                            runat="server" CellSpacing="1" CellPadding="5" AutoGenerateColumns="false" DataKeyField="BIC"
                            GridLines="None" BorderWidth="0px"  ShowFooter="true" Height="0px"  
                            OnItemCommand="MyDataGrid_ItemCommand" >
                            <Columns>
                                <asp:EditCommandColumn CausesValidation="False" EditText="Edit" ItemStyle-Width="150px" UpdateText="Update"
                                    CancelText="Cancel">
                                    <FooterStyle CssClass="red"></FooterStyle>
                                    <ItemStyle CssClass="CommandButton" />
                                </asp:EditCommandColumn>
                                <asp:TemplateColumn HeaderText="BankCD">
                                    <ItemTemplate>
                                        <%#DataBinder.Eval(Container.DataItem, "BankCD")%>
                                    </ItemTemplate>
                                </asp:TemplateColumn>
                                <asp:TemplateColumn HeaderText="BankName">
                                    <ItemTemplate>
                                        <%#DataBinder.Eval(Container.DataItem, "BankName")%>
                                    </ItemTemplate>
                                </asp:TemplateColumn>
                                <asp:TemplateColumn HeaderText="BIC">
                                    <ItemTemplate>
                                        <%#DataBinder.Eval(Container.DataItem, "BIC")%>
                                    </ItemTemplate>
                                </asp:TemplateColumn>
                                <asp:TemplateColumn HeaderText="Default Branch">
                                    <ItemTemplate>
                                        <%#DataBinder.Eval(Container.DataItem, "DefaultBranch")%>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="DefaultBranch" runat="server" MaxLength="9" Width="90px" Text='<%#DataBinder.Eval(Container.DataItem,"DefaultBranch") %>'></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorDefaultBranch" CssClass="NormalRed"
                                            runat="server" ControlToValidate="DefaultBranch" ErrorMessage="*" Display="dynamic">
                                        </asp:RequiredFieldValidator>                                            
                                    </EditItemTemplate>
                                </asp:TemplateColumn>
                               <asp:TemplateColumn HeaderText="BranchName">
                                    <ItemTemplate>
                                        <%#DataBinder.Eval(Container.DataItem, "BranchName")%>
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