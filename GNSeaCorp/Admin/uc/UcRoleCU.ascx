<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UcRoleCU.ascx.cs" Inherits="GNSeaCorp.Admin.uc.UcRoleCU" %>
<div class="graphs">
    <h3 class="blank1">Role</h3>
        <div class="tab-content">
            <div class="tab-pane active" id="horizontal-form">
                <div class="form-horizontal">
                    <div class="form-group">
                        <label for="focusedinput" class="col-sm-2 control-label">Role Id:</label>
                        <div class="col-sm-8">
                            <asp:TextBox ID="txtRoleId" class="form-control1" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-sm-2 has-error"> 
				            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="help-block" runat="server" ControlToValidate="txtRoleId">Role Id can&#39;t be blank</asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator1" runat="server" CssClass="help-block" ControlToValidate="txtRoleId" MaximumValue="5" MinimumValue="1">Lenght of role Id between 1 and 5</asp:RangeValidator>
				        </div>
                    </div>
                    <div class="form-group">
                        <label for="focusedinput" class="col-sm-2 control-label">Role Name:</label>
                        <div class="col-sm-8">
                            <asp:TextBox ID="txtRoleName" class="form-control1" runat="server"  type="text"></asp:TextBox>
                        </div>
                        <div class="col-sm-2 has-error"> 
				            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="help-block" runat="server" ControlToValidate="txtRoleName">Role name can&#39;t be blank</asp:RequiredFieldValidator>
				        </div>
                    </div>
                    <div class="form-group">            
                        <label for="focusedinput" class="col-sm-2 control-label">Description:</label>            
                        <div class="col-sm-8">
                            <asp:TextBox ID="txtDescription" class="form-control1" runat="server" TextMode="MultiLine"></asp:TextBox>
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