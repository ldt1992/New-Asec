using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class ChiTiet : System.Web.UI.Page
{
    //For FB Cmt
    public string CurrentUrl = "";
    public string HomeUrl = "http://inside.kus.edu.vn/";
    private BLL_Post _post = new BLL_Post();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            CurrentUrl = Request.Url.AbsoluteUri;
            GetDetailPost();
            GetPostRelated();
            IncreaseViewPost();
        }
    }

    //Get Post Detail
    private void GetDetailPost()
    {
        string postId = Request.QueryString["post"];
        rpPostDetail.DataSource = this._post.GetPostDetail(postId);
        rpPostDetail.DataBind();
    }

    //Get Post Related
    private void GetPostRelated()
    {
        string postId = Request.QueryString["post"];
        rpPostRelated.DataSource = this._post.GetPostRelated(postId, 3);
        rpPostRelated.DataBind();
    }

    //Get First View
    private int GetFirstView(string postId)
    {
        int viewcount = 0;
        DataTable tb = _post.GetPostDetail(postId);
        foreach (DataRow r in tb.Rows)
        {
            viewcount = (string.IsNullOrEmpty(r[5].ToString())) ? 0 : (int)r[5];
        }
        return viewcount;
    }

    //Increase View
    private void IncreaseViewPost()
    {
        string postId = Request.QueryString["post"];
        this._post.IncreaseView(postId, GetFirstView(postId));
    }

}