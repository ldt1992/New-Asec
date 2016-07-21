using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for BLL_Popup
/// </summary>
public class BLL_Popup
{
    private DAL_Connection _connect;
    public BLL_Popup()
    {
        _connect = new DAL_Connection();
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

    //Lấy Albums Sự Kiện FUNDAY
    public DataTable GetPopup(string viewonpage)
    {
        this.OpenConnect();

        string query = "select pop.ID, pop.Permalink, pop.ShortDescription, pop.PopupUrl, pop.ViewOnPage, pop.PostID, p.PostTitle from Popups pop join POST p on pop.PostID = p.PostID where pop.PopupStatus = 1 and pop.ViewOnPage =  '" + viewonpage + "'";
        DataTable result = this._connect.GetDataTable(query);

        this.CloseConnect();
        return result;
    }
}