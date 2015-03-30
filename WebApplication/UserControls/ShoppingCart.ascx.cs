using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication.UserControls
{
    public partial class ShoppingCart : UserControl
    {
        #region Fields
        #endregion

        #region Event Handlers

        protected void Page_Load(object sender, EventArgs e)
        {
            UpdateShoppingCart();
        }

        protected void rptItems_DataBound(object sender, RepeaterItemEventArgs e)
        {
            Utils.Product product = e.Item.DataItem as Utils.Product;

            if (null == product)
                return;

            HiddenField hdnId = e.Item.FindControl("hdnId") as HiddenField;
            Literal ltName = e.Item.FindControl("ltName") as Literal;
            Literal ltDescription = e.Item.FindControl("ltDescription") as Literal;


            ltName.Text = product.Name;
            ltDescription.Text = product.Price.ToString();
            hdnId.Value = product.ProductId.ToString();
        }

        protected void btnProceed_Click(object sender, EventArgs e)
        {
            //Response.Redirect()
        }

        #endregion

        #region Methods

        public void UpdateShoppingCart()
        {
            Utils.Order currentOrder = Session["Order"] as Utils.Order;
            if (null != currentOrder && null != currentOrder.products)
            {
                rptItems.DataSource = currentOrder.products;
                rptItems.DataBind();
            }
        }

        #endregion
    }
}