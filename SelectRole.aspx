<%@ Page Title="Role Selection" Language="C#" MasterPageFile="~/SiteNoRole.Master" AutoEventWireup="true" CodeBehind="SelectUserRole.aspx.cs" Inherits="RTGS.SelectUserRole" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-4 col-md-offset-4">
            <section class="panel">
        <header class="panel-heading">
            Role Selection
                       
            <span class="tools pull-right">
                <a href="javascript:;" class="fa fa-chevron-down"></a>

            </span>
        </header>
        <div class="panel-body">
            <div class="row">
                <div class="col-md-12">
                    <div class="form-horizontal" role="form">
                        <div class="form-group">
                            <label for="Please Select:" class="col-sm-4 control-label">Please Select:</label>
                            <div class="col-sm-8">
                                <asp:DropDownList CssClass="form-control" ID="ddluserrole" runat="server"
                                    DataTextField="RoleName" DataValueField="RoleCD">
                                </asp:DropDownList>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <div class="pull-right">
                                    <asp:LinkButton ID="LoginBtn" runat="server" CssClass="btn btn-success" OnClick="Login_Click"
                                        Text="Proceed"></asp:LinkButton>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
        </div>
    </div>


</asp:Content>
