<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/UserMasterPage.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="GNSeaCorp.Product" %>
<%@ Import Namespace="GN.Common.Schema" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <% 
        if (productList != null)
        {
            if (productList.Rows.Count > 0)
            {

    %>
    <div class="col-xs-9 banner-body-right">
        <div class="gallery-head">
            <h5 style="margin-bottom: 20px;"><%=productList.Rows[0][DbSchema.Menu.MENU_NAME].ToString() %></h5>
        </div>
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
                <p><%=productList.Rows[i]["DESCRIPTION"].ToString()%></p>
            </div>
            <% } %>
            <div class="clearfix"></div>
        </div>
    </div>
    <% }
    } %>
</asp:Content>
