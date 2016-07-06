<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LichKhaiGiang.aspx.cs" Inherits="LichKhaiGiang" %>

<%@ Register Src="~/user_control/SidebarPostBig.ascx" TagPrefix="uc1" TagName="SidebarPostBig" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="LichKhaiGiang">
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
                        <div class="post-detail">
                            <h1 class="text-info post-title">Lịch Khai Giảng Lớp Học ASEC</h1>
                            <span class="pull-left"><i class="fa fa-calendar-check-o"></i>&nbsp; 25-06-2016</span>
                            <span class="pull-right"><i class="fa fa-eye"></i>&nbsp;6</span>
                            <div class="clearfix"></div>
                            <!-- Go to www.addthis.com/dashboard to customize your tools -->
                            <div class="share-buttons">
                                <strong>Share bài viết </strong>
                                <div class="addthis_sharing_toolbox"></div>
                            </div>

                            <div class="post-content">
                                <img src="images/portfolio/portfolio-img1.jpg" />
                                <p>Trình độ: Sơ Cấp & Trung Cấp.</p>
                                <p>Thời gian: 25/7 – 19/8/2016 (các buổi sáng 9:00 – 11:00 từ thứ 2 đến thứ 6 hàng tuần, riêng ngày khai giảng 25/7 học từ 10:00 – 12:00 sáng)</p>
                                <p>Số lượng: tối đa 14 học viên/ trình độ/ lớp.</p>
                                <p>Đối tượng: từ 16 tuổi trở lên.</p>
                                <p>Kiểm tra xếp lớp (Vui lòng gọi 08.3840 7799 hoặc email để đăng ký trước ngày kiểm tra)</p>
                                <p>Khoản lệ phí đặt cọc để đảm bảo tham dự khoá học là 1,5 triệu đồng và sẽ được hoàn lại toàn bộ cho những học viên tham dự từ 80-100% thời gian khóa học (không được nghỉ hơn 4 buổi học).</p>
                                <p>Thời hạn đăng ký: ưu tiên cho những học viên có trình độ phù hợp và đặt cọc sớm để giữ chỗ trước 25/7/2016.</p>
                                <p>Để biết thêm thông tin chi tiết, vui lòng liên hệ anh Minh tại:</p>
                                <p>CN Tổ chức Giáo dục và Đào tạo Apollo tại TP.HCM</p>
                                <p>Địa chỉ: 129 Điện Biên Phủ, P.15, Q.Bình Thạnh, TP.HCM</p>
                                <p>Điện thoại: 08.3840 7799</p>
                                <p>Email: minh.le@apollo.edu.vn</p>
                                <p>Tôi mong sớm được làm việc với các bạn!</p>
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
                        <br />
                        <br />
                        <%-- Bài viết liên quan --%>
                        <div class="post-related">
                            <h2 class="bg-orange"><span class="title-part">BÀI VIẾT LIÊN QUAN</span></h2>
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
                            </div>
                        </div>
                        <%-- End Bài viết liên quan --%>
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
