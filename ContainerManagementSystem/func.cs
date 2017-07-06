using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ContainerManagementSystem
{
    public class func
    {
        public SqlConnection con() {
             string strconect = System.Configuration.ConfigurationManager.ConnectionStrings["CConnectionString"].ConnectionString;
          
                SqlConnection con = new SqlConnection(strconect);

                return con;
            }

        public int login_username(string username, string password)
        {
            try
            {

                string querry = "Select Email,Type from Container_login where Email = @username and Password = @password ";

                SqlCommand cmd = new SqlCommand(querry);
                cmd.Parameters.AddWithValue("@username", username);
                cmd.Parameters.AddWithValue("@password", password);
                SqlConnection con = this.con();

                cmd.Connection = con;

                try
                {

                    con.Open();
                    SqlDataReader rdr = cmd.ExecuteReader();

                    if (rdr.Read())
                    {
                        if (rdr["Type"].ToString() == "0")
                        {
                            return 0;
                        }
                        else
                        {
                            return 1;
                        }
                    }
                    else
                    {
                        return 3;
                    }

                }
                catch (Exception c)
                {
                    return 5;
                }
                finally
                {
                    con.Close();
                }

            }
            catch (SqlException cc)
            {
                return 4;
            }

        }
        public int submit(string name, string pass, string email, int type)
        {

            try
            {
                string insert_querry = "insert into Container_login(FullName,Password,Email,Type) values " +

                   " (@name,@pass,@email,@type)";

                SqlCommand cmd = new SqlCommand(insert_querry);
                cmd.Parameters.Add("@name", SqlDbType.NVarChar).Value = name;
                cmd.Parameters.Add("@pass", SqlDbType.NVarChar).Value = pass;
                cmd.Parameters.Add("@email", SqlDbType.NVarChar).Value = email;
              
              
                cmd.Parameters.Add("@type", SqlDbType.Int).Value = type;

                SqlConnection con = this.con();
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;

                try
                {
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    return 0;

                }
                catch (SqlException px)
                {
                    return 1;

                }
                finally
                {
                    con.Close();
                }
            }
            catch (SqlException pxx)
            {
                return 2;

            }



        }


        public int createDelivery(string Packageid, string sender_name, string addressline, string sender_city, DateTime sender_date, string country, string recipient_name,
           string recipient_addressline, string recipient_city, DateTime reciver_date, string recipient_country, string createdby)
        {
            string delivery_status = "In Process";
            try
            {
                string insert_querry = "insert into Container_DeliveryInformation" +
                    "(DeliveryID,FullName,AddressLine,CityTown,Country,CreatedDeliverydate,R_FullName,R_AddressLine,R_CityTown," +
                    "R_Country,R_expecteddeliverydate,delivery_status,Createdby) values " +
                   " (@deliveryid,@fullname,@addessline,@city,@country,@createddate,@r_fullname,@r_addressline," +
                   "@r_citytown,@r_country,@r_expecteddelivery,@deli_status,@createdby)";

                SqlCommand cmd = new SqlCommand(insert_querry);
                cmd.Parameters.Add("@deliveryid", SqlDbType.NVarChar).Value = Packageid;

                cmd.Parameters.Add("@fullname", SqlDbType.NVarChar).Value = sender_name;
                cmd.Parameters.Add("@addessline", SqlDbType.NVarChar).Value = addressline;
                cmd.Parameters.Add("@city", SqlDbType.NVarChar).Value = sender_city;
                cmd.Parameters.Add("@country", SqlDbType.NVarChar).Value = country;
                cmd.Parameters.Add("@createddate", SqlDbType.Date).Value = sender_date;


                cmd.Parameters.Add("@r_fullname", SqlDbType.NVarChar).Value = recipient_name;
                cmd.Parameters.Add("@r_addressline", SqlDbType.NVarChar).Value = recipient_addressline;
                cmd.Parameters.Add("@r_citytown", SqlDbType.NVarChar).Value = recipient_city;
                cmd.Parameters.Add("@r_country", SqlDbType.NVarChar).Value = recipient_country;
                cmd.Parameters.Add("@r_expecteddelivery", SqlDbType.Date).Value = reciver_date;
                cmd.Parameters.Add("@createdby", SqlDbType.NVarChar).Value = createdby;
                cmd.Parameters.Add("@deli_status", SqlDbType.NVarChar).Value = delivery_status;
                
                   SqlConnection con = this.con();
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;

                try
                {
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    return 0;

                }
                catch (SqlException px)
                {
                    return 1;

                }
                finally
                {
                    con.Close();
                }
            }
            catch (SqlException pxx)
            {
                return 2;

            }


        }

        
    }
}