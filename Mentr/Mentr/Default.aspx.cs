using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using Mentr.Core;

namespace Mentr
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginUser(object sender, EventArgs e)
        {
            var member = new Member();
            string constr = ConfigurationManager.ConnectionStrings["SQLAzureConnection"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("GetMemberInfoByEmail"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
                        cmd.Connection = con;
                        con.Open();
                        
                        using (var reader = cmd.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                member.Name = reader.GetString(reader.GetOrdinal("Name"));
                                member.Surname = reader.GetString(reader.GetOrdinal("Surname"));
                                member.Gender = reader.GetString(reader.GetOrdinal("Gender"));
                                member.Password = reader.GetString(reader.GetOrdinal("Password"));
                                member.IsMentor = reader.GetBoolean(reader.GetOrdinal("IsMentor"));
                                member.IsMentee = reader.GetBoolean(reader.GetOrdinal("IsMentee"));
                            }
                        }

                        con.Close();
                    }
                }

                string hashedPassword = Mentr.Register.Security.HashSHA1(txtPassword.Text);

                if (member.Name != null && member.Password == hashedPassword)
                {
                    Response.Redirect("Home.aspx");
                }
                else 
                {
                    lblLoginResult.Text = "Wrong username or password";
                }
                
            }
        }
    }
}