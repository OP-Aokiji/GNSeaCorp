<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UcNewsCU.ascx.cs" Inherits="GNSeaCorp.Admin.uc.UcNewsCu" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<div class="graphs">
    <h3 class="blank1">News</h3>
    <div class="tab-content">
        <div class="tab-pane active" id="horizontal-form">
            <div class="form-horizontal">
                <div class="form-group">
                    <label for="txtTitle" class="col-sm-2 control-label">Title:</label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="txtTitle" class="form-control1" runat="server" type="text"></asp:TextBox>
                    </div>
                    <div class="col-sm-2 has-error">
                        <asp:RequiredFieldValidator ID="rfvTitle" CssClass="help-block" runat="server" ControlToValidate="txtTitle">Title can&#39;t be blank</asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label for="txtSummary" class="col-sm-2 control-label">Summary:</label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="txtSummary" class="form-control1" runat="server" type="text" Height="50px"></asp:TextBox>
                    </div>
                    <div class="col-sm-2 has-error">
                        <asp:RequiredFieldValidator ID="rfvSummary" CssClass="help-block" runat="server" ControlToValidate="txtSummary">Summary can&#39;t be blank</asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                        <div class="col-sm-offset-2">
                            <div class="col-sm-6">
                                <asp:Label ID="lblImageUrlTemp" runat="server" Visible="False" Text="image.jpg"></asp:Label>
                                <asp:DataList ID="dlImage" runat="server">
                                    <ItemTemplate>
                                        <asp:Image ID="imgSlide" Height="64px" Width="64px" runat="server" ImageUrl='<%# Eval("imageUrl", "~/Admin/images/{0}") %>' />
                                    </ItemTemplate>
                                </asp:DataList>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2">
                            <label for="exampleInputFile">Image Url</label>
                            <asp:FileUpload ID="fuImage1" runat="server" OnPreRender="fuImage1_PreRender" />
                            <%--<p class="help-block">Example block-level help text here.</p>--%>
                        </div>
                    </div>
                    <div class="form-group col-sm-offset-3">
                        <div class="col-sm-offset-2">
                            <asp:Button ID="btnUploadImage" runat="server" Text="Upload" OnClick="btnUploadImage_Click" />
                        </div>

                    </div>
                <div class="form-group">
                    <label for="txtContent" class="col-sm-2 control-label">Content:</label>
                    <div class="col-sm-8">
                        <CKEditor:CKEditorControl ID="txtContent" runat="server" BasePath="~/Admin/ckeditor" ContentsCss="~/Admin/ckeditor/contents.css" TemplatesFiles="~/Admin/ckeditor/plugins/templates/templates/default.js"></CKEditor:CKEditorControl>

                    </div>
                    <div class="col-sm-2 has-error">
                        <asp:RequiredFieldValidator ID="rfvContent" CssClass="help-block" runat="server" ErrorMessage="Content can't be blank" ControlToValidate="txtContent"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="panel-footer">
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2">
                            <asp:Button ID="btnSubmit" CssClass="btn-success btn" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                            <asp:Button ID="btnCancel" CssClass="btn-success btn" runat="server" Text="Cancel" OnClick="btnCancel_Click" CausesValidation="False" />
                            <asp:Button ID="btnReset" CssClass="btn-success btn" runat="server" Text="Reset" OnClick="btnReset_Click" CausesValidation="False" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
