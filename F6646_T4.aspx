<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="F6646_T4.aspx.cs" Inherits="F6646_T4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <div>
        <h1>Läsnäolot</h1>
        <p>
            <asp:Label ID="lblInfo" runat="server"></asp:Label><br/>
            <asp:Button ID="btnHaeOpiskelijat" runat="server" Text="Hae opiskelijat" OnClick="btnHaeOpiskelijat_Click"/>
            <asp:Button ID="btnHaeJaJarjesta" runat="server" Text="Hae opiskelijat sukunimen mukaan aakkosjärjestyksessä" OnClick="btnHaeJaJarjesta_Click"/>
            <asp:DropDownList ID="ddlOpintojakso" runat="server">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>IIO11200</asp:ListItem>
                <asp:ListItem>iio11300</asp:ListItem>
                <asp:ListItem>IIO13200</asp:ListItem>
            </asp:DropDownList>
            <asp:Button ID="btnPaivita" runat="server" text="Hae valitun opintojakson oppilaat" OnClick="btnPaivita_Click"/>
            <asp:Button ID="btnLajittele" runat="server" Text="Lajittele oppilaat opintojaksojen alle sukunimen mukaan aakkosjärjestykseen" OnClick="btnLajittele_Click" />
            <asp:SqlDataSource id="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DemoxOyConnectionString %>" SelectCommand="SELECT DISTINCT [asioid], [firstname], [lastname] FROM [lasnaolot]"></asp:SqlDataSource>
            <asp:SqlDataSource id="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DemoxOyConnectionString %>" SelectCommand="SELECT DISTINCT [course] FROM [lasnaolot]"></asp:SqlDataSource>
            <asp:SqlDataSource id="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DemoxOyConnectionString %>" SelectCommand="SELECT DISTINCT [asioid], [firstname], [lastname] FROM [lasnaolot] ORDER BY [lastname]"></asp:SqlDataSource>
            <asp:SqlDataSource id="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:DemoxOyConnectionString %>" SelectCommand="SELECT DISTINCT [asioid], [firstname], [lastname] FROM [lasnaolot] WHERE [course] LIKE 'IIO11200%' ORDER BY [lastname]"></asp:SqlDataSource>
            <asp:SqlDataSource id="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:DemoxOyConnectionString %>" SelectCommand="SELECT DISTINCT [asioid], [firstname], [lastname] FROM [lasnaolot] WHERE [course] LIKE 'iio11300%' ORDER BY [lastname]"></asp:SqlDataSource>
            <asp:SqlDataSource id="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:DemoxOyConnectionString %>" SelectCommand="SELECT DISTINCT [asioid], [firstname], [lastname] FROM [lasnaolot] WHERE [course] LIKE 'IIO13200%' ORDER BY [lastname]"></asp:SqlDataSource>
            <br />
            <br />
            <br />
       
            <asp:Label ID="lblIIO11200" runat="server"></asp:Label>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="true">
                <Columns>
                    
                </Columns>
            </asp:GridView>
            <br/>
            <br/>
            <asp:Label ID="lbliio11300" runat="server"></asp:Label>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="true">
                <Columns>
                    
                </Columns>
            </asp:GridView>
            <br/>
            <br/>
            <asp:Label ID="lblIIO13200" runat="server"></asp:Label>
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="true">
                <Columns>
                    
                </Columns>
            </asp:GridView>
            
        </p>
    </div>


</asp:Content>

