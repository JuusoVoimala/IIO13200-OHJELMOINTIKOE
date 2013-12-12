using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class F6646_T4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int eriOpiskelijat = 0;
        int eriJaksot = 0;

        try
        {
            GridView1.DataSourceID = "SqlDataSource1";
            GridView3.Visible = false;
            GridView1.Visible = false;
            eriOpiskelijat = GridView1.Rows.Count;
            lblIIO11200.Text = "";
            lbliio11300.Text = "";
            lblIIO13200.Text = "";
        }
        catch (Exception)
        {
            lblInfo.Text = "Nyt meni valitettavasti jotain pieleen....";
        }

        try
        {
            GridView2.DataSourceID = "SqlDataSource2";
            GridView2.Visible = false;
            eriJaksot = GridView2.Rows.Count;
            lblIIO11200.Text = "";
            lbliio11300.Text = "";
            lblIIO13200.Text = "";

        }
        catch (Exception)
        {
            lblInfo.Text = "Nyt meni valitettavasti jotain pieleen....";
        }
        finally
        {
            lblInfo.Text = "Löytyy " + eriJaksot + " erilaista opintojaksoa ja " + eriOpiskelijat + " eri opiskelijan tietoja.";
        }
    }
    protected void btnHaeOpiskelijat_Click(object sender, EventArgs e)
    {
        try
        {
            GridView1.Visible = true;
            lblInfo.Text = "Onnistui!";
            lblIIO11200.Text = "";
            lbliio11300.Text = "";
            lblIIO13200.Text = "";
        }
        catch (Exception)
        {
            lblInfo.Text = "Nyt meni valitettavasti jotain pieleen....";
        }
    }
    protected void btnHaeJaJarjesta_Click(object sender, EventArgs e)
    {
        try
        {
            GridView1.Visible = true;
            GridView1.DataSourceID = "SqlDataSource3";
            lblInfo.Text = "Onnistui! Oppilaat näytetään sukunimen mukaisessa aakkosjärjestyksessä!";
        }
        catch (Exception)
        {
            lblInfo.Text = "Nyt meni valitettavasti jotain pieleen....";
        }
    }

    protected void btnPaivita_Click(object sender, EventArgs e)
    {
        try
        {

            if (ddlOpintojakso.SelectedValue.Equals("IIO11200"))
            {
                GridView1.DataSourceID = "SqlDataSource4";
                GridView1.Visible = true;
                lblInfo.Text = "Onnistui! Näytetään vain opintojakson IIO11200 oppilaat sukunimen mukaan aakkosjärjestyksessä!";
            }
            else if (ddlOpintojakso.SelectedValue.Equals("iio11300"))
            {
                GridView1.DataSourceID = "SqlDataSource5";
                GridView1.Visible = true;
                lblInfo.Text = "Onnistui! Näytetään vain opintojakson iio11300 oppilaat sukunimen mukaan aakkosjärjestyksessä!";
            }
            else if (ddlOpintojakso.SelectedValue.Equals("IIO13200"))
            {
                GridView1.DataSourceID = "SqlDataSource6";
                GridView1.Visible = true;
                lblInfo.Text = "Onnistui! Näytetään vain opintojakson IIO13200 oppilaat sukunimen mukaan aakkosjärjestyksessä!";
            }
            else
            {
                GridView1.DataSourceID = "SqlDataSource1";
                GridView1.Visible = true;
                lblInfo.Text = "Onnistui! Näytetään kaikkien jaksojen oppilaat!";
            }

        }
        catch (Exception)
        {
            lblInfo.Text = "Nyt meni valitettavasti jotain pieleen....";
        }
    }
    protected void btnLajittele_Click(object sender, EventArgs e)
    {
        try
        {
            lblIIO11200.Text = "Opintojakson IIO11200 oppilaat:";
            GridView1.DataSourceID = "SqlDataSource4";
            GridView1.Visible = true;

            lbliio11300.Text = "Opintojakson IIO11200 oppilaat:";
            GridView2.DataSourceID = "SqlDataSource5";
            GridView2.Visible = true;

            lblIIO13200.Text = "Opintojakson IIO11200 oppilaat:";
            GridView3.DataSourceID = "SqlDataSource6";
            GridView3.Visible = true;
            lblInfo.Text = "Onnistui! Näytetään kunkin opintojakson alla oppilaat sukunimen mukaan aakkosjärjestyksessä!";
        }
        catch (Exception)
        {
            lblInfo.Text = "Nyt meni valitettavasti jotain pieleen....";
        }

    }
}