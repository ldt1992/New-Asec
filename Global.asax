﻿<%@ Application Language="C#" %>
<%@ Import Namespace="System.Web.Routing" %>

<script runat="server">

    void RegisterRoutes(RouteCollection routes)
    {
        routes.MapPageRoute("TrangChu", "trang-chu", "~/Default.aspx");
        routes.MapPageRoute("GioiThieu", "gioi-thieu", "~/GioiThieu.aspx");
        routes.MapPageRoute("LienHe", "lien-he", "~/LienHe.aspx");
        routes.MapPageRoute("LichKhaiGiang", "lich-khai-giang", "~/LichKhaiGiang.aspx");
        routes.MapPageRoute("ChuyenMuc", "chuyen-muc", "~/ChuyenMuc.aspx");
        routes.MapPageRoute("HocTiengAnh", "hoc-tieng-anh", "~/ChuongTrinhHoc.aspx");
        routes.MapPageRoute("TuyenDung", "tuyen-dung", "~/TuyenDung.aspx");
        routes.MapPageRoute("TinTuc", "tin-tuc", "~/TinTuc.aspx");
        routes.MapPageRoute("Detail Post", "{title}-{id}", "~/ChiTiet.aspx");
    }

    void Application_Start(object sender, EventArgs e)
    {
        // Code that runs on application startup
        RegisterRoutes(RouteTable.Routes);
    }

    void Application_End(object sender, EventArgs e)
    {
        //  Code that runs on application shutdown

    }

    void Application_Error(object sender, EventArgs e)
    {
        // Code that runs when an unhandled error occurs
        //Exception ex = HttpContext.Current.Server.GetLastError();
        //if (ex.InnerException != null)
        //{
        //    ex = ex.InnerException;
        //}
        //if (ex is HttpException)
        //{
        //    if (((HttpException)ex).GetHttpCode() == 404)
        //    {
        //        Response.Redirect("~/FileNotFound.aspx");
        //    }
        //    else
        //    {
        //        Response.Redirect("~/FileNotFound.aspx");
        //    }
        //}

        //HttpContext.Current.Server.ClearError();
    }

    void Session_Start(object sender, EventArgs e)
    {
        // Code that runs when a new session is started

    }

    void Session_End(object sender, EventArgs e)
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }

</script>
