using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace deneme
{
    public partial class Contact : System.Web.UI.Page
    {
        //Connection String
        SqlConnection sqlCon = new SqlConnection(@"Data Source=SEVVALALP;Initial Catalog=AlpinPastaParti;Integrated Security = true;");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                btnDelete.Enabled = false;
                FillGridView();
            }

        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            Clear();
        }

        public void Clear()
        {
            hfCustomertID.Value = "";
            txtCustomerName.Text = txtEmail.Text = txtTelephone.Text = "";
            lblSuccesMessage.Text = lblErrorMessage.Text = ""; 
            btnSave.Text = "Save";
            btnDelete.Enabled = false;

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (sqlCon.State == ConnectionState.Closed)
                sqlCon.Open();

            SqlCommand sqlCmd = new SqlCommand("AddNewCustomerAndOrders", sqlCon);
            sqlCmd.CommandType = CommandType.StoredProcedure;
            sqlCmd.Parameters.AddWithValue("@CustomerName", txtCustomerName.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@Telephone", txtTelephone.Text.Trim());

            sqlCmd.ExecuteNonQuery();
            sqlCon.Close();

            Clear();

            lblSuccesMessage.Text = (hfCustomertID.Value == "") ? "Saved Successfully" : "Updated Successfully";

            FillGridView();
        }



        void FillGridView()
        {
            if (sqlCon.State == ConnectionState.Closed)
            {
                sqlCon.Open();
            }

            SqlDataAdapter sqlData = new SqlDataAdapter("CustomerViewAll", sqlCon);
            sqlData.SelectCommand.CommandType = CommandType.StoredProcedure;
            DataTable datatable = new DataTable();
            sqlData.Fill(datatable);
            sqlCon.Close();
            gvCustomer.DataSource = datatable;
            gvCustomer.DataBind();
        }


        protected void lnk_OnClick(object sender, EventArgs e)
        {
            int customerID = Convert.ToInt32((sender as LinkButton).CommandArgument);


            if (sqlCon.State == ConnectionState.Closed)
            {
                sqlCon.Open();
            }

            SqlDataAdapter sqlData = new SqlDataAdapter("CustomerViewByID", sqlCon);
            sqlData.SelectCommand.CommandType = CommandType.StoredProcedure;
            sqlData.SelectCommand.Parameters.AddWithValue("@CustomerID", customerID) ;
            DataTable datatable = new DataTable();
            sqlData.Fill(datatable);
            sqlCon.Close();
            hfCustomertID.Value = customerID.ToString();
            txtCustomerName.Text = datatable.Rows[0]["CustomerName"].ToString();
            txtEmail.Text = datatable.Rows[0]["Email"].ToString();
            txtTelephone.Text = datatable.Rows[0]["Telephone"].ToString();
            btnSave.Text = "Update";
            btnDelete.Enabled = true;
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(hfCustomertID.Value))
            {
                try
                {
                    if (sqlCon.State == ConnectionState.Closed)
                        sqlCon.Open();

                    SqlCommand sqlCommandmd = new SqlCommand("CustomerDeleteByID", sqlCon);  // Use the correct stored procedure name
                    sqlCommandmd.CommandType = CommandType.StoredProcedure;
                    sqlCommandmd.Parameters.AddWithValue("@CustomerID", Convert.ToInt32(hfCustomertID.Value));

                    sqlCommandmd.ExecuteNonQuery();
                    sqlCon.Close();
                    Clear();
                    FillGridView();
                    lblSuccesMessage.Text = "Deleted Successfully";
                }
                catch (Exception ex)
                {
                    // Log the exception or print it for debugging purposes
                    Console.WriteLine("Exception: " + ex.Message);
                }
            }
        }
    }
}