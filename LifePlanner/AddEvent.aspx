<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddEvent.aspx.cs" Inherits="group_project.AddEvent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>
</head>
<body>
    <asp:Panel ID="pnlNavigation" runat="server" ClientIDMode="Static">
            <div class="container">
               <div class="row">
                    <nav class="navbar navbar-expand-lg navbar-light navbar-nav w-100" style="background-color:#276678;">
                      <div class="container-fluid">
                        <a class="navbar-brand" href="#">Life Planner</a>
                        <%--<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                          <span class="navbar-toggler-icon"></span>
                        </button>--%>
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                              <li class="nav-item">
                              <a class="nav-link" href="#">Home</a>
                            </li>
                            <li class="nav-item">
                              <a class="nav-link active" aria-current="page" href="#">Sign Up</a>
                            </li>
                              <li class="nav-item">
                              <a class="nav-link" href="#">Login</a>
                            </li>
                            <li class="nav-item">
                              <a class="nav-link" href="#">Contact</a>
                            </li>
                             <%-- <ul class="nav navbar-nav navbar-right">
                                 <li><a href="#"><img src="images/LifePlanner.png" class="img-responsive"/>Right</a></li>
                               </ul>--%>
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
                <input id="btnCancel" type="reset" value="Cancel" />

                <br /><br /><br /><br /><br /><br />

                <div>
                    <!-- notification icon -->
                    <img alt="Notification" src="https://cdn0.iconfinder.com/data/icons/social-messaging-ui-color-shapes/128/notification-circle-blue-1024.png" height="25" width="25"/>
                </div>

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
                <form id="form1" runat="server">
                    <div id="eventTitle">
                        <asp:TextBox ID="txtEventTitle" runat="server" width="100%">Add Title</asp:TextBox>
                    </div>
                    <br />
                    <div>
                        <select id="sltStartMonth">
                            <option>Month</option>
                            <option>January</option>
                            <option>February</option>
                            <option>March</option>
                            <option>April</option>
                            <option>May</option>
                            <option>June</option>
                            <option>July</option>
                            <option>August</option>
                            <option>September</option>
                            <option>October</option>
                            <option>November</option>
                            <option>December</option>
                        </select>

                        <select id="sltStartDay">
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

                        <select id="sltStartTime">
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

                        <select id="sltEndMonth">
                            <option>Month</option>
                            <option>January</option>
                            <option>February</option>
                            <option>March</option>
                            <option>April</option>
                            <option>May</option>
                            <option>June</option>
                            <option>July</option>
                            <option>August</option>
                            <option>September</option>
                            <option>October</option>
                            <option>November</option>
                            <option>December</option>
                        </select>
                    
                        <select id="sltEndDay">
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

                        <select id="sltEndTime">
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

                    <div>
                        <asp:Label ID="lblEventDetails" runat="server" Text="Event Details"></asp:Label>
                    </div>

                    <br />

                    <div style="display:block;" width="50%">
                        <asp:Label ID="lblAddNotification" runat="server" Text="Add Notification"></asp:Label>

                        <asp:TextBox ID="txtNotificationTime" runat="server" Width="40px">30</asp:TextBox>

                        <select id="sltMHDW">
                            <option>minutes</option>
                            <option>hours</option>
                            <option>days</option>
                            <option>weeks</option>
                        </select>
                    </div>

                    <br />

                    <div>
                        <asp:TextBox ID="txtLocation" runat="server" Width="50%">Add Location</asp:TextBox>
                    </div>

                    <br />

                    <div>
                        <asp:Panel ID="pnlDescriptionAddOn" runat="server">
                            <!-- icons -->
                        </asp:Panel>
                        <asp:TextBox ID="txtDescription" runat="server" width="50%" height="100px">Add Description</asp:TextBox>
                    </div>

                    <br />

                </form>
            </div>

            <div class="col-sm-3" style="text-align:left">
                <input id="btnSave" type="submit" value="Save" />
            </div>

        </div>
    
        <div>
            <footer class="card-footer" style="background-color:#F6F5F5">
                <p>&copy; <%: DateTime.Now.Year %> - Life Planner</p>
            </footer>
        </div>
    </div>
</body>
</html>
