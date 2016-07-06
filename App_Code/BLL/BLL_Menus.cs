using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for BLL_Menus
/// </summary>
public class BLL_Menus
{
    private DAL_Connection _connect;
    public BLL_Menus()
    {
        this._connect = new DAL_Connection();
    }

    //Open Connect
    public bool OpenConnect()
    {
        return this._connect.OpenConnect();
    }

    //Close Connect
    public void CloseConnect()
    {
        this._connect.CloseConnect();
    }

    //Get Main Menu
    public DataTable Get_Main_Menu()
    {
        this.OpenConnect();

        string query = "select * from MainMenu where ItemIndex >=8 order by ItemIndex asc";
        DataTable result = this._connect.GetDataTable(query);

        this.CloseConnect();
        return result;
    }

    //Get Sub Menu
    public DataTable Get_Sub_Menu(string idMenuCha)
    {
        this.OpenConnect();

        string query = "select menu.MenuID, ct.CategoryID as cateid, ct.CategoryName, ct.Permalink as linkMenuCon from MainMenu menu join Menu_Category m_ct on menu.MenuID = m_ct.MenuID join Category ct on m_ct.CategoryID = ct.CategoryID where menu.MenuID = " + idMenuCha + " and menu.ItemIndex between 8 and 13 order by menu.ItemIndex asc";
        DataTable result = this._connect.GetDataTable(query);

        this.CloseConnect();
        return result;
    }
}