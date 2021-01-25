using CrudApplication.Services.DbEnvironment;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CrudApplication
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                PopulateGridView();
            }
        }

        private void PopulateGridView()
        {

            using (MySqlConnection con = new MySqlConnection(getMySqlConnectionString()))
            {
                using (MySqlCommand cmd = new MySqlCommand("SELECT * from tbl_user"))
                {
                    using (MySqlDataAdapter da = new MySqlDataAdapter())
                    {
                        cmd.Connection = con;
                        da.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            da.Fill(dt);
                            grdViewUserList.DataSource = dt;
                            grdViewUserList.DataBind();
                        }
                    }
                }
            }

        }

        private String getMySqlConnectionString()
        {
            return new MySqlDbPropertyService().GetConnectionString() ;
        }

    }
 
}