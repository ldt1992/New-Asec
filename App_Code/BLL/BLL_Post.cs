using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for BLL_Post
/// </summary>
public class BLL_Post
{
    private DAL_Connection _connect;
    public BLL_Post()
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

    //Get 1 Post xem nhiều nhất
    public DataTable GetOne_PostViewest()
    {
        this.OpenConnect();

        string query = "select top 1 p.PostID, p.PostTitle, p.ViewCount, p.MetaDescription, p.DateOfCreate, img.ImagesUrl, img.ImagesName from POST p join Images img on p.PostImage = img.ImagesID order by ViewCount desc";
        DataTable result = this._connect.GetDataTable(query);

        this.CloseConnect();
        return result;
    }

    //Get Top Post xem nhiều nhất
    public DataTable GetTop_PostViewest(int top)
    {
        this.OpenConnect();

        string query = "select top " + top + " p.PostID, p.PostTitle, p.ViewCount, p.MetaDescription, p.DateOfCreate, img.ImagesUrl, img.ImagesName from POST p join Images img on p.PostImage = img.ImagesID where p.PostID != (select top 1 PostID from POST order by ViewCount desc) order by ViewCount desc";
        DataTable result = this._connect.GetDataTable(query);

        this.CloseConnect();
        return result;
    }

    //Get top 3 Tin tức
    public DataTable GetTopTinTuc(int top)
    {
        this.OpenConnect();

        string query = "select top " + top + " p.PostID, p.PostTitle, p.MetaDescription, p.PostContentVN, p.PostContentEN, p.DateOfCreate, p.ViewCount, img.ImagesUrl, img.ImagesName from POST p join Post_Category_relationships p_ct on p_ct.PostID = p.PostID join Category ct on ct.CategoryID = p_ct.CategoryID join Images img on p.PostImage = img.ImagesID where ct.CategoryName like N'Tin Tức' order by p.DateOfCreate desc";
        DataTable result = this._connect.GetDataTable(query);

        this.CloseConnect();
        return result;
    }

    //Get All Tin Tức
    public DataTable GetAllTinTuc()
    {
        this.OpenConnect();

        string query = "select p.PostID, p.PostTitle, p.MetaDescription, p.PostContentVN, p.PostContentEN, p.DateOfCreate, p.ViewCount, img.ImagesUrl, img.ImagesName from POST p join Post_Category_relationships p_ct on p_ct.PostID = p.PostID join Category ct on ct.CategoryID = p_ct.CategoryID join Images img on p.PostImage = img.ImagesID where ct.CategoryName like N'Tin Tức' order by p.DateOfCreate desc";
        DataTable result = this._connect.GetDataTable(query);

        this.CloseConnect();
        return result;
    }

    //Get Post Detail
    public DataTable GetPostDetail(string postId)
    {
        this.OpenConnect();

        string query = "select p.PostID, p.PostTitle, p.PostContentVN, p.PostContentEN, p.DateOfCreate, p.ViewCount, img.ImagesName, img.ImagesUrl from POST p join Images img on p.PostImage = img.ImagesID where PostID = " + postId;
        DataTable result = this._connect.GetDataTable(query);

        this.CloseConnect();
        return result;
    }

    //Get Post liên quan
    public DataTable GetPostRelated(string postId, int top)
    {
        this.OpenConnect();

        string query = "select top " + top + " P.PostID, p.PostTitle, p.MetaDescription, p.PostContentVN, p.PostContentEN, p.DateOfCreate, p.ViewCount, img.ImagesName, img.ImagesUrl from POST p join Post_Category_relationships p_ct on p.PostID = p_ct.PostID join Images img on p.PostImage = img.ImagesID where p_ct.CategoryID = ( select p_ct.CategoryID from POST p join Post_Category_relationships p_ct on p.PostID = p_ct.PostID where p.PostID = " + postId + " ) and p.PostID != " + postId;
        DataTable result = this._connect.GetDataTable(query);

        this.CloseConnect();
        return result;
    }

    //Increase View
    public int IncreaseView(string postId, int firstView)
    {
        this.OpenConnect();

        string query = "update POST set ViewCount = (@firstView + 1) where PostID = @postId";
        List<SqlParameter> listParams = new List<SqlParameter>();
        listParams.Add(new SqlParameter("@postId", postId));
        listParams.Add(new SqlParameter("@firstView", firstView));

        int result = this._connect.ExecQuery(query, listParams);

        this.CloseConnect();
        return result;
    }

