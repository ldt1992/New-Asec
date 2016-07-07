using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LienHe : System.Web.UI.Page
{
    private BLL_PhieuTuVan _phieutuvan = new BLL_PhieuTuVan();
    protected void Page_Load(object sender, EventArgs e)
    {

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
}