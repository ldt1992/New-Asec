using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    private BLL_ChuongTrinhHoc _chuongtrinhhoc = new BLL_ChuongTrinhHoc();
    private BLL_ChuyenMuc _chuyenmuc = new BLL_ChuyenMuc();
    private BLL_Post _post = new BLL_Post();
    public string HomeUrl = "http://inside.kus.edu.vn/";
    private BLL_PhieuTuVan _phieutuvan = new BLL_PhieuTuVan();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            GetChuongTrinhHoc();
            GetTopItemsChuyenMuc();
            GetTopTinTuc();
        }
    }

    //Get Chương trình học
    private void GetChuongTrinhHoc()
    {
        rpChuongTrinhHoc.DataSource = this._chuongtrinhhoc.GetAll_ChuongTrinhHoc();
        rpChuongTrinhHoc.DataBind();
    }

    //Get Top 3 Chuyên Mục
    private void GetTopItemsChuyenMuc()
    {
        rpChuyenMuc.DataSource = this._chuyenmuc.GetTop3SubItemsChuyenMuc();
        rpChuyenMuc.DataBind();
    }

    //Get Tin Tức
    private void GetTopTinTuc()
    {
        rpTinTuc.DataSource = this._post.GetTop3TinTuc();
        rpTinTuc.DataBind();
    }

    protected void btnGui_Click(object sender, EventArgs e)
    {
        string fname = "";
        string email = "";
        string phone = "";
        string message = "";

        fname = txtHoten.Text;
        email = txtEmail.Text;
        phone = txtDienthoai.Text;
        message = txtNoidung.Text;

        int result = this._phieutuvan.ThemPhieuTuVan(fname, email, phone, message);
        if (result == 1)
        {
            Response.Write("<script>alert('Gửi thông tin thành công. Công ty sẽ cố gắng liên hệ sớm nhất có thể với bạn. Cảm ơn bạn. Chúc bạn một ngày làm việc vui vẻ. Have Fun !')</script>");
        }
        else
        {
            Response.Write("<script>alert('Gửi thông tin thất bại. Cảm phiền bạn nhập lại thông tin. Chúng tôi rất tiếc về sự cố này')</script>");
        }
    }

    //ConvertToUnsign
    public string ConvertToUnsign(string str)
    {
        string title_url = "";
        str = str.Replace(" ", "-");
        str = str.Replace(".", "-");
        str = str.Replace(",", "-");
        str = str.Replace(";", "-");
        str = str.Replace(":", "-");
        str = str.Replace("%", "");
        str = str.Replace("/", "-");
        str = str.Replace("(", "-");
        str = str.Replace(")", "-");
        Regex regex = new Regex("\\p{IsCombiningDiacriticalMarks}+");
        string temp = str.Normalize(NormalizationForm.FormD);
        title_url = regex.Replace(temp, String.Empty).Replace('\u0111', 'd').Replace('\u0110', 'D');
        return title_url;
    }
}