<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LienHe.aspx.cs" Inherits="LienHe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="LienHe">
        <%-- Map --%>
        <div id="Map">
            <div class="embed-responsive embed-responsive-4by3">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.420816546496!2d106.62155911527931!3d10.779046462091657!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752c1c70833da3%3A0x2545f9230af3828d!2zMjUzQiBUaOG6oWNoIExhbSwgUGjDuiBUaOG6oW5oLCBUw6JuIFBow7osIEjhu5MgQ2jDrSBNaW5oLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1466039574251" frameborder="0" style="border: 0" allowfullscreen></iframe>
            </div>
        </div>
        <%-- End Map --%>

        <%-- Content --%>
        <div id="Content">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-6 col-md-8 col-lg-8">
                        <h2 class="title">Liên Lạc<span class="head-line"></span></h2>

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
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Bạn vui lòng nhập email"
                                    ControlToValidate="TextBox2" Display="Static" ValidationGroup="Error"></asp:RequiredFieldValidator>
                            </h3>
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <br />
                        <div class="form-group-lg has-error">
                            <h3 class="control-label">Điện thoại *
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Bạn vui lòng nhập điện thoại"
                                    ControlToValidate="TextBox3" Display="Static" ValidationGroup="Error"></asp:RequiredFieldValidator>
                            </h3>
                            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <br />
                        <div class="form-group-lg has-error">
                            <h3 class="control-label">Ghi Chú</h3>
                            <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="5"></asp:TextBox>
                        </div>
                        <br />
                        <asp:Button ID="Button1" runat="server" Text="GỬI THÔNG TIN" CssClass="btn btn-lg btn-danger" ValidationGroup="Error" />
                    </div>

                    <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                        <h2 class="title">Thông Tin<span class="head-line"></span></h2>

                        <h2 class="notes">Trung Tâm Ngoại Ngữ ASEC</h2>
                        <br />

                        <p><strong>Điện thoại:</strong> 086 267 6949</p>
                        <p><strong>Email:</strong> info@americantop.edu.vn</p>
                        <p><strong>Website:</strong><a href="http://www.asec.edu.vn" class="btn btn-lg btn-link">www.asec.edu.vn</a></p>
                        <p><strong>Giờ làm việc:</strong> Thứ 2 - Chủ nhật: Từ 7h30 đến 21h</p>
                    </div>
                </div>
            </div>
        </div>
        <%-- End Content --%>
    </div>
    <br />
    <br />
</asp:Content>
