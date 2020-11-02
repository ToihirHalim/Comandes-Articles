using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.CodeDom;

namespace userControl
{
    public partial class AddComande : System.Web.UI.Page
    {
        DCDataContext db = new DCDataContext();
        Commande cmd;
        static List<Composition> cmps = new List<Composition>();
        protected double total = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void add(object sender, EventArgs e)
        {
            if(Id.Text != "" || Libele.Text != "" )
            {
                Article art;
                if(Id.Text != "" && int.TryParse(Id.Text,out int id))
                {
                    art = db.Article.Single(x => x.CodeArt == id);
                }
                else
                {
                    art = db.Article.SingleOrDefault(x => x.Libele == Libele.Text);
                }

                if(art != null)
                {

                    foreach (Composition cm in cmps)
                    {
                        if(cm.Article.CodeArt == art.CodeArt)
                        {
                            cm.Qte += int.Parse(quantite.Value);
                            affiche();
                            return;
                        }
                    }

                    Composition cmp = new Composition();
                    cmp.Commande = cmd;
                    cmp.Article = art;
                    cmp.Qte = int.Parse(quantite.Value);
                    cmps.Add(cmp);
                    affiche();
                }
                else
                {

                }
            }else
            {

            }
        }

        protected void delete(object sender, EventArgs e)
        {
            if (Id.Text != "" || Libele.Text != "")
            {
                Article art;
                if (Id.Text != "" && int.TryParse(Id.Text, out int id))
                {
                    art = db.Article.Single(x => x.CodeArt == id);
                }
                else
                {
                    art = db.Article.SingleOrDefault(x => x.Libele == Libele.Text);
                }

                if (art != null)
                {

                    foreach (Composition cm in cmps)
                    {
                        if (cm.Article.CodeArt == art.CodeArt)
                        {
                            int qtt = cm.Qte - int.Parse(quantite.Value);
                            cm.Qte = qtt >= 0 ? qtt : 0;
                            if (qtt < 1)
                            {
                                cmps.Remove(cm);
                            }
                            affiche();
                            return;
                        }
                    }

                    affiche();
                }
                else
                {

                }
            }
            else
            {

            }
        }

        private void affiche()
        {
            total = 0;
            foreach (Composition cm in cmps)
            {
                detail cc = LoadControl("detail.ascx") as detail;
                cc.cmp = cm;
                Panel1.Controls.Add(cc);
                total += (double) cm.Article.Pu * cm.Qte;
            }
        }

        protected void cancel(object sender, EventArgs e)
        {
            cmps.Clear();
            affiche();
        }

        protected void submit(object sender, EventArgs e)
        {
            if(cmps.Count() > 0)
            {
                cmd = new Commande();
                cmd.DateCmd = DateTime.Now;

                foreach (Composition cmp in cmps)
                {
                    cmp.Commande = cmd;
                    db.Composition.InsertOnSubmit(cmp);
                }

                db.SubmitChanges();

                cmps.Clear();
                affiche();
            }
            else
            {

            }
        }
    }
}