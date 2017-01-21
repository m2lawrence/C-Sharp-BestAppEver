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

public partial class Customers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSelect_Click(object sender, EventArgs e)
    {
        //'Customer inputs info and this Select Button moves it into the text boxes below.
        txtSelectCust_ID.Text = DDLCust_ID.SelectedValue;
        txtSelectName.Text = txtName.Text;
        txtSelectAddress.Text = txtAddress.Text;
        txtSelectEmail.Text = txtEmail.Text;
        txtSelectMobile.Text = txtMobile.Text;
    }
    
    protected void btnInsert_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("server=000.000.000.000;database=TheName;user=TheName;password=ThePassword;");
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;

        con.Open();
        cmd.CommandText = "Insert Into Customer (Cust_ID, Name, Address, Email, Mobile) Values ('" + txtSelectCust_ID.Text + "','" + txtSelectName.Text + "','" + txtSelectAddress.Text + "','" + txtSelectEmail.Text + "','" + txtSelectMobile.Text + "' ) ";
        cmd.ExecuteNonQuery();
        cmd.Clone();
        con.Close();

        //'App goes to this page to refresh it - post back.
        Response.Redirect("Customers.aspx");
    }
    
    protected void btnRefreshDatabaseCustomer_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("server=000.000.000.000;database=TheName;user=TheName;password=ThePassword;");
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;

        con.Open();
        cmd.CommandText = "select * from Customer";
        SqlDataReader r = cmd.ExecuteReader();

        if (r.HasRows)
        {
            while (r.Read())
            {
                txtSelectCust_ID.Text = r["Cust_ID"].ToString();
                txtSelectName.Text = r["Name"].ToString();
                txtSelectAddress.Text = r["Address"].ToString();
                txtSelectEmail.Text = r["Email"].ToString();
                txtSelectMobile.Text = r["Mobile"].ToString();
            }
        }
        con.Close();
    }
    
    protected void btnUpdateCustomer_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("server=000.000.000.000;database=TheName;user=TheName;password=ThePassword;");
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;

        con.Open();
        cmd.CommandText = "Update Customer Set Name ='" + txtUpdateName.Text + "', Address ='" + txtUpdateAddress.Text + "', Email ='" + txtUpdateEmail.Text + "', Mobile ='" + txtUpdateMobile.Text + "'Where Cust_ID =" + DDLUpdateCust_ID.SelectedValue;
        cmd.ExecuteNonQuery();
        cmd.Clone();
        con.Close();

        //refresh page:
        Response.Redirect("Customers.aspx");
    }
    
    protected void btnDeleteCustomer_Click(object sender, EventArgs e)
    {       
        SqlConnection con = new SqlConnection("server=000.000.000.000;database=TheName;user=TheName;password=ThePassword;");
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;

        con.Open();
        cmd.CommandText = "delete from Customer where Cust_ID=" + DDLDeleteCust_ID.SelectedValue;
        cmd.ExecuteNonQuery();
        cmd.Clone();
        con.Close();

        //refresh page:
        Response.Redirect("Customers.aspx");
    }








}