<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="TrangChu">
        <%-- Slider --%>
        <section class="Slider">
            <!-- Carousel -->
            <div id="main-slide" class="carousel slide" data-ride="carousel">

                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#main-slide" data-slide-to="0" class="active"></li>
                    <li data-target="#main-slide" data-slide-to="1"></li>
                    <li data-target="#main-slide" data-slide-to="2"></li>
                    <li data-target="#main-slide" data-slide-to="3"></li>
                </ol>
                <!--/ Indicators end -->

                <!-- Carousel inner -->
                <div class="carousel-inner">
                    <div class="item active">
                        <img class="img-responsive" src="images/banner/1-min.jpg" alt="slider" />
                    </div>
                    <!--/ Carousel item end -->
                    <div class="item">
                        <img class="img-responsive" src="images/banner/2-min.jpg" alt="slider" />
                    </div>
                    <!--/ Carousel item end -->
                    <div class="item">
                        <img class="img-responsive" src="images/banner/3-min.jpg" alt="slider" />
                    </div>
                    <!--/ Carousel item end -->
                    <div class="item">
                        <img class="img-responsive" src="images/banner/4-min.jpg" alt="slider" />
                    </div>
                </div>
                <!-- Carousel inner end-->

                <!-- Controls -->
                <a class="left carousel-control" href="#main-slide" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#main-slide" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
            <!-- /carousel -->
        </section>
        <%-- End Slider --%>

        <%-- Chương Trình Học --%>
        <section class="HocTiengAnh">
            <div class="container">
                <a href="hoc-tieng-anh">
                    <h2 class="title text-center" style="color:black">Chương Trình Học Tại Anh Ngữ <span class="notes">ASEC</span></h2>
                </a>
                <div id="owl-hoctienganh">
                    <asp:Repeater ID="rpChuongTrinhHoc" runat="server">
                        <ItemTemplate>
                            <div class="item">
                                <div class="thumbnail">
                                    <asp:LinkButton ID="linkbtn" runat="server" CommandArgument='<%# Eval("cateid") %>' OnClick="linkbtn_Click">
                                        <div class="preview">
                                            <img src="<%# HomeUrl + Eval("ImagesUrl") %>" alt="<%# Eval("CategoryName") %>" class="img-circle img-responsive" />
                                        </div>

                                        <div class="caption">
                                            <h3 class="tieude"><%# Eval("CategoryName").ToString().ToUpper() %></h3>
                                            <p class="meta"><%# Eval("Descriptions") %></p>
                                        </div>
                                    </asp:LinkButton>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </section>
        <%-- End Chương Trình Học --%>

        <%-- Image Background --%>
        <section class="Bg_pallarax">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <img src="images/index_bg-min.jpg" class="img-responsive" />
                    </div>
                </div>
            </div>
        </section>
        <%-- End Image Background --%>

        <%-- Chuyên Mục --%>
        <section class="ChuyenMuc">
            <div class="container">
                <a href="chuyen-muc">
                    <h1 class="title text-center">Chuyên Mục</h1>
                </a>
                <div class="row">
                    <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
                        <p class="text-muted">
                            Tìm hiểu những thông tin khác của ASEC, biết đâu bạn sẽ tìm được thông tin mình cần. Cùng xem nhé !
                        </p>
                    </div>
                    <asp:Repeater ID="rpChuyenMuc" runat="server">
                        <ItemTemplate>
                            <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
                                <div class="thumbnail">
                                    <a href="<%# Eval("Permalink") %>">
                                        <div class="overlay"><i class="fa fa-2x fa-arrows"></i></div>
                                        <div class="preview">
                                            <img src="<%# HomeUrl + Eval("ImagesUrl") %>" class="img-responsive" />
                                        </div>
                                        <div class="caption text-center">
                                            <h2 class="post-title"><%# Eval("CategoryName") %></h2>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </section>
        <%-- End Chuyên Mục --%>

        <%-- Sự Kiện & Tin Tức --%>
        <section class="SuKienTinTuc">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                        <a href="tin-tuc">
                            <h1 class="title text-left">Tin Tức<span class="head-line"></span></h1>
                        </a>
                        <%-- Tin tức --%>
                        <div id="owl-TinTuc">
                            <asp:Repeater ID="rpTinTuc" runat="server">
                                <ItemTemplate>
                                    <div class="item">
                                        <div class="thumbnail post">
                                            <a href="<%# ConvertToUnsign(Eval("PostTitle").ToString().ToLower()) + "-" + Eval("PostID") %>">
                                                <div class="preview">
                                                    <img class="img-responsive" src="<%# HomeUrl + Eval("ImagesUrl") %>" alt="Thumb11" />
                                                </div>

                                                <div class="caption">
                                                    <h3 class="post-title"><%# Eval("PostTitle") %></h3>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>

                        </div>
                        <%-- End Tin tức --%>
                    </div>

                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                        <a href="su-kien">
                            <h1 class="title text-left">Sự Kiện <span class="head-line"></span></h1>
                        </a>
                        <%-- Sự Kiện --%>
                        <div id="Sukien">
                            <asp:Repeater ID="rpSuKien" runat="server">
                                <ItemTemplate>
                                    <div class="post-horizontal">
                                        <div class="post-thumbnail">
                                            <p class="month"><%# Eval("DateOfCreate","{0: MM}") %></p>
                                            <p class="day"><%# Eval("DateOfCreate","{0: dd}") %></p>
                                        </div>
                                        <div class="post-content">
                                            <a href="<%# ConvertToUnsign(Eval("PostTitle").ToString().ToLower()) + "-" + Eval("PostID") %>">
                                                <h3 class="post-title"><%# Eval("PostTitle") %></h3>
                                            </a>
                                            <p class="post-meta"><%# Eval("MetaDescription") %></p>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                            <%--<div class="post-horizontal">
                                <div class="post-thumbnail">
                                    <p class="month">07</p>
                                    <p class="day">08</p>
                                </div>
                                <div class="post-content">
                                    <a href="#">
                                        <h3 class="post-title">Movie</h3>
                                    </a>
                                    <p class="post-meta">Tuần vừa qua là một tuần đang nhớ với các “Hoạt náo viên Nhí” với chương trình Movie day- Học tiếng anh qua phim ảnh do Anh ngữ ASEC tổ chức. Đến với sự kiện hàng tuần là sự tham gia của các bạn kids với nhiều lứa tuổi, </p>
                                </div>
                                <div class="clearfix"></div>
                            </div>--%>
                        </div>
                        <%-- End Sự Kiện --%>
                        <p class="text-right"><a href="su-kien" class="btn btn-link">Xem thêm</a></p>
                    </div>
                </div>
            </div>
        </section>
        <br />
        <br />
        <%-- End Tin Tức --%>

        <%-- Lấy Thông Tin & Nhận Quà --%>
        <section class="LayThongTin">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                        <div id="Thongtin">
                            <h2 class="title">Thông Tin<span class="head-line"></span></h2>
                            <div class="form-group-lg has-error">
                                <h3 class="control-label">Họ Tên * 
                                   
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Bạn vui lòng nhập họ tên"
                                        ControlToValidate="txtHoten" Display="Static" ValidationGroup="Error"></asp:RequiredFieldValidator>
                                </h3>
                                <asp:TextBox ID="txtHoten" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <br />
                            <div class="form-group-lg has-error">
                                <h3 class="control-label">Email * 
                                   
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Bạn vui lòng nhập email"
                                        ControlToValidate="txtEmail" Display="Static" ValidationGroup="Error"></asp:RequiredFieldValidator>
                                </h3>
                                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <br />
                            <div class="form-group-lg has-error">
                                <h3 class="control-label">Điện thoại * 
                                   
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Bạn vui lòng nhập số điện thoại"
                                        ControlToValidate="txtDienthoai" Display="Static" ValidationGroup="Error"></asp:RequiredFieldValidator>
                                </h3>
                                <asp:TextBox ID="txtDienthoai" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <br />
                            <div class="form-group-lg has-error">
                                <h3 class="control-label">Ghi Chú</h3>
                                <asp:TextBox ID="txtNoidung" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="5"></asp:TextBox>
                            </div>
                            <br />
                            <asp:Button ID="btnGui" runat="server" Text="GỬI THÔNG TIN" CssClass="btn btn-lg btn-danger" OnClick="btnGui_Click" ValidationGroup="Error" />
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-8 col-lg-8">
                        <div id="Nhanqua" class="margin-left-10">
                            <h2 class="title">Nhanh Tay Nhận Quà <span class="head-line"></span></h2>
                            <h2 class="khauhieu">Hãy gọi cho chúng tôi <strong class="text-danger">086 267 6949</strong><br />
                                hoặc để chúng tôi <strong class="text-info">gọi lại bạn</strong>
                            </h2>
                            <img src="images/banner/hoc-thu-min.jpg" alt="banner" class="img-responsive" />
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <%-- End Lấy Thông Tin & Nhận Quà --%>
    </div>
    <br />
    <br />
</asp:Content>
