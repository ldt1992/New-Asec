﻿<%@ Page Title="Học Tiếng Anh" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ChuongTrinhHoc.aspx.cs" Inherits="ChuongTrinhHoc" %>

<%@ Register Src="~/user_control/SidebarPostHorizontal.ascx" TagPrefix="uc1" TagName="SidebarPostHorizontal" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="ChuongTrinhHoc">
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
                            <li class="active">Chương Trình Học</li>
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
                        <h2 class="bg-orange"><span class="title-part">HỌC TIẾNG ANH</span></h2>

                        <div class="row">
                            <asp:Repeater ID="rpChuongTrinhHoc" runat="server">
                                <ItemTemplate>
                                    <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                                        <div class="post-vertical">
                                            <a href="ChiTiet.aspx" title="<%# Eval("CategoryName") %>">
                                                <div class="preview">
                                                    <img src="<%# HomeUrl + Eval("ImagesUrl") %>" class="img-responsive" />
                                                </div>
                                                <h3 class="post-title"><%# Eval("CategoryName") %></h3>
                                            </a>
                                            <p class="post-date"><%# Eval("DateOfStart","{0: dd-MM-yyyy}") %></p>
                                            <p class="post-meta"><%# Eval("Descriptions") %></p>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                    </div>
                    <%-- End Main --%>

                    <%-- Sidebar --%>
                    <div class="hidden-xs col-sm-4 col-md-4 col-lg-4 sidebar">
                        <uc1:SidebarPostHorizontal runat="server" ID="SidebarPostHorizontal" />
                    </div>
                    <%-- End Sidebar --%>
                </div>
            </div>
        </section>
        <%-- End Content --%>
    </div>
</asp:Content>
