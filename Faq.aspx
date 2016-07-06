<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Faq.aspx.cs" Inherits="Faq" %>

<%@ Register Src="~/user_control/SidebarPostHorizontal.ascx" TagPrefix="uc1" TagName="SidebarPostHorizontal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="Faq">
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
                            <li><a href="#">Trang Chủ</a></li>
                            <li><a href="#">Chuyên Mục</a></li>
                            <li class="active">Hỏi Đáp</li>
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
                        <h2 class="bg-orange"><span class="title-part">Hỏi Đáp</span></h2>
                        <div class="panel-group" id="accordion">
                            <div class="panel panel-info">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">Phương pháp học ở ASEC là phương pháp gì ?</a>
                                    </h4>
                                </div>
                                <div id="collapse1" class="panel-collapse collapse in">
                                    <div class="panel-body">
                                        Có rất nhiều phương pháp khác nhau được ASEC kết hợp. Tất cả các phương pháp đều hiện đại và hướng tới sự phát triển toàn diện của học viên. Tuy nhiên, tiêu biểu nhất là phương pháp SƠ ĐỒ TƯ DUY, giúp học viên có thể phát triển hết khả năng tư duy, sự năng động, sáng tạo của mình.
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-info">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">Có bao nhiêu học viên trong 1 lớp học ?</a>
                                    </h4>
                                </div>
                                <div id="collapse2" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        Nhằm đạt được chất lượng học tập tốt nhất, số lượng học viên tối đa ở ASEC là 10 bạn/lớp.
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-info">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">Giáo viên là người Việt hay người nước ngoài ?</a>
                                    </h4>
                                </div>
                                <div id="collapse3" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        Đội ngũ giáo viên người Việt của ASEC là những thầy cô có trình độ chuyên môn cao, được tuyển chọn kĩ càng và đặc biệt họ đều nhiệt huyết, vui tính và gần gũi với học viên. Ngoài ra, các bạn cũng được các giáo viên người bản xứ hướng dẫn tận tình cách phát âm, dùng tự vựng, ngữ pháp sao cho chuẩn xác nhất.
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-info">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse4">Chính sách bảo đảm chất lượng khóa học thế nào ?</a>
                                    </h4>
                                </div>
                                <div id="collapse4" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        ASEC đảm bảo học viên sẽ đạt được 100% kết quả mà mình mong muốn khi tham gia vào các lớp học tại đây.
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-info">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse5">ASEC thường có những hoạt động ngoại khóa gì không ?</a>
                                    </h4>
                                </div>
                                <div id="collapse5" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        ASEC liên tục tổ chức những buổi ngoại khóa hấp dẫn như đóng kịch, ca hát, trò chuyện với người bản xứ, chương trình khen thưởng, phát quà tặng cho học viên,…
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-info">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse6">Trung tâm dạy giáo trình gì ?</a>
                                    </h4>
                                </div>
                                <div id="collapse6" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        ASEC đã cập nhật những giáo trình tiên tiến và phù hợp nhất cho mỗi lớp học.
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-info">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse7">Cơ sở vật chất ra sao ?</a>
                                    </h4>
                                </div>
                                <div id="collapse7" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        Cơ sở vật chất của ASEC đầy đủ và không thua kém bất kì trung tâm ngoại ngữ lớn nào: SmartBoard, máy tính, hệ thống loa, màn hình, máy chiếu, … Ngoài ra, đến với ASEC, bạn sẽ thấy rất nhiều các phương tiện giải trí như đồ tablet, chơi trẻ em,… Trang thiết bị hiện đại chính là nền tảng để ASEC thực hiện những giáo án học mà chơi – chơi mà học đầy thú vị.
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-info">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse8">Thời gian học một khóa như thế nào ?</a>
                                    </h4>
                                </div>
                                <div id="collapse8" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        Thông thường, thời gian học của 1 lớp sẽ từ 2-3 buổi/tuần, 2 tiếng/buổi. Tùy vào độ tuổi, trình độ mà số buổi có thể là 12 buổi/khóa, 24 buổi/khóa hay 30 buổi/khóa.
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-info">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse9">Tôi muốn học thử có được không ?</a>
                                    </h4>
                                </div>
                                <div id="collapse9" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        ASEC luôn hoan nghênh các bạn đến và trải nghiệm các khóa học của chúng tôi. Chúng tôi thường xuyên mở những lớp học định hướng (3 -8 buổi tùy vào mỗi trình độ) để giúp các bạn tìm ra những chương trình học phù hợp nhằm phát huy hết khả năng ngoại ngữ của mình. Những lớp học này hoàn toàn miễn phí, đến khi học viên, phụ huynh hài lòng với chương trình và cách giảng dạy thì mới tiếp tục đóng tiền để tham gia toàn bộ khóa học.
                                    </div>
                                </div>
                            </div>
                        </div>
                        <br />

                        <div class="row">
                            <div class="col-xs-12 col-sm-8 col-md-8 col-lg-8">
                                <h2 class="title">Đặt Câu Hỏi<span class="head-line"></span></h2>

                                <div class="form-group-lg has-error">
                                    <h3 class="control-label">Họ Tên *
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Bạn vui lòng nhập họ tên"
                                            ControlToValidate="TextBox1" Display="Static" ValidationGroup="Error"></asp:RequiredFieldValidator>
                                    </h3>
                                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                                <br />
                                <div class="form-group-lg has-error">
                                    <h3 class="control-label">Email *
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Bạn vui lòng nhập Email"
                                            ControlToValidate="TextBox2" Display="Static" ValidationGroup="Error"></asp:RequiredFieldValidator>
                                    </h3>
                                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                                <br />
                                <div class="form-group-lg has-error">
                                    <h3 class="control-label">Điện thoại *
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Bạn vui lòng nhập số điện thoại"
                                            ControlToValidate="TextBox3" Display="Static" ValidationGroup="Error"></asp:RequiredFieldValidator>
                                    </h3>
                                    <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                                <br />
                                <div class="form-group-lg has-error">
                                    <h3 class="control-label">Câu hỏi</h3>
                                    <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="5"></asp:TextBox>
                                </div>
                                <br />
                                <asp:Button ID="Button1" runat="server" Text="GỬI CÂU HỎI" CssClass="btn btn-lg btn-danger" ValidationGroup="Error" />
                            </div>
                        </div>

                    </div>
                    <%-- End Main --%>

                    <%-- Sidebar --%>
                    <div class="hidden-xs col-sm-6 col-md-4 col-lg-4 sidebar">
                        <uc1:SidebarPostHorizontal runat="server" ID="SidebarPostHorizontal" />
                    </div>
                    <%-- Sidebar --%>
                </div>
            </div>
        </section>
        <br /><br />
        <%-- End Content --%>
    </div>
</asp:Content>