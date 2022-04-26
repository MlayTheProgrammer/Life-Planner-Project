<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeBehind="Tasks.aspx.cs" Inherits="LifePlanner.Tasks" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server"> MasterPageFile="~/Site.Master"--%>


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
    <%--<nav class="navbar navbar-light navbar-expand-md border rounded" style="background: #D3E0EA;">
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
    </nav>--%>
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
                                        <asp:LinkButton ID="btnDashboard" runat="server" href="Dashboard.aspx" Font-Underline="false" ForeColor="White">Dashbaord</asp:LinkButton>
                                    </li>
                                    <li class="nav-item" style="margin:5px">
                                        <i class="fas fa-tasks" style="color: #1687A7;"></i>
                                        <asp:LinkButton ID="btnTasks" runat="server" href="Tasks.aspx" ForeColor="White">Task Lists</asp:LinkButton>
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
                    <h1>Welcome back!</h1>
                </div>
            </div>
            <div class="container">
                <div class="row" style="width: 100%; height: 100%;">

                    <div class="row" id="addingTasks">
                        <div class="col">
                           
                        </div>
                    </div>
                    <asp:Panel ID="pnlList" runat="server">
                      <%--  <form runat="server">--%>
                            <button class="btn btn-primary" type="button" style="background: transparent; color: rgb(0,0,0);" onclick="openForm()">
                                <i class="fas fa-plus-square" style="color: #276678;"></i>
                                Add List ...
                            </button>
                            <div class="form-popup" id="myForm" style="display: none">
                                <h1>Add List</h1>
                                <asp:TextBox ID="txtTitle" runat="server" BackColor="Silver" Width="218px" placeholder="Enter List Name"></asp:TextBox>
                                <asp:LinkButton ID="addTaskBtn" runat="server" BackColor="Transparent" ForeColor="Black" CssClass="btn btn-primary" OnClick="AddTask">
                            Add
                                </asp:LinkButton>
                                <button type="button" class="btn cancel" onclick="closeForm()">Cancel</button>
                                
                            </div>

                            <div class="form-popup" id="editForm" runat="server" visible="false">
                                <h1>Edit List Name</h1>
                                <asp:TextBox ID="txtTitleEdit" runat="server" BackColor="Silver" Width="218px" placeholder="Enter new list name"></asp:TextBox>
                                <asp:LinkButton ID="editTask" runat="server" BackColor="Transparent" ForeColor="Black" CssClass="btn btn-primary" OnClick="btnSaveList_Click" Text="Edit">
                                </asp:LinkButton>
                                <%--<button type="button" class="btn cancel" onclick="closeForm2()">Cancel</button>--%>
                                <asp:Button ID="cancelTask" runat="server" Text="Cancel" CssClass="btn cancel" OnClick="cancelAddTask"/>
                                <asp:Label ID="lblListId" runat="server"></asp:Label>
                            </div>
                          
                            <asp:GridView ID="addingList" runat="server" AutoGenerateColumns="False" CssClass="table table-striped" OnRowDataBound="gvList_RowDataBound" OnRowCommand="gvList_RowCommand">
                                <Columns>
                                    <asp:BoundField DataField="ListId" HeaderText="ID" />
                                    <asp:BoundField DataField="Title" HeaderText="List Name" />
                                    <asp:TemplateField HeaderText="Actions">
                                        <ItemTemplate>
                                            <asp:Button ID="btnEdit" runat="server" CssClass="btn btn-primary" 
                                                 Text="Edit" CommandName="EditList" BackColor="#D3E0EA" BorderColor="#D3E0EA" OnClick="EditList" />
                                            <asp:Button ID="btnShow" runat="server" CssClass="btn btn-primary" Text="Show tasks" CommandName="ShowList" BackColor="#1687A7" BorderColor="#1687A7" />
                                            <asp:Button ID="btnDelete" runat="server" CssClass="btn btn-danger"
                                                OnClientClick="return confirm('Are you sure you want to delete this list?')" Text="Delete" CommandName="DeleteList" BackColor="#276678" BorderColor="#276678" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        <%--</form>--%>
                    </asp:Panel>
                </div>
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

    <script>
        function openForm() {
            document.getElementById("myForm").style.display = "block";
        }

        function closeForm() {
            document.getElementById("myForm").style.display = "none";
        }

        function showEdit() {
            document.getElementById("editForm").style.display = "block";
            // return false;
        }

        function closeForm2() {
            document.getElementById("editForm").style.display = "none";
        }

        //function ListAdded() {
        //    d = document.getElementById("addingTasks");
        //    c = document.createElement('div');
        //    c.classList.add("Card");
        //    c.style.backgroundColor = 'yellow';
        //    d.appendChild(c);
        //}
    </script>
</body>
</html>

<%--</asp:Content>--%>