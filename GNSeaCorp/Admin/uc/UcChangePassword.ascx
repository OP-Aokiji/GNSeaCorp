<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UcChangePassword.ascx.cs" Inherits="GNSeaCorp.Admin.uc.UcChangePassword" %>

<div class="graphs">
    <h3 class="blank1">Change Password</h3>
        <div class="tab-content">
            <div class="tab-pane active" id="horizontal-form">
                <div class="form-horizontal">
                    <div class="form-group">
                        <label for="focusedinput" class="col-sm-2 control-label">Old Password:</label>
                        <div class="col-sm-8">
                            <asp:TextBox ID="txtOldPassword" class="form-control1" runat="server" TextMode="Password" ></asp:TextBox>
                        </div>
                        <div class="col-sm-2 has-error">
                            <asp:RequiredFieldValidator CssClass="help-block" ID="vldOldPassWord" runat="server" ControlToValidate="txtOldPassword">Old Password can&#39;t be blank</asp:RequiredFieldValidator>
				        </div>
                    </div>
                    <div class="form-group">
                        <label for="focusedinput" class="col-sm-2 control-label">New Password</label>
                        <div class="col-sm-8">
                            <asp:TextBox ID="txtNewPassword" class="form-control1" runat="server" TextMode="Password" ></asp:TextBox>
                        </div>
                        <div class="col-sm-2  has-error">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="help-block" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtNewPassword">New Password can&#39;t be blank</asp:RequiredFieldValidator>
				        </div>
                    </div>
                    <div class="form-group">            
                        <label for="focusedinput" class="col-sm-2 control-label">Confirm Password:</label>            
                        <div class="col-sm-8">
                            <asp:TextBox ID="txtConfirmpassword" class="form-control1" runat="server" TextMode="Password"></asp:TextBox>
                        </div>
                        <div class="col-sm-2  has-error">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="help-block" runat="server" ControlToValidate="txtConfirmpassword">Confirm password can&#39;t be blank</asp:RequiredFieldValidator>
				            <asp:CompareValidator ID="CompareValidator1" CssClass="help-block" runat="server" ControlToCompare="txtNewPassword" ControlToValidate="txtConfirmpassword">Confirm password doe not match</asp:CompareValidator>
				        </div>
                    </div>
                    <div class="panel-footer">
                        <div class="row">
                            <div class="col-sm-8 col-sm-offset-2">
                                <asp:Button ID="btnSubmit" CssClass="btn-success btn" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                                <asp:Button ID="btnCancel" CssClass="btn-success btn" runat="server" Text="Cancel" OnClick="btnCancel_Click" CausesValidation="False" UseSubmitBehavior="False" ValidateRequestMode="Disabled" Width="75px" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</div>
