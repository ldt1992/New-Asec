using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ChuyenMuc : System.Web.UI.Page
{
    private BLL_ChuyenMuc _chuyenmuc = new BLL_ChuyenMuc();
    public string HomeUrl = "http://inside.kus.edu.vn/";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            GetAllItemsChuyenMuc();
        }
    }

    //Get All Sub Items Chuyên Mục
    private void GetAllItemsChuyenMuc()
    {
        rpSubItemChuyenMuc.DataSource = this._chuyenmuc.GetAllSubItemChuyenMuc();
        rpSubItemChuyenMuc.DataBind();
    }
}