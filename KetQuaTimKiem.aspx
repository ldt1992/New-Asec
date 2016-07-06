<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="KetQuaTimKiem.aspx.cs" Inherits="KetQuaTimKiem" %>

<%@ Register Src="~/user_control/SidebarPostHorizontal.ascx" TagPrefix="uc1" TagName="SidebarPostHorizontal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="KetQuaTimKiem">
        <%-- Bg Img --%>
        <section class="bgImg">
            <img src="images/banner/header_bg.jpg" />
        </section>
        <%-- End Bg Img --%>

        <%-- Breadcrumb --%>
        <section class="path">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-8 col-md-8 col-lg-8">
                        <ol class="breadcrumb">
                            <li><a href="Default.aspx">Trang Chủ</a></li>
                            <li class="active">Giới Thiệu</li>
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
                    <div class="col-xs-12 col-sm-6 col-sm-8 col-lg-8 main">
                        <h2 class="bg-sky"><span class="title-part">KẾT QUẢ TÌM KIẾM</span></h2>
                        <h3 class="alert alert-info">Từ khóa: What is this ?</h3>
                        <%--<h3 class="alert alert-danger" id="NoResult" runat="server"></h3>--%>

                        <div class="row">
                            <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                                <div class="post-vertical">
                                    <a href="#" title="What is Lorem Ipsum?">
                                        <img src="images/portfolio/port-1.jpg" class="img-responsive" />
                                        <h3 class="post-title">What is Lorem Ipsum?</h3>
                                    </a>
                                    <p class="post-date">25-06-2016</p>
                                    <p class="post-meta">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy</p>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                                <div class="post-vertical">
                                    <a href="#" title="What is Lorem Ipsum?">
                                        <img src="images/portfolio/port-1.jpg" class="img-responsive" />
                                        <h3 class="post-title">What is Lorem Ipsum?</h3>
                                    </a>
                                    <p class="post-date">25-06-2016</p>
                                    <p class="post-meta">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy</p>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                                <div class="post-vertical">
                                    <a href="#" title="What is Lorem Ipsum?">
                                        <img src="images/portfolio/port-1.jpg" class="img-responsive" />
                                        <h3 class="post-title">What is Lorem Ipsum?</h3>
                                    </a>
                                    <p class="post-date">25-06-2016</p>
                                    <p class="post-meta">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy</p>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                                <div class="post-vertical">
                                    <a href="#" title="What is Lorem Ipsum?">
                                        <img src="images/portfolio/port-1.jpg" class="img-responsive" />
                                        <h3 class="post-title">What is Lorem Ipsum?</h3>
                                    </a>
                                    <p class="post-date">25-06-2016</p>
                                    <p class="post-meta">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy</p>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                                <div class="post-vertical">
                                    <a href="#" title="What is Lorem Ipsum?">
                                        <img src="images/portfolio/port-1.jpg" class="img-responsive" />
                                        <h3 class="post-title">What is Lorem Ipsum?</h3>
                                    </a>
                                    <p class="post-date">25-06-2016</p>
                                    <p class="post-meta">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy</p>
                                </div>
                            </div>
                        </div>



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
                    <div class="hidden-xs col-sm-6 col-sm-4 col-lg-4 sidebar">
                        <uc1:SidebarPostHorizontal runat="server" id="SidebarPostHorizontal" />
                    </div>
                </div>
            </div>
        </section>
        <%-- End Content --%>
    </div>
</asp:Content>
