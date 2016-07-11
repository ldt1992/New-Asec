using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OnePost : System.Web.UI.Page
{
    //For FB Cmt
    public string CurrentUrl = "";
    public string HomeUrl = "http://inside.kus.edu.vn/";
    private BLL_Post _post = new BLL_Post();
    public string postID = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            DetailPost();
            GetPostRelated();
            IncreaseViewPost();
        }
    }

    //Get Detail Post
    private void DetailPost()
    {
        string cateID = Request.QueryString["cateid"].ToString();

        DataTable result = this._post.GetPostbyCateID(cateID);

        foreach (DataRow r in result.Rows)
        {
            postID = r[0].ToString();
        }

        rpPostDetail.DataSource = result;
        rpPostDetail.DataBind();
    }

    //Get Post Related
    private void GetPostRelated()
    {

        DataTable result = this._post.GetPostRelated(postID, 3);

        if (result.Rows.Count > 0)
        {
            TieuDe.InnerHtml = "<h2 class='bg-orange'><span class='title-part'>BÀI VIẾT LIÊN QUAN</span></h2>";
            rpPostRelated.DataSource = this._post.GetPostRelated(postID, 3);
            rpPostRelated.DataBind();
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
        this._post.IncreaseView(postID, GetFirstView(postID));
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