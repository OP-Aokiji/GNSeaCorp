<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UcSlideCU.ascx.cs" Inherits="GNSeaCorp.Admin.UcSlideCU" %>

<%@ Import Namespace="GN.Common" %>

<div class="graphs">
    <h3 class="blank1">Basic Forms</h3>
    <div class="tab-content">
        <div class="tab-pane active" id="horizontal-form">
            <div class="form-horizontal">
                <div class="form-group">
                    <label for="focusedinput" class="col-sm-2 control-label">Slogan 1:</label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="txtSlogan1" class="form-control1" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-sm-2 jlkdfj1">
                        <p class="help-block">Your help text!</p>
                    </div>
                </div>
                <div class="form-group">
                    <label for="focusedinput" class="col-sm-2 control-label">Slogan 2:</label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="txtSlogan2" class="form-control1" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-sm-2 jlkdfj1">
                        <p class="help-block">Your help text!</p>
                    </div>
                </div>
                <div class="form-group">
                    <label for="txtarea1" class="col-sm-2 control-label">Description</label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="txtDescription" class="form-control1" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <div class="media-left">
                        <asp:Label ID="lblImageUrlTemp" runat="server" Text="" Visible="True"></asp:Label>
                        <asp:DataList ID="dlImage" runat="server">
                            <ItemTemplate>
                                <asp:Image ID="imgSlide" Height="64px" Width="64px" runat="server" ImageUrl='<%# (Eval("imageUrl") == "") ? "/Admin/images/image.jpg" :  Eval("imageUrl", "/Admin/images/{0}") %>' />
                            </ItemTemplate>
                        </asp:DataList>
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

