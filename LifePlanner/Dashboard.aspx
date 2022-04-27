<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="LifePlanner.Dashboard" %>

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
                                        <asp:LinkButton ID="btnDashboard" runat="server" href="Dashboard.aspx" ForeColor="White">Dashbaord</asp:LinkButton>
                                    </li>
                                    <li class="nav-item" style="margin:5px">
                                        <i class="fas fa-tasks" style="color: #1687A7;"></i>
                                        <asp:LinkButton ID="btnTasks" runat="server" href="Tasks.aspx" ForeColor="White" Font-Underline="false">Task Lists</asp:LinkButton>
                                    </li>
                                    <li class="nav-item" style="margin:5px">
  
                                        <i class="fas fa-calendar-alt" style="color: #1687A7;"></i>
                                        <asp:LinkButton ID="btnEvents" runat="server" href="Events.aspx" ForeColor="White" Font-Underline="false">Events</asp:LinkButton>
                                    </li>
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
                    <hr />
                </div>
            </div>
        </asp:Panel>
    <div style="margin: 5px;">
    
        <div class="container">
            <div class="row">
                <div class="col" style="margin: 5px;">
                    <h1>What you have to do this week!</h1>
                </div>
            </div>
            <div class="container" style="width=100%; height=100%;">
                 <asp:GridView ID="gvDashboard" runat="server" AutoGenerateColumns="False" CssClass="table table-striped">
                                <Columns>
                                    <%--<asp:BoundField DataField="TaskId" HeaderText="ID" />--%>
                                    <asp:BoundField DataField="Title" HeaderText="Task Name" />
                                    <asp:BoundField DataField="Status" HeaderText="Status" />
                                    <asp:BoundField DataField="DueDate" HeaderText="Due date" />
                        
                                </Columns>
                            </asp:GridView>
            </div>
        </div>
    </div>
         <div>
            <footer class="container" style="background-color: #F6F5F5">
                <p>&copy; <%: DateTime.Now.Year %> - Life Planner</p>
            </footer>
        </div>
         </form>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/Sidebar-Menu.js"></script>
    <%--    </form>--%>


</body>
</html>