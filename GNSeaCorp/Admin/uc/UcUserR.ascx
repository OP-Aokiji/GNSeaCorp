<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UcUserR.ascx.cs" Inherits="GNSeaCorp.Admin.uc.UcUserR" %>
<%@ Import Namespace="GN.Common.Schema" %>
<%@ Import Namespace="GN.Common" %>
<div class="graphs">
    <h3 class="blank1">Category Table</h3>
    <div class="xs tabls">
        <div class="panel-footer">
            <div class="row">
                <div class="">
                    <asp:Button ID="btnNew" CssClass="btn-success btn" runat="server" Text="Create" OnClick="btnNew_Click" />
                </div>
            </div>
        </div>
        <div class="bs-example4" data-example-id="contextual-table">
            <asp:gridview ID="gridAccount" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered" ShowHeaderWhenEmpty="True" EmptyDataText="No records Found" OnRowDeleting="gridNews_RowDeleting" OnRowEditing="gridNews_RowEditing">
                <Columns>
                    <asp:BoundField DataField="USER_ID" HeaderText="USER ID"></asp:BoundField>
                    <asp:BoundField DataField="FIRST_NAME" HeaderText="FIRST NAME"></asp:BoundField>
                    <asp:BoundField DataField="LAST_NAME" HeaderText="LAST NAME"></asp:BoundField>
                    <asp:BoundField DataField="ROLE_NAME" HeaderText="ROLE"></asp:BoundField>
                    <asp:BoundField DataField="ADDRESS" HeaderText="ADDRESS"></asp:BoundField>
                    <asp:BoundField DataField="GENDER" HeaderText="GENDER"></asp:BoundField>
                    <asp:BoundField DataField="PHONE_NUMBER" HeaderText="PHONE_NUMBER"></asp:BoundField>
                    <asp:BoundField DataField="IDENTIFICATION" HeaderText="IDENTIFICATION"></asp:BoundField>
                    <asp:CommandField ButtonType="Image" CancelText="" DeleteImageUrl="~/Admin/images/delete-grid.png" InsertVisible="False" ShowCancelButton="False" ShowDeleteButton="True" ShowEditButton="True" EditImageUrl="~/Admin/images/edit-grid.png"></asp:CommandField>
                </Columns>
            </asp:gridview>
        </div>
    </div>
</div>
