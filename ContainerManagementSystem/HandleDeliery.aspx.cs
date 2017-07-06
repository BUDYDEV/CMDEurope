using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ContainerManagementSystem
{
    public partial class HandleDeliery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("~/Default.aspx");
            }else{
            Guid g = Guid.NewGuid();
            string GuidString = Convert.ToBase64String(g.ToByteArray());
            GuidString = GuidString.Replace("=", "");
            GuidString = GuidString.Replace("+", "");
            referenceid.Text = GuidString;
            package_combo();
             }
         
            

        }

        protected void btn_create_Click(object sender, EventArgs e)
        {
            string createdby = "hello";
             //createdby = Session["username"].ToString();
            int created = new func().createDelivery(referenceid.Text,fullname.Text,addressline.Text,city.Text,DateTime.Now.Date,DropDownList1.SelectedValue,R_fullname.Text,R_addressline1.Text,R_city.Text,
                Convert.ToDateTime(R_expectedate.Text),R_DropDownList2.SelectedValue, createdby);
            if (created == 0)
            {
          
                Response.Redirect("~/home.aspx");
            }
            else if (created == 1)
            {
                Response.Write("<script>alert('Package Id Exists');</script>");
            }
            else if (created == 2)
            {
                Response.Write("<script>alert('Connection Error');</script>");
            }

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
                        DateTime td = DateTime.Now.AddDays(package_days);
                        R_expectedate.Text = "" + td.Date.ToString("MM/dd/yyyy");
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

        protected void package_SelectedIndexChanged(object sender, EventArgs e)
        {
            combo_selection();
        }
    }
}