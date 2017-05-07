using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Details : Inherited
{
    public static SqlConnection CreateConnection()
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString=@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\BooksDBSQL.mdf;Integrated Security=True;Connect Timeout=30";
        return con;
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Menu.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
            SqlConnection connection = CreateConnection();
            using (connection)
            {
                SqlCommand myCommand = new SqlCommand("insert_ShopCart", connection);
                myCommand.CommandType = CommandType.StoredProcedure;
                myCommand.CommandText = "insert_ShopCart";

                SqlParameter OrderID = new SqlParameter("@orderID", SqlDbType.NVarChar);
                OrderID.Value = "user1";
                myCommand.Parameters.Add(OrderID);

                SqlParameter BookID = new SqlParameter("@BookID", SqlDbType.NVarChar);
                BookID.Value = ((Label)FormView1.FindControl("BookIDLabel")).Text;
                myCommand.Parameters.Add(BookID);

                SqlParameter BookTitle = new SqlParameter("@BookTitle", SqlDbType.NVarChar);
                BookTitle.Value = ((Label)FormView1.FindControl("BookTitleLabel")).Text;
                myCommand.Parameters.Add(BookTitle);

                SqlParameter Price = new SqlParameter("@Price", SqlDbType.Money);
                Price.Value = ((Label)FormView1.FindControl("BookPriceLabel")).Text;
                myCommand.Parameters.Add(Price);

                SqlParameter Qty = new SqlParameter("@Qty", SqlDbType.Int);
                Qty.Value = ((TextBox)FormView1.FindControl("TextBoxQty")).Text;
                myCommand.Parameters.Add(Qty);


                try
                {
                    connection.Open();
                    myCommand.ExecuteNonQuery();
                    Button btn = (Button)sender;
                    btn.Text = " Книгата/ите бяха добавени успешно ";
                    btn.Enabled = false;
                }


                catch (SqlException se)
                {
                    //Label.Text = se.ToString();

                }
            }

        }


    protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
    {

    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
}


    
