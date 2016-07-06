using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for BLL_ChuongTrinhHoc
/// </summary>
public class BLL_ChuongTrinhHoc
{
    private DAL_Connection _connect;
    public BLL_ChuongTrinhHoc()
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
    public DataTable GetAll_ChuongTrinhHoc()
    {
        this.OpenConnect();

        string query = "select menu.MenuID, ct.CategoryID as cateid, ct.CategoryName, ct.Permalink as linkMenuCon, ct.Descriptions, img.DateOfStart, img.ImagesUrl from MainMenu menu join Menu_Category m_ct on menu.MenuID = m_ct.MenuID join Category ct on m_ct.CategoryID = ct.CategoryID join Images img on ct.CateogryImage = img.ImagesID where menu.ItemName = N'Học Tiếng Anh' order by menu.ItemIndex asc";
        DataTable result = this._connect.GetDataTable(query);

        this.CloseConnect();
        return result;
    }
}