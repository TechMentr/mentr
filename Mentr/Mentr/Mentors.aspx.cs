﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mentr
{
    public partial class Mentors : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet ds = new DataSet();
            string constr = ConfigurationManager.ConnectionStrings["SQLAzureConnection"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("GetMentorsByMenteeEmail"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@Email", "anastasaki.er@gmail.com");
                        cmd.Connection = con;

                        sda.Fill(ds);
                    }
                }

                mentorsGrid.DataSource = ds;
                mentorsGrid.DataBind();
            }
        }
    }
}