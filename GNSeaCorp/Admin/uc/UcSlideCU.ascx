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
                        <textarea name="txtarea1" id="txtarea1" cols="50" rows="4" class="form-control1"></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label for="exampleInputFile">Image Url</label>
                    <input type="file" id="exampleInputFile">

                    <p class="help-block">Example block-level help text here.</p>
                </div>
                <div class="panel-footer">
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2">
                            <asp:Button ID="btnSubmit" CssClass="btn-success btn" runat="server" Text="Submit" />
                            <asp:Button ID="btnCancel" CssClass="btn-success btn" runat="server" Text="Cancel" />
                            <asp:Button ID="btnReset" CssClass="btn-success btn" runat="server" Text="Reset" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

