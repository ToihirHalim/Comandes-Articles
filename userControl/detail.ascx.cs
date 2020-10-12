using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace userControl
{
    public partial class detail : System.Web.UI.UserControl
    {
        public Composition cmp;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (cmp == null) return;
            lblCodeArt.Text = cmp.CodeArt.ToString();
            lblLibele.Text = cmp.Article.Libele;
            lblPu.Text = cmp.Article.Pu.ToString();
            lblQte.Text = cmp.Qte.ToString();
            double pt = (double) cmp.Article.Pu * cmp.Qte;
            lblPt.Text = pt.ToString();
        }
    }
}