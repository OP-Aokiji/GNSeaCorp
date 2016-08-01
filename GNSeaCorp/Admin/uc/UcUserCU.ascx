<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UcUserCU.ascx.cs" Inherits="GNSeaCorp.Admin.uc.UcUserCU" %>
<div class="graphs">
    <h3 class="blank1">Basic Forms</h3>
    <div class="tab-content">
        <div class="tab-pane active" id="horizontal-form">
            <div class="form-horizontal">
                <div class="form-group">
                    <label for="focusedinput" class="col-sm-2 control-label">First Name:</label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="txtFirstName" class="form-control1" runat="server" required></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <label for="focusedinput" class="col-sm-2 control-label">Last Name:</label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="txtLastName" class="form-control1" runat="server" required></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <label for="focusedinput" class="col-sm-2 control-label">User ID:</label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="txtUserId" class="form-control1" runat="server" required></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <label for="focusedinput" class="col-sm-2 control-label">Role:</label>
                    <div class="col-sm-8">
                        <asp:DropDownList ID="ddlRole" runat="server"></asp:DropDownList>
                    </div>
                </div>
                <div class="form-group">
                    <label for="focusedinput" class="col-sm-2 control-label">Password:</label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="txtPassword" class="form-control1" runat="server" TextMode="Password"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <label for="focusedinput" class="col-sm-2 control-label">re-Password:</label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="txtRePassword" class="form-control1" runat="server" TextMode="Password"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <label for="focusedinput" class="col-sm-2 control-label">Address:</label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="txtAddress" class="form-control1" runat="server" required></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <label for="focusedinput" class="col-sm-2 control-label">Gender:</label>
                    <div class="col-sm-8">
                        <asp:RadioButtonList ID="rblGender" runat="server">
                            <asp:ListItem Value="True">Male</asp:ListItem>
                            <asp:ListItem Value="False">Female</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="form-group">
                    <label for="focusedinput" class="col-sm-2 control-label">Phone Number:</label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="txtPhoneNumber" class="form-control1" TextMode="Phone" runat="server" required></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <label for="focusedinput" class="col-sm-2 control-label">ID:</label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="txtID" class="form-control1" runat="server" required></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div class="media-left">
                    <asp:Label ID="lblImageUrlTemp" runat="server" Text="" Visible="True"></asp:Label>
                    <asp:DataList ID="dlImage" runat="server">
                        <ItemTemplate>
                            <asp:Image ID="imgSlide" Height="64px" Width="64px" runat="server" ImageUrl='<%# Eval("imageUrl", "~/~/Admin/images/{0}") %>' />
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
                        <asp:Button ID="btnCancel" CssClass="btn-success btn" runat="server" Text="Cancel" OnClick="btnCancel_Click" />
                        <asp:Button ID="btnReset" CssClass="btn-success btn" runat="server" Text="Reset" OnClick="btnReset_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
