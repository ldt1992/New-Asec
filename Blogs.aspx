<%@ Page Title="Blogs" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Blogs.aspx.cs" Inherits="TinTuc2" %>

<%@ Register Src="~/user_control/SidebarPostBig.ascx" TagPrefix="uc1" TagName="SidebarPostBig" %>

<%@ Register TagPrefix="phantrang" Namespace="SiteUtils" Assembly="CollectionPager" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="TinTuc2">
        <%-- Bg Img --%>
        <section class="bgImg">
            <img src="images/banner/header_bg.jpg" />
        </section>

        <%-- Breadcrumb --%>
        <section class="path">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <ol class="breadcrumb">
                            <li><a href="trang-chu">Trang Chủ</a></li>
                            <li><a href="chuyen-muc">Chuyên Mục</a></li>
                            <li class="active"><%=CateName %></li>
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
                    <div class="col-xs-12 col-sm-7 col-md-8 col-lg-8 main">
                        <h2 class="bg-orange"><span class="title-part"><%=CateName.ToString().ToUpper() %></span></h2>
                        <div class="row">
                            <asp:Repeater ID="rpBlogs" runat="server">
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

                        <!-- Start Pagination -->
                        <div class="pager">
                            <phantrang:CollectionPager ID="pager1"
                                FirstText="First"
                                BackText="«"
                                LabelText=""
                                LastText="Last"
                                NextText="»"
                                ShowFirstLast="True"
                                SliderSize="5" PagingMode="QueryString"
                                runat="server" BackNextLinkSeparator="" BackNextLocation="Split"
                                PageNumbersDisplay="Numbers" ResultsLocation="None"
                                BackNextDisplay="Buttons" QueryStringKey="page">
                            </phantrang:CollectionPager>
                        </div>
                        <!-- End Pagination -->
                    </div>
                    <%-- End Main --%>

                    <%-- Sidebar --%>
                    <div class="hidden-xs col-sm-5 col-md-4 col-lg-4 sidebar">
                        <uc1:SidebarPostBig runat="server" ID="SidebarPostBig" />
                    </div>
                    <%-- End Sidebar --%>
                </div>
            </div>
        </section>
        <%-- End Content --%>
    </div>
</asp:Content>
