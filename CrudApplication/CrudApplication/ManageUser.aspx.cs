using CrudApplication.Services.DbEnvironment;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
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
            if (!Page.IsPostBack)
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

        protected void grdViewUserList_RowEditing(object sender, GridViewEditEventArgs e)
        {
            grdViewUserList.EditIndex = e.NewEditIndex;
            PopulateGridView();
        }

        protected void grdViewUserList_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            String connectionString = ConfigurationManager.ConnectionStrings["WebAppConnectionString"].ToString();
            int id = Convert.ToInt32(grdViewUserList.DataKeys[e.RowIndex].Value.ToString());
            String name = ((TextBox)grdViewUserList.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
            String email = ((TextBox)grdViewUserList.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
            String gender = ((TextBox)grdViewUserList.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
            String city = ((TextBox)grdViewUserList.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
            String province = ((TextBox)grdViewUserList.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
            String availability = ((TextBox)grdViewUserList.Rows[e.RowIndex].Cells[6].Controls[0]).Text;
            String comment = ((TextBox)grdViewUserList.Rows[e.RowIndex].Cells[7].Controls[0]).Text;


            using (MySqlConnection con = new MySqlConnection(connectionString))
            {
                con.Open();
                MySqlCommand cmd = new MySqlCommand("update tbl_user set name='" + name + "', email='" + email + "',gender='" + gender + "',city='" + city + "' where id='" + id + "' ", con);
                int t = cmd.ExecuteNonQuery();
                if (t > 0)
                {
                    Response.Write("<script>alert('Data has been updated')</script>");
                }
                Response.Redirect("~/ManageUser.aspx");
            }
        }

        protected void grdViewUserList_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            String connectionString = ConfigurationManager.ConnectionStrings["WebAppConnectionString"].ToString();
            int id = Convert.ToInt32(grdViewUserList.DataKeys[e.RowIndex].Value.ToString());
            using (MySqlConnection con = new MySqlConnection(connectionString))
            {
                con.Open();
                MySqlCommand cmd = new MySqlCommand("DELETE from tbl_user WHERE id='" + id + "'", con);
                int t = cmd.ExecuteNonQuery();
                if (t > 0)
                {
                    Response.Write("<script>alert('Data has been deleted')</script>");
                    grdViewUserList.EditIndex = -1;
                    PopulateGridView();
                }
            }

            Response.Redirect("~/ManageUser.aspx");
        }

        protected void grdViewUserList_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grdViewUserList.EditIndex = -1;
            PopulateGridView();
        }

        protected void grdViewUserList_RowEditing1(object sender, GridViewEditEventArgs e)
        {
            grdViewUserList.EditIndex = e.NewEditIndex;
            PopulateGridView();
        }
    }
 
}