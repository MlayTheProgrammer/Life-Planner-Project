<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="group_project.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="split left">

        <img src="https://images.unsplash.com/photo-1492724724894-7464c27d0ceb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGNhbnlvbnxlbnwwfHwwfHw%3D&w=1000&q=80" alt="Canyon Photo" />

    </div>
    
    <div class="split right">
        <div class="centered">
            <div class="logintext">
                <strong>Log into your Life Planner</strong>
            </div>
            <div>
                <input id="Username" type="text" />Email or Username
            <div style="height: 136px; margin-top: 0px">
                <input id="Password" type="password" /> Password
            </div>
            </div>
        </div>
    </div>
    <br />
</asp:Content>