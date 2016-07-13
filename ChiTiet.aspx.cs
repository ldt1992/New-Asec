using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text.RegularExpressions;
using System.Text;

public partial class ChiTiet : System.Web.UI.Page
{
    //For FB Cmt
    public string CurrentUrl = "";
    public string HomeUrl = "http://inside.kus.edu.vn/";
    private BLL_Post _post = new BLL_Post();
    private BLL_ChuyenMuc _chuyenmuc = new BLL_ChuyenMuc();
    public string postID = "";
    public string Breadcrumb = "";
    public string UrlBreadcrumb = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            CurrentUrl = Request.Url.AbsoluteUri;
            GetDetailPost();
            GetPostRelated();
            IncreaseViewPost();
            PreviousPost();
            NextPost();
        }
    }

    //Get Post Detail
    private void GetDetailPost()
    {
        string postId = RouteData.Values["id"].ToString();

        DataTable result = this._post.GetPostDetail(postId);
        foreach (DataRow item in result.Rows)
        {
            postID = item[0].ToString();
        }

        rpPostDetail.DataSource = result;
        rpPostDetail.DataBind();
    }

    //Get Post Related
    private void GetPostRelated()
    {

        try
        {
            string postId = RouteData.Values["id"].ToString();

            DataTable result = this._post.GetPostRelated(postID, 3);

            if (result.Rows.Count > 0)
            {
                TieuDe.InnerHtml = "<h2 class='bg-orange'><span class='title-part'>BÀI VIẾT LIÊN QUAN</span></h2>";
                rpPostRelated.DataSource = this._post.GetPostRelated(postID, 3);
                rpPostRelated.DataBind();
            }
        }
        catch (Exception)
        {


        }
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
        string postId = RouteData.Values["id"].ToString();
        this._post.IncreaseView(postId, GetFirstView(postId));
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

    //Get Previous Post
    private void PreviousPost()
    {
        try
        {
            string postId = RouteData.Values["id"].ToString();

            rpPrevious.DataSource = this._post.GetPreviousPost(postId);
            rpPrevious.DataBind();
        }
        catch (Exception)
        {

        }
    }

    //Get Next Post
    private void NextPost()
    {
        try
        {
            string postId = RouteData.Values["id"].ToString();

            rpNext.DataSource = this._post.GetNextPost(postId);
            rpNext.DataBind();
        }
        catch (Exception)
        {

        }
    }

    //Breadcrumb
    private void BreadcrumbPage()
    {
        try
        {
            string postID = RouteData.Values["id"].ToString();
            DataTable result = _chuyenmuc.GetCategoryfromPostID(postID);
            foreach (DataRow item in result.Rows)
            {
                Breadcrumb = item[1].ToString();
                UrlBreadcrumb = item[2].ToString();
            }
        }
        catch (Exception)
        {


        }
    }
}