using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace userControl
{
    public partial class cmdControl : System.Web.UI.UserControl
    {
        public Commande cmd { get; set; }
        public double price { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (cmd == null) return;
            lbCodeCmd.Text = cmd.CodeCmd.ToString();
            DateTime dt = getDate(cmd);
            lbDateCmd.Text = dt.ToString();
            prix.Text = price.ToString();
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (cmd != null)
            Session["Value"] = cmd.CodeCmd.ToString();
            Response.Redirect("details.aspx");
        }
    }
}