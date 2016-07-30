<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UcMenuR.ascx.cs" Inherits="GNSeaCorp.Admin.uc.UcMenuR" %>
<%@ Import Namespace="GN.Common" %>
<div id="page-wrapper">
	<div class="graphs">
		<h3 class="blank1">Basic Tables</h3>

		<asp:gridview ID="gridMenu" runat="server" AutoGenerateColumns="False" CssClass="xs tabls">
            <Columns>
                <asp:BoundField DataField="MENU_ID" HeaderText="CATEGORY CODE"></asp:BoundField>
                <asp:BoundField DataField="MENU_NAME" HeaderText="CATEGORY NAME"></asp:BoundField>
                <asp:CommandField ButtonType="Image" CancelText="" DeleteImageUrl="B" InsertVisible="False" ShowCancelButton="False" ShowDeleteButton="True" ShowEditButton="True" UpdateImageUrl="<%# Constants.DELETE_ICON %>"></asp:CommandField>
            </Columns>
        </asp:gridview>
	</div>
</div>