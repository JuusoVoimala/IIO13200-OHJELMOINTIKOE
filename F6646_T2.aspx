<%@ Page Language="C#" AutoEventWireup="true" CodeFile="F6646_T2.aspx.cs" Inherits="F6646_T2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Repeater id="tyypit" runat="server">
                    <HeaderTemplate>
                        <table border="1">
                            <tr>
                                <th>Etunimi</th>
                                <th>Sukunimi</th>
                                <th>Numero</th>
                                <th>Työsuhde</th>
                                <th>Palkka</th>
                            </tr>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td><%#Eval("etunimi") %></td>
                            <td><%#Eval("sukunimi") %></td>
                            <td><%#Eval("numero") %></td>
                            <td><%#Eval("tyosuhde") %></td>
                            <td><%#Eval("palkka") %></td>
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                        </table>
                    </FooterTemplate>
                </asp:Repeater>
        <br />
        <br />
        Yhteensä vakituisia työntekijöitä: 
        <asp:Label ID="lblVakituiset" runat="server"></asp:Label>
        <br />
        Vakituisten työntekijöiden kuukausipalkka yhteensä: 
        <asp:Label ID="lblVakituistenPalkka" runat="server"></asp:Label>

    </div>
    </form>
</body>
</html>
