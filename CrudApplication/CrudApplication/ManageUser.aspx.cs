using CrudApplication.Services.DatabaseHandler;
using CrudApplication.Services.DatabaseUtil;
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

            MySqlDatabaseHanlder mySqlDatabaseHanlder = instantiateMySqlDatabaseHanlder();
            MySqlCommand mySqlCommand = mySqlDatabaseHanlder.provideMySqlCommandForSelectQuery();

            using (MySqlDataAdapter mySqlDataAdapter = new MySqlDataAdapter())
            {
                mySqlCommand.Connection = mySqlDatabaseHanlder.provideCurrentConection();
                mySqlDataAdapter.SelectCommand = mySqlCommand;
                using (DataTable dataTable = new DataTable())
                {
                    mySqlDataAdapter.Fill(dataTable);
                    grdViewUserList.DataSource = dataTable;
                    grdViewUserList.DataBind();
                }
            }
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
            String address = ((TextBox)grdViewUserList.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
            String username = ((TextBox)grdViewUserList.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
            String comment = ((TextBox)grdViewUserList.Rows[e.RowIndex].Cells[5].Controls[0]).Text;


            using (MySqlConnection con = new MySqlConnection(connectionString))
            {
                con.Open();
                MySqlCommand cmd = new MySqlCommand("update tbl_user set name='" + name + "', email='" + email + "',address='" + address + "', username='" + username + "',comment='" + comment + "' where id='" + id + "' ", con);
                int t = cmd.ExecuteNonQuery();
                if (t == 0)
                {
                    Response.Write("<script>alert('Unable to update the record...')</script>");
                }
                Response.Redirect("~/ManageUser.aspx");
            }
        }

        protected void grdViewUserList_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            String connectionString = ConfigurationManager.ConnectionStrings["WebAppConnectionString"].ToString();

            //get id
            int id = Convert.ToInt32(grdViewUserList.DataKeys[e.RowIndex].Value.ToString());
            UserDataMySqlTransferService userDataMySqlTransferService = instantiateUserDataMySqlTransferService();
            //construct delete SQL query
            string deleteSqlUserQuery = userDataMySqlTransferService.createSqlQueryForDelete(id);

            //run query to the database
            MySqlDatabaseHanlder mysqlDatabaseHanlder = instantiateMySqlDatabaseHanlder();
            mysqlDatabaseHanlder.RunQueryToDatabase(deleteSqlUserQuery);

            //redirect once completed
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

        private UserDataMySqlTransferService instantiateUserDataMySqlTransferService()
        {
            return new UserDataMySqlTransferService();
        }

        private String getMySqlConnectionString()
        {
            return new MySqlDbPropertyService().GetConnectionString();
        }


        private MySqlDatabaseHanlder instantiateMySqlDatabaseHanlder()
        {
            return new MySqlDatabaseHanlder(new MySqlDbPropertyService());
        }

    }

}