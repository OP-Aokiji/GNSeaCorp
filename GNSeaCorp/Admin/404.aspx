<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage/GNSeaAdmin.Master" AutoEventWireup="true" CodeBehind="404.aspx.cs" Inherits="GNSeaCorp._404" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="graphs">
        <div class="error-main">
            <h3><i class="fa fa-exclamation-triangle"></i><span>404</span></h3>
            <div class="col-xs-7 error-main-left">
                <span>Oops!</span>
                <p>The page you're looking for could not be found.</p>
                <div class="error-btn">
                    <a href="../Admin/Default.aspx">Go back?</a>
                </div>
            </div>
            <div class="col-xs-5 error-main-right">
                <img src="images/7.png" alt=" " class="img-responsive" />
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</asp:Content>
