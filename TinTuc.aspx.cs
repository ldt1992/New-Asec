using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TinTuc : System.Web.UI.Page
{
    private BLL_Post _post = new BLL_Post();
    public string HomeUrl = "http://inside.kus.edu.vn/";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            GetTinTuc();
        }
    }

    //Get Tin tức
    private void GetTinTuc()
    {
        rpTinTuc.DataSource = this._post.GetAllTinTuc();
        rpTinTuc.DataBind();
    }
}