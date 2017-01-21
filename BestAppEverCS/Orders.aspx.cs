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

public partial class Orders : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    //All my buttons code blocks are in order from top to bottom.
    protected void btnSelectNumbers_Click(object sender, EventArgs e)
    {
        //User selects DDL values and they get stored into the row of text boxes below them.
        txtOrder_ID.Text = DropDownOrder_ID.SelectedValue;
        txtCust_ID.Text = DropDownCust_ID.SelectedValue;
        txtPart_ID.Text = DropDownParts.SelectedValue;
        txtQuantity.Text = DropDownQty.SelectedValue;
    }
    protected void btnInsert_Click(object sender, EventArgs e)
    {
        if (txtOrder_ID.Text != "" & txtCust_ID.Text != "")
        {
        SqlConnection con = new SqlConnection("server=000.000.000.000;database=TheName;user=TheName;password=ThePassword;");
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;

            con.Open();
            cmd.CommandText = "Insert Into Orders (Order_ID, Cust_ID, Part_ID, Qty) Values (" + txtOrder_ID.Text + "," + txtCust_ID.Text + "," + txtPart_ID.Text + "," + txtQuantity.Text + " ) ";
            cmd.ExecuteNonQuery();
            cmd.Clone();
            con.Close(); 

            //refresh page:
            Response.Redirect("Orders.aspx");
        }
    }

    protected void btnRefreshDatabase_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("server=000.000.000.000;database=TheName;user=TheName;password=ThePassword;");
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;

        con.Open();
        cmd.CommandText = "select * from Orders";
        SqlDataReader r = cmd.ExecuteReader();

        if (r.HasRows)
        {
            while (r.Read())
            {
                txtOrder_ID.Text = r["Order_ID"].ToString();
                txtCust_ID.Text = r["Cust_ID"].ToString();
                txtPart_ID.Text = r["Part_ID"].ToString();
                txtQuantity.Text = r["Qty"].ToString();
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
        cmd.CommandText = "Update Orders Set Qty =" + DDLUpdateQty.SelectedValue + ", Part_ID =" + DDLUpdatePart_ID.SelectedValue + ", Cust_ID =" + DDLUpdateCust_ID.SelectedValue + "Where Order_ID =" + DDLUpdateOrder_ID.SelectedValue;
        cmd.ExecuteNonQuery();
        cmd.Clone();
        con.Close();

        //refresh page:
        Response.Redirect("Orders.aspx");
    }
    
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("server=000.000.000.000;database=TheName;user=TheName;password=ThePassword;");
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;

        con.Open();
        cmd.CommandText = "delete from Orders where Order_ID=" + DDLOrder_ID.SelectedValue;
        cmd.ExecuteNonQuery();
        cmd.Clone();
        con.Close();

        //refresh page:
        Response.Redirect("Orders.aspx");
    }

    protected void DDLOrder_ID_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void DDLUpdateOrder_ID_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}

