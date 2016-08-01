﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucNewsLeft.ascx.cs" Inherits="GNSeaCorp.uc.ucNewsLeft" %>
<div class="clearfix"></div>
<div class="col-xs-3 banner-body-left">
    <div class="latest-news">
        <h2>Latest News</h2>
        <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
            <div class="panel panel-default">
                <div class="panel-heading" role="tab" id="headingOne">
                    <h4 class="panel-title">
                        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">Michael Vol
                        </a>
                    </h4>
                </div>
                <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                    <div class="panel-body">
                        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry.
                    </div>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading" role="tab" id="headingTwo">
                    <h4 class="panel-title">
                        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">Andrew Rich
                        </a>
                    </h4>
                </div>
                <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                    <div class="panel-body">
                        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry.
                    </div>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading" role="tab" id="headingThree">
                    <h4 class="panel-title">
                        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">Rita Rock
                        </a>
                    </h4>
                </div>
                <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                    <div class="panel-body">
                        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry.
                    </div>
                </div>
            </div>
        </div>
        <div class="join">
            <a href="single.html">See More</a>
        </div>
        <h3>Skype</h3>
        <%--	<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium.</p> --%>
        <script type="text/javascript" src="https://secure.skypeassets.com/i/scom/js/skype-uri.js"></script>
        <div id="SkypeButton_Call_khoa.huynh02_1" style="margin-top: -30px;">
            <script type="text/javascript">
                Skype.ui({
                    "name": "dropdown",
                    "element": "SkypeButton_Call_khoa.huynh02_1",
                    "participants": ["khoa.huynh02"],
                    "imageSize": 24
                });
            </script>
        </div>
    </div>
</div>
