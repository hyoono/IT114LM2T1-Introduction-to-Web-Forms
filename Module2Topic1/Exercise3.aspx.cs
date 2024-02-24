using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Module1Exercise1
{
    public partial class Exercise3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // TODO 3.3 Set the text value of the finalGrade label to "Submit your grade percentage to see your final grade!". Watch out for post backs
        }

        protected void Calculate_Click(object sender, EventArgs e)
        {
            double percentage = double.Parse(percentageGrade.Text);
            if (percentage >= 96.00)
            {
                finalGrade.Text = "1.00";
            }
            else if (percentage <= 95.99 && percentage >= 91.51)
            {
                finalGrade.Text = "1.25";
            }
            else if (percentage <= 91.50 && percentage >= 87.01)
            {
                finalGrade.Text = "1.50";
            }
            else if (percentage <= 87.00 && percentage >= 82.51)
            {
                finalGrade.Text = "1.75";
            }
            else if (percentage <= 82.50 && percentage >= 78.01)
            {
                finalGrade.Text = "2.00";
            }
            else if (percentage <= 78.00 && percentage >= 73.51)
            {
                finalGrade.Text = "2.25";
            }
            else if (percentage <= 73.50 && percentage >= 69.01)
            {
                finalGrade.Text = "2.50";
            }
            else if (percentage <= 69.00 && percentage >= 64.51)
            {
                finalGrade.Text = "2.75";
            }
            else if (percentage <= 64.50 && percentage >= 60.01)
            {
                finalGrade.Text = "3.00";
            }
            else
            {
                finalGrade.Text = "5.00";
            }

                if (finalGrade.Text == "1.00")
            {
                Response.Write("<script>alert('Congratulations!');</script>");
            }
        }
    }
}