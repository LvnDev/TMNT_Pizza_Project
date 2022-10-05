using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TMNT_Pizza
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void PurchaseButton_Click(object sender, EventArgs e)
        {
            double total = 0.0;

            if (SizeSmallRadioButton.Checked)
            {
                total = 10.00;
            }
            else if (SizeMediumRadioButton.Checked)
            {
                total = 13.00;
            }
            else
            {
                total = 16.00;
            }
            if(DeepDishRadioButton.Checked)
            {
                total = total + 2.00;
            }
            else if (StuffCrustRadioButton.Checked)
            {
                total = total + 2.50;
            }

            total = (PepperoniCheckBox.Checked) ? total + 1.5 : total;
            total = (OnionsCheckBox.Checked) ? total + 0.75 : total;
            total = (GreenPeppersCheckBox.Checked) ? total + 0.50 : total;
            total = (RedPeppersCheckBox.Checked) ? total + 0.75 : total;
            total = (AnchoviesCheckBox.Checked) ? total + 2.00 : total;

            if((PepperoniCheckBox.Checked && GreenPeppersCheckBox.Checked && AnchoviesCheckBox.Checked) 
                || (PepperoniCheckBox.Checked && RedPeppersCheckBox.Checked && OnionsCheckBox.Checked))
            {
                total -= 2.0; 
            }
            TotalLabel.Text = "Total: £" + total.ToString();
        }
    }
}