    //Get All Post tuyển dụng
    public DataTable GetAllTuyenDung()
    {
        this.OpenConnect();

        string query = "select P.PostID, p.PostTitle, p.MetaDescription, p.DateOfCreate, p.ViewCount, img.ImagesUrl, img.ImagesName from POST p join Post_Category_relationships p_ct on p_ct.PostID = p.PostID join Category ct on ct.CategoryID = p_ct.CategoryID join Images img on p.PostImage = img.ImagesID where ct.CategoryName like N'Tuyển Dụng'";
        DataTable result = this._connect.GetDataTable(query);

        this.CloseConnect();
        return result;
    }

    //Get All Post xem nhiều (tin tức & sự kiện)
    public DataTable GetAllXemNhieu()
    {
        this.OpenConnect();

        string query = "select P.PostID, p.PostTitle, p.MetaDescription, p.DateOfCreate, p.ViewCount, img.ImagesUrl, img.ImagesName from POST p join Post_Category_relationships p_ct on p_ct.PostID = p.PostID join Category ct on ct.CategoryID = p_ct.CategoryID join Images img on p.PostImage = img.ImagesID where ct.CategoryName like N'Tin Tức' or ct.CategoryName like N'Sự kiện' order by ViewCount desc";
        DataTable result = this._connect.GetDataTable(query);

        this.CloseConnect();
        return result;
    }

    //Get kết quả tìm kiếm
    public DataTable GetResultSearch(string keyword)
    {
        this.OpenConnect();

        string query = "select p.PostID, p.PostTitle, p.MetaDescription, p.DateOfCreate, p.ViewCount, img.ImagesUrl, img.ImagesName from POST p join Images img on p.PostImage = img.ImagesID where p.PostTitle like N'%" + keyword + "%'";
        DataTable result = this._connect.GetDataTable(query);

        this.CloseConnect();
        return result;
    }

    //Get Top 3 Post Sự kiện
    public DataTable GetTop3SuKien(int top)
    {
        this.OpenConnect();

        string query = "select top " + top + " P.PostID, p.PostTitle, p.MetaDescription, p.DateOfCreate, p.ViewCount, img.ImagesUrl, img.ImagesName from POST p join Post_Category_relationships p_ct on p_ct.PostID = p.PostID join Category ct on ct.CategoryID = p_ct.CategoryID join Images img on p.PostImage = img.ImagesID where ct.CategoryName like N'Sự Kiện' order by p.DateOfCreate desc";
        DataTable result = this._connect.GetDataTable(query);

        this.CloseConnect();
        return result;
    }

    //Get All Post Sự kiện
    public DataTable GetAllSuKien()
    {
        this.OpenConnect();

        string query = "select P.PostID, p.PostTitle, p.MetaDescription, p.DateOfCreate, p.ViewCount, img.ImagesUrl, img.ImagesName from POST p join Post_Category_relationships p_ct on p_ct.PostID = p.PostID join Category ct on ct.CategoryID = p_ct.CategoryID join Images img on p.PostImage = img.ImagesID where ct.CategoryName like N'Sự Kiện' order by p.DateOfCreate desc";
        DataTable result = this._connect.GetDataTable(query);

        this.CloseConnect();
        return result;
    }

    //Get a Post by cate id
    public DataTable GetPostbyCateID(string cateID)
    {
        this.OpenConnect();

        string query = "select p.PostID, p.PostTitle, p.DateOfCreate, p.MetaDescription, p.ViewCount, p.PostContentVN, p.PostContentEN, img.ImagesUrl from POST p join Post_Category_relationships p_ct on p.PostID = p_ct.PostID join Images img on p.PostImage = img.ImagesID where p_ct.CategoryID =" + cateID;
        DataTable result = this._connect.GetDataTable(query);

        this.CloseConnect();
        return result;
    }

    //Get CategoryName by CateID
    public DataTable GetCategorybyCateID(string cateID)
    {
        this.OpenConnect();

        string query = "select * from Category where CategoryID = " + cateID;
        DataTable result = this._connect.GetDataTable(query);

        this.CloseConnect();
        return result;
    }

    //Get Previous Post
    public DataTable GetPreviousPost(string postID)
    {
        this.OpenConnect();

        string query = "SELECT TOP 1 * FROM POST WHERE PostID < " + postID;
        DataTable result = this._connect.GetDataTable(query);

        this.CloseConnect();
        return result;
    }

    //Get Next Post
    public DataTable GetNextPost(string postID)
    {
        this.OpenConnect();

        string query = "SELECT TOP 1 * FROM POST WHERE PostID > " + postID;
        DataTable result = this._connect.GetDataTable(query);

        this.CloseConnect();
        return result;
    }
}
