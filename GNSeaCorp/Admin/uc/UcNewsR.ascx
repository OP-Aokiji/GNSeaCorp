<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UcNewsR.ascx.cs" Inherits="GNSeaCorp.Admin.uc.UcNewsR" %>
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
            <asp:gridview ID="gridNews" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered" ShowHeaderWhenEmpty="True" EmptyDataText="No records Found" OnRowDeleting="gridNews_RowDeleting" OnRowEditing="gridNews_RowEditing">
                <Columns>
                    <asp:BoundField DataField="NEWS_ID" HeaderText="News Code"></asp:BoundField>
                    <asp:BoundField DataField="TITLE" HeaderText="Title"></asp:BoundField>
                    <asp:BoundField DataField="SUMMARY" HeaderText="Summary"></asp:BoundField>
                    <asp:CommandField ButtonType="Image" CancelText="" DeleteImageUrl="~/Admin/images/delete-grid.png" InsertVisible="False" ShowCancelButton="False" ShowDeleteButton="True" ShowEditButton="True" EditImageUrl="~/Admin/images/edit-grid.png"></asp:CommandField>
                </Columns>
            </asp:gridview>
        </div>
    </div>
</div>