using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using Project_Website_SM;

namespace Project_Website_SM.Tables
{
    public partial class Default : System.Web.UI.Page
    {
		protected Project_Website_SM.UserDatabase _db = new Project_Website_SM.UserDatabase();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // Model binding method to get List of Table entries
        // USAGE: <asp:ListView SelectMethod="GetData">
        public IQueryable<Project_Website_SM.Table> GetData()
        {
            return _db.Tables;
        }
    }
}

