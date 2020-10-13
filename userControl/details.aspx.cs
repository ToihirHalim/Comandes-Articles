using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace userControl
{
    public partial class details : System.Web.UI.Page
    {
        DCDataContext db = new DCDataContext();
        public Commande cmd;
        protected string codecmd = "", date = "",total = "";
        protected Composition[] composition;

        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["Value"] != null)
            {
                string indx = Session["Value"].ToString();
                int index = int.Parse(indx);
                affiche(index);
            }
        }
        protected  void affiche(int index)
        {
            cmd = db.Commande.SingleOrDefault(x => x.CodeCmd == index);
            int max = db.Composition.Count(x => x.Commande == cmd);
            composition = new Composition[max];
            int i = 0;
            foreach (Composition c in db.Composition)
            {
                if (c.Commande == cmd)
                {
                    composition[i] = c;
                    i++;
                }
            }
            
            codecmd = cmd.CodeCmd.ToString();
            DateTime dt = getDate(cmd);
            date = dt.ToString();
            total = totalprx(); Repeater1.DataSource = composition;
            Repeater1.DataBind();
        }
        protected string afficherCtrl(string str)
        {
            int idcmp = int.Parse(str);
            Composition cmp = db.Composition.SingleOrDefault(x => x.IdCmp == idcmp);
            detail cc = LoadControl("detail.ascx") as detail;
            cc.cmp = cmp;
            Panel1.Controls.Add(cc);
            return "";
        }


        protected string totalprx()
        {
            double total = 0;
            foreach(Composition cmp in composition){
                total += (double)cmp.Article.Pu * cmp.Qte;
            }
            return total.ToString();
        }
        protected DateTime getDate(Commande cmd)
        {
            int year = cmd.DateCmd.Value.Year;
            int mois = cmd.DateCmd.Value.Month;
            int day = cmd.DateCmd.Value.Day;
            int heure = cmd.DateCmd.Value.Hour;
            int min = cmd.DateCmd.Value.Minute;
            int sec = cmd.DateCmd.Value.Second;
            DateTime dt = new DateTime(year, mois, day, heure, min, sec);
            return dt;
        }
    }
}