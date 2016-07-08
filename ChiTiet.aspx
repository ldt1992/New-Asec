<%@ Page Title="Bài Viết" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ChiTiet.aspx.cs" Inherits="ChiTiet" %>

<%@ Register Src="~/user_control/SidebarPostBig.ascx" TagPrefix="uc1" TagName="SidebarPostBig" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="Detail">
        <%-- Bg Img --%>
        <section class="bgImg">
            <img src="images/banner/header_bg.jpg" />
        </section>
        <%-- End Bg Img --%>

        <%-- Breadcrumb --%>
        <section class="path">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <ol class="breadcrumb">
                            <li><a href="Default.aspx">Trang Chủ</a></li>
                            <li><a href="ChuyenMuc.aspx">Chuyên Mục</a></li>
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
                                    <h1 class="text-info post-title"><%# Eval("PostTitle") %></h1>
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
                        <br />
                        <%-- Bài viết liên quan --%>
                        <div class="post-related">
                            <h2 class="bg-orange"><span class="title-part">BÀI VIẾT LIÊN QUAN</span></h2>
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
                        <br /><br />
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
