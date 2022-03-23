<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="LifePlanner.Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <script src="https://use.fontawesome.com/c8146e9e78.js"></script>
    <style>
/*.btn {
  background-color: DodgerBlue;
  border: none;
  color: #1687A7;
  padding: 12px 16px;
  font-size: 16px;
  cursor: pointer;
}*/

/* Darker background on mouse-over */
/*.btn:hover {
  background-color: RoyalBlue;
}*/

li{
    margin: 0 0 50px 0;
    color: #000000;
    font-size: 25px;
}
#AddEventBtn{
    background-color: #1687A7; 
    color: #FFFFFF; 
    font-family: Cambria; 
    font-weight: bold; 
    font-size: 20px; 
    margin-left: 40px; 
    margin-top: 5px; 
}
</style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="color: #D3E0EA; background-color: #D3E0EA; height: 50px;">
            <%--<asp:Button ID="AddEvent" runat="server" Height="30px" OnClick="Button1_Click" Text="New Event" Width="102px" />--%>
            <button id="AddEventBtn" style=""><i class="fa fa-plus-circle" aria-hidden="true"></i>
 New Event</button>
            <br />
            <br />
        </div>
        <div style="width: 281px; height: 627px; background-color: #D3E0EA;">
            <ul>
                <li ><i class="fa fa-home" style="color: #1687A7"></i> Dashboard</li>
                <li ><i class="fa fa-list-ul" aria-hidden="true" style="color: #1687A7"></i> Tasks</li>
                <li ><i class="fa fa-user" aria-hidden="true" style="color: #1687A7"></i> Profile</li>
            </ul>
        </div>
    </form>
</body>
</html>
