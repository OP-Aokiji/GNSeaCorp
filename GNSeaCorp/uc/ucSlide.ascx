<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucSlide.ascx.cs" Inherits="GNSeaCorp.uc.ucSlide" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="GN.Common" %>
<% 
    if (dataSlide != null && dataSlide.Rows.Count > 0)
    { %>
<div class="col-xs-9 banner-body-right">
    <div class="wmuSlider example1">
        <div class="box-slogan"></div>
        <div class="wmuSliderWrapper">
            <% for (int i=0; i < dataSlide.Rows.Count; i++)
                { %>
                    <article style="position: absolute; width: 100%; opacity: 0;">
                        <div class="banner-wrap">
                             <div class="banner" style="background: url(../Admin/images/<%=dataSlide.Rows[i]["image_Url"].ToString() %>) no-repeat 0px 0px; 
                                                                background-size: cover; 
                                                                -webkit-background-size: cover; 
                                                                -moz-background-size: cover; 
                                                                -o-background-size: cover; 
                                                                -ms-background-size: cover;">
                            </div>
                        </div>
                    </article>
            <% } %>
        </div>
    </div>
    <script src="../js/jquery.wmuSlider.js"></script>
    <script>
        $('.example1').wmuSlider();
    </script>
    <div class="banner-bottom">
        <div class="col-md-12 banner-left">
            <div class="col-xs-3 banner-left1">
                <div class="banner-left11">
                    <span></span>
                </div>
            </div>
            <div class="col-xs-9 banner-right1">
                <h3>About Us</h3>
            </div>
            <div class="clearfix"></div>
            <p>
                Over 9 years-experience in processing, farming and exporting seafood makes us become a professional supplier of seafood in vietnam to worldwide market.
						With the best quality, our products hold a reputation of being consistent with the absolute reasonable pricing.
            </p>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
<% } %>
