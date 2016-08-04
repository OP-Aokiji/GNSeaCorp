<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UcProductCU.ascx.cs" Inherits="GNSeaCorp.Admin.uc.UcProductCU" %>

<div class="graphs">
    <h3 class="blank1">Product</h3>
        <div class="tab-content">
            <div class="tab-pane active" id="horizontal-form">
                <div class="form-horizontal">
                    <div class="form-group">
                        <label for="focusedinput" class="col-sm-2 control-label">Product Name:</label>
                        <div class="col-sm-8">
                            <asp:TextBox ID="txtProductName" class="form-control1" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-sm-2 has-error"> 
				            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="help-block" runat="server" ControlToValidate="txtProductName">Product name can&#39;t be blank</asp:RequiredFieldValidator>
				        </div>
                    </div>
                    <div class="form-group">
                        <label for="focusedinput" class="col-sm-2 control-label">Price:</label>
                        <div class="col-sm-8">
                            <asp:TextBox ID="txtPrice" class="form-control1" runat="server"  type="number"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="focusedinput" class="col-sm-2 control-label">Category</label>
                        <div class="col-sm-8">
                            <asp:DropDownList ID="ddlCategory" runat="server"></asp:DropDownList>
                        </div>
                    </div>
                    <div class="form-group">            
                        <label for="focusedinput" class="col-sm-2 control-label">Description:</label>            
                        <div class="col-sm-8">
                            <asp:TextBox ID="txtDescription" class="form-control1" runat="server" TextMode="MultiLine"></asp:TextBox>
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
                            <asp:Button ID="btnUploadImage" runat="server" Text="Upload" OnClick="btnUploadImage_Click" CausesValidation="False" />
                        </div>

                    </div>
                    <div class="panel-footer">
                        <div class="row">
                            <div class="col-sm-8 col-sm-offset-2">
                                <asp:Button ID="btnSubmit" CssClass="btn-success btn" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                                <asp:Button ID="btnCancel" CssClass="btn-success btn" runat="server" Text="Cancel" OnClick="btnCancel_Click" CausesValidation="False" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</div>
