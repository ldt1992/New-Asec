using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for BLL_ChuyenMuc
/// </summary>
public class BLL_ChuyenMuc
{
    private DAL_Connection _connect;
    public BLL_ChuyenMuc()
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

    //Get All Sub Item Chuyên Mục
    public DataTable GetAllSubItemChuyenMuc()
    {
        this.OpenConnect();

        string query = "select ct.CategoryID, ct.CategoryName, ct.Descriptions, ct.Permalink, img.ImagesUrl, img.DateOfStart from Category ct join Menu_Category m_ct on ct.CategoryID = m_ct.CategoryID join MainMenu m on m_ct.MenuID = m.MenuID join Images img on ct.CateogryImage = img.ImagesID where m.ItemName like N'Chuyên Mục' and m.ItemIndex > 8";
        DataTable result = this._connect.GetDataTable(query);

        this.CloseConnect();
        return result;
    }

    //Get Top 3 Sub Item Chuyên Mục
    public DataTable GetTop3SubItemsChuyenMuc()
    {
        this.OpenConnect();

        string query = "select ct.CategoryID, ct.CategoryName, ct.Permalink, img.ImagesUrl, img.DateOfStart from Category ct join Menu_Category m_ct on ct.CategoryID = m_ct.CategoryID join MainMenu m on m_ct.MenuID = m.MenuID join Images img on ct.CateogryImage = img.ImagesID where m.ItemName like N'Chuyên Mục' and (ct.CategoryName like N'Albums' or ct.CategoryName like N'Tuyển Dụng' or ct.CategoryName like N'Hỏi Đáp') and m.ItemIndex > 8 order by ct.CategoryID desc";
        DataTable result = this._connect.GetDataTable(query);

        this.CloseConnect();
        return result;
    }

    //Get Category from Post ID
    public DataTable GetCategoryfromPostID(string postID)
    {
        this.OpenConnect();

        string query = "select ct.CategoryID, ct.CategoryName, ct.Permalink from Post_Category_relationships p_ct join Category ct on p_ct.CategoryID = ct.CategoryID join POST p on p_ct.PostID = p.PostID where p.PostID = " + postID;
        DataTable result = this._connect.GetDataTable(query);

        this.CloseConnect();
        return result;
    }
}