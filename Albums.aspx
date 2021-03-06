﻿<%@ Page Title="Albums" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Albums.aspx.cs" Inherits="Albums" %>

<%@ Register Src="~/user_control/SidebarPostBig.ascx" TagPrefix="uc1" TagName="SidebarPostBig" %>
<%@ Register Src="~/user_control/HeaderBg.ascx" TagPrefix="uc1" TagName="HeaderBg" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="Albums">
        <uc1:HeaderBg runat="server" ID="HeaderBg" />

        <%-- Breadcrumb --%>
        <section class="path">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <ol class="breadcrumb">
                            <li><a href="trang-chu">Trang Chủ</a></li>
                            <li><a href="chuyen-muc">Chuyên Mục</a></li>
                            <li class="active">Albums</li>
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
                        <h2 class="bg-red"><span class="title-part">ALBUMS</span></h2>
                        <h1 class="title text-left"><%=AlbumName %><span class="head-line"></span></h1>
                        <div id="owl-album-1">
                            <asp:Repeater ID="rpAlbum1" runat="server">
                                <ItemTemplate>
                                    <div class="item">
                                        <a href="<%# HomeUrl + Eval("ImagesUrl") %>" rel="prettyPhoto[album1]">
                                            <div class="preview">
                                                <img src="<%# HomeUrl + Eval("ImagesUrl") %>" alt="<%=AlbumName %>" />
                                                <i class="fa fa-2x fa-arrows"></i>
                                            </div>
                                        </a>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                    </div>
                    <%-- End Main --%>

                    <%-- Sidebar --%>
                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 sidebar">
                        <uc1:SidebarPostBig runat="server" ID="SidebarPostBig" />
                    </div>
                    <%-- End Sidebar --%>
                </div>
            </div>
        </section>
        <%-- Content --%>
    </div>
</asp:Content>

