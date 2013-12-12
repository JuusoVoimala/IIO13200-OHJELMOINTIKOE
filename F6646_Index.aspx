<%@ Page Language="C#" AutoEventWireup="true" CodeFile="F6646_Index.aspx.cs" Inherits="F6646_Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Juuso Voimala</h1>
        <h2>F6646</h2>
        <img src="images/MinaJaOtus.jpg" width="600"/>
        

        <div>
            <asp:HyperLink ID="tehtava1" runat="server" NavigateUrl="~/F6646_Pisteet.aspx">F6646_Pisteet eli tehtävä 1</asp:HyperLink>
        </div>
        <div>
            <asp:HyperLink ID="tehtava2" runat="server" NavigateUrl="~/F6646_T2.aspx">F6646_T2 eli tehtävä 2</asp:HyperLink>
        </div>
        <div>
            <asp:HyperLink ID="tehtava3" runat="server" NavigateUrl="~/F6646_T3a.aspx">F6646_T3 eli tehtävä 3</asp:HyperLink>
        </div>
        <div>
            <asp:HyperLink ID="tehtava4" runat="server" NavigateUrl="~/F6646_T4.aspx">F6646_T4 eli tehtävä 4</asp:HyperLink>
        </div>
    </div>
    </form>
</body>
</html>
