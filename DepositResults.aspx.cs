using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EndofDay.Models;

namespace EndofDay
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["cashDrawer"] == null)
            {
                Response.Redirect("DepositCalculator.aspx");
            }
            CashDrawer cashdrawer = (CashDrawer)Session["cashDrawer"];
            EodReceipt eodreceipt = (EodReceipt)Session["eodReceipt"];
            TableRow moneyRow = new TableRow();
            TableCell value = new TableCell();
            TableCell amount = new TableCell();
            
            
            if(eodreceipt.ExpectedDeposit >= 0)
            {
                try
                {
                    CashDrawer tipsDrawer = Calculation.depositCalculator(cashdrawer, eodreceipt.Tip);

                    if (tipsDrawer.Hundredvalue > 0)
                    {

                        tipHundredValue.Text = $"${tipsDrawer.Hundredvalue}";
                        tipHundredValue.Visible = true;


                    }
                    if (tipsDrawer.Fiftyvalue > 0)
                    {

                        tipFiftyValue.Text = $"${tipsDrawer.Fiftyvalue}";
                        tfiftyRow.Visible = true;


                    }
                    if (tipsDrawer.Twentyvalue > 0)
                    {

                        tipTwentyValue.Text = $"${tipsDrawer.Twentyvalue}";
                        ttwentyRow.Visible = true;
                    }
                    if (tipsDrawer.Tenvalue > 0)
                    {

                        tipTenValue.Text = $"${tipsDrawer.Tenvalue}";
                        ttenRow.Visible = true;
                    }
                    if (tipsDrawer.Fivevalue > 0)
                    {

                        tipFiveValue.Text = $"${tipsDrawer.Fivevalue}";
                        tfiveRow.Visible = true;
                    }
                    if (tipsDrawer.Twovalue > 0)
                    {

                        tipTwoValue.Text = $"${tipsDrawer.Twovalue}";
                        ttwoRow.Visible = true;
                    }
                    if (tipsDrawer.Onevalue > 0)
                    {

                        tipOneValue.Text = $"${tipsDrawer.Onevalue}";
                        toneRow.Visible = true;
                    }
                    if (tipsDrawer.Quartervalue > 0)
                    {

                        tipQuarterValue.Text = $"${tipsDrawer.Quartervalue}";
                        tquarterRow.Visible = true;
                    }
                    if (tipsDrawer.Dimevalue > 0)
                    {

                        tipDimeValue.Text = $"${tipsDrawer.Dimevalue}";
                        tdimeRow.Visible = true;
                    }
                    if (tipsDrawer.Nickelvalue > 0)
                    {

                        tipNickelValue.Text = $"${tipsDrawer.Nickelvalue}";
                        tnickelRow.Visible = true;
                    }

                    CashDrawer depositDrawer = Calculation.Deposit(cashdrawer);

                    value.Text = "$100";
                    amount.Text = $"${depositDrawer.Hundredvalue}";


                    if (depositDrawer.Hundredvalue > 0)
                    {

                        depositHundredValue.Text = $"${depositDrawer.Hundredvalue}";
                        dhundredRow.Visible = true;


                    }
                    if (depositDrawer.Fiftyvalue > 0)
                    {

                        depositFiftyValue.Text = $"${depositDrawer.Fiftyvalue}";
                        dfiftyRow.Visible = true;


                    }
                    if (depositDrawer.Twentyvalue > 0)
                    {

                        depositTwentyValue.Text = $"${depositDrawer.Twentyvalue}";
                        dtwentyRow.Visible = true;
                    }
                    if (depositDrawer.Tenvalue > 0)
                    {

                        depositTenValue.Text = $"${depositDrawer.Tenvalue}";
                        dtenRow.Visible = true;
                    }
                    if (depositDrawer.Fivevalue > 0)
                    {

                        depositFiveValue.Text = $"${depositDrawer.Fivevalue}";
                        dfiveRow.Visible = true;
                    }
                    if (depositDrawer.Twovalue > 0)
                    {

                        depositTwoValue.Text = $"${depositDrawer.Twovalue}";
                        dtwoRow.Visible = true;
                    }
                    if (depositDrawer.Onevalue > 0)
                    {

                        depositOneValue.Text = $"${depositDrawer.Onevalue}";
                        doneRow.Visible = true;
                    }
                    if (depositDrawer.Quartervalue > 0)
                    {

                        depositQuarterValue.Text = $"${depositDrawer.Quartervalue}";
                        dquarterRow.Visible = true;
                    }
                    if (depositDrawer.Dimevalue > 0)
                    {

                        depositDimeValue.Text = $"${depositDrawer.Dimevalue}";
                        ddimeRow.Visible = true;
                    }
                    if (depositDrawer.Nickelvalue > 0)
                    {

                        depositNickelValue.Text = $"${depositDrawer.Nickelvalue}";
                        dnickelRow.Visible = true;
                    }
                    emailTextBox.Text += $"Net Sales - ${eodreceipt.NetSales} \r\n";
                    emailTextBox.Text += $"Quantity of Orders - ${eodreceipt.QuantityofOrders}  \r\n";
                    emailTextBox.Text += $"Tips - ${eodreceipt.Tip} \r\n";
                    emailTextBox.Text += $"Expected Deposit - ${eodreceipt.ExpectedDeposit} \r\n";
                    emailTextBox.Text += $"Actual Cash on Hand - ${depositDrawer.getTotal()} \r\n";
                    emailTextBox.Text += $"Over/Under - ${eodreceipt.ExpectedDeposit - depositDrawer.getTotal()} \r\n";
                    emailTextBox.Text += "Money from Tip Float - 0";

                }
                catch(Exception ex)
                {
                    System.Diagnostics.Debug.WriteLine($"{ex}");
                    Response.Redirect("DepositCalculator.aspx");
                }
            }
            else
            {
                try
                {
                    depositTable.Visible = false;
                    CashDrawer tipsDrawer = Calculation.Deposit(cashdrawer);
                    if (tipsDrawer.Hundredvalue > 0)
                    {

                        tipHundredValue.Text = $"${tipsDrawer.Hundredvalue}";
                        tipHundredValue.Visible = true;


                    }
                    if (tipsDrawer.Fiftyvalue > 0)
                    {

                        tipFiftyValue.Text = $"${tipsDrawer.Fiftyvalue}";
                        tfiftyRow.Visible = true;


                    }
                    if (tipsDrawer.Twentyvalue > 0)
                    {

                        tipTwentyValue.Text = $"${tipsDrawer.Twentyvalue}";
                        ttwentyRow.Visible = true;
                    }
                    if (tipsDrawer.Tenvalue > 0)
                    {

                        tipTenValue.Text = $"${tipsDrawer.Tenvalue}";
                        ttenRow.Visible = true;
                    }
                    if (tipsDrawer.Fivevalue > 0)
                    {

                        tipFiveValue.Text = $"${tipsDrawer.Fivevalue}";
                        tfiveRow.Visible = true;
                    }
                    if (tipsDrawer.Twovalue > 0)
                    {

                        tipTwoValue.Text = $"${tipsDrawer.Twovalue}";
                        ttwoRow.Visible = true;
                    }
                    if (tipsDrawer.Onevalue > 0)
                    {

                        tipOneValue.Text = $"${tipsDrawer.Onevalue}";
                        toneRow.Visible = true;
                    }
                    if (tipsDrawer.Quartervalue > 0)
                    {

                        tipQuarterValue.Text = $"${tipsDrawer.Quartervalue}";
                        tquarterRow.Visible = true;
                    }
                    if (tipsDrawer.Dimevalue > 0)
                    {

                        tipDimeValue.Text = $"${tipsDrawer.Dimevalue}";
                        tdimeRow.Visible = true;
                    }
                    if (tipsDrawer.Nickelvalue > 0)
                    {

                        tipNickelValue.Text = $"${tipsDrawer.Nickelvalue}";
                        tnickelRow.Visible = true;
                    }

                    emailTextBox.Text += $"Net Sales - ${eodreceipt.NetSales} \r\n";
                    emailTextBox.Text += $"Quantity of Orders - ${eodreceipt.QuantityofOrders}  \r\n";
                    emailTextBox.Text += $"Tips - ${eodreceipt.Tip} \r\n";
                    emailTextBox.Text += $"Expected Deposit - ${eodreceipt.ExpectedDeposit} \r\n";
                    emailTextBox.Text += $"Actual Cash on Hand - ${tipsDrawer.getTotal() - eodreceipt.Tip } \r\n";
                    emailTextBox.Text += $"Over/Under - ${eodreceipt.ExpectedDeposit - (tipsDrawer.getTotal() - eodreceipt.Tip)} \r\n";
                    emailTextBox.Text += $"Money from Tip Float - ${eodreceipt.Tip - tipsDrawer.getTotal()}";
                }
                catch (Exception ee)
                {
                    System.Diagnostics.Debug.WriteLine($"{ee}");
                    Response.Redirect("DepositCalculator.aspx");
                }
            }
        }
    }
}