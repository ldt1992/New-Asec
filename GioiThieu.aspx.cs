using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GioiThieu : System.Web.UI.Page
{
    public string HomeUrl = "http://inside.kus.edu.vn/";
    private BLL_ChuongTrinhHoc _chuongtrinhhoc = new BLL_ChuongTrinhHoc();
    private BLL_Post _post = new BLL_Post();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            GetChuongTrinhHoc();
        }
    }

    private void GetChuongTrinhHoc()
    {
        rpChuongTrinhHoc.DataSource = this._chuongtrinhhoc.GetAll_ChuongTrinhHoc();
        rpChuongTrinhHoc.DataBind();
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

    protected void linkbtn_Click(object sender, EventArgs e)
    {
        LinkButton lnl = (sender as LinkButton);
        string cateid = lnl.CommandArgument;

        DataTable result = this._post.GetPostbyCateID(cateid);

        if (result.Rows.Count == 1)
        {
            OnePost(result);
        }
    }

    //Get PostID & PostTitle
    private void OnePost(DataTable table)
    {
        string PostTitle = "";
        string PostID = "";
        foreach (DataRow item in table.Rows)
        {
            PostID = item[0].ToString();
            PostTitle = item[1].ToString();
        }

        string link = ConvertToUnsign(PostTitle).ToString().ToLower() + "-" + PostID;

        Response.Redirect(link);
    }
}