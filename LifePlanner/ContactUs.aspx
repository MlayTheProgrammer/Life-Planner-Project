<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="LifePlanner.ContactUs" %>

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
                    <nav class="navbar navbar-expand-lg navbar-light navbar-nav w-100" style="background-color: #276678;">
                        <div class="container-fluid">

                            <a class="navbar-brand" href="#">Life Planner&nbsp;</a>

                            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                                <%-- <asp:LinkButton ID="btnHome" runat="server" href="Login.aspx" ForeColor="White">Home</asp:LinkButton>
                                
                                <asp:LinkButton ID="btnSignUp" runat="server" href="SignUp.aspx">Sign UP</asp:LinkButton>

                                <asp:LinkButton ID="btnLoginPage" runat="server" href="Login.aspx">Login</asp:LinkButton>

                                <asp:LinkButton ID="btnContact" runat="server" href="ContactUs.aspx">Contact</asp:LinkButton>

                                <asp:LinkButton ID="btnAbout" runat="server" href="AboutUs.aspx">About us</asp:LinkButton>--%>
                                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                                    <li class="nav-item" style="margin: 5px">
                                        <asp:LinkButton ID="btnHome" runat="server" href="Login.aspx" ForeColor="White">Home</asp:LinkButton>
                                    </li>
                                    <li class="nav-item" style="margin: 5px">
                                        <asp:LinkButton ID="btnSignUp" runat="server" href="SignUp.aspx" ForeColor="White">Sign up</asp:LinkButton>
                                    </li>
                                    <li class="nav-item" style="margin: 5px">
                                        <asp:LinkButton ID="btnLoginPage" runat="server" href="Login.aspx" ForeColor="White">Login</asp:LinkButton>
                                    </li>
                                    <li class="nav-item" style="margin: 5px">
                                        <asp:LinkButton ID="btnContact" runat="server" href="ContactUs.aspx" ForeColor="White">Contact</asp:LinkButton>
                                    </li>
                                    <li class="nav-item" style="margin: 5px">
                                        <asp:LinkButton ID="btnAbout" runat="server" href="AboutUs.aspx" ForeColor="White">About us</asp:LinkButton>
                                    </li>

                                </ul>
                            </div>
                        </div>
                    </nav>
                    <hr />
                </div>
            </div>
        </asp:Panel>
        <div class="container" style="background-color: #D3E0EA; margin-bottom: 50px">
            <div class="row">
                <br />
                <div class="col-6">
                    <div style="text-align: center; margin-top: 150px; font-size: xx-large">
                        <p>Contact Us</p>
                    </div>

                    <br />

                    <div style="text-align: center; font-size: large">
                        <p>Let us know if you have any questions</p>
                        <p>comments or concerns.</p>
                    </div>
                </div>
                <div class="col-6" style="margin-top: 50px">

                    <div>
                        <asp:TextBox ID="txtFirstName" runat="server" Width="50%" placeholder="First Name"></asp:TextBox></div>
                    <br />
                    <div>
                        <asp:TextBox ID="txtLastName" runat="server" Width="50%" placeholder="Last Name"></asp:TextBox></div>
                    <br />
                    <div>
                        <asp:TextBox ID="txtEmail" runat="server" Width="50%" placeholder="Email"></asp:TextBox></div>
                    <br />
                    <div>
                        <asp:TextBox ID="txtMessage" runat="server" Width="50%" Height="200px" placeholder="Message"></asp:TextBox></div>
                    <br />
                    <div>
                        <asp:Button ID="btnSend" runat="server" Text="Send Message" Width="50%" OnClick="btnSend_Click" /></div>
                    <br />

                </div>
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
