<%@ Page Title="Tuyển Dụng" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TuyenDung.aspx.cs" Inherits="TuyenDung" %>

<%@ Register Src="~/user_control/PostBig2Col.ascx" TagPrefix="uc1" TagName="PostBig2Col" %>
<%@ Register Src="~/user_control/SidebarPostHorizontal.ascx" TagPrefix="uc1" TagName="SidebarPostHorizontal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="TuyenDung">
        <%-- Bg Img --%>
        <section class="bgImg">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <img src="images/banner/header_bg.jpg" class="img-responsive" />
                    </div>
                </div>
            </div>
        </section>
        <%-- End Bg Img --%>

        <%-- Breadcrumb --%>
        <section class="path">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <ol class="breadcrumb">
                            <li><a href="trang-chu">Trang Chủ</a></li>
                            <li><a href="chuyen-muc">Chuyên Mục</a></li>
                            <li class="active">Tuyển Dụng</li>
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
                    <div class="col-xs-12 col-sm-7 col-md-8 col-lg-8 main">
                        <h2 class="bg-sky"><span class="title-part">TUYỂN DỤNG</span></h2>

                        <div class="row">
                            <asp:Repeater ID="rpTuyenDung" runat="server">
                                <ItemTemplate>
                                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                        <div class="post-vertical">
                                            <a href="<%# ConvertToUnsign(Eval("PostTitle").ToString().ToLower()) + "-" + Eval("PostID") %>" title="<%# Eval("PostTitle") %>">
                                                <img src="<%# HomeUrl + Eval("ImagesUrl") %>" class="img-responsive" />
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
                    <div class="col-xs-12 col-sm-5 col-md-4 col-lg-4 sidebar">
                        <uc1:SidebarPostHorizontal runat="server" ID="SidebarPostHorizontal" />
                    </div>
                </div>
            </div>
        </section>
        <%-- End Content --%>
    </div>
</asp:Content>