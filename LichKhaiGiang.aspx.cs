using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LichKhaiGiang : System.Web.UI.Page
{
    public string CurrentUrl = "";
    public string HomeUrl = "http://inside.kus.edu.vn/";
    private BLL_LichKhaiGiang _lichkhaigiang = new BLL_LichKhaiGiang();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            CurrentUrl = Request.Url.AbsoluteUri;
            GetUpComingSoon();
        }
    }

    //Get List Up Coming Soon Class
    private void GetUpComingSoon()
    {
        rpLichKhaiGiang.DataSource = this._lichkhaigiang.GetListKhaiGiang();
        rpLichKhaiGiang.DataBind();
    }
}