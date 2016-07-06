<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TinTuc2.aspx.cs" Inherits="TinTuc2" %>

<%@ Register Src="~/user_control/SidebarPostBig.ascx" TagPrefix="uc1" TagName="SidebarPostBig" %>
<%@ Register Src="~/user_control/MainPostHorizontal.ascx" TagPrefix="uc1" TagName="MainPostHorizontal" %>


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
                            <li><a href="Default.aspx">Trang Chủ</a></li>
                            <li><a href="ChuyenMuc.aspx">Chuyên Mục</a></li>
                            <li class="active">Tin Tức 2</li>
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
                        <h2 class="bg-orange"><span class="title-part">TIN TỨC 2</span></h2>
                        <uc1:MainPostHorizontal runat="server" ID="MainPostHorizontal" />


                        <nav>
                            <ul class="pagination">
                                <li><a href="#" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
                                <li class="active"><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                                <li><a href="#" aria-label="Next"><span aria-hidden="true">&raquo;</span></a></li>
                            </ul>
                        </nav>
                    </div>
                    <%-- End Main --%>

                    <%-- Sidebar --%>
                    <div class="hidden-xs col-sm-6 col-md-4 col-lg-4 sidebar">
                        <uc1:SidebarPostBig runat="server" id="SidebarPostBig" />
                    </div>
                    <%-- End Sidebar --%>
                </div>
            </div>
        </section>
        <%-- End Content --%>
    </div>
</asp:Content>
