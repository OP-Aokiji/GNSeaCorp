<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/UserMasterPage.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="GNSeaCorp.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-xs-9 banner-body-right">
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
								<span> </span>
							</div>
						</div>
						<div class="col-xs-9 banner-right1">
							<h3>About Us</h3>
						</div>
						<div class="clearfix"> </div>
						<p>Over 9 years-experience in processing, farming and exporting seafood makes us become a professional supplier of seafood in vietnam to worldwide market.
						With the best quality, our products hold a reputation of being consistent with the absolute reasonable pricing.</p>
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
			</div>
			<div class="clearfix"> </div>
			<div class="col-xs-3 banner-body-left">
				<div class="latest-news">
					<h2>Latest News</h2>
					<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
					  <div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingOne">
						  <h4 class="panel-title">
							<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
							  Michael Vol
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
							<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
							  Andrew Rich
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
							<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
							  Rita Rock
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
						<a href="single.html">Learn More</a>
					</div>
					<!-- <h3>Benefits</h3>
					<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium.</p> -->
				</div>
			</div>
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
					<div class="col-md-4 msg-text-bottom-left"> 
						<figure class="effect-winston">
							<a href="single.html"><img src="images/Fish/Beaded butterfly shrimp.jpg" alt=" " class="img-responsive" />
							<figcaption>
								
							</figcaption>		
							</a>
						</figure>

						<h3><a href="single.html">Shrimp Burger Details</a></h3>
						<p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, 
							consectetur, adipisci velit, sed quia.</p>
					</div>
					<div class="col-md-4 msg-text-bottom-left">
						<figure class="effect-winston">
							<a href="single.html"><img src="images/Fish/Breaded PTO shrimp.jpg" alt=" " class="img-responsive" />
							<figcaption>
								
							</figcaption>	
							</a>
						</figure>
						<h3><a href="single.html">Shrimp Burger Details</a></h3>
						<p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, 
							consectetur, adipisci velit, sed quia.</p>
					</div>
					<div class="col-md-4 msg-text-bottom-left">
						<figure class="effect-winston">
							<a href="single.html"><img src="images/Fish/Four color Breaded shrimp.jpg" alt=" " class="img-responsive" />
							<figcaption>
								
							</figcaption>	
							</a>
						</figure>
						<h3><a href="single.html">Shrimp Burger Details</a></h3>
						<p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, 
							consectetur, adipisci velit, sed quia.</p>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
</asp:Content>
