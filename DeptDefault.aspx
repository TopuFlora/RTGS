<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" EnableViewState="true" CodeBehind="DeptDefault.aspx.cs" Inherits="RTGS.DeptDefault" %>
<%@ Register Src="Modules/OutDeptStatus.ascx"           TagName="OutDeptStatus"         TagPrefix="uc1" %>
<%@ Register Src="modules/OCEBranchStatus.ascx"         TagName="OCEBranchStatus"       TagPrefix="uc2" %>
<%@ Register Src="modules/ICEBranchStatus.ascx"         TagName="ICEBranchStatus"       TagPrefix="uc3" %>
<%@ Register Src="Modules/InDeptStatus.ascx"            TagName="InDeptStatus"          TagPrefix="uc4" %>
<%@ Register Src="Modules/BankSettlement.ascx"          TagName="BankSettlement"        TagPrefix="uc5" %>
<%@ Register Src="Modules/BranchSettlement.ascx"        TagName="BranchSettlement"      TagPrefix="uc6" %>
<%@ Register src="Modules/Liquidity.ascx"               Tagname="Liquidity"             Tagprefix="uc7" %>
<%@ Register Src="Modules/DeptSettlement.ascx"          TagName="DeptSettlement"        TagPrefix="uc8" %>
<%@ Register src="Modules/BBMessages.ascx"              Tagname="BBMessages"            Tagprefix="uc9" %>



<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    
        <div class="row">
            <div class="col-md-6">
                <section class="panel" style="margin-bottom: 5px;">
     <header class="panel-heading">
                        Outward Transactions
                    </header>
                    <div class="panel-body" style="padding:5px">
                     <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate> 
                            <uc1:OutDeptStatus id="OutDeptStatus1"   runat="server" />
                        </ContentTemplate>
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                        </Triggers> 
                    </asp:UpdatePanel>
                    </div>
                    
                </section>
            </div>
            <div class="col-md-6">
                <section class="panel" style="margin-bottom: 5px;">
                        <header class="panel-heading">
                            Inward Transactions
                        </header>
                        <div class="panel-body" style="padding:5px">
                            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                <ContentTemplate>
                                    <uc4:InDeptStatus id="InDeptStatus1"   runat="server" />
                                </ContentTemplate>
                                <Triggers>
                                    <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                                </Triggers>
                            </asp:UpdatePanel>
                        </div>
                    
                    
                </section>
            </div>
            <div class="col-md-6">
                <section class="panel" style="margin-bottom: 5px;">
                <header class="panel-heading" style="vertical-align:middle">
                    Bankwise Summary&nbsp;&nbsp;
                     <asp:DropDownList ID="BankCCY" style="height:15px;font-size:xx-small" DataTextField="CCY" runat="server" AutoPostBack="true">
                     </asp:DropDownList>
                </header>

                        <div class="panel-body" style="padding:5px">
                            <asp:UpdatePanel ID="UpdatePanel7" runat="server">
                                <ContentTemplate>
                                    <uc5:BankSettlement ID="BankSettlement1" ECEType="1" Height="65px" runat="server" />
                                </ContentTemplate>
                                <Triggers>
                                    <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                                </Triggers>
                            </asp:UpdatePanel>
                        </div>

                </section>
            </div>
            <div class="col-md-6">
                <section class="panel" style="margin-bottom: 5px;">
                     <header class="panel-heading">Deptwise Summary&nbsp;&nbsp;
                         <asp:DropDownList ID="BranchCcy" style="height:15px;font-size:xx-small" DataTextField="CCY" runat="server" AutoPostBack="true">
                         </asp:DropDownList>
                        </header>
                        <div class="panel-body" style="padding:5px">
                            <asp:UpdatePanel ID="UpdatePanel8" runat="server">
                                <ContentTemplate>
                                    <uc8:DeptSettlement ID="DeptSettlement1" Height="65px" runat="server" />
                                </ContentTemplate>
                                <Triggers>
                                    <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                                </Triggers>
                            </asp:UpdatePanel>
                        </div>
                    
                    
                </section>
            </div>
            <div class="col-md-6">
                <section class="panel" style="margin-bottom: 5px;">
                    <header class="panel-heading">Central Bank Messages</header>
                    <div class="panel-body" style="padding:5px">
                         <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                            <ContentTemplate>
                                <uc9:BBMessages ID="BBMessages1" runat="server" />
                              </ContentTemplate>
                                <Triggers>
                                    <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                                </Triggers>
                        </asp:UpdatePanel> 
                    </div> 
                </section>
            </div>
            <div class="col-md-6">
                <section class="panel" style="margin-bottom: 5px;">
                    <header class="panel-heading"> Monitor</header>
                    <div class="panel-body" style="padding:5px">
                        <asp:UpdatePanel ID="UpdatePanel9" runat="server">
                            <ContentTemplate>
                                <uc7:Liquidity ID="Liquidity1" runat="server" />
                            </ContentTemplate>
                                <Triggers>
                                    <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                                </Triggers>
                            </asp:UpdatePanel>                  
                    </div>                                     
                </section>
            </div>
        </div>
        <asp:Timer ID="Timer1" Interval="5000" runat="server" />
</asp:Content>
