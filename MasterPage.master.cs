﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text.RegularExpressions;
using System.Text;

public partial class MasterPage : System.Web.UI.MasterPage
{
    private BLL_Menus _menu = new BLL_Menus();
    private BLL_ChuyenMuc _chuyenmuc = new BLL_ChuyenMuc();
    private BLL_ChuongTrinhHoc _chuongtrinhhoc = new BLL_ChuongTrinhHoc();
    private BLL_Post _post = new BLL_Post();
    private BLL_Popup _popup = new BLL_Popup();
    //For popup
    public string UrlCurrent = "";
    public string HomeUrl = "http://inside.kus.edu.vn/";
    public string PopupUrl = "";
    public string ViewOnPage = "";
    public string PostID = "";
    public string PostTitle = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            GetMainMenu();
            GetChuyenMuc();
            GetHocTiengAnh();
            UrlCurrent = Request.Url.AbsoluteUri;
            GetPopup(UrlCurrent);
            Alert(UrlCurrent);
        }
    }

    //Get Alert
    private void Alert(string str)
    {
        Response.Write("<script>alert('" + str + "')</script>");
    }

    //Get Main menu
    private void GetMainMenu()
    {
        rpMainMenus.DataSource = this._menu.Get_Main_Menu();
        rpMainMenus.DataBind();
    }

    //Get Sub Menu
    public DataTable GetSubMenu(string idMainMenu)
    {
        DataTable result = this._menu.Get_Sub_Menu(idMainMenu);
        return result;
    }

    //Get Chuyên Mục
    private void GetChuyenMuc()
    {
        rpChuyenMuc.DataSource = this._chuyenmuc.GetAllSubItemChuyenMuc();
        rpChuyenMuc.DataBind();
    }

    //Search
    protected void txtSearch_TextChanged(object sender, EventArgs e)
    {
        string kw = txtSearch.Text;
        if (kw == "")
            Response.Redirect("Default.aspx");
        else
            Response.Redirect("KetQuaTimKiem.aspx?keyword=" + kw);
    }

    //Get Học Tiếng Anh
    private void GetHocTiengAnh()
    {
        rpHocTiengAnh2.DataSource = this._chuongtrinhhoc.GetAll_ChuongTrinhHoc();
        rpHocTiengAnh2.DataBind();
    }

    //ConvertToUnsign
    public string ConvertToUnsign(string str)
    {
        string title_url = "";
        str = str.Replace(" ", "-");
        str = str.Replace(".", "-");
        str = str.Replace(",", "-");
        str = str.Replace(";", "-");
        str = str.Replace(":", "-");
        str = str.Replace("%", "");
        str = str.Replace("/", "-");
        str = str.Replace("(", "-");
        str = str.Replace(")", "-");
        Regex regex = new Regex("\\p{IsCombiningDiacriticalMarks}+");
        string temp = str.Normalize(NormalizationForm.FormD);
        title_url = regex.Replace(temp, String.Empty).Replace('\u0111', 'd').Replace('\u0110', 'D');
        return title_url;
    }

    protected void linkbtnMenuCon_Click(object sender, EventArgs e)
    {
        LinkButton lnl = (sender as LinkButton);
        string cateid = lnl.CommandArgument;

        DataTable result = this._post.GetPostbyCateID(cateid);
        DataTable category = this._post.GetCategorybyCateID(cateid);
        //single page
        if (result.Rows.Count < 1)
        {
            string Permalink = "";
            foreach (DataRow item in category.Rows)
            {
                Permalink = item[3].ToString();
            }

            Response.Redirect(Permalink);
        }
        //1 bài viết
        else if (result.Rows.Count == 1)
        {
            OnePost(result);
        }
        //danh sách
        else if (result.Rows.Count > 1)
        {
            ListBlog(cateid);
        }
    }

    //Get PostID & PostTitle
    private void OnePost(DataTable table)
    {
        string PostTitle = "";
        string PostID = "";
        foreach (DataRow item in table.Rows)
        {
            PostID = item[0].ToString();
            PostTitle = item[1].ToString();
        }

        string link = ConvertToUnsign(PostTitle).ToString().ToLower() + "-" + PostID;

        Response.Redirect(link);
    }

    //Get List Blog
    private void ListBlog(string cateid)
    {
        DataTable result = this._post.GetCategorybyCateID(cateid);
        string CateName = "";
        string CateId = "";
        foreach (DataRow item in result.Rows)
        {
            CateId = item[0].ToString();
            CateName = item[1].ToString();
        }

        string link = ConvertToUnsign(CateName).ToString().ToLower();

        Response.Redirect(link);
    }

    //Get popup
    public void GetPopup(string viewonpage)
    {
        DataTable popup = this._popup.GetPopup(viewonpage);
        foreach (DataRow item in popup.Rows)
        {
            PopupUrl = item[3].ToString();
            ViewOnPage = item[4].ToString();
            PostID = item[5].ToString();
            PostTitle = item[6].ToString();
        }

        string str = "";
        str = "<a href='"+ConvertToUnsign(PostTitle).ToString().ToLower()+"-"+PostID+"'><img src='"+HomeUrl+PopupUrl+"' class='img-responsive popup' /></a>";

        LinkPost.InnerHtml = str;
    }
}
