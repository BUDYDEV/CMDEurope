using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ContainerManagementSystem
{
    public partial class P_register1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Register_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {           
          int register =  new func().submit(fullname.Text,cpassword.Text,email.Text,1);
            if (register == 0)
            {
                Response.Write("<script>alert('New User Registered');</script>");
                    Response.Redirect("~/Default.aspx");
            }
            else if (register == 1)
            {
                Response.Write("<script>alert('User Exists Please Enter another Email ');</script>");
            }
            else if (register == 2)
            {
                Response.Write("<script>alert('Connection Error ');</script>");
            }

            }
        }
            }
}