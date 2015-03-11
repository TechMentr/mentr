using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Text;

namespace Mentr
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.PopulateSkills();
            }
        }

        private void PopulateSkills()
        {
            using (SqlConnection conn = new SqlConnection())
            {
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["SQLAzureConnection"].ConnectionString;
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "select * from [dbo].[Skill]";
                    cmd.Connection = conn;
                    conn.Open();
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {
                        int i = 0;
                        while (sdr.Read())
                        {
                            ListItem item = new ListItem();
                            item.Text = sdr["Name"].ToString();
                            item.Value = sdr["ID"].ToString();
                            cblstSkills.Items.Add(item);
                            TextBox txt = new TextBox();
                            txt.ID = "textBox" + i;

                        }
                    }
                    conn.Close();
                }
            }
        }

        protected void RegisterUser(object sender, EventArgs e)
        {
            int emailId = 0;
            string constr = ConfigurationManager.ConnectionStrings["SQLAzureConnection"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmdInfo = new SqlCommand("SetMemberInfo"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmdInfo.CommandType = CommandType.StoredProcedure;
                        cmdInfo.Parameters.AddWithValue("@Name", txtName.Text.Trim());
                        cmdInfo.Parameters.AddWithValue("@Surname", txtSurname.Text.Trim());
                        cmdInfo.Parameters.AddWithValue("@Gender", (genderId.SelectedItem.Value.ToString()));
                        cmdInfo.Parameters.AddWithValue("@Password", Security.HashSHA1(txtPassword.Text.Trim()));
                        cmdInfo.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
                        cmdInfo.Parameters.AddWithValue("@IsMentor", chkMentor.Checked);
                        cmdInfo.Parameters.AddWithValue("@IsMentee", chkMentee.Checked);
                        cmdInfo.Connection = con;
                        con.Open();
                        emailId = Convert.ToInt32(cmdInfo.ExecuteScalar());
                        con.Close();
                    }
                }

                string message = string.Empty;
                if (emailId == -1)
                {
                    message = "Supplied email address has already been used.";

                }
                else
                {
                    int mentorSkillId = 0;
                    using (SqlCommand cmdSkill = new SqlCommand("SetMemberSkills"))
                    {
                        using (SqlDataAdapter sda = new SqlDataAdapter())
                        {
                            cmdSkill.CommandType = CommandType.StoredProcedure;

                            foreach (ListItem item in cblstSkills.Items)
                            {
                                if (item.Selected)
                                {
                                    cmdSkill.Parameters.Clear();
                                    cmdSkill.Parameters.AddWithValue("@MemberId", emailId);
                                    cmdSkill.Parameters.AddWithValue("@SkillId", item.Value);
                                    cmdSkill.Parameters.AddWithValue("@YearsExperience", Convert.ToInt32(txtYearsExperience.Text.Trim()));
                                    cmdSkill.Connection = con;
                                    con.Open();
                                    mentorSkillId = Convert.ToInt32(cmdSkill.ExecuteScalar());
                                    con.Close();
                                }
                            }
                        }
                    }

                    message = "Registration successful.";
                }

                //ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message + "');", true);
                Session["sessFirstName"] = txtName.Text.Trim();
                Session["sessEmail"] = txtEmail.Text.Trim();
                Response.Redirect("Home.aspx");
            }
        }

        public class Security
        {
            public static string HashSHA1(string value)
            {
                var sha1 = System.Security.Cryptography.SHA1.Create();
                var inputBytes = Encoding.ASCII.GetBytes(value);
                var hash = sha1.ComputeHash(inputBytes);

                var sb = new StringBuilder();
                for (var i = 0; i < hash.Length; i++)
                {
                    sb.Append(hash[i].ToString("X2"));
                }
                return sb.ToString();
            }
        }
    }
}