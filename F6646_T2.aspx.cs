using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

public partial class F6646_T2 : System.Web.UI.Page
{
    string polku;
    int vakituiset = 0;
    int palkkaYht = 0;

    private DataTable table;
    private DataView view;

    protected void Page_Load(object sender, EventArgs e)
    {
        polku = ConfigurationManager.AppSettings["DefaultXMLFilePath"];

        XDocument doc = XDocument.Load(polku);
        XElement ele = doc.Element("tyontekijat");

        table = new DataTable();
        view = new DataView(table);

        table.Columns.Add("etunimi", typeof(string));
        table.Columns.Add("sukunimi", typeof(string));
        table.Columns.Add("numero", typeof(int));
        table.Columns.Add("tyosuhde", typeof(string));
        table.Columns.Add("palkka", typeof(int));

        foreach (XElement element in ele.Elements())
        {
            table.Rows.Add(
                element.Element("etunimi").Value,
                element.Element("sukunimi").Value,
                element.Element("numero").Value,
                element.Element("tyosuhde").Value,
                element.Element("palkka").Value);
        }

        DataTable dt = table.Clone();

        int count = ele.Descendants("tyontekija").Count();
        
        for (int i = 0; i < count; i++)
        {
            DataRow dr = table.Rows[i];
            dt.Rows.Add(
                dr["etunimi"],
                dr["sukunimi"],
                dr["numero"],
                dr["tyosuhde"],
                dr["palkka"]);
        }

        tyypit.DataSource = dt;
        tyypit.DataBind();

        foreach (XElement element in ele.Elements())
        {
            table.Rows.Add(
                element.Element("etunimi").Value,
                element.Element("sukunimi").Value,
                element.Element("numero").Value,
                element.Element("tyosuhde").Value,
                element.Element("palkka").Value);
            if (element.Element("tyosuhde").Value.Equals("vakituinen"))
            {
                vakituiset = vakituiset + 1;

                palkkaYht = palkkaYht + Convert.ToInt16(element.Element("palkka").Value);
            }
        }

        lblVakituiset.Text = vakituiset.ToString();
        lblVakituistenPalkka.Text = palkkaYht.ToString();
    }
}