<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UcNewsCU.ascx.cs" Inherits="GNSeaCorp.Admin.uc.UcNewsCu" %>
<%@ register assembly="CKEditor.NET" namespace="CKEditor.NET" tagprefix="CKEditor" %>

<div class="graphs">
    <h3 class="blank1">Basic Forms</h3>
        <div class="tab-content">
            <div class="tab-pane active" id="horizontal-form">
                <div class="form-horizontal">
                    <div class="form-group">
                        <label for="txtNews_Id" class="col-sm-2 control-label">News Code:</label>
                        <div class="col-sm-8">
                            <asp:TextBox ID="txtNews_Id" class="form-control1" runat="server" required></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="txtTitle" class="col-sm-2 control-label">Title:</label>
                        <div class="col-sm-8">
                            <asp:TextBox ID="txtTitle" class="form-control1" runat="server"  type="text" required Width="517px"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="txtSummary" class="col-sm-2 control-label">Summary:</label>
                        <div class="col-sm-8">
                            <asp:TextBox ID="txtSummary" class="form-control1" runat="server"  type="text" required Width="1135px"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">            
                        <label for="txtContent" class="col-sm-2 control-label">Content:</label>            
                        <div class="col-sm-8">
                            <CKEditor:CKEditorControl ID="txtContent" runat=server BasePath="~/Admin/ckeditor" ContentsCss="~/Admin/ckeditor/contents.css" TemplatesFiles="~/Admin/ckeditor/plugins/templates/templates/default.js"></CKEditor:CKEditorControl>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="media-left">
                            <div class="col-sm-6">
                                
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputFile">Image Url</label>
                        <asp:FileUpload ID="fuImage1" runat="server" OnPreRender="fuImage1_PreRender" />
                        <%--<p class="help-block">Example block-level help text here.</p>--%>
                    </div>
                    <div class="form-group">
                        <asp:Button ID="btnUploadImage" runat="server" Text="Upload" OnClick="btnUploadImage_Click" />
                    </div>
                    <div class="panel-footer">
                        <div class="row">
                            <div class="col-sm-8 col-sm-offset-2">
                                <asp:Button ID="btnSubmit" CssClass="btn-success btn" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                                <asp:Button ID="btnCancel" CssClass="btn-success btn" runat="server" Text="Cancel" />
                                <asp:Button ID="btnReset" CssClass="btn-success btn" runat="server" Text="Reset" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</div>