﻿<%@ Page Title="Lịch Khai Giảng" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LichKhaiGiang.aspx.cs" Inherits="LichKhaiGiang" %>

<%@ Register Src="~/user_control/SidebarPostBig.ascx" TagPrefix="uc1" TagName="SidebarPostBig" %>
<%@ Register Src="~/user_control/HeaderBg.ascx" TagPrefix="uc1" TagName="HeaderBg" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="LichKhaiGiang">
        <uc1:HeaderBg runat="server" ID="HeaderBg" />

        <%-- Breadcrumb --%>
        <section class="path">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <ol class="breadcrumb">
                            <li><a href="trang-chu">Trang Chủ</a></li>
                            <li class="active">Lịch Khai Giảng</li>
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
                    <div class="col-xs-12 col-sm-6 col-md-8 col-lg-8 main">
                        <h2 class="bg-red"><span class="title-part">LỊCH KHAI GIẢNG</span></h2>
                        <div class="row">
                            <asp:Repeater ID="rpLichKhaiGiang" runat="server">
                                <ItemTemplate>
                                    <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                                        <div class="post-vertical">
                                            <asp:LinkButton ID="linkbtn" runat="server" CommandArgument='<%# Eval("cateid") %>' OnClick="linkbtn_Click">
                                                <div class="preview">
                                                    <img src="<%# HomeUrl + Eval("ImagesUrl") %>" class="img-responsive" />
                                                </div>
                                                <h3 class="post-title"><%# Eval("CategoryName") %></h3>
                                            </asp:LinkButton>
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
                    <div class="hidden-xs col-sm-6 col-md-4 col-lg-4 sidebar">
                        <uc1:SidebarPostBig runat="server" ID="SidebarPostBig" />
                    </div>
                    <%-- End Sidebar --%>
                </div>
            </div>
        </section>
        <%-- End Content --%>
    </div>
</asp:Content>
