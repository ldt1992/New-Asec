<%@ Page Title="Kết Quả Tìm Kiếm" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="KetQuaTimKiem.aspx.cs" Inherits="KetQuaTimKiem" %>

<%@ Register Src="~/user_control/SidebarPostHorizontal.ascx" TagPrefix="uc1" TagName="SidebarPostHorizontal" %>

<%@ Register TagPrefix="phantrang" Namespace="SiteUtils" Assembly="CollectionPager" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="KetQuaTimKiem">
        <%-- Bg Img --%>
        <section class="bgImg">
            <div class="container-fluid">
                <div class="row">
                    <div class="hidden-xs col-sm-12 col-md-12 col-lg-12">
                        <img src="images/banner/header_bg.jpg" class="img-responsive" />
                    </div>
                </div>
            </div>
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
                    <div class="col-xs-12 col-sm-8 col-sm-8 col-lg-8 main">
                        <h2 class="bg-sky"><span class="title-part">KẾT QUẢ TÌM KIẾM</span></h2>
                        <h3 class="alert alert-info">Từ khóa: <%=kw %></h3>
                        <span id="NoResult" runat="server"></span>

                        <div class="row">
                            <asp:Repeater ID="rpKetQuaTimKiem" runat="server">
                                <ItemTemplate>
                                    <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                                        <div class="post-vertical">
                                            <a href="<%# ConvertToUnsign(Eval("PostTitle").ToString().ToLower()) + "-" +Eval("PostID") %>" title="<%# Eval("PostTitle") %>">
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
                    <div class="hidden-xs col-sm-4 col-md-4 col-lg-4 sidebar">
                        <uc1:SidebarPostHorizontal runat="server" ID="SidebarPostHorizontal" />
                    </div>
                </div>
            </div>
        </section>
        <%-- End Content --%>
    </div>
</asp:Content>
