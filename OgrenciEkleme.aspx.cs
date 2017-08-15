using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace StudentDatabase
{
  
    public partial class OgrenciEkleme : System.Web.UI.Page
    {

        private String studentName;
        private int studentNumber;
        private String studentClass;
        private DataTable myTable;
        private GridView studentView;
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        
        protected void formview1_ItemInserted(object sender, FormViewInsertedEventArgs e)
        {
            Response.Redirect("/OgrenciEkleme.aspx");
        }
    }
}