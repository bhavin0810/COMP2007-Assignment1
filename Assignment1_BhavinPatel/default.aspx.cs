using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment1_BhavinPatel
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            //Initialize the variables
            int totalWins = 0;
            int totalLosses = 0;            
            int pointScored = 0;
            int pointsAllowed =0;
            int pointsDifferential = 0;
            int totalAttendance = 0;
            Decimal averageAttendance = 0;

            Decimal winningPercentage = 0;

            //Get the Value from user control and Calculate Wins - Losses
            RadioButtonList game1RblResult = game1.FindControl("rblResult") as RadioButtonList;
            RadioButtonList game2RblResult = game2.FindControl("rblResult") as RadioButtonList;
            RadioButtonList game3RblResult = game3.FindControl("rblResult") as RadioButtonList;
            RadioButtonList game4RblResult = game4.FindControl("rblResult") as RadioButtonList;

            //Get the value from Game1 user control
            if (game1RblResult.SelectedValue == "0" )
            {
                totalWins++;
            }
            else 
            {
                totalLosses++;
            }

            //Get the value from the game2 user control
            if (game2RblResult.SelectedValue == "0")
            {
                totalWins++;
            }
            else
            {
                totalLosses++;
            }

            //Get the value from the game3 user control
            if (game3RblResult.SelectedValue == "0")
            {
                totalWins++;
            }
            else
            {
                totalLosses++;
            }

            //Get the value from the game4 user Control
            if (game4RblResult.SelectedValue == "0")
            {
                totalWins++;
            }
            else
            {
                totalLosses++;
            }

            //Set the totalWins and totalLosses
            lblWins.Text = totalWins.ToString();
            lblLosses.Text = totalLosses.ToString();

            //Calculate Winning Percentage
            winningPercentage = (totalWins * 100) / 4;

            lblWinning.Text = winningPercentage.ToString();

            //Get value from the user Control and Calculate Points Scored

            TextBox game1TxtScored = game1.FindControl("txtScored") as TextBox;
            TextBox game2TxtScored = game2.FindControl("txtScored") as TextBox;
            TextBox game3TxtScored = game3.FindControl("txtScored") as TextBox;
            TextBox game4TxtScored = game4.FindControl("txtScored") as TextBox;

            pointScored = int.Parse(game1TxtScored.Text) + int.Parse(game2TxtScored.Text) + int.Parse(game3TxtScored.Text) + int.Parse(game4TxtScored.Text);

            //Set the Points Scored
            lblPointsScored.Text = pointScored.ToString();

            //Get value from the user Control and Calculate Points Allowed

            TextBox game1TxtAllowed = game1.FindControl("txtAllowed") as TextBox;
            TextBox game2TxtAllowed = game2.FindControl("txtAllowed") as TextBox;
            TextBox game3TxtAllowed = game3.FindControl("txtAllowed") as TextBox;
            TextBox game4TxtAllowed = game4.FindControl("txtAllowed") as TextBox;

            pointsAllowed = int.Parse(game1TxtAllowed.Text) + int.Parse(game2TxtAllowed.Text) + int.Parse(game3TxtAllowed.Text) + int.Parse(game4TxtAllowed.Text);

            //set the Points Allowed
            lblPointsAllowed.Text = pointsAllowed.ToString();

            //Calculate Points Differentials
            pointsDifferential = pointScored - pointsAllowed;

            //set the Points Differentials
            lblPointsDifferential.Text = pointsDifferential.ToString();

            //Get value from the user Control and Calculate Total Attendance

            TextBox game1TxtSpectators = game1.FindControl("txtSpectators") as TextBox;
            TextBox game2TxtSpectators = game2.FindControl("txtSpectators") as TextBox;
            TextBox game3TxtSpectators = game3.FindControl("txtSpectators") as TextBox;
            TextBox game4TxtSpectators = game4.FindControl("txtSpectators") as TextBox;

            totalAttendance = int.Parse(game1TxtSpectators.Text) + int.Parse(game2TxtSpectators.Text) + int.Parse(game3TxtSpectators.Text) + int.Parse(game4TxtSpectators.Text);

            //Set the Total Attendance
            lblTotalAttendance.Text = totalAttendance.ToString();

            //Calculate Average Attendance

            averageAttendance = totalAttendance / 4;

            //Set the Average Attendance
            lblAverageAttendance.Text = averageAttendance.ToString();


        }
    }
}