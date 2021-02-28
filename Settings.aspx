<%@ Page Title="Bank Settings" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Settings.aspx.cs" Inherits="RTGS.Settings" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-6">
            <div class="panel panel-primary">
                <div class="panel-heading"><h3 class="panel-title"><b>Bank Settings</b></h3></div>
                <div class="panel-body">   
                    <!------------------>
                    <table class="table table-striped table-hover">
                        <tr>
                            <td class="form-control-small">Auto MX Amount</td>
                            <td><asp:TextBox ID="txtAutoMXAmnt" CssClass="form-control" Width="200px" runat="server" /></td>
                        </tr>
                        <tr>
                            <td class="form-control-small">Camt 60 Interval</td>
                            <td><asp:TextBox ID="txtCamtInterval" CssClass="form-control"  Width="50px" runat="server" /></td>
                        </tr>
                        <tr>
                            <td class="form-control-small">Skip CBS</td>
                            <td><asp:CheckBox ID="chkSkipCBS" CssClass="form-control"  Width="200px" runat="server" /></td>
                        </tr>
                        <tr>
                            <td class="form-control-small">Outward Parking GL Account</td>
                            <td><asp:TextBox ID="txtOutParkingGL" CssClass="form-control"  Width="200px" runat="server" /></td>
                        </tr>
                        <tr>
                            <td class="form-control-small">Morning Session Cutoff Time</td>
                            <td>
                                <asp:DropDownList ID="MorningCutOffHrList" runat="server">
                                    <asp:ListItem Text="10" />
                                    <asp:ListItem Text="11" />
                                    <asp:ListItem Text="12" />
                                    <asp:ListItem Text="13" />
                                    <asp:ListItem Text="14" />
                                    <asp:ListItem Text="15" />
                                </asp:DropDownList>
                                <asp:DropDownList ID="MorningCutOffMinList" runat="server">
                                    <asp:ListItem Text="00" />
                                    <asp:ListItem Text="05" />
                                    <asp:ListItem Text="10" />
                                    <asp:ListItem Text="15" />
                                    <asp:ListItem Text="20" />
                                    <asp:ListItem Text="25" />
                                    <asp:ListItem Text="30" />
                                    <asp:ListItem Text="35" />
                                    <asp:ListItem Text="40" />
                                    <asp:ListItem Text="45" />                                
                                    <asp:ListItem Text="50" />
                                    <asp:ListItem Text="55" />
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="form-control-small">Afternoon Session Cutoff Time</td>
                            <td>
                                <asp:DropDownList ID="AfternoonCutOffHrList" runat="server">
                                    <asp:ListItem Text="10" />
                                    <asp:ListItem Text="11" />
                                    <asp:ListItem Text="12" />
                                    <asp:ListItem Text="13" />
                                    <asp:ListItem Text="14" />
                                    <asp:ListItem Text="15" />
                                    <asp:ListItem Text="16" />
                                    <asp:ListItem Text="17" />
                                    <asp:ListItem Text="18" />
                                    <asp:ListItem Text="19" />
                                    <asp:ListItem Text="20" />
                                    <asp:ListItem Text="21" />
                                    <asp:ListItem Text="22" />
                                </asp:DropDownList>
                                <asp:DropDownList ID="AfternoonCutOffMinList" runat="server">
                                    <asp:ListItem Text="00" />
                                    <asp:ListItem Text="05" />
                                    <asp:ListItem Text="10" />
                                    <asp:ListItem Text="15" />
                                    <asp:ListItem Text="20" />
                                    <asp:ListItem Text="25" />
                                    <asp:ListItem Text="30" />
                                    <asp:ListItem Text="35" />
                                    <asp:ListItem Text="40" />
                                    <asp:ListItem Text="45" />                                
                                    <asp:ListItem Text="50" />
                                    <asp:ListItem Text="55" />
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><asp:Button ID="BtnSave" runat="server" CssClass="btn btn-success" Text="Save" OnClick="BtnSave_Click" /></td>
                        </tr>
                    </table>
                    <!------------------>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="panel panel-primary">
                <div class="panel-heading"><h3 class="panel-title"><b>Currency Conversion Rates</b></h3></div>
                <div class="panel-body"> 
                      <asp:DataGrid CssClass="table table-bordered" ID="MyDataGrid" HeaderStyle-CssClass="GrayBackWhiteFont" FooterStyle-CssClass="GrayBackWhiteFont"
                            ItemStyle-CssClass="NormalSmall"
                            runat="server" CellSpacing="1" CellPadding="5" AutoGenerateColumns="false" DataKeyField="CCY"
                            GridLines="None" BorderWidth="0px"  ShowFooter="true" Height="0px"  
                            OnItemCommand="MyDataGrid_ItemCommand" >
                            <Columns>
                                <asp:EditCommandColumn CausesValidation="False" EditText="Edit" ItemStyle-Width="150px" UpdateText="Update"
                                    CancelText="Cancel">
                                    <FooterStyle CssClass="red"></FooterStyle>
                                    <ItemStyle CssClass="CommandButton" />
                                </asp:EditCommandColumn>
                                <asp:BoundColumn DataField = "CCY" ItemStyle-Width="60px" HeaderText="CCY" ReadOnly="true"/>  
                                <asp:TemplateColumn HeaderText="Rate">
                                    <ItemTemplate>
                                        <%#DataBinder.Eval(Container.DataItem, "Rate")%>
                                    </ItemTemplate>
                                </asp:TemplateColumn>
                                <asp:TemplateColumn HeaderText="Min Limit (Pacs08)">
                                    <ItemTemplate>
                                        <%#DataBinder.Eval(Container.DataItem, "Pacs08MinLimit")%>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="Pacs08MinLimit" runat="server" Width="120px" Text='<%#DataBinder.Eval(Container.DataItem,"Pacs08MinLimit") %>'></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPacs08MinLimit" CssClass="NormalRed"
                                            runat="server" ControlToValidate="Pacs08MinLimit" ErrorMessage="*" Display="dynamic">
                                        </asp:RequiredFieldValidator>
                                    </EditItemTemplate>
                                </asp:TemplateColumn>
                                <asp:TemplateColumn HeaderText="Min Limit (Pacs09)">
                                    <ItemTemplate>
                                        <%#DataBinder.Eval(Container.DataItem, "Pacs09MinLimit")%>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="Pacs09MinLimit" runat="server" Width="120px" Text='<%#DataBinder.Eval(Container.DataItem,"Pacs09MinLimit") %>'></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPacs09MinLimit" CssClass="NormalRed"
                                            runat="server" ControlToValidate="Pacs09MinLimit" ErrorMessage="*" Display="dynamic">
                                        </asp:RequiredFieldValidator>
                                    </EditItemTemplate>
                                    <FooterStyle CssClass="red" />
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