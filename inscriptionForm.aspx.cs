using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;
using System.Web.Services.Description;

namespace Project332StephanoSaleh
{
    public partial class inscriptionForm : System.Web.UI.Page
    {
        private static int[] LAmount;
       
        protected void Page_Load(object sender, EventArgs e)
        {
            LAmount = new int[100];
        }

        protected void Page_Init(object sender, EventArgs e)
        {

        }
                
        protected void btnClear_Click(object sender, EventArgs e)
        {
            tbEmail.Text = " ";
            tbPassword.Text = " ";
            tbRewrite.Text = " ";
            tbName.Text = " ";
            tbAge.Text = " ";
            tbAddress.Text = " ";
            tbPostal.Text = " ";
            tbCard.Text = " ";
            tbExpiry.Text = " ";
            tbKey.Text = " ";
            tbAmount.Text = " ";
            RadioButtonList1.SelectedIndex = -1;

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            ListBox1.Items.Insert(0, string.Format("{0};{1}", tbName.Text, tbAmount.Text));
            int total = int.Parse(totalAmount.Text);
            int amount = int.Parse(tbAmount.Text);
            LAmount[ListBox1.Items.Count - 1] = amount;
            total += amount;
            totalAmount.Text = total.ToString();
            int nb = ListBox1.Items.Count;
            customernb.Text = nb.ToString();

        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            char[] delimiter = { ';' };
            if (ListBox1.SelectedItem != null)
            {
                string selectedItemText = ListBox1.SelectedItem.Text;
                ListBox1.Items.RemoveAt(ListBox1.SelectedIndex);
                double t= Convert.ToDouble(selectedItemText.Split(delimiter)[1]);

                double total = double.Parse(totalAmount.Text);
                double final = total - t;
                totalAmount.Text = final.ToString();
                customernb.Text = ListBox1.Items.Count.ToString();
            }
            
        }  

        protected void btnUp_Click(object sender, EventArgs e)
        {
            int i = ListBox1.SelectedIndex;
            if (i > 0)
            {
                ListBox1.Items.Insert(i - 1, ListBox1.SelectedItem);
                ListBox1.Items.RemoveAt(i + 1);

            }
        }

        protected void btnDown_Click(object sender, EventArgs e)
        {
            int i = ListBox1.SelectedIndex;
            if (i < ListBox1.Items.Count - 1)
            {
                ListBox1.Items.Insert(i + 2, ListBox1.SelectedItem);
                ListBox1.Items.RemoveAt(i);

            }
        }

        protected void tbnValidate_Click(object sender, EventArgs e)
        {
            string input = tbCard.Text;
            string type = RadioButtonList1.SelectedValue;
            switch (type)
            {
                case "Master Card":
                    {
                        if (Regex.IsMatch(input, @"^5[1-5]\d{14}$"))
                        {
                            lblCardError.Text = " ";
                        }
                        else { lblCardError.Text = "Master Card Format starts from 51 to 55 of 16 digits"; }
                        break;
                    }
                case "Visa Card":
                    {
                        if (Regex.IsMatch(input, @"^4(\d{12}|\d{15})$"))
                        {
                            lblCardError.Text = " ";
                        }
                        else { lblCardError.Text = "Visa Card Format starts with 4, of 13 or 16 digits"; }
                        break;
                    }
                case "American Express":
                    {
                        if (Regex.IsMatch(input, @"^(34|37)\d{13}$"))
                        { lblCardError.Text = " "; }
                        else
                        {
                            lblCardError.Text = " American Express Format starts with 34 or 37 of 15 digits";
                        } break;
                    }
                default: lblCardError.Text = " Choose a card";
                    break;

            }

                string date = tbExpiry.Text;
                DateTime current = DateTime.Now;
                string currentMY = current.ToString("MM/yyyy");
                DateTime dateC;
                if (!DateTime.TryParse(date, out dateC) || !Regex.IsMatch(date, @"^\d{2}/\d{4}$"))
                {
                    lblExpiryError.Text = "Invalid Date";
                    return;
                }
                string monthYearToCompare = dateC.ToString("MM/yyyy");
                if (string.Compare(currentMY, monthYearToCompare) > 0)
                {
                    lblExpiryError.Text = "should be > current date";
                }
                else
                {
                    lblExpiryError.Text = " ";
                }
        }
 }
    
} 
