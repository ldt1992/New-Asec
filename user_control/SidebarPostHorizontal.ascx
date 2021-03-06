﻿<%@ Control Language="C#" AutoEventWireup="true" CodeFile="SidebarPostHorizontal.ascx.cs" Inherits="user_control_SidebarType1" %>

<%-- ĐƯỢC QUAN TÂM --%>
<div class="sidebar-widgets widget-viewest">
    <a href="xem-nhieu">
        <h2 class="bg-red"><span class="title-part">ĐƯỢC QUAN TÂM</span></h2>
    </a>
    <asp:Repeater ID="rpPostViewest" runat="server">
        <ItemTemplate>
            <div class="post-big">
                <a href="<%# ConvertToUnsign(Eval("PostTitle").ToString().ToLower()) + "-" + Eval("PostID") %>">
                    <div class="preview">
                        <img src="<%# HomeUrl + Eval("ImagesUrl") %>" class="img-responsive" />
                    </div>
                    <div class="caption">
                        <h3 class="post-title"><%# Eval("PostTitle") %></h3>
                        <p class="post-date"><%# Eval("DateOfCreate","{0: dd-MM-yyyy}") %></p>
                    </div>
                </a>
            </div>
        </ItemTemplate>
    </asp:Repeater>

    <asp:Repeater ID="rpTopViewest" runat="server">
        <ItemTemplate>
            <div class="post-horizontal">
                <div class="post-thumbnail">
                    <a href="<%# ConvertToUnsign(Eval("PostTitle").ToString().ToLower()) + "-" + Eval("PostID") %>">
                        <img src="<%# HomeUrl + Eval("ImagesUrl") %>" class="img-responsive" />
                    </a>
                </div>
                <div class="post-content">
                    <h3 class="post-title"><a href="<%# ConvertToUnsign(Eval("PostTitle").ToString()) + "-" + Eval("PostID") %>"><%# Eval("PostTitle") %></a></h3>
                    <p class="post-date"><%# Eval("DateOfCreate","{0: dd-MM-yyyy}") %></p>
                </div>
                <div class="clearfix"></div>
            </div>
        </ItemTemplate>
    </asp:Repeater>

</div>
<%-- END ĐƯỢC QUAN TÂM --%>

<%-- CHUYÊN MỤC --%>
<div class="sidebar-widgets widget-category">
    <a href="chuyen-muc">
        <h2 class="bg-red"><span class="title-part">CHUYÊN MỤC</span></h2>
    </a>
    <div class="list-group">
        <asp:Repeater ID="rpChuyenMuc" runat="server">
            <ItemTemplate>
                <a href="<%# Eval("Permalink") %>" class="list-group-item"><%# Eval("CategoryName") %></a>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</div>
<%-- END CHUYÊN MỤC --%>