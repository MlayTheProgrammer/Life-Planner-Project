<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListTasks.aspx.cs" Inherits="LifePlanner.ListTasks" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
                                        <asp:LinkButton ID="btnDashboard" runat="server" href="Dashboard.aspx" ForeColor="White" Font-Underline="false">Dashbaord</asp:LinkButton>
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
         <%--<button  class="btn btn-primary" type="button" style="background: transparent; color: rgb(0,0,0);" onclick="openForm()">
                                <i class="fas fa-plus-square" style="color: #276678;"></i>
                                Add Task ...</button>--%>
             <div class="container">
                  <asp:LinkButton ID="addEvent" runat="server" Font-Underline="false" ForeColor="#276678" OnClick="AddTaskList">Add Task ...
                              <i class="fas fa-plus-square" style="color: #276678;"></i>
                         </asp:LinkButton>
              <%--<asp:Button ID="add" runat="server" Text="Add Task ..." BackColor="Transparent" BorderColor="Transparent" OnClick="AddTaskList"/>--%>
                            <div class="form-popup" id="myForm" runat="server" visible="false" >
                                <h1>Add Task</h1>
                                <asp:TextBox ID="txtTitle" runat="server" BackColor="Silver" Width="218px" placeholder="Enter Task Name"></asp:TextBox>
                                <asp:Calendar ID="Calendar" runat="server" SelectionMode="DayWeekMonth" onselectionchanged="Calendar_SelectionChanged" ShowGridLines="True"></asp:Calendar>
                                <asp:LinkButton ID="addTaskBtn" runat="server" BackColor="Transparent" ForeColor="Black" CssClass="btn btn-primary" OnClick="AddTask">
                            Add
                                </asp:LinkButton>
                                <asp:Button ID="cancelTask" runat="server" Text="Cancel" CssClass="btn cancel" OnClick="cancelAddTask"/>
                     
                            </div>

                             <div class="form-popup" id="editForm" runat="server" visible="false">
                                <h1>Edit Task</h1>
                                <asp:TextBox ID="txtTitleEdit" runat="server" BackColor="Silver" Width="218px" placeholder="Enter new task name"></asp:TextBox>
                                <asp:CheckBox ID="cbDone" runat="server"  Text="Done/Undone"/>
                                <asp:Calendar ID="CalendarEdit" runat="server" SelectionMode="DayWeekMonth" onselectionchanged="Calendar_SelectionChangedEdit" ShowGridLines="True"></asp:Calendar>
                                <asp:LinkButton ID="editTask" runat="server" BackColor="Transparent" ForeColor="Black" CssClass="btn btn-primary" OnClick="btnSaveList_Click" Text="Edit">
                                </asp:LinkButton>
                              <%--  <button type="button" class="btn cancel" onclick="closeForm2()">Cancel</button>--%>
                                <asp:Button ID="ButtonCancel" runat="server" Text="Cancel" CssClass="btn cancel" OnClick="cancelEditTask"/>
                                <asp:Label ID="lblTaskId" runat="server"></asp:Label>
                            </div>


         <asp:Panel ID="pnlcheck" runat="server" Visible="false"></asp:Panel>
     <asp:GridView ID="addingTask" runat="server" AutoGenerateColumns="False" CssClass="table table-striped" OnRowDataBound="gvList_RowDataBound" OnSelectedIndexChanged="addingTask_SelectedIndexChanged" OnRowCommand="gvList_RowCommand">
                                <Columns>
                                    <asp:BoundField DataField="TaskId" HeaderText="ID" />
                                    <asp:BoundField DataField="Title" HeaderText="Task Name" />
                                    <asp:BoundField DataField="Status" HeaderText="Status" />
                                    <asp:BoundField DataField="DueDate" HeaderText="Due date" />
                                    <asp:TemplateField HeaderText="Actions">
                                        <ItemTemplate>
                                            <asp:Button ID="btnEdit" runat="server" CssClass="btn btn-primary" 
                                                OnClick="EditTask" Text="Edit" CommandName="EditList" BackColor="#D3E0EA" BorderColor="#D3E0EA" />
                                            <%--<asp:CheckBox ID="cbDone" runat="server" OnCheckedChanged="cbDone_CheckedChanged" Text="Done/Undone"/>--%>
                                            <asp:Button ID="btnDelete" runat="server" CssClass="btn btn-danger"
                                                OnClientClick="return confirm('Are you sure you want to delete this list?')" Text="Delete" CommandName="DeleteList" BackColor="#276678" BorderColor="#276678" />
                                            <asp:Button ID="temp" runat="server" Text="" BackColor="Transparent" BorderColor="Transparent" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                 </div>
            <div>
            <footer class="container" style="background-color: #F6F5F5">
                <p>&copy; <%: DateTime.Now.Year %> - Life Planner</p>
            </footer>
        </div>
             </form>
   
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/Sidebar-Menu.js"></script>
    <script>
        function openForm() {
            document.getElementById("myForm").style.display = "block";
        }

        function closeForm() {
            document.getElementById("myForm").style.display = "none";
        }
    </script>

     <%--</form>--%>
</body>
</html>

