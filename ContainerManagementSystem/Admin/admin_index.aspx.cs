using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ContainerManagementSystem.Admin
{
    public partial class admin_index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          if (Session["username"] == null)
            {
                Response.Redirect("~/Default.aspx");
            }

        }

        protected void btn_find_email_Click(object sender, EventArgs e)
        {

        }

        protected void btn_find_dates_Click(object sender, EventArgs e)
        {

        }
    }
}