using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Linq;

namespace WebApplication1
{
    public partial class _Default : Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public SqlConnection dbconn()
        {
            SqlConnection cnn;
            string connetionString;
            connetionString = "Data Source=172.16.12.14;Initial Catalog=Nalini_guvi;User Id=training1;Password=Karomi@123";
            cnn = new SqlConnection(connetionString);
            return cnn;
        }
        protected void check_login(object sender, EventArgs e)
        {

            
            string password = Request.Form["password"];
            string email = Request.Form["email"];
            SqlConnection cnn = dbconn();
            cnn.Open();
            //string str_query = $"select email,password from User_entry where email='{email}' and password='{password}'";
            string str_query = $"insert into user_info values ('{email}','{password}')";
            SqlCommand cmd = new SqlCommand(str_query, cnn);
            //SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.ExecuteNonQuery();
            cnn.Close();
        }
        protected void check_login2(object sender, EventArgs e)
        {

            string email = Request.Form["emaillog"];
            string password = Request.Form["pswdlog"];
            DataSet dataSet = new DataSet();
            SqlConnection cnn = dbconn();
            cnn.Open();
            string str_query = $"select email,password from user_info where email='{email}' and password='{password}'";
            SqlCommand cmd = new SqlCommand(str_query, cnn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dataSet);
            if (dataSet.Tables[0].Rows.Count == 1)
            {
                Response.Redirect("https://localhost:44357/youtube-clone-master1/Frontend/index.html");
            }
            else
            {
                Response.Redirect("https://localhost:44357/youtube-clone-master1/Frontend/index.html");
            }
            cnn.Close();
        }
    }
}