<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="LifePlanner.SignUp" %>



                             <%-- <ul class="nav navbar-nav navbar-right">
                                 <li><a href="#"><img src="images/LifePlanner.png" class="img-responsive"/>Right</a></li>
                               </ul>--%>
                     <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Tasks</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/fonts/fontawesome-all.min.css">
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="assets/fonts/fontawesome5-overrides.min.css">
    <link rel="stylesheet" href="assets/css/Bootstrap-Calendar.css">
    <link rel="stylesheet" href="assets/css/Sidebar-Menu-1.css">
    <link rel="stylesheet" href="assets/css/Sidebar-Menu.css">
    <link rel="stylesheet" href="assets/css/styles.css">
</head>
<body>
     <form runat="server">
    <asp:Panel ID="pnlNavigation" runat="server" ClientIDMode="Static">
            <div class="container">
                <div class="row">
                    <nav class="navbar navbar-expand-lg navbar-light navbar-nav w-100" style="background-color:#276678;">
                        <div class="container-fluid">

                            <a class="navbar-brand" href="#">Life Planner&nbsp;</a>

                            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                                    <li class="nav-item" style="margin:5px">
                                         <i class="fa fa-home" style="color: #1687A7;"></i>
                                        
                                    <li class="nav-item" style="margin:5px">
                                        <asp:LinkButton ID="btnContact" runat="server" href="ContactUs.aspx" ForeColor="White" Font-Underline="false">Contact</asp:LinkButton>
                                    </li>
                                    <li class="nav-item" style="margin:5px">
                                        <asp:LinkButton ID="btnAbout" runat="server" href="AboutUs.aspx" ForeColor="White" Font-Underline="false">About us</asp:LinkButton>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </nav>
      <div class="row">
    <div class="col-sm-2">
    </div>
    <div class="col-sm-6">
  
        <div>
            <asp:Label ID="lbl" runat="server" Font-Size="25pt" Text="Sign Up To Your Life Planner"></asp:Label>
        </div>
        <p>
            &nbsp;</p>
        <div>
            <br />
            <br />
        </div>
        <p>
            &nbsp;</p>
          <p>
              <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" ClientIDMode="Static" placeholder="Enter your email" Style="width: 90%"></asp:TextBox>
              
          </p>
        <p>
            <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" ClientIDMode="Static" placeholder="Username" Style="width: 90%"></asp:TextBox>
             
        </p>
          <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" ClientIDMode="Static" TextMode="Password" placeholder="Password" Style="width: 90%"></asp:TextBox>
          <br />
        <asp:Label ID="Label2" runat="server" Text="Already a member?"></asp:Label>
          &nbsp;<asp:Button ID="Button1" runat="server" href ="Login.aspx" BackColor="#0099CC" Text="Login"  Width="78px" OnClick="Button1_Click" />
        <p>
        &nbsp<asp:Button ID="btnSignUp" runat="server" BackColor="#0099CC" Text="Sign Up" OnClick="btnSignUpClick" />
            <asp:Label ID="lblFeedback" runat="server" Font-Size="12pt" Visible="False"></asp:Label>
        </p>
    </form>
        <asp:RegularExpressionValidator id="RegularExpressionValidator1" 
                     ControlToValidate ="txtEmail"
                     ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"
                     Display="Static"
                     ErrorMessage="Must be a valid email"
                     EnableClientScript="False" 
                     runat="server"/>
    </div>
    <div class="col-sm-4">
        <img src="https://images.unsplash.com/photo-1492724724894-7464c27d0ceb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGNhbnlvbnxlbnwwfHwwfHw%3D&w=1000&q=80" alt="Canyon Photo" height="100%" width="100%" />
    </div>
  </div>
    <footer class="card-footer" style="background-color:#D3E0EA">
            <p>
                © <%: DateTime.Now.Year %>- Life Planner</p>
    </footer>
  </div>

         </asp:Panel>
            
     
</form>   
</body>
</html>
