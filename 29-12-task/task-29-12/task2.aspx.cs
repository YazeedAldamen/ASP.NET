using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace task_29_12
{
    public partial class task2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
                colors.Text = DateTime.Now.ToString();
            

        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            if (Request.Cookies["time"] != null)
            {
                HttpCookie time = Request.Cookies["time"];
                colors.Text = DateTime.Now.ToString();
                string col = time["color"];
                colors.ForeColor = System.Drawing.Color.FromName(col);
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            HttpCookie time = new HttpCookie("time");
            time.Values["color"] = DropDownList1.SelectedValue.ToString();
            time.Expires = DateTime.Now.AddDays(1);
            Response.Cookies.Add(time);
        }
    }
}