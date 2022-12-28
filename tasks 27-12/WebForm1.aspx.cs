using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tasks_27_12
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (Page.IsValid)
            {
                //Response.Write("<script>alert('Registered');</script>");
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('Good job!', 'You are Registered!', 'success')", true);
                
            }
        }

            protected void Button2_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                //Response.Write("<script>alert('Logged In');</script>");
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('Good job!', 'You are Logged In!', 'success')", true);
                

            }
        }
        }
}