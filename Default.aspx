<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- Popup modal-->
    <div class="modal fade" id="myModal" tabindex="-1" data-replace="true" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-body">
                    <a class="close" data-dismiss="modal">
                        <img src="images/icon/close-button.png" /></a>
                    <a href="#">
                        <img src="images/banner/TUAN-LE-VANG.png" class="img-responsive" /></a>
                </div>
            </div>
        </div>
    </div>
    <!-- End Popup Modal-->

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
                        <img class="img-responsive" src="images/banner/bg1-min.jpg" alt="slider" />
                    </div>
                    <!--/ Carousel item end -->
                    <div class="item">
                        <img class="img-responsive" src="images/banner/bg2-min.jpg" alt="slider" />
                    </div>
                    <!--/ Carousel item end -->
                    <div class="item">
                        <img class="img-responsive" src="images/banner/bg3-min.jpg" alt="slider" />
                    </div>
                    <!--/ Carousel item end -->
                    <div class="item">
                        <img class="img-responsive" src="images/banner/bg4-min.jpg" alt="slider" />
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
                <a href="ChuongTrinhHoc.aspx">
                    <h2 class="title text-center">Chương Trình Học Tại Anh Ngữ <span class="notes">ASEC</span></h2>
                </a>
                <div id="owl-hoctienganh">
                    <asp:Repeater ID="rpChuongTrinhHoc" runat="server">
                        <ItemTemplate>
                            <div class="item">
                                <div class="thumbnail">
                                    <a href="#">
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
            </div>
        </section>
        <%-- End Chương Trình Học --%>

        <%-- Image Background --%>
        <section class="Bg_pallarax">
            <div class="container">
                <img src="images/default_bg.png" class="img-responsive" />
            </div>
        </section>
        <%-- End Image Background --%>

        <%-- Chuyên Mục --%>
        <section class="ChuyenMuc">
            <div class="container">
                <a href="ChuyenMuc.aspx">
                    <h1 class="title text-center">Chuyên Mục</h1>
                </a>
                <div class="row">
                    <asp:Repeater ID="rpChuyenMuc" runat="server">
                        <ItemTemplate>
                            <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
                                <div class="thumbnail">
                                    <a href="#">
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
                    <div class="col-xs-12 col-sm-8 col-md-8 col-lg-8">
                        <a href="Events.aspx">
                            <h1 class="title text-left">Sự Kiện<span class="head-line"></span></h1>
                        </a>
                        <div id="Sukien">
                            <div class="item">
                                <div class="thumbnail post">
                                    <a href="#">
                                        <img class="img-responsive" src="http://placehold.it/250x160" alt="Thumb11" /></a>
                                    <div class="caption">
                                        <h3 class="post-title"><a href="#">Lorem ipsum dolor sit amet, consetetur sadipscing elitr</a></h3>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="thumbnail post">
                                    <a href="#">
                                        <img class="img-responsive" src="http://placehold.it/250x160" alt="Thumb11" /></a>
                                    <div class="caption">
                                        <h3 class="post-title"><a href="#">Lorem ipsum dolor sit amet, consetetur sadipscing elitr</a></h3>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="thumbnail post">
                                    <a href="#">
                                        <img class="img-responsive" src="http://placehold.it/250x160" alt="Thumb11" /></a>
                                    <div class="caption">
                                        <h3 class="post-title"><a href="#">Lorem ipsum dolor sit amet, consetetur sadipscing elitr</a></h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
                        <a href="TinTuc.aspx">
                            <h1 class="title text-left">Tin Tức <span class="head-line"></span></h1>
                        </a>
                        <div id="Tintuc" class="carousel slide" data-ride="carousel">
                            <div class="carousel-inner">
                                <asp:Repeater ID="rpTinTuc" runat="server">
                                    <ItemTemplate>
                                        <div class="item">
                                            <a href="ChiTiet.aspx?post=<%# Eval("PostID") %>">
                                                <img class="thumbnail" src="<%# HomeUrl + Eval("ImagesUrl") %>" alt="Slide1" />
                                                <div class="caption">
                                                    <h4><%# Eval("PostTitle") %></h4>
                                                </div>
                                            </a>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>
                            <!-- Indicators -->
                            <ol class="carousel-indicators">
                                <li data-target="#Tintuc" data-slide-to="0" class="active"></li>
                                <li data-target="#Tintuc" data-slide-to="1"></li>
                                <li data-target="#Tintuc" data-slide-to="2"></li>
                            </ol>
                        </div>
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
