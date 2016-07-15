<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="OnePost.aspx.cs" Inherits="OnePost" %>

<%@ Register Src="~/user_control/SidebarPostBig.ascx" TagPrefix="uc1" TagName="SidebarPostBig" %>
<%@ Register Src="~/user_control/HeaderBg.ascx" TagPrefix="uc1" TagName="HeaderBg" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="OnePost">
        <uc1:HeaderBg runat="server" ID="HeaderBg" />

        <%-- Breadcrumb --%>
        <section class="path">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <ol class="breadcrumb">
                            <li><a href="trang-chu">Trang Chủ</a></li>
                            <li><a href="chuyen-muc">Chuyên Mục</a></li>
                            <li class="active">Bài Viết</li>
                        </ol>
                    </div>
                </div>
            </div>
        </section>
        <%-- End Breadcrumb --%>

        <%-- Content --%>
        <section class="content">
            <div class="container">
                <div class="row">
                    <%-- Main --%>
                    <div class="col-xs-12 col-sm-8 col-md-8 col-lg-8 main">
                        <asp:Repeater ID="rpPostDetail" runat="server">
                            <ItemTemplate>
                                <div class="post-detail">
                                    <h1 class="text-danger post-title"><%# Eval("PostTitle").ToString().ToUpper() %></h1>
                                    <span class="pull-left"><i class="fa fa-calendar-check-o"></i>&nbsp; <%# Eval("DateOfCreate","{0: dd-MM-yyyy}") %></span>
                                    <span class="pull-right"><i class="fa fa-eye"></i>&nbsp;<%# string.IsNullOrEmpty(Eval("ViewCount").ToString()) ? 0 : Eval("ViewCount") %></span>
                                    <div class="clearfix"></div>
                                    <!-- Go to www.addthis.com/dashboard to customize your tools -->
                                    <div class="share-buttons">
                                        <strong>Share bài viết </strong>
                                        <div class="addthis_sharing_toolbox"></div>
                                    </div>

                                    <div class="post-content">
                                        <%# Eval("PostContentVN") %>
                                    </div>
                                    <!-- Go to www.addthis.com/dashboard to customize your tools -->
                                    <div class="share-buttons">
                                        <strong>Share bài viết </strong>
                                        <div class="addthis_sharing_toolbox"></div>
                                    </div>
                                    <br />
                                    <!-- FB Comment -->
                                    <div class="fb-comments" data-href="<%=CurrentUrl %>" data-numposts="5" data-width="100%"></div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                        <br />

                        <%-- Previous & Next Post --%>
                        <nav>
                            <ul class="pager">
                                <asp:Repeater ID="rpPrevious" runat="server">
                                    <ItemTemplate>
                                        <li class="previous"><a href="<%# ConvertToUnsign(Eval("PostTitle").ToString()) + "-" + Eval("PostID") %>"><span aria-hidden="true">&larr;</span> Bài viết trước đó</a></li>
                                    </ItemTemplate>
                                </asp:Repeater>
                                <asp:Repeater ID="rpNext" runat="server">
                                    <ItemTemplate>
                                        <li class="next"><a href="<%# ConvertToUnsign(Eval("PostTitle").ToString()) + "-" + Eval("PostID") %>">Bài viết kế tiếp <span aria-hidden="true">&rarr;</span></a></li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </nav>
                        <%-- End Previous & Next Post --%>
                        <br />

                        <%-- Bài viết liên quan --%>
                        <div class="post-related">
                            <span id="TieuDe" runat="server"></span>

                            <div class="row">
                                <asp:Repeater ID="rpPostRelated" runat="server">
                                    <ItemTemplate>
                                        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                                            <div class="post-vertical">
                                                <a href="<%# ConvertToUnsign(Eval("PostTitle").ToString()) + "-" + Eval("PostID") %>" title="<%# Eval("PostTitle") %>">
                                                    <div class="preview">
                                                        <img src="<%# HomeUrl + Eval("ImagesUrl") %>" class="img-responsive" />
                                                    </div>
                                                    <h3 class="post-title"><%# Eval("PostTitle") %></h3>
                                                </a>
                                                <p class="post-date"><%# Eval("DateOfCreate","{0: dd-MM-yyyy}") %></p>
                                                <p class="post-meta"><%# Eval("MetaDescription") %></p>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>
                        </div>
                        <br />
                        <br />
                        <%-- End Bài viết liên quan --%>
                    </div>
                    <%-- End Main --%>

                    <%-- Sidebar --%>
                    <div class="hidden-xs col-sm-4 col-md-4 col-lg-4 sidebar">
                        <uc1:SidebarPostBig runat="server" ID="SidebarPostBig" />
                    </div>
                    <%-- End Sidebar --%>
                </div>
            </div>
        </section>
        <%-- End Content --%>
    </div>
</asp:Content>
