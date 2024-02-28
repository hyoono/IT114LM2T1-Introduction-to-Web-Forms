using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Module1Exercise1
{
    public partial class Exercise4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            result.Text = $"Full Name: {fullName.Text} | Age: {age.Text} | Email: {email.Text} | Confirmed Email: {confirmEmail.Text}";
        }
    }
}