<%@ Page Language="C#" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default"%>
<%--<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>--%>
<html>
<body>

<style>
    * {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: "Poppins", sans-serif;
}

.container {
  height: 100vh;
  width: 100%;
  align-items: center;
  display: flex;
  justify-content: center;
  background-color:#ffffff;

}

.card {
  border-radius: 10px;
  box-shadow: 0 5px 10px 0 rgba(0, 0, 0, 0.3);
  width: 400px;
  height: 483px;
  background-color: #ffffff;
  padding: 10px 30px;
}

.card_title {
  text-align: center;
  padding: 40px;
}

.card_title h1 {
  font-size: 26px;
  font-weight: bold;
}

.form input {
  margin: 10px 0;
  width: 100%;
  background-color: aliceblue;
  border: none;
  outline: none;
  padding: 6px 20px;
  border-radius: 4px;
}
.butt{
    border-radius: 100px;
    border: none;
    background: #719BE6;
    width: 50%;
    padding: 10px;
    color: #FFFFFF;
    margin-top: 25px;
    box-shadow: 0 2px 10px -3px #719be6;
    display: block;
    margin: 55px auto 10px auto;
 }
.form button {
    border-radius: 100px;
    border: none;
    background: #719BE6;
    width: 50%;
    padding: 10px;
    color: #FFFFFF;
    margin-top: 25px;
    box-shadow: 0 2px 10px -3px #719be6;
    display: block;
    margin: 55px auto 10px auto;
}

.card_terms {
  display: flex;
  align-items: center;
  padding: 10px;
}

.card_terms input[type="checkbox"] {
  background-color: #e2e2e2;
}

.card_terms span {
  margin: 5px;
  font-size: 13px;
}

.card a {
  color: #4796ff;
  text-decoration: none;
}
</style>


	<section>
	 <div class="container">
      <div class="card">
        <div class="card_title">
          

  <img src="http://www.androidpolice.com/wp-content/themes/ap2/ap_resize/ap_resize.php?src=http%3A%2F%2Fwww.androidpolice.com%2Fwp-content%2Fuploads%2F2015%2F10%2Fnexus2cee_Search-Thumb-150x150.png&w=150&h=150&zc=3" height="100" width="100">
          <h1>Create Account</h1>
        </div>
        <div class="form">
        <form name="signup" method="post" runat="server" >
          
          <input type="email" name="email" placeholder="Email" id="email" />
          <input type="password" name="password" placeholder="Password" id="password" />
          <asp:button ID="Button1" class=""  runat="server" OnClick="check_login"  Text="SignUp"/>
          </form>
        </div>
      </div>
    </div>
		</section>
</body>
    
</html>
