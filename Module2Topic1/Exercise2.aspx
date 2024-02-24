<%@ Page Language="C#" CodeBehind="~/Exercise2.aspx.cs" Inherits="Module1Exercise1.Exercise2" %>

<%-- Exercise 2: Exploring ASP.NET Form Controls --%>
<%-- Useful References: https://www.tutorialspoint.com/asp.net/index.htm --%>
<!DOCTYPE html>
<html>
<head>
    <title>Malayan Music Festival Registration</title>
</head>
<body>
    <h1>Malayan Music Festival Registration</h1>
    <form runat="server">
        <%-- TODO 3.1 Create two text boxes for the first name and last name --%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_basic_controls.htm#:~:text=Text%20Boxes%20and%20Labels --%>
        <asp:Label ID="UserNameLabel" runat="server" Text="Your Name" />
        <br />
        <asp:TextBox ID="FirstName" runat="server" placeholder="First Name"></asp:TextBox>
        <asp:TextBox ID="LastName" runat="server" placeholder="Last Name"></asp:TextBox>
        <br />
        <br />

        <%-- Todo 3.2 Create a text box for inputting the age of the user. Make sure to set the TextMode to the proper value--%>
        <asp:Label ID="AgeLabel" runat="server" Text="Age" />
        <br />
        <asp:TextBox ID="UserAge" runat="server" placeholder="Age" TextMode="Number"></asp:TextBox>
        <br />
        <br />

        <%-- TODO 3.3 Create a DropDownList for the ticket type. It must have the following options: Starter, General Admissions, Gold, VIP --%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_basic_controls.htm#:~:text=DropDownList --%>
        <asp:Label ID="TicketTypeLabel" runat="server" Text="What type of ticket would you choose?" />
        <br />
        <asp:DropDownList ID="TicketType" runat="server">
            <asp:ListItem>Starter</asp:ListItem>
            <asp:ListItem>General Admissions</asp:ListItem>
            <asp:ListItem>Gold</asp:ListItem>
            <asp:ListItem>VIP</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />

        <%-- TODO 3.4 Create a Radio Button List for selecing which days they are planning to attend. It must have following options: Day 1 Only, Day 2 Only, Both Day 1 and 2--%>
        <%-- Hint: https://learn.microsoft.com/en-us/dotnet/api/system.web.ui.webcontrols.radiobuttonlist?view=netframework-4.8.1#:~:text=RadioButtonList%20id=%22RadioButtonList1%22 --%>
        <asp:Label ID="DaysLabel" runat="server" Text="How many days would you attend?" />
        <br />
        <asp:RadioButtonList ID="Days" runat="server">
            <asp:ListItem>Day 1 Only</asp:ListItem>
            <asp:ListItem>Day 2 Only</asp:ListItem>
            <asp:ListItem>Both Day 1 and 2</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <br />
        <%-- TODO 3.5 Create a Checkbox List for the performances they are planning to attend. List down your favorite arists for the options. --%>
        <%-- It must look something like --%>
        <%-- Which performances are you planning to attend? --%>
        <%-- <Artist Name 1> - [ ] --%>
        <%-- <Artist Name 2> - [x] --%>
        <%-- <Artist Name 3> - [ ] --%>
        <%-- Hint: https://learn.microsoft.com/en-us/dotnet/api/system.web.ui.webcontrols.checkboxlist?view=netframework-4.8.1#:~:text=CheckBoxList%20id=%22checkboxlist1%22 --%>
        <asp:Label ID="PerformanceAttendanceLabel" runat="server" Text="What performances in the Festival are you planning to attend?" />
        <br />
        <asp:CheckBoxList ID="PerformanceAttendance" runat="server">
            <asp:ListItem>Beyoncé</asp:ListItem>
            <asp:ListItem>Cher</asp:ListItem>
            <asp:ListItem>Dolly Parton</asp:ListItem>
            <asp:ListItem>Mamamoo</asp:ListItem>
            <asp:ListItem>Troye Sivan</asp:ListItem>
        </asp:CheckBoxList>
         <br />
         <br />
        <%-- TODO 3.6 Create a FileUpload for their proof of payment. It must only accept JPG and PNG files. --%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_file_uploading.htm#:~:text=%3Ch3%3E%20File%20Upload:%3C/h3%3E --%>
        <asp:Label ID="ProofOfPaymentLabel" runat="server" Text="Please upload your proof of payment here" />
        <br />
        <asp:FileUpload ID="ProofOfPayment" runat="server" />
        <asp:Label ID="FileStatus" runat="server" />
        <br />
        <br />
        <asp:Button ID="SubmitButton" runat="server" OnClick="SubmitButton_Click" Text="Submit"/>
        <script runat="server">
            void SubmitButton_Click(object sender, EventArgs e)
            {
                StringBuilder sb = new StringBuilder();
            if (ProofOfPayment.HasFile)
                {
                    try
                    {
                        sb.AppendFormat("Uploading File: {0}", ProofOfPayment.FileName);
                        ProofOfPayment.SaveAs("<C:\\Users\\Joshua Fil Evasco\\Documents\\MCL\\COLLEGE ERA (BS IT)\\2nd year\\IT114L\\IT114LM2T1-Introduction-to-Web-Forms>" + ProofOfPayment.FileName);
                        }
                    catch (Exception ex)
                    {
                        sb.Append("<br/> Error <br/>");
                        sb.AppendFormat("Unable to save file <br/> {0}", ex.Message);
                    }
                }
            else
            {
                    FileStatus.Text = sb.ToString();
            }
            }
        </script>
    </form>
</body>
</html>
