<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UcMenuR.ascx.cs" Inherits="GNSeaCorp.Admin.uc.UcMenuR" %>
<asp:gridview runat="server" AutoGenerateColumns="False" CssClass="xs tabls">
    <Columns>
        <asp:BoundField DataField="MENU_ID" HeaderText="MÃ MENU"></asp:BoundField>
        <asp:BoundField HeaderText="TÊN MENU"></asp:BoundField>
    </Columns>
</asp:gridview>
