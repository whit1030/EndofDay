using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EndofDay.Models
{
    //Class Cashdrawer a set of Canadian Currency values set in specific denomination for cash counting functions
    public class CashDrawer
    {
        public double Hundredvalue { get; set; }
        public double Fiftyvalue { get; set; }

        public double Twentyvalue { get; set; }
        public double Tenvalue { get; set; }
        public double Fivevalue { get; set; }
        public double Twovalue { get; set; }
        public double Onevalue { get; set; }
        public double Quartervalue { get; set; }
        public double Dimevalue { get; set; }
        public double Nickelvalue { get; set; }

        
        //Constructor to set values for CashDrawer
        public CashDrawer(double hundredvalue, double fiftyvalue, double twentyvalue, double tenvalue, double fivevalue, double twovalue, double onevalue, double quartervalue, double dimevalue, double nickelvalue)
        {
            Hundredvalue = hundredvalue;
            Fiftyvalue = fiftyvalue;
            Twentyvalue = twentyvalue;
            Tenvalue = tenvalue;
            Fivevalue = fivevalue;
            Twovalue = twovalue;
            Onevalue = onevalue;
            Quartervalue = quartervalue;
            Dimevalue = dimevalue;
            Nickelvalue = nickelvalue;
            
        }
        //Returns a double value of the total of the CashDrawer
        public double getTotal()
        {
            return Hundredvalue + Fiftyvalue + Twentyvalue + Tenvalue + Fivevalue + Twovalue + Onevalue + Quartervalue + Dimevalue + Nickelvalue;
        }
        

        //Method to remove value from CashDrawer in 100,50,20,10,5,2,1,0.25,0.10 and 0.05 increments.
        public void removeHundred()
        {
            if (Hundredvalue > 0)
            {
                Hundredvalue -= 100;
            }
        }
        public void removeFifty()
        {
            if (Fiftyvalue > 0)
            {
               Fiftyvalue -= 50;
            }
        }
        public void removeTwenty()
        {
            if (Twentyvalue > 0)
            {
                Twentyvalue -= 20;
            }
        }
        public void removeTen()
        {
            if (Tenvalue > 0)
            {
                Tenvalue -= 10;
            }
        }
        public void removeFive()
        {
            if (Fivevalue > 0)
            {
                Fivevalue -= 5;
            }
        }
        public void removeTwo()
        {
            if (Twovalue > 0)
            {
                Twovalue -= 2;
            }
        }
        public void removeOne()
        {
            if (Onevalue > 0)
            {
                Onevalue -= 1;
            }
        }
        public void removeQuarter()
        {
            if (Quartervalue > 0)
            {
                Quartervalue -= 0.25;
            }
        }
        public void removeDime()
        {
            if (Dimevalue > 0)
            {
                Dimevalue -= 0.1;
            }
        }
        public void removeNickel()
        {
            if (Nickelvalue > 0)
            {
               Nickelvalue -= 0.05;
            }
        }
        

        //Method to add value to CashDrawer in 100,50,20,10,5,2,1,0.25,0.10 and 0.05 increments.
        public void addValue(double cash)
        {

            if (cash == 100)
            {
                Hundredvalue += cash;
            }
            else if (cash == 50) 
            {
                Fiftyvalue += cash;
            }
            else if (cash == 20)
            {
                Twentyvalue += cash;
            }
            else if (cash == 10)
            {
                Tenvalue += cash;
            }
            else if (cash == 5)
            {
                Fivevalue += cash;
            }
            else if (cash == 2)
            {
                Twovalue += cash;
            }
            else if (cash == 1) 
            {
                Onevalue += cash;
            }
            else if (cash == 0.25) 
            {
                Quartervalue += cash;
            }
            else if (cash == 0.1) 
            {
                Dimevalue += cash;
            }
            else if (cash == 0.05) 
            {
                Nickelvalue += cash;
            }
            else
            {
                throw new Exception($"Could not deposit {cash}, must be either 100,50,20,10,5,2,1,0.25,0.10,0.05");
            }


        }
    }
}