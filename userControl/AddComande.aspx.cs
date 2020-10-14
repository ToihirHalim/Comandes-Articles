using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace userControl
{
    public partial class AddComande : System.Web.UI.Page
    {
        DCDataContext db = new DCDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(articleId.Text != "")
            {

            }else if (article.Text != "" && prix.Text != "")
            {

            }
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {

        }
    }
}