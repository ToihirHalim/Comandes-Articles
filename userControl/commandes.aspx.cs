using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace userControl
{
    public partial class commandes : System.Web.UI.Page
    {
        DCDataContext db = new DCDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            Repeater1.DataSource = db.Commande;
            Repeater1.DataBind();
        }
        
        protected void Repeater1_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item ||
                e.Item.ItemType == ListItemType.AlternatingItem)
            {
                var Cmd = e.Item.DataItem as Commande;
                
                double total = 0;
                foreach (Composition c in db.Composition)
                {
                    if (c.Commande == Cmd)
                    {
                        total += (double)c.Article.Pu * c.Qte;
                    }
                }
                
                var control = e.Item.FindControl("cmdcntrl") as cmdControl;
                control.cmd = Cmd;
                control.price = total;
            }
        }
    }
}