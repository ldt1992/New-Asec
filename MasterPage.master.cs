using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text.RegularExpressions;
using System.Text;

public partial class MasterPage : System.Web.UI.MasterPage
{
    private BLL_Menus _menu = new BLL_Menus();
    private BLL_ChuyenMuc _chuyenmuc = new BLL_ChuyenMuc();
    private BLL_ChuongTrinhHoc _chuongtrinhhoc = new BLL_ChuongTrinhHoc();
    private BLL_Post _post = new BLL_Post();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            GetMainMenu();
            GetChuyenMuc();
            GetHocTiengAnh();
        }
    }

    //Get Main menu
    private void GetMainMenu()
    {
        rpMainMenus.DataSource = this._menu.Get_Main_Menu();
        rpMainMenus.DataBind();
    }

    //Get Sub Menu
    public DataTable GetSubMenu(string idMainMenu)
    {
        DataTable result = this._menu.Get_Sub_Menu(idMainMenu);
        return result;
    }

    //Get Chuyên Mục
    private void GetChuyenMuc()
    {
        rpChuyenMuc.DataSource = this._chuyenmuc.GetAllSubItemChuyenMuc();
        rpChuyenMuc.DataBind();
    }

    //Search
    protected void txtSearch_TextChanged(object sender, EventArgs e)
    {
        string kw = txtSearch.Text;
        if (kw == "")
            Response.Redirect("Default.aspx");
        else
            Response.Redirect("KetQuaTimKiem.aspx?keyword=" + kw);
    }

    //Get Học Tiếng Anh
    private void GetHocTiengAnh()
    {
        rpHocTiengAnh.DataSource = this._chuongtrinhhoc.GetAll_ChuongTrinhHoc();
        rpHocTiengAnh.DataBind();
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

    protected void linkbtnMenuCon_Click(object sender, EventArgs e)
    {
        LinkButton lnl = (sender as LinkButton);
        string cateid = lnl.CommandArgument;

        DataTable result = this._post.GetPostbyCateID(cateid);
        DataTable category = this._post.GetCategorybyCateID(cateid);
        if (result.Rows.Count < 1)
        {
            string Permalink = "";
            foreach (DataRow item in category.Rows)
            {
                Permalink = item[3].ToString();
            }

            Response.Redirect(Permalink);
        }
        else if (result.Rows.Count == 1)
        {
            Response.Redirect("OnePost.aspx?cateid=" + cateid);
        }
        else if (result.Rows.Count > 1)
        {
            Response.Redirect("Blogs.aspx?cateid=" + cateid);
        }
    }
}
