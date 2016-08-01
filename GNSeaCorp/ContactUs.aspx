<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/UserMasterPage.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="GNSeaCorp.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-xs-9 banner-body-right">
				<div class="gallery-head">
					<h5>Contact Us</h5>
				</div>
				<!-- mail -->
				<div class="mail">
					<div class="mail-grid1">
						<h3>Contact <span>Info</span></h3>
<%--						<p></p>--%>
						<ul>
							<li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i>Phone<span>+84 8 38447173</span></li>
							<li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i>Email<a href="mailto:gianguyen-imexco@vnn.vn">gianguyen-imexco@vnn.vn</a></li>
						</ul>
						<ul>
							<li><i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i>Address<span>553/24B Nguyen Kiem Street, Phu Nhuan District, Ho Chi Minh City, Vietnam.</span></li>
						</ul>
					</div>
					<div class="mail-grid1">
						<h3>Send a <span>Message</span></h3>
						<p>Send email to order</p>
						<form>
							<input type="text" placeholder="Name" required=" ">
							<input type="email" placeholder="Email" required=" ">
							<div class="clearfix"> </div>
							<input type="text" placeholder="Subject" required=" ">
							<textarea placeholder="Type Your Text Here...." required=" "></textarea>
							<input type="submit" value="Submit">
						</form>
					</div>
				</div>
				<div class="map">
					<h3>Location On <span>Map</span></h3>
					<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d979.7596977376837!2d106.67824647718886!3d10.808340979810266!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317528df6aad5f77%3A0xa4bfb23abe32ab4d!2zNTUzLzI0IE5ndXnhu4VuIEtp4buHbSwgcGjGsOG7nW5nIDksIFBow7ogTmh14bqtbiwgSOG7kyBDaMOtIE1pbmgsIFZp4buHdCBOYW0!5e0!3m2!1svi!2s!4v1470033556001" frameborder="0" style="border:0" allowfullscreen></iframe>
				</div>
			<!-- //mail -->
			</div>
			<div class="clearfix"> </div>
</asp:Content>
