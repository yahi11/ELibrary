using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ELibraryManagement
{
    public partial class AdminBookInventory : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            fillAuthorPublisherValues();
            GridView1.DataBind();
        }

        // go button click
        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }

        // add button click
        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        // update button click
        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        // delete button click
        protected void Button3_Click(object sender, EventArgs e)
        {

        }

        // user defined functions

        void fillAuthorPublisherValues()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT author_name FROM author_master_tbl;", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                DropDownList4.DataSource = dt;
                DropDownList4.DataValueField = "author_name";
                DropDownList4.DataBind();

                cmd = new SqlCommand("SELECT publisher_name FROM publisher_master_tbl;", con);
                da = new SqlDataAdapter(cmd);
                dt = new DataTable();
                da.Fill(dt);
                DropDownList3.DataSource = dt;
                DropDownList3.DataValueField = "publisher_name";
                DropDownList3.DataBind();

            }
            catch(Exception ex)
            {

            }
        }

        void addNewBook()
        {

        }

    }
}