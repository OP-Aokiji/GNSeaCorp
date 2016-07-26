<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UcSlideCU.ascx.cs" Inherits="GNSeaCorp.Admin.UcSlideCU" %>

<%@ Import Namespace="GN.Common" %>

<div class="graphs">
    <h3 class="blank1">Basic Forms</h3>
    <div class="tab-content">
        <div class="tab-pane active" id="horizontal-form">
            <div class="form-horizontal">
                <div class="form-group">
                    <label for="focusedinput" class="col-sm-2 control-label">Focused Input</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control1" id="focusedinput" placeholder="Default Input">
                    </div>
                    <div class="col-sm-2 jlkdfj1">
                        <p class="help-block">Your help text!</p>
                    </div>
                </div>
                <div class="form-group">
                    <label for="disabledinput" class="col-sm-2 control-label">Disabled Input</label>
                    <div class="col-sm-8">
                        <input disabled="" type="text" class="form-control1" id="disabledinput" placeholder="Disabled Input">
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

