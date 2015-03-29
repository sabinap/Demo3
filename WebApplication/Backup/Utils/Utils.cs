using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

namespace WebApplication.Utils
{
    public static class Utils
    {
        public static Control FindControlRecursive(Control root, string id)
        {
            if (root.ID == id)
            {
                return root;
            }

            foreach (Control c in root.Controls)
            {
                Control t = FindControlRecursive(c, id);
                if (t != null)
                {
                    return t;
                }
            }

            return null;
        }

        public static Control FindControlIterative(Control root, string id)
        {

            Control ctl = root;
            LinkedList<Control> ctls = new LinkedList<Control>();

            while (ctl != null)
            {
                if (ctl.ID == id) return ctl;
                foreach (Control child in ctl.Controls)
                {
                    if (child.ID == id)
                        return child; if (child.Controls.Count > 0)
                        ctls.AddLast(child);
                }
                if (ctls.Count > 0)
                {
                    ctl = ctls.First.Value;
                    ctls.Remove(ctl);
                }
                else
                    ctl = null;
            }
            return null;
        }

    }

    public class User
    {
        public Guid UserId;
        public string Address;
        public string phone;
    }

    public class Product
    {
        public long ProductId;
        public long Category;
        public string Name;
        public decimal Price;
        public int Quantity;
        public long Coupon;
    }

    public class Order
    {
        public long OrderNo;
        public string Address;
        public string CardName;
        public string CardNumber;
        public string CardCVV;
        public int CardExpMon;
        public int CardExpYear;
        public decimal Subtotal;
        public decimal Taxes;
        public decimal Total;

        public List<Product> products;
        public User User;
    }
}