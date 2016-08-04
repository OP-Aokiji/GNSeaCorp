<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/UserMasterPage.Master" AutoEventWireup="true" CodeBehind="ProductDetail.aspx.cs" Inherits="GNSeaCorp.ProductDetail" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="GN.Common" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <% if (productDetail != null && productDetail.Rows.Count > 0)
       {
     %>
    <% for(int i = 0; i< productDetail.Rows.Count; i++)
        { %>
    <div class="col-xs-9 banner-body-right">
				<!-- single -->
					<div class="single">
						<h3>Product Detail</h3>
						<div class="single-left"  style="margin-top: 2%;">
							<img src="/Admin/images/<%=productDetail.Rows[i]["image_url"].ToString() %>" alt="<%=productDetail.Rows[i]["image_url"].ToString() %>" class="img-responsive" />
						</div>
						<div class="single-right">
							<h4>Name: <%=productDetail.Rows[i]["Product_Name"].ToString() %></h4>
							<p><span>Description: <%=productDetail.Rows[i]["description"].ToString() %></span></p>
						</div>
						<div class="clearfix"> </div>
					</div>
				<!-- //single -->
			</div>
    <% } %>
    <% } %>
</asp:Content>
