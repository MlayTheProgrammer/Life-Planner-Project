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
    <%--    <form id="form1" runat="server">--%>
    <nav class="navbar navbar-light navbar-expand-md border rounded" style="background: #D3E0EA;">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Life Planner&nbsp;</a>
            <button data-bs-toggle="collapse" class="navbar-toggler" data-bs-target="#navcol-1"><span class="visually-hidden">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
            <button class="btn btn-primary border rounded" type="button" style="background: #1687A7; text-align: right;"><i class="fas fa-plus-circle text-end"></i>&nbsp;New Event</button>
            <div class="collapse navbar-collapse" id="navcol-1">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="#" style="color: #1687A7;">Help&nbsp;<i class="fa fa-question" style="color: #1687A7; font-size: 25px;"></i></a></li>
                </ul>
            </div>
        </div>
    </nav>
    <div style="margin: 5px;">
        <div id="wrapper" style="width: 20%; padding: 0;">
            <div id="sidebar-wrapper" style="background: #D3E0EA; width: 20%;">
                <ul class="sidebar-nav">
                    <li>
                         <i class="fa fa-home" style="color: #1687A7;"></i>
                         <asp:Button ID="dashboard" runat="server" OnClick="get_dashboard" Text="Dashbaord" BackColor="Transparent" CssClass="btn btn-primary border rounded" ForeColor="#1687A7" Font-Underline="True" />
                       <%-- <a href="#" style="color: var(--bs-dark); width: 200px;">--%>
                           
                           <%-- Dashboard--%>
                       <%-- </a>--%>
                    </li>
                    <li class="sidebar-brand">
                       <%-- <a href="#" style="color: var(--bs-dark); text-decoration: underline; width: 200px;">--%>
                            <i class="fas fa-tasks" style="color: #1687A7;"></i>
                            <asp:Button ID="task" runat="server" OnClick="get_task" Text="Tasks" BackColor="Transparent" CssClass="btn btn-primary border rounded" ForeColor="#1687A7" />
                            <%--Tasks
                        </a>--%>
                    </li>
                    <li><a href="#" style="color: var(--bs-dark); width: 200px;"><i class="fas fa-user" style="color: #1687A7;"></i>Profile</a></li>
                </ul>
            </div>
        </div>
        <div style="width: 80%; margin: 0 0 0 20%;">
            <div class="row">
                <div class="col" style="margin: 5px;">
                    <h1>What you have to do this week!</h1>
                </div>
            </div>
            <div class="container" style="background: url('assets/images/conc.png'); width=100%; height=100%;">
                 <asp:GridView ID="gvDashboard" runat="server" AutoGenerateColumns="False" CssClass="table table-striped">
                                <Columns>
                                    <%--<asp:BoundField DataField="TaskId" HeaderText="ID" />--%>
                                    <asp:BoundField DataField="Title" HeaderText="Task Name" />
                                    <asp:BoundField DataField="Status" HeaderText="Status" />
                                    <asp:BoundField DataField="DueDate" HeaderText="Due date" />
                                    <%--<asp:TemplateField HeaderText="Actions">
                                        <ItemTemplate>
                                            <asp:Button ID="btnEdit" runat="server" CssClass="btn btn-primary" 
                                                 Text="Edit" CommandName="EditList" BackColor="#D3E0EA" BorderColor="#D3E0EA" OnClick="EditList" />
                                            <asp:Button ID="btnShow" runat="server" CssClass="btn btn-primary" Text="Show tasks" CommandName="ShowList" BackColor="#1687A7" BorderColor="#1687A7" />
                                            <asp:Button ID="btnDelete" runat="server" CssClass="btn btn-danger"
                                                OnClientClick="return confirm('Are you sure you want to delete this list?')" Text="Delete" CommandName="DeleteList" BackColor="#276678" BorderColor="#276678" />
                                        </ItemTemplate>
                                    </asp:TemplateField>--%>
                                </Columns>
                            </asp:GridView>
            </div>
        </div>
    </div>
         </form>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/Sidebar-Menu.js"></script>
    <%--    </form>--%>


</body>
</html>