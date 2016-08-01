<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UcMenuCU.ascx.cs" Inherits="GNSeaCorp.Admin.uc.UcMenuCU" %>
<div class="graphs">
    <h3 class="blank1">Category Forms</h3>
    <div class="tab-content">
        <div class="tab-pane active" id="horizontal-form">
            <div class="form-horizontal">
                <div class="form-group">
                    <label for="txtMenu_Cd" class="col-sm-2 control-label">Category Code:</label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="txtMenu_Cd" class="form-control1" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-sm-2 jlkdfj1">
                        <p class="help-block">Input code!</p>
                    </div>
                </div>
                <div class="form-group">
                    <label for="txtMenu_Name" class="col-sm-2 control-label">Category Name:</label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="txtMenu_Name" class="form-control1" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-sm-2 jlkdfj1">
                        <p class="help-block">Input Name!</p>
                    </div>
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
</div>
