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
                    <li><a href="#" style="color: var(--bs-dark); width: 200px;"><i class="fa fa-home" style="color: #1687A7;"></i>Dashboard</a></li>
                    <li class="sidebar-brand"><a href="#" style="color: var(--bs-dark); text-decoration: underline; width: 200px;"><i class="fas fa-tasks" style="color: #1687A7;"></i>Tasks</a></li>
                    <li><a href="#" style="color: var(--bs-dark); width: 200px;"><i class="fas fa-user" style="color: #1687A7;"></i>Profile</a></li>
                </ul>
            </div>
        </div>
        <div style="width: 80%; margin: 0 0 0 20%;">
            <div class="row">
                <div class="col" style="margin: 5px;">
                    <h1>Good Morning!</h1>
                </div>
            </div>
            <div class="container">
                <div class="row" style="background: url('assets/images/op.png'); background-repeat: no-repeat; width: 100%; height: 100%;">

                    <div class="row" id="addingTasks">
                        <div class="col">
                            <%--       <asp:LinkButton ID="AddTaskBtn"  runat="server" BackColor="Transparent" ForeColor="Black" CssClass="btn btn-primary" OnClick="AddTask">
                            <i class="fas fa-plus-square" style="color: #276678;">
                            </i>
                            Add List ...
                        </asp:LinkButton>--%>
                            <%--     <button class="btn btn-primary" type="button" style="background: transparent;color: rgb(0,0,0);" onclick="openForm()">
                            <i class="fas fa-plus-square" style="color: #276678;">
                            </i>
                            Add List ...
                        </button>--%>
                            <%-- <div class="form-popup" id="myForm" style="display: none">--%>
                            <%--  <form class="form-container" runat="server">--%>
                            <%-- <h1>Add List</h1>--%>

                            <%--  <label for="name"><b>List Name</b></label>
                            <input id="inputTitle" type="text" placeholder="Enter List Name" name="name" required>--%>
                            <%-- <asp:TextBox ID="txtTitle" runat="server" BackColor="Silver" Width="218px" placeholder = "Enter List Name"></asp:TextBox>--%>
                            <%--                            <button type="submit" class="btn">Add</button>--%>
                            <%-- <asp:LinkButton ID="AddTaskBtn"  runat="server" BackColor="Transparent" OnClientClick="ListAdded()" ForeColor="Black" CssClass="btn btn-primary" OnClick="AddTask">
                            Add
                              </asp:LinkButton>
                            <button type="button" class="btn cancel" onclick="closeForm()">Cancel</button>--%>
                            <%--</form>--%>
                            <%--</div>--%>
                        </div>
                    </div>
                    <asp:Panel ID="pnlList" runat="server">
                        <form runat="server">
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

                            <div class="form-popup" id="editForm" style="display: none">
                                <h1>Edit List Name</h1>
                                <asp:TextBox ID="txtTitleEdit" runat="server" BackColor="Silver" Width="218px" placeholder="Enter new list name"></asp:TextBox>
                                <asp:LinkButton ID="editTask" runat="server" BackColor="Transparent" OnClientClick="return closeForm2();" ForeColor="Black" CssClass="btn btn-primary" OnClick="btnSaveList_Click" Text="Edit">
                                </asp:LinkButton>
                                <button type="button" class="btn cancel" onclick="closeForm2()">Cancel</button>
                                <asp:Label ID="lblListId" runat="server"></asp:Label>
                            </div>
                          
                            <asp:GridView ID="addingList" runat="server" AutoGenerateColumns="False" CssClass="table table-striped" OnRowDataBound="gvList_RowDataBound" OnRowCommand="gvList_RowCommand">
                                <Columns>
                                    <asp:BoundField DataField="ListId" HeaderText="ID" />
                                    <asp:BoundField DataField="Title" HeaderText="List Name" />
                                    <asp:TemplateField HeaderText="Actions">
                                        <ItemTemplate>
                                            <asp:Button ID="btnEdit" runat="server" CssClass="btn btn-primary" 
                                                OnClientClick="return showEdit();" Text="Edit" CommandName="EditList" BackColor="#D3E0EA" BorderColor="#D3E0EA" />
                                            <asp:Button ID="btnShow" runat="server" CssClass="btn btn-primary" Text="Show tasks" CommandName="ShowList" BackColor="#1687A7" BorderColor="#1687A7" />
                                            <asp:Button ID="btnDelete" runat="server" CssClass="btn btn-danger"
                                                OnClientClick="return confirm('Are you sure you want to delete this list?')" Text="Delete" CommandName="DeleteList" BackColor="#276678" BorderColor="#276678" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </form>
                    </asp:Panel>
                </div>
            </div>
        </div>
    </div>
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