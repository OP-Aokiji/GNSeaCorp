<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UcNewsR.ascx.cs" Inherits="GNSeaCorp.Admin.uc.UcNewsR" %>
<%@ Import Namespace="GN.Common" %>
<div id="page-wrapper">
	<div class="graphs">
		<h3 class="blank1">Basic Tables</h3>

		<asp:gridview ID="gridMenu" runat="server" AutoGenerateColumns="False" CssClass="xs tabls">
            <Columns>
                <asp:BoundField DataField="NEWS_ID" HeaderText="NEWS CODE"></asp:BoundField>
                <asp:BoundField DataField="TITLE" HeaderText="TITLE"></asp:BoundField>
                <asp:BoundField DataField="CONTENT" HeaderText="CONTENT"></asp:BoundField>
                <asp:CommandField ButtonType="Image" CancelText="" DeleteImageUrl="<%# Constants.DELETE_ICON %>" InsertVisible="False" ShowCancelButton="False" ShowDeleteButton="True" ShowEditButton="True" UpdateImageUrl="<%# Constants.MODIFY_ICON  %>"></asp:CommandField>
            </Columns>
        </asp:gridview>
	</div>
</div>