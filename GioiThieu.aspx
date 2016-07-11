<%@ Page Title="Giới Thiệu" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="GioiThieu.aspx.cs" Inherits="GioiThieu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="GioiThieu">
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
                            <li><a href="trang-chu">Trang Chủ</a></li>
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
                    <div class="col-xs-12 col-sm-12 col-md-7 col-lg-7">
                        <h1 class="title text-left">Vài nét về Anh Ngữ ASEC<span class="head-line"></span></h1>
                        <p>Sau hơn 10 năm kinh doanh trong lĩnh vực tư vấn du học, Công ty Đỉnh Cao Châu Mỹ nhận ra được việc học tiếng Anh đã trở thành một nhu cầu thiết yếu của người dân Việt Nam, đặc biệt là đối với thế hệ trẻ và thiếu nhi. Sau một thời gian tìm hiểu thị trường và tìm ra một hướng đi khác biệt so với rất nhiều các trung tâm Anh ngữ hiện nay, chúng tôi đã quyết định thành lập Trung tâm Anh ngữ ASEC.</p>
                        <p>Đến nay, Trung tâm Anh ngữ Chân Trời Mới - ASEC là một địa chỉ đào tạo ngoại ngữ uy tín, đáp ứng tối đa nhu cầu học tiếng Anh của học viên bằng cách không ngừng nâng cao chất lượng giảng dạy và dịch vụ.</p>
                        <p>Với mục tiêu đạo tạo thế hệ học viên Việt Nam phát triển toàn diện không chỉ về ngôn ngữ mà còn các kĩ năng khác như giao tiếp, thuyết trình, làm việc nhóm… ASEC trang bị cho mình những giáo trình hiện đại theo tiêu chuẩn quốc tế, đội ngũ giáo viên giỏi chuyên môn và cơ sở vật chất hiện đại.</p>
                        <p>Đến với ASEC là các bạn đã đến với một môi trường học tập thoải mái, gần gũi nhưng cũng không kém phần chuyên nghiệp. Chúng tôi luôn mong muốn không chỉ đem lại sự tự tin cho học viên trên con đường chinh phục ngôn ngữ mà còn tạo những nền tảng vững chắc cho những thành công của các bạn trong cuộc sống.</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-5 col-lg-5">
                        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                            <!-- Indicators -->
                            <ol class="carousel-indicators">
                                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                            </ol>

                            <!-- Wrapper for slides -->
                            <div class="carousel-inner" role="listbox">
                                <div class="item active">
                                    <a rel="prettyPhoto[intro]" href="images/hoatdong/hinh-cong-ty-1.jpg">
                                        <img src="images/hoatdong/hinh-cong-ty-1.jpg" />
                                    </a>
                                </div>
                                <div class="item">
                                    <a rel="prettyPhoto[intro]" href="images/hoatdong/hinh-cong-ty-2.jpg">
                                        <img src="images/hoatdong/hinh-cong-ty-2.jpg" />
                                    </a>
                                </div>
                                <div class="item">
                                    <a rel="prettyPhoto[intro]" href="images/hoatdong/hinh-cong-ty-4.jpg">
                                        <img src="images/hoatdong/hinh-cong-ty-4.jpg" />
                                    </a>
                                </div>
                            </div>

                            <!-- Controls -->
                            <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>
                    </div>
                </div>

                <%-- Chương Trình Học --%>
                <section class="HocTiengAnh">
                    <h2 class="title text-center">Chương Trình Học Tại Anh Ngữ <span class="notes">ASEC</span></h2>
                    <div id="owl-hoctienganh">
                        <asp:Repeater ID="rpChuongTrinhHoc" runat="server">
                            <ItemTemplate>
                                <div class="item">
                                    <div class="thumbnail">
                                        <a href="OnePost.aspx?cateid=<%# Eval("cateid") %>">
                                            <div class="preview">
                                                <img src="<%# HomeUrl + Eval("ImagesUrl") %>" alt="Owl Image" class="img-circle img-responsive" />
                                            </div>
                                            <div class="caption">
                                                <h3 class="tieude"><%# Eval("CategoryName") %></h3>
                                                <p class="meta"><%# Eval("Descriptions") %></p>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </section>
                <%-- End Chương Trình Học --%>
            </div>
        </section>
        <%-- End Content --%>
    </div>
</asp:Content>
