<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/UserMasterPage.Master" AutoEventWireup="true" CodeBehind="ViewNews.aspx.cs" Inherits="GNSeaCorp.ViewNews" %>
<%@ Import Namespace="GN.Common.Schema" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <% if (viewContent != null && viewContent.Rows.Count > 0)
       { %>
    <div class="col-xs-9 banner-body-right">
				<!-- single -->
					<div class="single">
						<h3>GIA NGUYEN CORP</h3>
							<p style="margin-bottom: 5px;">Published on <span><%=viewContent.Rows[0][DbSchema.UPDATE_DATE]%></span></p>
                        <div class="clearfix"></div>
                    <asp:Label ID="Label1" runat="server" Text=""><%=viewContent.Rows[0][DbSchema.News.CONTENT]%></asp:Label>
			</div>
        </div>
    <% } %>
</asp:Content>
