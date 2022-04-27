<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WelcomePage.aspx.cs" Inherits="LifePlanner.WelcomePage" %>
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
    <form id="form1" runat="server">
    <nav class="navbar navbar-light navbar-expand-md border rounded" style="background: #D3E0EA;">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Life Planner&nbsp;</a>
            <button data-bs-toggle="collapse" class="navbar-toggler" data-bs-target="#navcol-1"><span class="visually-hidden">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
                <button onclick="location.href = 'SignUp.aspx';" class="btn btn-primary border rounded" type="button" style="background: #1687A7; text-align: left;">
                    <i class="" aria-hidden="true"></i>&nbsp;Sign Up</button><button onclick="location.href = '';" class="btn btn-primary border rounded" type="button" style="background: #1687A7; text-align: left;">
                    <i class="" aria-hidden="true"></i>&nbsp;Log In
                </button>
            <div class="collapse navbar-collapse" id="navcol-1">
                <ul class="navbar-nav ms-auto">
                    <asp:LinkButton ID="AboutUs" runat="server" OnClick="AboutUs_Click">About Us</asp:LinkButton>
                </ul>
            </div>
        </div>
    </nav>
    <div style="margin: 5px;">
        
    <h1>Welcome To Your New Life Planner!</h1>
    <div>
    
                        
    <p style ="color: #276678">The perfect app just for you. A life planner that creates event, manages your calendar, and reminds you on your day to day life. 
        This app is a necessity for college students and anyone who needs something to just keep their life on track.
    </p>                    
                        
        </div>
    <h1> Team </h1>
        <div class="row">
    <div class="col-sm-4">
         <img src="https://images.unsplash.com/photo-1492724724894-7464c27d0ceb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGNhbnlvbnxlbnwwfHwwfHw%3D&w=1000&q=80" alt="Canyon Photo" height="30%" width="30%" />
        &nbsp;<p style="width: 117px; margin-left: 186px"> &nbsp;Faten Ben Guirat</p>
         </div>
        <div class="col-sm-4">
        <img src="https://images.unsplash.com/photo-1492724724894-7464c27d0ceb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGNhbnlvbnxlbnwwfHwwfHw%3D&w=1000&q=80" alt="Canyon Photo" height="30%" width="30%" />
        <p style="width: 117px; margin-left: 176px">
            &nbsp;Reggie Mlay</p>
             </div>
        <div class="col-sm-4">
        &nbsp;<img src="https://images.unsplash.com/photo-1492724724894-7464c27d0ceb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGNhbnlvbnxlbnwwfHwwfHw%3D&w=1000&q=80" alt="Canyon Photo" height="30%" width="30%" /><br />
        <p style="width: 117px; margin-left: 196px"> &nbsp;Marti Glasscock</p>
             </div>
            </div>
    <div class="col-sm-4">
        &nbsp;</div>
       
        <footer class="card-footer" style="background-color:#D3E0EA">
            <p>
                © <%: DateTime.Now.Year %>- Life Planner</p>
    </footer>
    
    </asp:Panel>
        </form>
    </body>
</html>
