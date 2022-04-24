<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="LifePlanner.ContactUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>
</head>
<body>
    <asp:Panel ID="pnlNavigation" runat="server" ClientIDMode="Static">
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
                              <a class="nav-link" href="Tasks.aspx">Home</a>
                            </li>
                            <li class="nav-item">
                              <a class="nav-link active" aria-current="page" href="SignUp.aspx">Sign Up</a>
                            </li>
                              <li class="nav-item">
                              <a class="nav-link" href="#">Login</a>
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
            </div>
    </asp:Panel>
    <div class="container" style="background-color:#D3E0EA; margin-bottom: 50px">
        <div class="row">
            <br />
            <div class="col-6">
                <div style="text-align:center; margin-top: 150px; font-size:xx-large">
                    <p>Contact Us</p>
                </div>

                <br />

                <div style="text-align:center; font-size:large">
                    <p>Let us know if you have any questions</p>
                    <p>comments or concerns.</p>
                </div>
            </div>
            <div class="col-6" style="margin-top: 50px">
                <form id="form1" runat="server">
                    <div><asp:TextBox ID="txtFirstName" runat="server" Width="50%">First Name</asp:TextBox></div>
                    <br />
                    <div><asp:TextBox ID="txtLastName" runat="server" Width="50%">Last Name</asp:TextBox></div>
                    <br />
                    <div><asp:TextBox ID="txtEmail" runat="server" Width="50%">Email</asp:TextBox></div>
                    <br />
                    <div><asp:TextBox ID="txtMessage" runat="server" Width="50%" Height="200px">Message</asp:TextBox></div>
                    <br />
                    <div><asp:Button ID="btn" runat="server" Text="Send Message" Width="50%"/></div>
                    <br />
                </form>
            </div>
        </div>
    </div>

    <div>
        <footer class="card-footer" style="background-color:#F6F5F5">
            <p>&copy; <%: DateTime.Now.Year %> - Life Planner</p>
        </footer>
    </div>

</body>
</html>
