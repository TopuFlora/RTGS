<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OutwardFileList.aspx.cs" Inherits="RTGS.OutwardFileList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
         <div class="col-md-12">
            <section class="panel">
                <header class="panel-heading">
                   List of Outward XML Files
                </header>
         
            <asp:DataList ID="FileList" runat="Server" 
                HorizontalAlign="Center"
                ItemStyle-CssClass="Normal" 
                DataKeyField="FileName" RepeatColumns="2" 
                RepeatDirection="Horizontal">            
                <ItemTemplate>
                   <table class="LightBorderTable">
                    <tr>
                        <td width="30"></td>
                        <td valign="top" align="Left">
                            <asp:CheckBox ID="FileCheck" runat="server" />
                        </td>
                        <td class="NormalSmall" align="Left" width="400" nowrap>
                            <a href='http://localhost/stp/<%# DataBinder.Eval(Container.DataItem,"FilePath")%>' target='_new'><%# DataBinder.Eval(Container.DataItem,"FileName")%></a>
                        </td>
                    </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>        
            <div align="center"><asp:Label ID="Msg" CssClass="NormalRed" runat="server" Text=""></asp:Label></div>
            <table align="Center">
                <tr>
                    <td><asp:CheckBox id="CheckAll" runat="server" Text="Select All" CssClass="NormalBold" AutoPostBack="true" OnCheckedChanged="CheckAll_CheckedChanged" /></td>
                    <td width="30"></td>
                    <td><asp:Button ID="SendBtn" runat="server" CssClass="inputlt" Text="Send To STP" OnClick="SendBtn_Click"  /></td>
                    <td width="150"></td>
                    <td></td>
                    <td width="50"></td>
                    <td><asp:LinkButton ID="DeleteBtn" CssClass="CommandButton" runat="Server" Text="Delete" OnClick="DeleteBtn_Click" ></asp:LinkButton></td>
                </tr>
            </table>
           </section>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Rightcolumn" runat="server">
</asp:Content>
