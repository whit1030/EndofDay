using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EndofDay.Models;

namespace EndofDay
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                EodReceipt EndOfDay = new EodReceipt(Convert.ToDouble(netValue.Text), Convert.ToDouble(quantityValue.Text), Convert.ToDouble(tipValue.Text), Convert.ToDouble(expectedValue.Text));
                Session["eodReceipt"] = EndOfDay;

                receiptInput.Visible = false;
                coinInput.Visible = true;
            }
        }
        protected void valueUpdated(object sender, EventArgs e)
        {

            double totalAmount = (Convert.ToDouble(hundredAmount.Text) + Convert.ToDouble(fiftyAmount.Text) + Convert.ToDouble(tenAmount.Text) + Convert.ToDouble(twentyAmount.Text) + Convert.ToDouble(fiveAmount.Text) + Convert.ToDouble(twoAmount.Text) + Convert.ToDouble(oneAmount.Text)) + Convert.ToDouble(quarterAmount.Text) + Convert.ToDouble(tenthAmount.Text) + Convert.ToDouble(twentythAmount.Text);
            total.Text = Convert.ToString(totalAmount);
        }
        protected void addnickelRoll(object sender, EventArgs e)
        {
            double nickelAmount = (Convert.ToDouble(twentythAmount.Text)) + 2;
            double totalAmount = (Convert.ToDouble(total.Text)) + 2;
            twentythAmount.Text = Convert.ToString(nickelAmount);
            total.Text = Convert.ToString(totalAmount);
        }
        protected void adddimeRoll(object sender, EventArgs e)
        {
            double dimeAmount = (Convert.ToDouble(tenthAmount.Text)) + 5;
            double totalAmount = (Convert.ToDouble(total.Text)) + 5;
            tenthAmount.Text = Convert.ToString(dimeAmount);
            total.Text = Convert.ToString(totalAmount);
        }
        protected void addquarterRoll(object sender, EventArgs e)
        {
            double quartAmount = (Convert.ToDouble(quarterAmount.Text)) + 10;
            double totalAmount = (Convert.ToDouble(total.Text)) + 10;
            quarterAmount.Text = Convert.ToString(quartAmount);
            total.Text = Convert.ToString(totalAmount);
        }
        protected void addlooneyRoll(object sender, EventArgs e)
        {
            double looneyAmount = (Convert.ToDouble(oneAmount.Text)) + 25;
            double totalAmount = (Convert.ToDouble(total.Text)) + 25;
            oneAmount.Text = Convert.ToString(looneyAmount);
            total.Text = Convert.ToString(totalAmount);
        }
        protected void addtooneyRoll(object sender, EventArgs e)
        {
            double tooneyAmount = (Convert.ToDouble(twoAmount.Text)) + 50;
            double totalAmount = (Convert.ToDouble(total.Text)) + 50;
            twoAmount.Text = Convert.ToString(tooneyAmount);
            total.Text = Convert.ToString(totalAmount);
        }
        protected void Coin_Submit(object sender, EventArgs e)
        {
            CashDrawer cashdrawer = new CashDrawer(Convert.ToDouble(hundredAmount.Text), Convert.ToDouble(fiftyAmount.Text), Convert.ToDouble(twentyAmount.Text), Convert.ToDouble(tenAmount.Text), Convert.ToDouble(fiveAmount.Text), Convert.ToDouble(twoAmount.Text), Convert.ToDouble(oneAmount.Text), Convert.ToDouble(quarterAmount.Text), Convert.ToDouble(tenthAmount.Text), Convert.ToDouble(twentythAmount.Text));
            Session["cashDrawer"] = cashdrawer;
            Response.Redirect("DepositResults.aspx");
        }
    }
}