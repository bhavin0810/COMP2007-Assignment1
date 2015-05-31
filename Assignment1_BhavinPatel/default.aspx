<%@ Page Title="" Language="C#" MasterPageFile="~/assignment1.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Assignment1_BhavinPatel._default" %>
<%@ Register Src="~/game.ascx" TagPrefix="uc" TagName="game" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="cntMain" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
 <div>
     <table>
         <tr>
             <td>
                 <h4> Game 1</h4>
                 <uc:game id="game1" runat="server"/>  
             </td>
             <td>
                 <h4> Game 2</h4>
                 <uc:game id="game2" runat="server"/> 
             </td>
             <td>
                 <h4> Game 3</h4>
                 <uc:game id="game3" runat="server"/> 
             </td>
             <td>
                 <h4> Game 4</h4>
                 <uc:game id="game4" runat="server"/> 
             </td>
         </tr>

         <tr> <td>&nbsp;</td></tr>
         <tr> <td>&nbsp;</td></tr>
         <tr> <td>&nbsp;</td></tr>

     </table>
    
</div>      
    <div>
        <asp:Button ID="btnCalculate" runat="server" Text="Calculate Totals" OnClick="btnCalculate_Click"/>
    </div>

    <div>
        <h3>Result:</h3>
    </div>

    <div>
        Wins: <asp:Label ID="lblWins" runat="server"> </asp:Label>
    </div>
    <div>
        Losses: <asp:Label ID="lblLosses" runat="server"> </asp:Label>
    </div>
    <div>
        Winning %:: <asp:Label ID="lblWinning" runat="server"> </asp:Label>
    </div>
    <div>
        Points Scored: <asp:Label ID="lblPointsScored" runat="server"> </asp:Label>
    </div>
    <div>
        Points Allowed: <asp:Label ID="lblPointsAllowed" runat="server"> </asp:Label>
    </div>
    <div>
        Point Differential: <asp:Label ID="lblPointsDifferential" runat="server"> </asp:Label>
    </div>
    <div>
        Total Attendance: <asp:Label ID="lblTotalAttendance" runat="server"> </asp:Label>
    </div>
    <div>
        Average Attendance: <asp:Label ID="lblAverageAttendance" runat="server"> </asp:Label>
    </div>
    <div> </div>
    <div></div>
</asp:Content>


