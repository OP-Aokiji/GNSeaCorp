<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UcMenuR.ascx.cs" Inherits="GNSeaCorp.Admin.uc.UcMenuR" %>
<%@ Import Namespace="GN.Common" %>
<div id="page-wrapper">
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
                <asp:GridView ID="gridMenu" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered" ShowHeaderWhenEmpty="True" EmptyDataText="No records Found" OnRowEditing="gridMenu_RowEditing" OnRowDeleting="gridMenu_RowDeleting">
                    <Columns>
                        <asp:TemplateField Visible="False">
                            <ItemTemplate>
                                <asp:Label ID="lblMenuId" runat="server" Text='<%# Bind("MENU_ID") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="MENU_NAME" HeaderText="CATEGORY NAME"></asp:BoundField>
                        <asp:CommandField ButtonType="Image" CancelText="" DeleteImageUrl="~/Admin/images/delete-grid.png" InsertVisible="False" ShowCancelButton="False" ShowDeleteButton="True" ShowEditButton="True" EditImageUrl="~/Admin/images/edit-grid.png"></asp:CommandField>
                    </Columns>
                    <SelectedRowStyle BackColor="#CCFFFF" Font-Bold="True" />
                </asp:GridView>
            </div>
        </div>
    </div>
</div>
