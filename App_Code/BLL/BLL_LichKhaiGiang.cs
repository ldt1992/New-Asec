using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for BLL_LichKhaiGiang
/// </summary>
public class BLL_LichKhaiGiang
{
    private DAL_Connection _connect;
    public BLL_LichKhaiGiang()
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

    //Get Danh sách khai giảng
    public DataTable GetListKhaiGiang()
    {
        this.OpenConnect();

        string query = "select ct.CategoryID as cateid, ct.CategoryName, ct.Descriptions, ct.Permalink, img.ImagesName, img.ImagesUrl, img.DateOfStart from Category ct join Images img on ct.CateogryImage = img.ImagesID where Parent = 3121";
        DataTable result = this._connect.GetDataTable(query);

        this.CloseConnect();
        return result;
    }
}