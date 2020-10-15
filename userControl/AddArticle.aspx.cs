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
            if(article.Text != "" &&  int.TryParse(prix.Text, out int price))
            {
                Article art = db.Article.SingleOrDefault(x => x.Libele == article.Text);

                if(art == null)
                {
                    art = new Article();
                    art.Libele = article.Text;
                    art.Pu = price;
                    db.Article.InsertOnSubmit(art);
                    db.SubmitChanges();
                    error.Text = "";
                }
                else
                {
                    error.Text = "article already exist";
                }
                
            }else
            {
                error.Text = "Please enter informations !";
            }
        }
    }
}