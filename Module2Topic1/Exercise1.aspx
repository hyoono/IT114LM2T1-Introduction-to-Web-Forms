<%@ Page Language="C#" CodeBehind="~/Exercise1.aspx.cs" Inherits="Module1Exercise1.Exercise1" %>

<%-- Exercise 1: Exploring Basic Controls of ASP.NET WebForms--%>
<%-- Useful References: https://www.tutorialspoint.com/asp.net/index.htm --%>
<!DOCTYPE html>
<html>
<head>
    <title>Malayan Music Player</title>
</head>
<body>
    <h1>Malayan Music Player</h1>
    <%-- !! IMPORTANT: Make sure to use the asp tag for each TODO  !! --%>
    <form runat="server">
        <%-- TODO 2.1 Create a label displaying the name of your favorite song and its artist (e.g. Yesterday - The Beatles)--%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_custom_controls.htm#:~:text=Label --%>
        <asp:Label ID="FavSong" runat="server" Text="I'd Do Anything for Love (But I Won't Do That) - Meat Loaf"></asp:Label><br>

        <%-- TODO 2.2 Create an image that is 200px by 200x big showing the album cover of your favorite song. Make sure to set the alternative text. --%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_basic_controls.htm#:~:text=Image%20Control --%>
        <asp:Image ID="albumCover" runat="server" ImageUrl="https://t2.genius.com/unsafe/252x252/https%3A%2F%2Fimages.genius.com%2F4a10ff1efb2c932d527b3cbdd9252036.597x600x1.jpg" Height="200px" Width="200px" AlternateText="Album Cover of I'd Do Anything for Love (But I Won't Do That) - Meat Loaf from Genius">
        </asp:Image><br />

        <%-- TODO 2.3 Create three buttons with texts. "Prev", "Play", and "Next" --%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_basic_controls.htm#:~:text=Button%20Controls --%>
        <asp:Button ID="Prev" runat="server" Text="Prev">
        </asp:Button>
        <asp:Button ID="Play" runat="server" onclick="Play_Click" Text="Play">
        </asp:Button>
        <asp:Button ID="Next" runat="server" Text="Next">
        </asp:Button>

        <%-- TODO 2.4 Create a span. Once the play button is pressed, the span should display "Now playing <favorite song>" --%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_first_example.htm#:~:text=convertoupper --%>
        <br />
        <span id="NowPlaying" runat="server"></span>
        <br />
        <script runat="server">
            void Play_Click(object sender, EventArgs e)
            {
                NowPlaying.InnerText = "Now playing: " + FavSong.Text;
            }
        </script>

        <%-- TODO 2.5 Display the current time using the template syntax <%= %> --%>
        <br />
        <asp:Label ID="currentTime" runat="server" Text="Time In the Philippines (GMT +8)"></asp:Label>
        <br />
        <span id="time" runat="server"><%= DateTime.Now.ToString("hh:mm:ss tt") %></span>

    </form>
</body>
</html>
