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
             <%--     <form id="form1" runat="server">--%>
     <nav class="navbar navbar-light navbar-expand-md border rounded" style="background: #D3E0EA;">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Life Planner&nbsp;</a>
            <button data-bs-toggle="collapse" class="navbar-toggler" data-bs-target="#navcol-1"><span class="visually-hidden">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
          
            <button onclick="history.back()" class="btn btn-primary border rounded" type="button" style="background: #1687A7; text-align: right;"><i class="fa fa-arrow-circle-left" aria-hidden="true"></i>&nbsp;Back</button>
            
            <div class="collapse navbar-collapse" id="navcol-1">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="#" style="color: #1687A7;">Help</a></li>
                    <li class="nav-item"></li>
                    <li><a class="nav-link" href="#" style="color: #1687A7;"><i class="fa fa-question" style="color: #1687A7; font-size: 25px;">
                        <asp:Button ID="btnAboutUs" runat="server" ClientIDMode="Static" OnClick="Button1_Click" Text="About Us" BackColor="#0099CC" Font-Size="14pt" ForeColor="White" Height="33px" Width="93px" />
                        </i></a></li>
                </ul>
            </div>
        </div>
    </nav>
         <button class="btn btn-primary" type="button" style="background: transparent; color: rgb(0,0,0);" onclick="openForm()">
                                <i class="fas fa-plus-square" style="color: #276678;"></i>
                                Add Task ...</button>
                            <div class="form-popup" id="myForm" style="display: none">
                                <h1>Add Task</h1>
                                <asp:TextBox ID="txtTitle" runat="server" BackColor="Silver" Width="218px" placeholder="Enter Task Name"></asp:TextBox>
                                <asp:Calendar ID="Calendar" runat="server" SelectionMode="DayWeekMonth" onselectionchanged="Calendar_SelectionChanged" ShowGridLines="True"></asp:Calendar>
                                <asp:LinkButton ID="addTaskBtn" runat="server" BackColor="Transparent" ForeColor="Black" CssClass="btn btn-primary" OnClick="AddTask">
                            Add
                                </asp:LinkButton>
                                <button type="button" class="btn cancel" onclick="closeForm()">Cancel</button>
                            </div>
         <asp:Panel ID="pnlcheck" runat="server" Visible="false"></asp:Panel>
     <asp:GridView ID="addingTask" runat="server" AutoGenerateColumns="False" CssClass="table table-striped" OnRowDataBound="gvList_RowDataBound" OnSelectedIndexChanged="addingTask_SelectedIndexChanged" OnRowCommand="gvList_RowCommand">
                                <Columns>
                                    <asp:BoundField DataField="TaskId" HeaderText="ID" />
                                    <asp:BoundField DataField="Title" HeaderText="List Name" />
                                    <asp:BoundField DataField="Status" HeaderText="Status" />
                                    <asp:BoundField DataField="DueDate" HeaderText="Due date" />
                                    <asp:TemplateField HeaderText="Actions">
                                        <ItemTemplate>
                                            <asp:Button ID="btnEdit" runat="server" CssClass="btn btn-primary" 
                                                OnClientClick="return showEdit();" Text="Edit" CommandName="EditList" BackColor="#D3E0EA" BorderColor="#D3E0EA" />
                                            <asp:CheckBox ID="cbDone" runat="server" OnCheckedChanged="cbDone_CheckedChanged" Text="Done/Undone"/>
                                            <asp:Button ID="btnDelete" runat="server" CssClass="btn btn-danger"
                                                OnClientClick="return confirm('Are you sure you want to delete this list?')" Text="Delete" CommandName="DeleteList" BackColor="#276678" BorderColor="#276678" />
                                            <asp:Button ID="temp" runat="server" Text="" BackColor="Transparent" BorderColor="Transparent" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
              <footer style="background: #D3E0EA;">
                <p>&copy;  - My Life Planner Application</p>
            </footer>
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

