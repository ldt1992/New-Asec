using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class TinTuc2 : System.Web.UI.Page
{
    private BLL_Post _post = new BLL_Post();
    public string HomeUrl = "http://inside.kus.edu.vn/";
    public string CateName = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            GetListPosts();
            GetTitle();
        }
    }

    //Get List Post By CateID
    private void GetListPosts()
    {
        string cateid = Request.QueryString["cateid"];
        rpBlogs.DataSource = this._post.GetPostbyCateID(cateid);
        rpBlogs.DataBind();
    }

    //Get CateName
    private void GetTitle()
    {
        string cateid = Request.QueryString["cateid"];
        DataTable result = this._post.GetCategorybyCateID(cateid);
        foreach (DataRow item in result.Rows)
        {
            CateName = item[1].ToString();
        }
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