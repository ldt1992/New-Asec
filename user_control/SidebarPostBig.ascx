<%@ Control Language="C#" AutoEventWireup="true" CodeFile="SidebarPostBig.ascx.cs" Inherits="user_control_SidebarType2" %>

<%-- Sidebar Category --%>
<div class="sidebar-widgets widget-category">
    <a href="ChuyenMuc.aspx">
        <h2 class="bg-black"><span class="title-part">CHUYÊN MỤC</span></h2>
    </a>
    <asp:Repeater ID="rpChuyenMuc" runat="server">
        <ItemTemplate>
            <div class="post-big">
                <a href="<%# Eval("Permalink") %>">
                    <img src="<%# HomeUrl + Eval("ImagesUrl") %>" class="img-responsive" />

                    <div class="caption">
                        <h3 class="post-title"><%# Eval("CategoryName") %></h3>
                        <p class="post-date"><%# Eval("DateOfStart","{0: dd-MM-yyyy}") %></p>
                    </div>
                </a>
            </div>
        </ItemTemplate>
    </asp:Repeater>

</div>
<%-- End Sidebar Category --%>

<%-- Sidebar Được Quan Tâm --%>
<div class="sidebar-widgets widget-viewest">
    <a href="XemNhieu.aspx">
        <h2 class="bg-green"><span class="title-part">ĐƯỢC QUAN TÂM</span></h2>
    </a>
    <asp:Repeater ID="rpXemNhieu" runat="server">
        <ItemTemplate>
            <div class="post-horizontal">
                <div class="post-thumbnail">
                    <a href="ChiTiet.aspx?post=<%# Eval("PostID") %>">
                        <img src="<%# HomeUrl + Eval("ImagesUrl") %>" class="img-responsive media-object" />
                    </a>
                </div>
                <div class="post-content">
                    <h3 class="post-title"><a href="ChiTiet.aspx?post=<%# Eval("PostID") %>"><%# Eval("PostTitle") %></a></h3>
                    <p class="post-date"><%# Eval("DateOfCreate","{0: dd-MM-yyyy}") %></p>
                </div>
                <div class="clearfix"></div>
            </div>
        </ItemTemplate>
    </asp:Repeater>
</div>
<%-- End Sidebar Được Quan Tâm --%>
