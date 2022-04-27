<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LifePlanner.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="pnlNavigation" runat="server" ClientIDMode="Static">
            <div class="container">
                <div class="row">
                    <nav class="navbar navbar-expand-lg navbar-light navbar-nav w-100" style="background-color:#276678;">
                        <div class="container-fluid">

                            <a class="navbar-brand" href="#">Life Planner&nbsp;</a>

                            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                                <%-- <asp:LinkButton ID="btnHome" runat="server" href="Login.aspx" ForeColor="White">Home</asp:LinkButton>
                                
                                <asp:LinkButton ID="btnSignUp" runat="server" href="SignUp.aspx">Sign UP</asp:LinkButton>

                                <asp:LinkButton ID="btnLoginPage" runat="server" href="Login.aspx">Login</asp:LinkButton>

                                <asp:LinkButton ID="btnContact" runat="server" href="ContactUs.aspx">Contact</asp:LinkButton>

                                <asp:LinkButton ID="btnAbout" runat="server" href="AboutUs.aspx">About us</asp:LinkButton>--%>
                                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                                    <li class="nav-item" style="margin:5px">
                                        <asp:LinkButton ID="btnHome" runat="server" href="Login.aspx" ForeColor="White">Home</asp:LinkButton>
                                    </li>
                                    <li class="nav-item" style="margin:5px">
                                        <asp:LinkButton ID="btnSignUp" runat="server" href="SignUp.aspx" ForeColor="White">Sign up</asp:LinkButton>
                                    </li>
                                    <li class="nav-item" style="margin:5px">
                                        <asp:LinkButton ID="btnLoginPage" runat="server" href="Login.aspx" ForeColor="White">Login</asp:LinkButton>
                                    </li>
                                    <li class="nav-item" style="margin:5px">
                                        <asp:LinkButton ID="btnContact" runat="server" href="ContactUs.aspx" ForeColor="White">Contact</asp:LinkButton>
                                    </li>
                                    <li class="nav-item" style="margin:5px">
                                        <asp:LinkButton ID="AboutUs" runat="server" href ="AboutUs.aspx">About Us</asp:LinkButton>
                                    </li>

                                </ul>
                            </div>
                        </div>
                    </nav>
                    <hr />
                </div>
            </div>
        </asp:Panel>

        <div class="container" style="margin-top: 5px; margin-bottom: 5px">
            <div class="row">
                <div class="col-sm-6">
                    <img src="https://images.unsplash.com/photo-1492724724894-7464c27d0ceb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGNhbnlvbnxlbnwwfHwwfHw%3D&w=1000&q=80" alt="Canyon Photo" height="100%" width="100%" />
                </div>

                <div class="col-sm-4">

                    <div style="text-align: left; margin-top: 150px; font-size: xx-large">
                        <p>Log into your Life Planner</p>
                    </div>

                    <br />

                    <div>
                        <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" ClientIDMode="Static" placeholder="Username" Style="width: 90%"></asp:TextBox>
                        <!-- <input id="txtUsername" type="text" placeholder="Email or Username" style="width: 90%"/> -->
                    </div>

                    <br />

                    <div>
                        <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" ClientIDMode="Static" TextMode="Password" placeholder="Password" Style="width: 90%"></asp:TextBox>
                        <!-- <input id="txtPassword" type="password" placeholder="Password" style="width: 90%"/> -->
                    </div>

                    <br />

                    <div>
                        <asp:Button ID="btnLogin" runat="server" CssClass="btn btn-primary" Text="Submit" Style="background-color: #276678; width: 90%" OnClick="btnLogin_Click" />

                        <!-- <input id="btnSubmit" type="submit" value="Submit" style="background-color:#276678; width: 60%"/> -->
                    </div>

                    <br />

                    <div style="display: inline-flex">
                        <p>Not a member yet? &nbsp;</p>
                        <a href="SignUp.aspx">Sign Up</a>
                        <!--<asp:HyperLink ID="lnkSignUp" runat="server" href="SignUp.aspx">Sign Up</asp:HyperLink> -->
                    </div>

                    <br />

                    <div style="margin-bottom: 150px">
                        <asp:Label ID="lblLoginFailed" runat="server" CssClass="alert alert-danger" Visible="false"></asp:Label>
                    </div>

                </div>

                <div class="col-sm-2" style="background-color: #276678"></div>

            </div>
        </div>
        <div>
            <footer class="card-footer" style="background-color: #F6F5F5">
                <p>&copy; <%: DateTime.Now.Year %> - Life Planner</p>
            </footer>
        </div>
    </form>
</body>
</html>
