<%@ Page Title="Add Message" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditMessage.aspx.cs" Inherits="RTGS.EditMessage" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
       <div class="row">
        <div class="col-md-12">
            <section class="panel">
                    <header class="panel-heading">
                       Add Message
                    </header>
                    <table>
                        <tr>
                            <td width="80"></td>
                            <td class="NormalBold">For Branch</td>
                            <td><asp:DropDownList ID="BranchList" runat="server" DataTextField="BranchName" DataValueField="RoutingNo"></asp:DropDownList></td>
                            <td></td>
                       </tr>
                        <tr>
                            <td width="80"></td>
                            <td class="NormalBold">Expires On</td>
                            <td>
                                <asp:dropdownlist id="ChkDay" Runat="server">
				                                <asp:ListItem Value="1">01</asp:ListItem>
				                                <asp:ListItem Value="2">02</asp:ListItem>
				                                <asp:ListItem Value="3">03</asp:ListItem>
				                                <asp:ListItem Value="4">04</asp:ListItem>
				                                <asp:ListItem Value="5">05</asp:ListItem>
				                                <asp:ListItem Value="6">06</asp:ListItem>
				                                <asp:ListItem Value="7">07</asp:ListItem>
				                                <asp:ListItem Value="8">08</asp:ListItem>
				                                <asp:ListItem Value="9">09</asp:ListItem>
				                                <asp:ListItem Value="10">10</asp:ListItem>
				                                <asp:ListItem Value="11">11</asp:ListItem>
				                                <asp:ListItem Value="12">12</asp:ListItem>
				                                <asp:ListItem Value="13">13</asp:ListItem>
				                                <asp:ListItem Value="14">14</asp:ListItem>
				                                <asp:ListItem Value="15">15</asp:ListItem>
				                                <asp:ListItem Value="16">16</asp:ListItem>
				                                <asp:ListItem Value="17">17</asp:ListItem>
				                                <asp:ListItem Value="18">18</asp:ListItem>
				                                <asp:ListItem Value="19">19</asp:ListItem>
				                                <asp:ListItem Value="20">20</asp:ListItem>
				                                <asp:ListItem Value="21">21</asp:ListItem>
				                                <asp:ListItem Value="22">22</asp:ListItem>
				                                <asp:ListItem Value="23">23</asp:ListItem>
				                                <asp:ListItem Value="24">24</asp:ListItem>
				                                <asp:ListItem Value="25">25</asp:ListItem>
				                                <asp:ListItem Value="26">26</asp:ListItem>
				                                <asp:ListItem Value="27">27</asp:ListItem>
				                                <asp:ListItem Value="28">28</asp:ListItem>
				                                <asp:ListItem Value="29">29</asp:ListItem>
				                                <asp:ListItem Value="30">30</asp:ListItem>
				                                <asp:ListItem Value="31">31</asp:ListItem>
			                   </asp:dropdownlist>
                               <asp:dropdownlist id="ChkMonth" Runat="server">
				                                <asp:ListItem Value="1">Jan</asp:ListItem>
				                                <asp:ListItem Value="2">Feb</asp:ListItem>
				                                <asp:ListItem Value="3">Mar</asp:ListItem>
				                                <asp:ListItem Value="4">Apr</asp:ListItem>
				                                <asp:ListItem Value="5">May</asp:ListItem>
				                                <asp:ListItem Value="6">Jun</asp:ListItem>
				                                <asp:ListItem Value="7">Jul</asp:ListItem>
				                                <asp:ListItem Value="8">Aug</asp:ListItem>
				                                <asp:ListItem Value="9">Sep</asp:ListItem>
				                                <asp:ListItem Value="10">Oct</asp:ListItem>
                                   <asp:ListItem Value="11">Nov</asp:ListItem>
                                   <asp:ListItem Value="12">Dec</asp:ListItem>
                               </asp:DropDownList>
                                <asp:DropDownList ID="ChkYear" runat="server">
                                    <asp:ListItem Value="2015">2015</asp:ListItem>
                                    <asp:ListItem Value="2016">2016</asp:ListItem>
                                    <asp:ListItem Value="2017">2017</asp:ListItem>
                                    <asp:ListItem Value="2018">2018</asp:ListItem>
                                    <asp:ListItem Value="2019">2019</asp:ListItem>
                                    <asp:ListItem Value="2020">2020</asp:ListItem>
                                    <asp:ListItem Value="2021">2021</asp:ListItem>
                                    <asp:ListItem Value="2022">2022</asp:ListItem>
                                    <asp:ListItem Value="2023">2023</asp:ListItem>
                                    <asp:ListItem Value="2024">2024</asp:ListItem>
                                    <asp:ListItem Value="2025">2025</asp:ListItem>
                                </asp:DropDownList>
                                <asp:Label ID="Msg" runat="server" CssClass="NormalRed"></asp:Label>
                            </td>
                            <td></td>
                        </tr>
                        <tr>
                            <td width="80"></td>
                            <td class="NormalBold">Message Text</td>
                            <td><asp:TextBox ID="MessageText" runat="server" TextMode="MultiLine" Width="800px" Height="150px" MaxLength="1000" CssClass="inputlt" /></td>
                            <td><asp:RequiredFieldValidator ID="ValidatorMessageText" ControlToValidate="MessageText"  runat="server" Display="Dynamic" ErrorMessage="**" CssClass="NormalRed"></asp:RequiredFieldValidator></td>
                       </tr>
                        <tr>
                            <td></td>
                            <td align="right"><asp:LinkButton ID="SaveBtn" Text="Save" runat="server" CssClass="CommandButton" OnClick="SaveBtn_Click"></asp:LinkButton></td>
                            <td align="Center"><asp:LinkButton ID="CancelBtn" Text="Cancel" runat="server" CssClass="CommandButton" CausesValidation="false" OnClick="CancelBtn_Click"></asp:LinkButton></td>
                        </tr>
                    </table>
            </section>
        </div>
        </div>
</asp:Content>