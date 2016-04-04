using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace AI_Medical
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MedicalConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select * from Register where UserName ='"+TextBox1.Text+"' and Password='"+TextBox2.Text+"'" , con);
            cmd.ExecuteNonQuery();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Response.Redirect("Wikipedia.aspx");
            }
            else
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('Login Failure Please Press Register Button')</script>");
                TextBox1.Text = "";
                TextBox2.Text = "";
                Response.Redirect("Reg.aspx");
            }
        }

    }
}