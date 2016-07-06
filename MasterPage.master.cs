using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class MasterPage : System.Web.UI.MasterPage
{
    private BLL_Menus _menu = new BLL_Menus();
    private BLL_ChuyenMuc _chuyenmuc = new BLL_ChuyenMuc();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            GetMainMenu();
            GetChuyenMuc();
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

    protected void txtSearch_TextChanged(object sender, EventArgs e)
    {
        string kw = txtSearch.Text;
        if (kw == "")
            Response.Redirect("Default.aspx");
        else
            Response.Redirect("KetQuaTimKiem.aspx?keyword=" + kw);
    }
}
