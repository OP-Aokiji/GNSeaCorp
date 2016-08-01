<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage/GNSeaAdmin.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GNSeaCorp.Admin.Default" %>
<%@ Import Namespace="GN.Common" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ContentPlaceHolderID="cphMenuAdmin" runat="server">
    <!--sidebar nav start-->
    <ul class="nav nav-pills nav-stacked custom-nav">
        <li class="active"><a href="#"><i class="lnr lnr-power-switch"></i><span>Dashboard</span></a></li>
        <%--<li class="menu-list">
            <a href="<%=Constants.NAVIGATE_DEFAULT_PAGE + Constants.UCMENUR %>"><i class="lnr lnr-cog"></i>
                <span>Category</span></a>
            <ul class="sub-menu-list">
                <li><a href="<%=Constants.NAVIGATE_DEFAULT_PAGE + Constants.UCPRODUCTLIST %>">Products</a> </li>
            </ul>
        </li>--%>
        <li><a href="<%=Constants.NAVIGATE_DEFAULT_PAGE + Constants.UCMENUR %>"><i class="lnr lnr-spell-check"></i><span>Category</span></a></li>
        <li><a href="<%=Constants.NAVIGATE_DEFAULT_PAGE + Constants.UCPRODUCTLIST %>"><i class="lnr lnr-spell-check"></i><span>Product</span></a></li>
        <li><a href="<%=Constants.NAVIGATE_DEFAULT_PAGE + Constants.UCNEWSR %>"><i class="lnr lnr-spell-check"></i><span>News</span></a></li>
        <li><a href="<%=Constants.NAVIGATE_DEFAULT_PAGE + Constants.UCUSERR %>"><i class="lnr lnr-spell-check"></i><span>User</span></a></li>
        <li><a href="<%=Constants.NAVIGATE_DEFAULT_PAGE + Constants.UCSLIDELIST %>"><i class="lnr lnr-menu"></i><span>Slider</span></a></li>
        <li><a href="<%=Constants.NAVIGATE_DEFAULT_PAGE + Constants.UCROLER %>"><i class="lnr lnr-menu"></i><span>Role</span></a></li>
        <%--<li class="menu-list"><a href="<%=Constants.NAVIGATE_DEFAULT_PAGE + Constants.UCUSERR %>"><i class="lnr lnr-envelope"></i><span>Users</span></a>
            <ul class="sub-menu-list">
                <li><a href="<%=Constants.NAVIGATE_DEFAULT_PAGE + Constants.UCROLER %>">Role</a> </li>
            </ul>
        </li>--%>
    </ul>
    <!--sidebar nav end-->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:PlaceHolder ID="placeHolderMain" runat="server"></asp:PlaceHolder>
</asp:Content>
