<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LifePlanner.Login" %>

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
                              <a class="nav-link" href="Login.aspx">Login</a>
                            </li>
                            <li class="nav-item">
                              <a class="nav-link" href="ContactUs.aspx">Contact</a>&nbsp;</li>
                             <%-- <ul class="nav navbar-nav navbar-right">
                                 <li><a href="#"><img src="images/LifePlanner.png" class="img-responsive"/>Right</a></li>
                               </ul>--%>
<%--<asp:Button ID="btnContact" runat="server" Text="Contact" /--%>
                          </ul>
                        </div>
                      </div>
                    </nav>
                   <hr />  
               </div>
            </div>
    </asp:Panel>

    <div class="container" style="margin-top: 5px">
        <div class="row">
            <div class="col-sm-6">
                <img src="https://images.unsplash.com/photo-1492724724894-7464c27d0ceb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGNhbnlvbnxlbnwwfHwwfHw%3D&w=1000&q=80" alt="Canyon Photo" height="100%" width="100%" />
            </div>

            <div class="col-sm-4">
                <form id="form1" runat="server">
                    <div style="text-align:left; margin-top: 150px; font-size: xx-large">
                        <p>Log into your Life Planner</p>
                    </div>

                    <br />

                    <div>
                        <input id="txtUsername" type="text" placeholder="Email or Username" style="width: 90%"/>
                    </div>
                    
                    <br />

                    <div>
                        <input id="txtPassword" type="password" placeholder="Password" style="width: 90%"/>
                    </div>

                    <br />

                    <div>
                        <input id="btnSubmit" type="submit" value="Submit" style="background-color:#276678; width: 60%"/>
                    </div>

                    <br />
                    
                    <div style="display: inline-flex; margin-bottom:150px">
                        <p>Not a member yet? &nbsp;</p>
                        <a href="SignUp.aspx">Sign Up</a>
                        <!--<asp:HyperLink ID="lnkSignUp" runat="server" href="SignUp.aspx">Sign Up</asp:HyperLink> -->
                    </div>

                </form>
            </div>

            <div class="col-sm-2" style="background-color: #276678"> </div>

        </div>
    </div>
    <div>
        <footer class="card-footer" style="background-color:#F6F5F5">
            <p>&copy; <%: DateTime.Now.Year %> - Life Planner</p>
        </footer>
    </div>
</body>
</html>
