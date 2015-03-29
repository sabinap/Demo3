using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Conoisseur.Dal;

namespace WebApplication.Pages
{
    public partial class Menu : Page
    {
        #region Fields

        ConoisseurDataContext dataContext;

        #endregion

        #region EventHandlers

        protected void Page_Load(object sender, EventArgs e)
        {
            dataContext = new ConoisseurDataContext();
            BindItems();


            

            var pnlShoppingCart = Utils.Utils.FindControlIterative(Page, "pnlShoppingCart") as UpdatePanel;
            var btnUpdate = Utils.Utils.FindControlIterative(Page, "btnUpdate") as Button;

            var scriptManager = Utils.Utils.FindControlIterative(Page,"scriptManager") as ScriptManager;
            if (null != scriptManager && null!=btnUpdate)
                scriptManager.RegisterAsyncPostBackControl(btnUpdate);

            //if (null != pnlShoppingCart)
            //{
            //    AsyncPostBackTrigger trigger = new AsyncPostBackTrigger();

            //    //Sets the control that will trigger a post-back on the UpdatePanel
            //    trigger.ControlID = "btnOrder";

            //    //Sets the event name of the control
            //    trigger.EventName = "Click";

            //    //Adds the trigger to the UpdatePanels' triggers collection
            //    pnlShoppingCart.Triggers.Add(trigger);
            //}
        }

        protected void btnOrder_Click(object sender, EventArgs e)
        {
            Button btnOrder = sender as Button;
            if (btnOrder == null)
                return;

            long prodId = Convert.ToInt64(btnOrder.ID.Replace("btnOrder", ""));

            Product product = dataContext.Products.FirstOrDefault(pred => pred.Id == prodId);

            Utils.Order currentOrder = Session["Order"] as Utils.Order;
            if (null == currentOrder)
            {
                currentOrder = new Utils.Order();
                currentOrder.products = new List<Utils.Product>();
            }

            bool found = false;

            foreach (Utils.Product p in currentOrder.products)
            {
                if (p.ProductId == prodId)
                {
                    p.Quantity++;
                    found = true;
                    break;
                }
            }

            if (found == false)
            {
                Utils.Product prod = new Utils.Product();
                prod.Category = product.CategoryId;
                if (null != product.CouponCode)
                    prod.Coupon = product.CouponCode.Id;
                prod.Name = product.Name;
                prod.Price = (decimal)product.Price;
                prod.ProductId = product.Id;
                prod.Quantity = 1;

                currentOrder.products.Add(prod);
            }

            Session["Order"] = currentOrder;
            
            rptItems.DataBind();
        }

        protected void rptItems_DataBound(object sender, RepeaterItemEventArgs e)
        {
            Product product = e.Item.DataItem as Product;
            if (null == product)
                return;

            Button btnOrder = e.Item.FindControl("btnOrder") as Button;
            btnOrder.ID += product.Id;
        }

        #endregion

        #region Methods

        private void BindItems()
        {
            List<Product> products = dataContext.Products.ToList();
            rptItems.DataSource = products;
            rptItems.DataBind();
        }

        #endregion
    }
}