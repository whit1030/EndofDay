using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EndofDay.Models
{
    public class Calculation
    {
        
        //Method to return a Cashdrawer of a deposit to be made from using bills from an existing CashDrawer
        //Turns deposit into an integer and multiples all values by 100 to avoid rounding error
         public static CashDrawer depositCalculator(CashDrawer cashdrawer, double deposit)
        {
            CashDrawer depositDrawer = new CashDrawer(0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
            int intdeposit = Convert.ToInt32(deposit * 100);

            //Hundred Check
            while ((intdeposit >= 10000) && (cashdrawer.Hundredvalue > 0))
            {
                intdeposit -= 10000;
                cashdrawer.removeHundred();
                depositDrawer.addValue(100);
            }
            //Fifty Check
            while((intdeposit >= 5000) && (cashdrawer.Fiftyvalue > 0))
            {
                intdeposit -= 5000;
                cashdrawer.removeFifty();
                depositDrawer.addValue(50);
            }
            //Twenty Check
            while ((intdeposit >= 2000) && (cashdrawer.Twentyvalue > 0))
            {
                intdeposit -= 2000;
                cashdrawer.removeTwenty();
                depositDrawer.addValue(20);
            }
            //Ten Check
            while ((intdeposit >= 10) && (cashdrawer.Tenvalue > 0))
            {
                intdeposit -= 1000;
                cashdrawer.removeTen();
                depositDrawer.addValue(10);
            }
            //Five Check
            while ((intdeposit >= 500) && (cashdrawer.Fivevalue > 0))
            {
                intdeposit -= 500;
                cashdrawer.removeFive();
                depositDrawer.addValue(5);
            }
            //Two Check
            while ((intdeposit >= 200) && (cashdrawer.Twovalue > 0))
            {
                intdeposit -= 200;
                cashdrawer.removeTwo();
                depositDrawer.addValue(2);
            }
            //One Check
            while ((intdeposit >= 100) && (cashdrawer.Onevalue > 0))
            {
                intdeposit -= 100;
                cashdrawer.removeOne();
                depositDrawer.addValue(1);
            }
            //Quarter Check
            while ((intdeposit >= 25) && (cashdrawer.Quartervalue > 0))
            {
                intdeposit -= 25;
                cashdrawer.removeQuarter();
                depositDrawer.addValue(0.25);
            }
            //Dime Check
            while ((intdeposit >= 10) && (cashdrawer.Dimevalue > 0))
            {
                intdeposit -= 10;
                cashdrawer.removeDime();
                depositDrawer.addValue(0.1);
            }
            //Nickel Check
            while ((intdeposit >= 5) && (cashdrawer.Nickelvalue > 0))
            {
                intdeposit -= 5;
                cashdrawer.removeNickel();
                depositDrawer.addValue(0.05);
            }
            //Check to see that there is no balance remaining
            if(intdeposit == 0)
            {
                return depositDrawer;
            }
            else
            {
                throw new Exception($"Deposit not equal to zero , need more change D:, deposit = {intdeposit}");
            }

        }
        //Method used to seperate final deposit and float.
        public static CashDrawer Deposit(CashDrawer cashdrawer)
        {
            
                double OnHand = cashdrawer.getTotal() - 100;
                CashDrawer depositEnvelope = depositCalculator(cashdrawer, OnHand);
                return depositEnvelope;
            
            
        }
    }
}