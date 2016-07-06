using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class KetQuaTimKiem : System.Web.UI.Page
{
    public string HomeUrl = "http://inside.kus.edu.vn/";
    private BLL_Post _post = new BLL_Post();
    public string kw = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            KQTK();
        }
    }

    //Main Column - Posts of Chương Trình Học CTH
    private void KQTK()
    {
        kw = Request.QueryString["keyword"];
        kw = kw.Replace("%20", " ");

        DataTable result = _post.GetResultSearch(kw);

        if (result.Rows.Count != 0)
        {
            pager1.PageSize = 6;
            pager1.DataSource = _post.GetResultSearch(kw).DefaultView;
            pager1.BindToControl = rpKetQuaTimKiem;
            rpKetQuaTimKiem.DataSource = pager1.DataSourcePaged;
        }
        else
        {
            NoResult.InnerText = "<h3 class='alert alert-danger'>Không tìm thấy kết quả phù hợp</h3>";
        }
    }
}