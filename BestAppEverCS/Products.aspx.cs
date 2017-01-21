using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Products : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSelectProduct_Click(object sender, EventArgs e)
    {
        //User selects DDL values and they get stored into the row of text boxes below them.
        txtSelProd_ID.Text = DDLProd_ID.SelectedValue;
        txtSelCust_ID.Text = DDLCust_ID.SelectedValue;
        txtSelProdQty.Text = DDLProdQty.SelectedValue;
    }

    protected void btnInsertProduct_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("server=000.000.000.000;database=TheName;user=TheName;password=ThePassword;");
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;

        con.Open();
        cmd.CommandText = "Insert Into Products (Prod_ID, Cust_ID, Quantity) Values (" + txtSelProd_ID.Text + "," + txtSelCust_ID.Text + "," + txtSelProdQty.Text + " ) ";
        cmd.ExecuteNonQuery();
        cmd.Clone();
        con.Close();

        //'App goes to this page to refresh it - post back.
        Response.Redirect("Products.aspx");
    }

    protected void btnRefreshDatabase_Click(object sender, EventArgs e)
    {       
        SqlConnection con = new SqlConnection("server=000.000.000.000;database=TheName;user=TheName;password=ThePassword;");
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;

        con.Open();
        cmd.CommandText = "select * from Products ";
        SqlDataReader r = cmd.ExecuteReader();

        if (r.HasRows)
        {
            while (r.Read())
            {
                txtSelProd_ID.Text = r["Prod_ID"].ToString();
                txtSelCust_ID.Text = r["Cust_ID"].ToString();
                txtSelProdQty.Text = r["Quantity"].ToString();
            }
        }
        con.Close();
    }
    
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("server=000.000.000.000;database=TheName;user=TheName;password=ThePassword;");
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;

        con.Open();
        cmd.CommandText = "Update Products Set Cust_ID =" + DDLProdUpdateCust_ID.SelectedValue + ", Quantity =" + DDLProdUpdateQty.SelectedValue + " Where Prod_ID =" + DDLUpdateProd_ID.SelectedValue;
        cmd.ExecuteNonQuery();
        cmd.Clone();
        con.Close();

        //refresh page:
        Response.Redirect("Products.aspx");
    }
    
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("server=000.000.000.000;database=TheName;user=TheName;password=ThePassword;");
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;

        con.Open();
        cmd.CommandText = "delete from Products where Prod_ID=" + DDLDeleteProd_ID.SelectedValue;
        cmd.ExecuteNonQuery();
        cmd.Clone();
        con.Close();

        //refresh page:
        Response.Redirect("Products.aspx");
    }
}
