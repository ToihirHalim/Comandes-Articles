using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace userControl
{
    public partial class AddArticle : System.Web.UI.Page
    {
        DCDataContext db = new DCDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //TODO: here!
            /*if(article.Text != "" && prix.Text != "" && Double.Parse(prix.Text))
            {
                Article art = db.Article.SingleOrDefault(x => x.Libele == article.Text);

                if(art != null)
                {
                    art.Libele = article.Text;
                }
                error.Text = "";
            }else
            {
                error.Text = "Please enter informations !";
            }*/
        }
    }
}