using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EndofDay.Models
{
    //Class to save different values needed to complete End of Day
    public class EodReceipt
    {
        public double NetSales { get; }
        public double QuantityofOrders { get; }
        public double Tip { get; }
        public double ExpectedDeposit { get; }

        //Constructor
        public EodReceipt(double netsales, double quantity, double tip, double expecteddeposit)
        {
            NetSales = netsales;
            QuantityofOrders = quantity;
            Tip = tip;
            ExpectedDeposit = expecteddeposit;
        }
    }
}