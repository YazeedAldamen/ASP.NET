<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControl1.ascx.cs" Inherits="task1.WebUserControl1" %>

<div class="container" id="radio" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
    <h1>Your Opinion Is Important</h1>

    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
        <asp:ListItem>Excellent</asp:ListItem>
        <asp:ListItem>Very Good</asp:ListItem>
        <asp:ListItem>Good</asp:ListItem>
        <asp:ListItem>Fair</asp:ListItem>
        <asp:ListItem>Poor</asp:ListItem>
    </asp:RadioButtonList>
    <br />
    <div>
        <asp:Button class="btn btn-info" ID="Button1" runat="server" Text="Vote" OnClick="Button1_Click" />
    </div>
            </ContentTemplate>
    </asp:UpdatePanel>
</div>
<div id="results" runat="server" visible="false" class="container">
    <h1>Your Opinion Is Important</h1>
    <div class="progress">
        <div class="progress-bar" role="progressbar"  aria-valuemin="0" aria-valuemax="100" id="excellent" runat="server" ></div>
    </div>
    <br />
    <div class="progress">
        <div class="progress-bar bg-secondary" role="progressbar"  aria-valuemin="0" aria-valuemax="100" id="vgood" runat="server" ></div>
    </div>
    <br />
    <div class="progress">
        <div class="progress-bar bg-info" role="progressbar"  aria-valuemin="0" aria-valuemax="100" id="good" runat="server" ></div>
    </div>
    <br />
    <div class="progress">
        <div class="progress-bar bg-danger" role="progressbar"  aria-valuemin="0" aria-valuemax="100" id="fair" runat="server" ></div>
    </div>
    <br />
    <div class="progress" >
        <div class="progress-bar bg-success" role="progressbar"  aria-valuemin="0" aria-valuemax="100" id="poor" runat="server"  ></div>
    </div>


</div>
