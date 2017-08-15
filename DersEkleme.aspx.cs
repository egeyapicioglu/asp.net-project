using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentDatabase
{
    public partial class DersEkleme : System.Web.UI.Page
    {
        string name;

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

      
        protected void formview1_ItemInserted(object sender, FormViewInsertedEventArgs e)
        {
            Response.Redirect("/DersEkleme.aspx");
        }
    }
}