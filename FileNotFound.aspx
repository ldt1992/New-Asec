<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FileNotFound.aspx.cs" Inherits="FileNotFound" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="FileNotFound">
        <div class="container">
            <div class="error-page text-center">
                <h1 class="txt-number">404</h1>
                <h2 class="txt-notfound">Không Tìm Thấy Trang</h2>
                <h4 class="txt-sorry">Chúng tôi xin lỗi, nhưng trang bạn đang tìm không tồn tại.</h4>
                <a href="#" class="btn btn-lg btn-danger">Quay lại trang chủ</a>
            </div>
        </div>
    </div>
</asp:Content>
