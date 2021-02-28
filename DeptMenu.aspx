<%@ Page Title="BranchMenu" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server"> 
    <script>
      function Swap(obj,imgname)
      {
	    obj.src = imgname;
      }
    </script>
    <div class="row">
        <div class="col-md-12">
            <section class="panel">
                <header class="panel-heading">
                    Branch Home Page
                </header>
                <div class="panel-body">
                    <div class="row" style="font-weight:bold;">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table cellpadding="10" cellspacing="4" align="center">
                                    <tr>
                                        <td><a href="InwardDeptList.aspx"><img src="Images/Branch/InwardList.gif" width="150px" border="0" onmouseover="Swap(this,'Images/Branch/InwardListOn.gif')" onmouseout="Swap(this,'Images/Branch/InwardList.gif')" /></a></td>
                                        <td><a href="OutwardDeptListMaker.aspx"><img src="Images/Branch/OutwardBatch.gif" width="150px" border="0" onmouseover="Swap(this,'Images/Branch/OutwardBatchOn.gif')" onmouseout="Swap(this,'Images/Branch/OutwardBatch.gif')" /></a></td>
                                        <td><a href="DailyTransactions.aspx"><img src="Images/Branch/SettlementReport.gif" width="150px" border="0" onmouseover="Swap(this,'Images/Branch/SettlementReportOn.gif')" onmouseout="Swap(this,'Images/Branch/SettlementReport.gif')"  /></a></td>
                                        <td><a href="Search.aspx"><img src="Images/Branch/Search.gif" width="150px" border="0" onmouseover="Swap(this,'Images/Branch/SearchOn.gif')" onmouseout="Swap(this,'Images/Branch/Search.gif')"  /></a></td>
                                    </tr>
                                    <tr>
                                        <td><a href="ChangePassword.aspx"><img src="Images/Branch/ChangePasswordF.gif" width="150px" border="0" onmouseover="Swap(this,'Images/Branch/ChangePasswordFOn.gif')" onmouseout="Swap(this,'Images/Branch/ChangePasswordF.gif')"  /></a></td>
                                        <td><a href="Downloads/AdbeRdr930_en_US.exe"><img src="Images/Branch/PDFReader.gif" width="150px" border="0" onmouseover="Swap(this,'Images/Branch/PDFReaderOn.gif')" onmouseout="Swap(this,'Images/Branch/PDFReader.gif')"  /></a></td>
                                        <td><a href="LogOut.aspx"><img src="Images/Branch/SignOutF.gif" border="0" width="150px" onmouseover="Swap(this,'Images/Branch/SignOutFOn.gif')" onmouseout="Swap(this,'Images/Branch/SignOutF.gif')"  /></a></td>
                                    </tr>               
                                </table>
                                <br />                <br />                <br />                <br />                <br />                <br />                <br />                <br />                <br />                <br />                <br />                <br />
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>
</asp:Content>
