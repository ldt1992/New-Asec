using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Albums : System.Web.UI.Page
{
    private BLL_Albums _albums = new BLL_Albums();
    public string HomeUrl = "http://inside.kus.edu.vn/";
    public string AlbumName = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            AlbumsFunday();
        }
    }

    //Get Albums Funday
    private void AlbumsFunday()
    {
        DataTable result = this._albums.AlbumFunday();
        foreach (DataRow r in result.Rows)
        {
            AlbumName = r[7].ToString();
        }

        rpAlbum1.DataSource = this._albums.AlbumFunday();
        rpAlbum1.DataBind();


    }
}