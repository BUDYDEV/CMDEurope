using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ContainerManagementSystem.Admin
{
    public partial class packagemanager : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
if (Session["username"] == null)
            {
                Response.Redirect("~/Default.aspx");
            }else{
  package_combo();
   }
          
        }
        

        protected void package_SelectedIndexChanged(object sender, EventArgs e)
        {
            combo_selection();
        }
        private void package_combo()
        {
            if (package.Items.Count == 0)
            {

                try
                {
                    string querry = "Select Description,Price from Container_Package ";
                    SqlCommand cmd = new SqlCommand(querry);
                    SqlConnection con = new func().con();
                    cmd.Connection = con;
                    try
                    {
                        con.Open();
                        SqlDataReader rdr = cmd.ExecuteReader();
                        while (rdr.Read())
                        {
                            package.Items.Add(rdr[0].ToString());
                        }
                    }
                    catch (Exception c)
                    {
                    }
                    finally
                    {
                        con.Close();
                    }
                }
                catch (Exception)
                {
                }
            }

        }

        private void combo_selection()
        {

            string pck = package.SelectedItem.ToString();
            try
            {

                string querry = "Select Price,DeliveryDays from Container_Package where Description=@pck ";

                SqlCommand cmd = new SqlCommand(querry);
                cmd.Parameters.AddWithValue("@pck", pck);
                SqlConnection con = new func().con();

                cmd.Connection = con;
                try
                {
                    con.Open();
                    SqlDataReader rdr = cmd.ExecuteReader();
                    while (rdr.Read())
                    {
                        float initial_price = Convert.ToInt16(rdr[0]);
                        int package_days = Convert.ToInt16(rdr[1]);

                        txt_package_D.Text = pck;
                        txt_package_p.Text = initial_price.ToString();
                        txt_package_Days.Text = package_days.ToString();

                    }
                }
                catch (Exception c)
                {

                }
                finally
                {
                    con.Close();
                }

            }
            catch (Exception cc)
            {
            }

        }

        protected void btn_update_Click(object sender, EventArgs e)
        {

        }
    }
}