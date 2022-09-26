using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Rhino_Games_V1
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            tb_Firstname.Focus();
        }

        protected void Btn_Submit_Click(object sender, EventArgs e)
        {
            try
            {
                //Create the connection string and open the conn
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Rhino_gamesConnectionString"].ConnectionString);
                //SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RhinoGamesV1ConnectionStringAJ"].ConnectionString);
                conn.Open();

                //Gather the data with its values.,
                //it takes the value from the form in the correct order.
                
                string insertQuery = "INSERT into [Registartion] @(Firstname, Surname, Username, Email, Password, ConfirmPassword) values(@Firstname, @Surname, @Username, @Email, @Password, @ConfirmPassword)";
                //andys
                //string insertQuery = "INSERT into [User] (FirstName, Surname, Email, UserName, Password, ConfirmPassword) values(@FirstName, @Surname, @Email, @UserName, @Password, @ConfirmPassword)";
                SqlCommand com = new SqlCommand(insertQuery, conn);

                com.Parameters.AddWithValue("@Firstname", tb_Firstname.Text);
                com.Parameters.AddWithValue("@Surname", tb_Surname.Text);
                com.Parameters.AddWithValue("@Username", tb_Username.Text);
                com.Parameters.AddWithValue("@Email", tb_Email.Text);
                com.Parameters.AddWithValue("@Password", tb_Password.Text);
                com.Parameters.AddWithValue("@ConfirmPassword", tb_ConfirmPassword.Text);

                com.ExecuteNonQuery();
                //Close the connection
                conn.Close();

                Response.Redirect("Reg-Success.aspx");
            }
            //If there is an error, then tell me what it is!
            catch (Exception ex)
            {
                Response.Write("Error:" + ex);
                //throw;
            }
        }

        protected void Btn_Clear_Click(object sender, EventArgs e)
        {
            var tbsClear = new List<TextBox>() { tb_Firstname, tb_Surname, tb_Username, tb_Email, tb_Username, tb_Password, tb_ConfirmPassword };

            foreach (var textBox in tbsClear)
            {
                textBox.Text = "";
            }
        }
    }
}