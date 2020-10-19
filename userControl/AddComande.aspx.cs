using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

namespace userControl
{
    public partial class AddComande : System.Web.UI.Page
    {
        DCDataContext db = new DCDataContext();
        Commande cmd;
        List<Composition> cmps = new List<Composition>();

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
                    art = db.Article.SingleOrDefault(x => x.CodeArt == id);
                }
                else
                {
                    art = db.Article.SingleOrDefault(x => x.Libele == Libele.Text);
                }

                if(art != null)
                {
                    Composition cmp = new Composition();
                    cmp.Commande = cmd;
                    cmp.Article = art;
                    cmp.Qte = int.Parse(quantite.Value);
                    cmps.Add(cmp);
                    Label1.Text = cmps.ToString();
                }
                else
                {

                }
            }else
            {

            }
        }

        protected void cancel(object sender, EventArgs e)
        {
            cmps.Clear();
        }

        protected void submit(object sender, EventArgs e)
        {
            if(cmps.Count() > 0)
            {
                cmd = new Commande();
                cmd.DateCmd = DateTime.Now;
                db.Commande.InsertOnSubmit(cmd);

                foreach (Composition cmp in cmps)
                {
                    cmp.Commande = cmd;
                    db.Composition.InsertOnSubmit(cmp);
                }

                db.SubmitChanges();
            }
            else
            {

            }
        }
    }
}