using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace _28_12_task
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void add_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("data source=DESKTOP-EJ4EJ89\\SQLEXPRESS; database=task-12-28; integrated security=SSPI");
            con.Open();
            SqlCommand com = new SqlCommand($"insert into comments values('{comment.Text}')",con);
            com.ExecuteNonQuery();
            con.Close();

            con.Open();
            string table = "<table class='table table-dark table-striped'> <tr><th>ID</th><th>Comment</th></tr>";

            SqlCommand com2 = new SqlCommand("select * from comments", con);
            SqlDataReader rdr = com2.ExecuteReader();
            int i = 1;
            while (rdr.Read())
            {
                table += $"<tr><td>{i}</td><td>{rdr[1]}</td>";

                i++;
            }
            table += "</table>";
            Label lbl = new Label();
            lbl.Text = table;
            res.Controls.Add(lbl);
            ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "successalert();", true);

        }
    }
}