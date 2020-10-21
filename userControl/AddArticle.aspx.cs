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

        protected void addArticle(object sender, EventArgs e)
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
                    error.Style["color"] = "green";
                    error.Text = art.Libele + " added succesfly.";
                }
                else
                {
                    error.Style["color"] = "red";
                    error.Text = "article already exist";
                }

            }
            else
            {
                error.Style["color"] = "red";
                error.Text = "Please enter informations !";
            }
        }

        protected void updateArticle(object sender, EventArgs e)
        {
            if (article.Text != "" && int.TryParse(prix.Text, out int price))
            {
                Article art = db.Article.SingleOrDefault(x => x.Libele == article.Text);

                if (art != null)
                {
                    art.Libele = article.Text;
                    art.Pu = price;
                    db.SubmitChanges();
                    error.Style["color"] = "green";
                    error.Text = art.Libele + " updated succesfly.";
                }
                else
                {
                    error.Style["color"] = "red";
                    error.Text = "article does not already exist";
                }

            }
            else
            {
                error.Style["color"] = "red";
                error.Text = "Please enter informations !";
            }
        }

    }
}