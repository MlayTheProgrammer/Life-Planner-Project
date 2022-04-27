<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="LifePlanner.AboutUs" %>
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
    <%--    <form id="form1" runat="server">--%>
    <nav class="navbar navbar-light navbar-expand-md border rounded" style="background: #D3E0EA;">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Life Planner&nbsp;</a>
            <button data-bs-toggle="collapse" class="navbar-toggler" data-bs-target="#navcol-1"><span class="visually-hidden">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>

            <div class="collapse navbar-collapse" id="navcol-1">
                <ul class="navbar-nav ms-auto">
                    <%--<li class="nav-item"><a class="nav-link" href="#" style="color: #1687A7;">Help&nbsp;<i class="fa fa-question" style="color: #1687A7; font-size: 25px;"></i></a></li>--%>
                </ul>
            </div>
        </div>
    </nav>
    <div style="margin: 5px;">
        <div id="wrapper" style="width: 20%; padding: 0;">
            <div id="sidebar-wrapper" style="background: #D3E0EA; width: 20%;">
                <ul class="sidebar-nav">
                    <li><a href="#" style="color: var(--bs-dark); width: 200px;"><i class="fa fa-home" style="color: #1687A7;"></i>Dashboard</a></li>
                    <li class="sidebar-brand"><a href="#" style="color: var(--bs-dark); text-decoration: underline; width: 200px;"><i class="fas fa-tasks" style="color: #1687A7;"></i>Tasks</a></li>
                    <li><a href="#" style="color: var(--bs-dark); width: 200px;"><i class="fas fa-user" style="color: #1687A7;"></i>Profile</a></li>
                </ul>
            </div>
        </div>
        <div style="width: 80%; margin: 0 0 0 20%;">
            <div class="row">
                <div class="col" style="margin: 5px;">
                    <h1>About Us </h1>
     </div>
    <p> The founders of this website are Reggie Mlay, Marti Glasscock, and Faten Ben Guirat. The website was 
        created in April of 2022 with a purpose to help students organize their lives with things such as chores, assignments, 
        due dates, etc. There are plenty of life planners out there however our life planner is unique because it is simple and easy to 
        use while still having an enormous amount of designs and ways to organize your life
    </p>
     </div>

</html>

