<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UcUserR.ascx.cs" Inherits="GNSeaCorp.Admin.uc.UcUserR" %>
<%@ Import Namespace="GN.Common.Schema" %>
<%@ Import Namespace="GN.Common" %>
<div id="page-wrapper">
	<div class="graphs">
		<h3 class="blank1">Basic Tables</h3>

		<asp:gridview ID="gridMenu" runat="server" AutoGenerateColumns="False" CssClass="xs tabls">
            <Columns>
                <asp:BoundField DataField="<%# DbSchema.Account.USER_ID %>" HeaderText="USER ID"></asp:BoundField>
                <asp:BoundField DataField="<%# DbSchema.Account.LAST_NAME + ' ' + DbSchema.Account.FIST_NAME %>" HeaderText="FULL NAME"></asp:BoundField>
                <asp:BoundField DataField="<%# DbSchema.Account.ROLD_ID %>" HeaderText="ROLE"></asp:BoundField>
                <asp:BoundField DataField="<%# DbSchema.Account.ADDRESS %>" HeaderText="ADDRESS"></asp:BoundField>
                <asp:BoundField DataField="<%# DbSchema.Account.GENDER %>" HeaderText="GENDER"></asp:BoundField>
                <asp:CommandField ButtonType="Image" CancelText="" DeleteImageUrl="<%# Constants.DELETE_ICON %>" InsertVisible="False" ShowCancelButton="False" ShowDeleteButton="True" ShowEditButton="True" UpdateImageUrl="<%# Constants.MODIFY_ICON  %>"></asp:CommandField>
            </Columns>
        </asp:gridview>
	</div>
</div>