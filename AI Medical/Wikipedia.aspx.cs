using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Xml;
using System.IO;
using System.Text.RegularExpressions;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace Wikipedia
{
    public partial class Wikipedia : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MedicalConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TextBox2.Text = "";
            var webclient = new WebClient();
            var pagesource = webclient.DownloadString("http://en.wikipedia.org/w/api.php?format=xml&action=query&prop=extracts&titles=" +TextBox1.Text+ "&redirects=true");
            XmlDocument doc = new XmlDocument();
            doc.LoadXml(pagesource);

            var fnode = doc.GetElementsByTagName("extract")[0];

            try
            {
                string ss = fnode.InnerText;
                Regex regex = new Regex("\\<[^\\>]*\\>");
                string.Format("Before:{0}", ss);
                ss = regex.Replace(ss, string.Empty);
                string result = string.Format(ss);
                TextBox2.Text += result;
                
            }
            
            catch
            {
                TextBox2.Text = "Error";
            }
            
            finally
            {

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            SqlCommand cmd = new SqlCommand("insert into Wikipedia values('" + TextBox1.Text + "','" + TextBox2.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}