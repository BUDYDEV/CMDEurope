using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ContainerManagementSystem
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void login_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                int login = new func().login_username(username.Text, password.Text);
                Session["username"] = username.Text;
                if (login == 0)
                {
                    Response.Redirect("~/Admin/admin_index.aspx");
                }
                else if (login == 1)
                {
                    Response.Redirect("~/home.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Wrong Email or Password');</script>");
                }

            }
        }
    }
}