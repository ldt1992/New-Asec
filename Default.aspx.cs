using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    private BLL_ChuongTrinhHoc _chuongtrinhhoc = new BLL_ChuongTrinhHoc();
    private BLL_ChuyenMuc _chuyenmuc = new BLL_ChuyenMuc();
    private BLL_Post _post = new BLL_Post();
    public string HomeUrl = "http://inside.kus.edu.vn/";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            GetChuongTrinhHoc();
            GetTopItemsChuyenMuc();
            GetTopTinTuc();
        }
    }

    //Get Chương trình học
    private void GetChuongTrinhHoc()
    {
        rpChuongTrinhHoc.DataSource = this._chuongtrinhhoc.GetAll_ChuongTrinhHoc();
        rpChuongTrinhHoc.DataBind();
    }

    //Get Top 3 Chuyên Mục
    private void GetTopItemsChuyenMuc()
    {
        rpChuyenMuc.DataSource = this._chuyenmuc.GetTop3SubItemsChuyenMuc();
        rpChuyenMuc.DataBind();
    }

    //Get Tin Tức
    private void GetTopTinTuc()
    {
        rpTinTuc.DataSource = this._post.GetTop3TinTuc();
        rpTinTuc.DataBind();
    }
}