<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="LifePlanner.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>
</head>
<body>
            <asp:Panel ID="Panel1" runat="server" ClientIDMode="Static">
            <div class="container">
               <div class="row">
                    <nav class="navbar navbar-expand-lg navbar-light navbar-nav w-100" style="background-color:#276678;">
                      <div class="container-fluid">
                        <a class="navbar-brand" href="#">Life Planner</a>
                        <%--<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                          <span class="navbar-toggler-icon"></span>
                        </button>--%>
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                              <li class="nav-item">
                              <a class="nav-link" href="#">Home</a>
                            </li>
                            <li class="nav-item">
                              <a class="nav-link active" aria-current="page" href="SignUp.aspx">Sign Up</a>
                            </li>
                              <li class="nav-item">
                              <a class="nav-link" href="Login.aspx">Login</a>
                            </li>
                            <li class="nav-item">
                              <a class="nav-link" href="ContactUs.aspx">Contact</a>
                            </li>
                             <%-- <ul class="nav navbar-nav navbar-right">
                                 <li><a href="#"><img src="images/LifePlanner.png" class="img-responsive"/>Right</a></li>
                               </ul>--%>
                          </ul>
                        </div>
                      </div>
                    </nav>
                   <hr />  
               </div>
      <div class="row">
    <div class="col-sm-2">
    </div>
    <div class="col-sm-6">
      <form id="form1" runat="server">
        <div>
            <asp:Label ID="lbl" runat="server" Font-Size="25pt" Text="Sign Up To Your Life Planner"></asp:Label>
        </div>
        <p>
            <asp:TextBox ID="txtFirstName" runat="server" BackColor="Silver" style="margin-left: 0px" Width="218px" placeholder = "Input first name"></asp:TextBox>
          </p>
        <div>
            <asp:TextBox ID="txtLastName" runat="server" BackColor="Silver" Width="218px" placeholder = "Input last name"></asp:TextBox>
            <br />
            <br />
        </div>
        <p>
            <asp:TextBox ID="txtPhone" runat="server" BackColor="Silver" Width="218px" placeholder = "Input phone number"></asp:TextBox>
        </p>
          <p>
              <asp:TextBox ID="txtEmail" runat="server" BackColor="Silver" Width="218px" placeholder = "Input email"></asp:TextBox>
          </p>
        <p>
            <asp:TextBox ID="txtUsername" runat="server" BackColor="Silver" Width="218px" placeholder = "Input username"></asp:TextBox>
        </p>
          <asp:TextBox ID="txtPassword" runat="server" BackColor="Silver" Width="218px" placeholder = "Input password"></asp:TextBox>
          <br />
        <asp:Label ID="Label2" runat="server" Text="Already a member?"></asp:Label>
          &nbsp;<asp:Button ID="Button1" runat="server" BackColor="#0099CC" Text="Login" Width="78px" />
        <p>
        &nbsp<asp:Button ID="btnSignUp" runat="server" BackColor="#0099CC" Text="Sign Up" OnClick="btnSignUpClick" />
            <asp:Label ID="lblFeedback" runat="server" Font-Size="25pt" Visible="False"></asp:Label>
        </p>
    </form>
    </div>
    <div class="col-sm-4">
        <img src="https://images.unsplash.com/photo-1492724724894-7464c27d0ceb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGNhbnlvbnxlbnwwfHwwfHw%3D&w=1000&q=80" alt="Canyon Photo" height="100%" width="100%" />
    </div>
  </div>
    <footer class="card-footer" style="background-color:#F6F5F5">
    <p>&copy; <%: DateTime.Now.Year %> - Life Planner</p>
    </footer>
  </div>

  </asp:Panel>
            
     
   
</body>
</html>
