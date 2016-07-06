using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_control_SidebarType2 : System.Web.UI.UserControl
{
    public string HomeUrl = "http://inside.kus.edu.vn/";
    private BLL_ChuyenMuc _chuyenmuc = new BLL_ChuyenMuc();
    private BLL_Post _post = new BLL_Post();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            GetChuyenMuc();
            GetTinXemNhieu();
        }
    }

    //Get Chuyên Mục
    private void GetChuyenMuc()
    {
        rpChuyenMuc.DataSource = this._chuyenmuc.GetTop3SubItemsChuyenMuc();
        rpChuyenMuc.DataBind();
    }

    //Get Tin Xem Nhiều
    private void GetTinXemNhieu()
    {
        rpXemNhieu.DataSource = this._post.GetTop_PostViewest(3);
        rpXemNhieu.DataBind();
    }
}