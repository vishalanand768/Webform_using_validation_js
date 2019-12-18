using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


namespace Webform_using_validation_js
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["xyz"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            bindData();
        }

        public void bindData()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from hw181119", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();

            grd.DataSource = dt;
            grd.DataBind();
        }

        protected void sbtn_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into hw181119(Name,Age)values('" + txtname.Text + "','" + txtage.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            bindData();
        }
    }
}