<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage/GNSeaAdmin.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="GNSeaCorp.Admin.Menu" %>

<%@ register assembly="CKEditor.NET" namespace="CKEditor.NET" tagprefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:PlaceHolder ID="placeHolderMenu" runat="server"></asp:PlaceHolder>
</asp:Content>
