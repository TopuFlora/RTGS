<%@ Page Title="Messages" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DeptMessages.aspx.cs" Inherits="RTGS.DeptMessages" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">           
     <table>
                <tr>
                    <td width="80"></td>
                    <td><asp:Label ID="Msg" runat="server" CssClass="NormalRed"></asp:Label></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <!----------------------->
                        <asp:DataList ID="MyDataList" runat="server" CellSpacing="0"  CellPadding="0"  ShowFooter="true" Height="0"
	                            HeaderStyle-CssClass="GrayBackWhiteFont"  
	                            FooterStyle-CssClass="GrayBackWhiteFont"
	                            ItemStyle-BackColor="LightYellow" 
	                            AlternatingItemStyle-BackColor="#FFFFFF">
	                            <ItemTemplate>
	                                <table cellpadding="0" cellspacing="0" border="0"  Class="LightBorderTable" style="width:920px">
	                                    <tr>
	                                        <td class="NormalBold">&nbsp;&nbsp;<%#DataBinder.Eval(Container.DataItem, "MessageFrom")%></td>
	                                        <td class="NormalBold"><%#DataBinder.Eval(Container.DataItem, "MessageDate")%></td>
	                                    </tr>
	                                    <tr><td colspan="2" height="10"></td></tr>
	                                    <tr>
	                                        <td  colspan="2" class="NormalLarge"><%#DataBinder.Eval(Container.DataItem, "MessageText")%></td>
	                                    </tr>
	                               </table>
	                               <table height="20" width="100%"><tr><td bgcolor="#EFEFEF">&nbsp;</td></tr></table>
	                            </ItemTemplate>
	                    </asp:DataList>
                        <!----------------------->
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><a href="Default.aspx" id="btnContinue" runat="server" class="CommandButton">Continue</a></td>
                </tr>
            </table>
</asp:Content>
