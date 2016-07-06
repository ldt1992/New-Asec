using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ChuongTrinhHoc : System.Web.UI.Page
{
    private BLL_ChuongTrinhHoc _chuongtrinhhoc = new BLL_ChuongTrinhHoc();
    private BLL_Post _post = new BLL_Post();
    private BLL_ChuyenMuc _chuyenmuc = new BLL_ChuyenMuc();
    public string HomeUrl = "http://inside.kus.edu.vn/";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            GetChuongTrinhHoc();
        }
    }

    //Get Chương trình học
    private void GetChuongTrinhHoc()
    {
        rpChuongTrinhHoc.DataSource = this._chuongtrinhhoc.GetAll_ChuongTrinhHoc();
        rpChuongTrinhHoc.DataBind();
    }
}