using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for BLL_Albums
/// </summary>
public class BLL_Albums
{
    private DAL_Connection _connect;
    public BLL_Albums()
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
    public DataTable AlbumFunday()
    {
        this.OpenConnect();

        string query = "select * from Images img join ImagesType imgtype on img.ImagesTypeID = imgtype.ImagesTypeID where imgtype.ImagesTypeName like N'Funday'";
        DataTable result = this._connect.GetDataTable(query);

        this.CloseConnect();
        return result;
    }
}