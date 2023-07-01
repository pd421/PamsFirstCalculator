using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using org.mariuszgromada.math.mxparser;

namespace PamsCalculator.View
{
    public partial class PamsCalculator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                expressionTextBox.Text = "";
                resultLabel.Text = "";
            }
        }

        protected void CalculateButton_Click(object sender, EventArgs e)
        {
            string expression = expressionTextBox.Text;
            expression = expression.Replace("%", "/100");
            expression = expression.Replace(",", ".");
            Expression expr = new Expression(expression);
            double result = expr.calculate();
            resultLabel.Text = result.ToString();
        }

        private double CalculateExpression(string expression)
        {
            expression = expression.Replace(",", ".");
            // Remove all whitespace characters from the expression
            expression = expression.Replace(" ", "");

            // Evaluate the expression using the built-in DataTable class
            var dataTable = new DataTable();
            var value = dataTable.Compute(expression, "");

            // Parse the result as a double
            double result;
            if (double.TryParse(value.ToString(), out result))
            {
                return result;
            }
            else
            {
                throw new ArgumentException("Invalid expression");
            }
        }

        protected void ClearButton_Click(object sender, EventArgs e)
        {
            expressionTextBox.Text = "";
            resultLabel.Text = "";
        }

        protected void BackspaceButton_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(expressionTextBox.Text))
            {
                expressionTextBox.Text = expressionTextBox.Text.Substring(0, expressionTextBox.Text.Length - 1);
            }
        }
    }
}