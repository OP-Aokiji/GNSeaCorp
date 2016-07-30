<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UcSlideList.ascx.cs" Inherits="GNSeaCorp.Admin.uc.UcSlideList" %>
<%@ Import Namespace="System.Net.Mime" %>
<%@ Import Namespace="GN.Common" %>
<div id="page-wrapper">
    <div class="graphs">
        <h3 class="blank1">Slide</h3>
        <div class="xs tabls">
            <div class="panel-footer">
                <div class="row">
                    <div class="">
                        <asp:Button ID="btnNew" CssClass="btn-success btn" runat="server" Text="Create" OnClick="btnNew_Click" />
                    </div>
                </div>
            </div>
            <div class="bs-example4" data-example-id="contextual-table">
                <%--<asp:GridView ID="grdProduct" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered" AllowPaging="True" OnPageIndexChanging="grdProduct_PageIndexChanging" OnRowEditing="grdProduct_RowEditing" PageSize="20" OnRowDeleting="grdProduct_RowDeleting" UseAccessibleHeader="False">
                    <AlternatingRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <Columns>
                        <asp:TemplateField HeaderText="Slide ID" Visible="False">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" Visible="False" runat="server" Text='<%# Bind("Slide_Id") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Slide_Id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Image">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Image ID="Image1" Width="800px" Height="250px" runat="server" ImageUrl='<%# Eval("image_Url").ToString() == "" ? "~/Admin/images/image.jpg" : Eval("image_Url", "~/Admin/images/{0}") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowEditButton="True" />
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>--%>
                <asp:Repeater ID="repeaterBanner" runat="server" OnItemCommand="repeaterBanner_ItemCommand">
                <HeaderTemplate>
                    <div class="table">
                        <table class="table-no-border content-center">
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td class="centered" colspan="2">
                            <img src="<%#@"/Admin/images/" + Eval("Image_Url") %>" alt="<%#Eval("Image_Url")%>"
                                class="img-responsive" width="800px" height="250px" />
                            <br />
                                (<%#Eval("Image_Url")%>)
                        </td>
                    </tr>
                    <tr>
                        <td class="_right">
                            <asp:LinkButton ID="linkButtonUpdate" runat="server" Text="Edit" CommandName="UPDATE_ITEM" CommandArgument='<%#Eval("Slide_id") %>'>
                                <img src="/Admin/images/edit.png" width = "64px" height = "64px" alt="Update Banner" />
                            </asp:LinkButton>&nbsp;
                        </td>
                        <td class="_left">
                            &nbsp;<asp:LinkButton ID="linkButtonDelete" runat="server" CommandName="DELETE_ITEM" Text="Delete" CommandArgument='<%#Eval("Slide_id") %>'
                                OnClientClick="if (!confirm('Bạn muốn xóa banner này ?')) return false;">
                                <img src="/Admin/images/delete.png"  width = "64px" height = "64px" alt="Delete Banner" />
                            </asp:LinkButton>
                        </td>
                    </tr>
                    <tr><td colspan="2">&nbsp;</td></tr>
                </ItemTemplate>
                <FooterTemplate>
                    </table> </div>
                </FooterTemplate>
            </asp:Repeater>

            </div>
        </div>
    </div>
</div>