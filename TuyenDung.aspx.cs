using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TuyenDung : System.Web.UI.Page
{
    public string HomeUrl = "http://inside.kus.edu.vn/";
    private BLL_Post _post = new BLL_Post();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            GetTuyenDung();
        }
    }

    //Get All Tuyển dụng
    private void GetTuyenDung()
    {
        rpTuyenDung.DataSource = this._post.GetAllTuyenDung();
        rpTuyenDung.DataBind();
    }
}