<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/UserMasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GNSeaCorp.index" %>

<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="GN.Common" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--<div class="col-xs-9 banner-body-right">
        <div class="wmuSlider example1">
            <div class="box-slogan"></div>
            <div class="wmuSliderWrapper">
                <article style="position: absolute; width: 100%; opacity: 0;">
                    <div class="banner-wrap">
                        <div class="banner">
                        </div>
                    </div>
                </article>
                <article style="position: absolute; width: 100%; opacity: 0;">
                    <div class="banner-wrap">
                        <div class="banner1">
                        </div>
                    </div>
                </article>
                <article style="position: absolute; width: 100%; opacity: 0;">
                    <div class="banner-wrap">
                        <div class="banner2">
                        </div>
                    </div>
                </article>
            </div>
        </div>
        <script src="js/jquery.wmuSlider.js"></script>
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
            <!-- <div class="col-md-4 banner-left">
						<div class="col-xs-3 banner-left1">
							<div class="banner-left22">
								<span> </span>
							</div>
						</div>
						<div class="col-xs-9 banner-right1">
							<h3>sint occaecat</h3>
						</div>
						<div class="clearfix"> </div>
						<p>Excepteur sint occaecat cupidatat non proident, 
							sunt in culpa qui.</p>
					</div>
					<div class="col-md-4 banner-left">
						<div class="col-xs-3 banner-left1">
							<div class="banner-left33">
								<span> </span>
							</div>
						</div>
						<div class="col-xs-9 banner-right1">
							<h3>cupida quisu</h3>
						</div>
						<div class="clearfix"> </div>
						<p>Excepteur sint occaecat cupidatat non proident, 
							sunt in culpa qui.</p>
					</div> -->
            <div class="clearfix"></div>
        </div>
    </div>--%>
    <% 
        if (productList != null)
        {
            if (productList.Rows.Count > 0)
            {

    %>
    <div class="col-xs-9 banner-body-right">
        <!-- <div class="msg-text">
					<div class="col-xs-2 msg-text-left">
						<span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
					</div>
					<div class="col-xs-10 msg-text-right">
						<p>But I must explain to you how all this mistaken idea of 
							denouncing pleasure and praising pain was born and I will give 
							you a complete account of the system.</p>
					</div>
					<div class="clearfix"> </div>
				</div> -->
        <div class="msg-text-bottom">
            <% for (int i = 0; i < productList.Rows.Count; i++)
                { %>
            <div class="col-md-4 msg-text-bottom-left">
                <figure class="effect-winston">
                    <a href="/ProductDetail.aspx?productId=<%=productList.Rows[i]["Product_ID"].ToString() %>">
                        <img src="/Admin/images/<%=productList.Rows[i]["image_Url"].ToString() %>" alt="<%=productList.Rows[i]["image_Url"].ToString() %>" class="img-responsive" />
                        <figcaption></figcaption>
                    </a>
                </figure>

                <h3><a href="ProductDetail.aspx?id=<%=productList.Rows[i]["Product_ID"].ToString() %>"><%=productList.Rows[i]["PRODUCT_NAME"].ToString() %></a></h3>
                <h4 style="text-align: center"><%=Convert.ToDouble(productList.Rows[i]["Price1"].ToString())%> VNĐ</h4>
            </div>
            <% } %>
            <div class="clearfix"></div>
        </div>
    </div>
    <% }
    } %>
</asp:Content>
