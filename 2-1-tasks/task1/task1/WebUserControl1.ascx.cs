using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace task1
{
    public partial class WebUserControl1 : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Request.Cookies["vote"] != null)
            {
                results.Visible = true;
                radio.Visible = false;
                
                SqlConnection con = new SqlConnection("data source= DESKTOP-EJ4EJ89\\SQLEXPRESS; database=task-2-jan; integrated security=SSPI");
                SqlCommand cmd = new SqlCommand("select * from vote", con);
                con.Open();
                SqlDataReader sdr = cmd.ExecuteReader();
                double excellent = 0;
                double vgood = 0;
                double good = 0;
                double fair = 0;
                double poor = 0;
                double count = 0;
                while (sdr.Read())
                {
                    switch (sdr[1].ToString())
                    {
                        case "Excellent":
                            excellent++;
                            count++;
                            //Response.Write(excellent);
                            break;
                        case "Very Good":
                            vgood++;
                            count++;
                            break;
                        case "Good":
                            good++;
                            count++;
                            break;
                        case "Fair":
                            fair++;
                            count++;
                            break;
                        case "Poor":
                            poor++;
                            count++;
                            break;
                    }


                }
                //double ss = (excellent / count) * 100;
                this.excellent.Attributes.Add("aria-valuenow", ((excellent / count) * 100).ToString());
                this.excellent.Attributes.Add("style", $"width:{(excellent / count) * 100}%");
                this.excellent.InnerHtml = $"Excellent {Math.Round((excellent / count) * 100,2)}%";

                this.vgood.Attributes.Add("aria-valuenow", ((vgood / count) * 100).ToString());
                this.vgood.Attributes.Add("style", $"width:{(vgood / count) * 100}%");
                this.vgood.InnerHtml = $"Very Good {Math.Round((vgood / count) * 100),2}%";

                this.good.Attributes.Add("aria-valuenow", ((good / count) * 100).ToString());
                this.good.Attributes.Add("style", $"width:{(good / count) * 100}%");
                this.good.InnerHtml = $"Good {Math.Round((good / count) * 100),2}%";

                this.fair.Attributes.Add("aria-valuenow", ((fair / count) * 100).ToString());
                this.fair.Attributes.Add("style", $"width:{(fair / count) * 100}%");
                this.fair.InnerHtml = $"Fair {Math.Round((fair / count) * 100),2}%";

                this.poor.Attributes.Add("aria-valuenow", ((poor / count) * 100).ToString());
                this.poor.Attributes.Add("style", $"width:{(poor / count) * 100}%");
                this.poor.InnerHtml = $"Poor {Math.Round((poor / count) * 100),2}%";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("data source= DESKTOP-EJ4EJ89\\SQLEXPRESS; database=task-2-jan; integrated security=SSPI");
            SqlCommand com = new SqlCommand($"insert into vote values('{RadioButtonList1.SelectedValue}')",con);
            con.Open();
            com.ExecuteNonQuery();
            con.Close();
            HttpCookie cookie = new HttpCookie("vote");
            cookie.Values["vote"] = "voted";
            cookie.Expires = DateTime.Now.AddDays(30);
            Response.Cookies.Add(cookie);
            //results.Visible = true;
            //radio.Visible = false;
            

        }


    }
}