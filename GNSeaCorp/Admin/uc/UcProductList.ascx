<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UcProductList.ascx.cs" Inherits="GNSeaCorp.Admin.uc.UcProductList" %>
<div id="page-wrapper">
    <div class="graphs">
        <h3 class="blank1">Products</h3>
        <div class="xs tabls">
            <div class="panel-footer">
                <div class="row">
                    <div class="">
                        <asp:Button ID="btnNew" CssClass="btn-success btn" runat="server" Text="Create" OnClick="btnNew_Click" />
                    </div>
                </div>
            </div>
            <div class="bs-example4" data-example-id="contextual-table">
                <asp:GridView ID="grdProduct" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered" ShowHeaderWhenEmpty="True" EmptyDataText="No records Found" AllowPaging="True" OnPageIndexChanging="grdProduct_PageIndexChanging" OnRowEditing="grdProduct_RowEditing" PageSize="20" OnRowDeleting="grdProduct_RowDeleting">
                    <Columns>
                        <asp:BoundField DataField="Product_Id" HeaderText="Product ID" />
                        <asp:TemplateField HeaderText="Product Name">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Product_Name") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Product_Name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Price1" HeaderText="Price" DataFormatString="{0:0,000}" />
                        <asp:BoundField DataField="Description" HeaderText="Description" />
                        <asp:TemplateField HeaderText="Image">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Image ID="Image1" Width="64px" Height="64px" runat="server" ImageUrl='<%# Eval("image_Url").ToString() == "" ? "~/Admin/images/image.jpg" : Eval("image_Url", "~/Admin/images/{0}") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowEditButton="True" />
                        <asp:CommandField ShowDeleteButton="True" />
                    </Columns>
                </asp:GridView>

            </div>
        </div>
    </div>
</div>
