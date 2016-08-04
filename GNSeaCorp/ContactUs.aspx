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
                            <li><i class="glyphicon glyphicon-print" aria-hidden="true"></i>Fax<span>+84 8 38447539</span></li>
							<li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i>Email<a href="mailto:info@gnseacorp.com.vn">info@GNSeaCorp.com.vn</a></li>
						</ul>
						<ul>
							<li><i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i>Address<span>28 Bui Van Them Street, Ward 9, Phu Nhuan District, Ho Chi Minh City, Vietnam.</span></li>
						</ul>
					</div>
					<div class="mail-grid1">
						<h3>Send a <span>Message</span></h3>
						<p>Send email to order</p>
                        <asp:TextBox ID="txtName" runat="server" placeholder="Name" Width="48.3%"></asp:TextBox>
                        <asp:TextBox ID="txtEmail" runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>
						<div class="clearfix"> </div>
                        <asp:TextBox ID="txtSubject" runat="server" placeholder="Subject" ></asp:TextBox>
                        <asp:TextBox ID="txtContent" runat="server" placeholder="Type Your Text Here...." TextMode="MultiLine"></asp:TextBox>
                        <asp:Button ID="btnSend" runat="server" Text="Submit" OnClick="btnSend_Click" />
					</div>
				</div>
				<div class="map">
					<h3>Location On <span>Map</span></h3>
					<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.0306895635745!2d106.67469911521654!3d10.808961361546976!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317528df7a5f5c3b%3A0xf4eb99fd3939bb05!2zQsO5aSBWxINuIFRow6ptLCBwaMaw4budbmcgOSwgUGjDuiBOaHXhuq1uLCBI4buTIENow60gTWluaCwgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1470284390869" frameborder="0" style="border:0" allowfullscreen></iframe>
				</div>
			<!-- //mail -->
			</div>
			<div class="clearfix"> </div>
</asp:Content>
