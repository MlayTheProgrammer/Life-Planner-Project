<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddEvent.aspx.cs" Inherits="LifePlanner.AddEvent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>
</head>
<body>
    <form id="form1" runat="server">
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
                                        <asp:LinkButton ID="btnTasks" runat="server" href="Tasks.aspx" ForeColor="White" Font-Underline="false">Task Lists</asp:LinkButton>
                                    </li>
                                    <li class="nav-item" style="margin:5px">
  
                                        <i class="fas fa-calendar-alt" style="color: #1687A7;"></i>
                                        <asp:LinkButton ID="btnEvents" runat="server" href="Events.aspx" ForeColor="White">Events</asp:LinkButton>
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
    <div class="container" style="background-color: #D3E0EA">

        <br />

        <div class="row">
            <div class="col-sm-3" style="text-align:right">
                <!-- cancel button, notification, location, and more icons -->
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancle_Click" />

                <br /><br /><br /><br /><br /><br />

                <br />

                <div>
                    <!-- location icon -->
                    <img alt="Location" src="https://www.iconpacks.net/icons/2/free-location-icon-2955-thumb.png" height="25" width="25"/>
                </div>

                <br />

                <div>
                    <!-- more icon -->
                    <img alt="More" src="https://w7.pngwing.com/pngs/267/532/png-transparent-computer-icons-icon-design-others-miscellaneous-blue-text.png" height="25" width="25"/>
                </div>
            </div>

            <div class="col-sm-6">
                <!-- imput details -->
                
                    <div id="eventTitle">
                        <asp:TextBox ID="txtEventTitle" runat="server" width="100%" placeholder="Add Title"></asp:TextBox>
                        <asp:Label ID="lblEventId" runat="server" Visible="false"></asp:Label>
                    </div>
                    <br />
                    <div>
                        <select id="sltStartMonth" runat="server">
                            <option value="0">Month</option>
                            <option value="1">January</option>
                            <option value="2">February</option>
                            <option value="3">March</option>
                            <option value="4">April</option>
                            <option value="5">May</option>
                            <option value="6">June</option>
                            <option value="7">July</option>
                            <option value="8">August</option>
                            <option value="9">September</option>
                            <option value="10">October</option>
                            <option value="11">November</option>
                            <option value="12">December</option>
                        </select>

                        <select id="sltStartDay" runat="server">
                            <option>Day</option>
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>5</option>
                            <option>6</option>
                            <option>7</option>
                            <option>8</option>
                            <option>9</option>
                            <option>10</option>
                            <option>11</option>
                            <option>12</option>
                            <option>13</option>
                            <option>14</option>
                            <option>15</option>
                            <option>16</option>
                            <option>17</option>
                            <option>18</option>
                            <option>19</option>
                            <option>20</option>
                            <option>21</option>
                            <option>22</option>
                            <option>23</option>
                            <option>24</option>
                            <option>25</option>
                            <option>26</option>
                            <option>27</option>
                            <option>28</option>
                            <option>29</option>
                            <option>30</option>
                            <option>31</option>
                        </select>

                        <select id="sltStartTime" runat="server">
                            <option>Time</option>
                            <option>0:00</option>
                            <option>0:15</option>
                            <option>0:30</option>
                            <option>0:45</option>
                            <option>1:00</option>
                            <option>1:15</option>
                            <option>1:30</option>
                            <option>1:45</option>
                            <option>2:00</option>
                            <option>2:15</option>
                            <option>2:30</option>
                            <option>2:45</option>
                            <option>3:00</option>
                            <option>3:15</option>
                            <option>3:30</option>
                            <option>3:45</option>
                            <option>4:00</option>
                            <option>4:15</option>
                            <option>4:30</option>
                            <option>4:45</option>
                            <option>5:00</option>
                            <option>5:15</option>
                            <option>5:30</option>
                            <option>5:45</option>
                            <option>6:00</option>
                            <option>6:15</option>
                            <option>6:30</option>
                            <option>6:45</option>
                            <option>7:00</option>
                            <option>7:15</option>
                            <option>7:30</option>
                            <option>7:45</option>
                            <option>8:00</option>
                            <option>8:15</option>
                            <option>8:30</option>
                            <option>8:45</option>
                            <option>9:00</option>
                            <option>9:15</option>
                            <option>9:30</option>
                            <option>9:45</option>
                            <option>10:00</option>
                            <option>10:15</option>
                            <option>10:30</option>
                            <option>10:45</option>
                            <option>11:00</option>
                            <option>11:15</option>
                            <option>11:30</option>
                            <option>11:45</option>
                            <option>12:00</option>
                            <option>12:15</option>
                            <option>12:30</option>
                            <option>12:45</option>
                            <option>13:00</option>
                            <option>13:15</option>
                            <option>13:30</option>
                            <option>13:45</option>
                            <option>14:00</option>
                            <option>14:15</option>
                            <option>14:30</option>
                            <option>14:45</option>
                            <option>15:00</option>
                            <option>15:15</option>
                            <option>15:30</option>
                            <option>15:45</option>
                            <option>16:00</option>
                            <option>16:15</option>
                            <option>16:30</option>
                            <option>16:45</option>
                            <option>17:00</option>
                            <option>17:15</option>
                            <option>17:30</option>
                            <option>17:45</option>
                            <option>18:00</option>
                            <option>18:15</option>
                            <option>18:30</option>
                            <option>18:45</option>
                            <option>19:00</option>
                            <option>19:15</option>
                            <option>19:30</option>
                            <option>19:45</option>
                            <option>20:00</option>
                            <option>20:15</option>
                            <option>20:30</option>
                            <option>20:45</option>
                            <option>21:00</option>
                            <option>21:15</option>
                            <option>21:30</option>
                            <option>21:45</option>
                            <option>22:00</option>
                            <option>22:15</option>
                            <option>22:30</option>
                            <option>22:45</option>
                            <option>23:00</option>
                            <option>23:15</option>
                            <option>23:30</option>
                            <option>23:45</option>
                        </select>
                    
                        <asp:Label ID="lblTo" runat="server" Text="to"></asp:Label>

                        <select id="sltEndMonth" runat="server">
                            <option value="0">Month</option>
                            <option value="1">January</option>
                            <option value="2">February</option>
                            <option value="3">March</option>
                            <option value="4">April</option>
                            <option value="5">May</option>
                            <option value="6">June</option>
                            <option value="7">July</option>
                            <option value="8">August</option>
                            <option value="9">September</option>
                            <option value="10">October</option>
                            <option value="11">November</option>
                            <option value="12">December</option>
                        </select>
                    
                        <select id="sltEndDay" runat="server">
                            <option>Day</option>
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>5</option>
                            <option>6</option>
                            <option>7</option>
                            <option>8</option>
                            <option>9</option>
                            <option>10</option>
                            <option>11</option>
                            <option>12</option>
                            <option>13</option>
                            <option>14</option>
                            <option>15</option>
                            <option>16</option>
                            <option>17</option>
                            <option>18</option>
                            <option>19</option>
                            <option>20</option>
                            <option>21</option>
                            <option>22</option>
                            <option>23</option>
                            <option>24</option>
                            <option>25</option>
                            <option>26</option>
                            <option>27</option>
                            <option>28</option>
                            <option>29</option>
                            <option>30</option>
                            <option>31</option>
                        </select>

                        <select id="sltEndTime" runat="server">
                            <option>Time</option>
                            <option>0:00</option>
                            <option>0:15</option>
                            <option>0:30</option>
                            <option>0:45</option>
                            <option>1:00</option>
                            <option>1:15</option>
                            <option>1:30</option>
                            <option>1:45</option>
                            <option>2:00</option>
                            <option>2:15</option>
                            <option>2:30</option>
                            <option>2:45</option>
                            <option>3:00</option>
                            <option>3:15</option>
                            <option>3:30</option>
                            <option>3:45</option>
                            <option>4:00</option>
                            <option>4:15</option>
                            <option>4:30</option>
                            <option>4:45</option>
                            <option>5:00</option>
                            <option>5:15</option>
                            <option>5:30</option>
                            <option>5:45</option>
                            <option>6:00</option>
                            <option>6:15</option>
                            <option>6:30</option>
                            <option>6:45</option>
                            <option>7:00</option>
                            <option>7:15</option>
                            <option>7:30</option>
                            <option>7:45</option>
                            <option>8:00</option>
                            <option>8:15</option>
                            <option>8:30</option>
                            <option>8:45</option>
                            <option>9:00</option>
                            <option>9:15</option>
                            <option>9:30</option>
                            <option>9:45</option>
                            <option>10:00</option>
                            <option>10:15</option>
                            <option>10:30</option>
                            <option>10:45</option>
                            <option>11:00</option>
                            <option>11:15</option>
                            <option>11:30</option>
                            <option>11:45</option>
                            <option>12:00</option>
                            <option>12:15</option>
                            <option>12:30</option>
                            <option>12:45</option>
                            <option>13:00</option>
                            <option>13:15</option>
                            <option>13:30</option>
                            <option>13:45</option>
                            <option>14:00</option>
                            <option>14:15</option>
                            <option>14:30</option>
                            <option>14:45</option>
                            <option>15:00</option>
                            <option>15:15</option>
                            <option>15:30</option>
                            <option>15:45</option>
                            <option>16:00</option>
                            <option>16:15</option>
                            <option>16:30</option>
                            <option>16:45</option>
                            <option>17:00</option>
                            <option>17:15</option>
                            <option>17:30</option>
                            <option>17:45</option>
                            <option>18:00</option>
                            <option>18:15</option>
                            <option>18:30</option>
                            <option>18:45</option>
                            <option>19:00</option>
                            <option>19:15</option>
                            <option>19:30</option>
                            <option>19:45</option>
                            <option>20:00</option>
                            <option>20:15</option>
                            <option>20:30</option>
                            <option>20:45</option>
                            <option>21:00</option>
                            <option>21:15</option>
                            <option>21:30</option>
                            <option>21:45</option>
                            <option>22:00</option>
                            <option>22:15</option>
                            <option>22:30</option>
                            <option>22:45</option>
                            <option>23:00</option>
                            <option>23:15</option>
                            <option>23:30</option>
                            <option>23:45</option>
                        </select>
                    </div>

                    <br />

                    <div style="font-size:larger">
                        <p>Event Details</p>
                    </div>

                    <br />

                    <div>
                        <asp:TextBox ID="txtLocation" runat="server" Width="50%" placeholder="Add Location"></asp:TextBox>
                    </div>

                    <br />

                    <div>
                        <asp:Panel ID="pnlDescriptionAddOn" runat="server">
                            <!-- icons -->
                        </asp:Panel>
                        <asp:TextBox ID="txtDescription" runat="server" width="50%" height="100px" placeholder="Add Description"></asp:TextBox>
                    </div>

                    <br />

                
            </div>

            <div class="col-sm-3" style="text-align:left">
                <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
            </div>

        </div>
    </div>

    <div>
        <footer class="card-footer" style="background-color:#F6F5F5">
            <p>&copy; <%: DateTime.Now.Year %>- Life Planner</p>
        </footer>
    </div>
    </form>
</body>
</html>
