﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_control_SidebarType1 : System.Web.UI.UserControl
{
    private BLL_ChuongTrinhHoc _chuongtrinhhoc = new BLL_ChuongTrinhHoc();
    private BLL_Post _post = new BLL_Post();
    private BLL_ChuyenMuc _chuyenmuc = new BLL_ChuyenMuc();
    public string HomeUrl = "http://inside.kus.edu.vn/";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            GetOnePostViewest();
            GetTopPostViewest();
            GetSubItemChuyenMuc();
        }
    }

    //Get 1 bài viết xem nhiều nhất
    private void GetOnePostViewest()
    {
        rpPostViewest.DataSource = this._post.GetOne_PostViewest();
        rpPostViewest.DataBind();
    }

    //Get top bài viết xem nhiều nhất
    private void GetTopPostViewest()
    {
        rpTopViewest.DataSource = this._post.GetTop_PostViewest(3);
        rpTopViewest.DataBind();
    }

    //Get Sub Item Chuyen Muc
    private void GetSubItemChuyenMuc()
    {
        rpChuyenMuc.DataSource = this._chuyenmuc.GetAllSubItemChuyenMuc();
        rpChuyenMuc.DataBind();
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
}