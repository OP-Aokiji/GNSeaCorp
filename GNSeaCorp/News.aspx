<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/UserMasterPage.Master" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="GNSeaCorp.News" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <% if (newList != null && newList.Rows.Count > 0)
       { %>
    <div class="col-xs-9 banner-body-right">
        <div class="gallery-head">
            <h5>News</h5>
            <%--<p>But I must explain to you how all this mistaken idea of denouncing  pleasure and praising pain was born.</p>--%>
        </div>
        <div class="blog">
            <% for(int i = 0; i < newList.Rows.Count; i++)
                { %>
            <div class="blog-grid">
                <div class="col-xs-4 blog-grid-left">
                    <a href="single.html">
                        <img src="images/1.jpg" alt=" " class="img-responsive" /></a>
                </div>
                <div class="col-xs-8 blog-grid-right">
                    <h4><a href="single.html"><%=newList.Rows[i]["Title"].ToString() %></a></h4>
                    <p>
                        <%=newList.Rows[i]["SUMMARY"].ToString() %>
                    </p>
                    <a href="single.html"><span class="glyphicon glyphicon-play-circle" aria-hidden="true"></span></a>
                </div>
                <div class="clearfix"></div>
            </div>
            <%} %>
        </div>
    </div>
    <% } %>

</asp:Content>
