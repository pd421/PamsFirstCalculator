<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PamsCalculator.aspx.cs" Inherits="PamsCalculator.View.PamsCalculator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pam's Calculator</title>
    <link rel="stylesheet" type="text/css" href="../CSS/CalcCSS.css" />

 <script>
     function appendToExpression(value) {
         var expressionTextBox = document.getElementById("<%= expressionTextBox.ClientID %>");
         expressionTextBox.value += value;
     }
 </script>

    
</head>
<body>
    <form id="form1" style="padding-top: 7%" runat="server">

    <div class="container" >
      <div class="header">Pam's Calculator</div>
       <asp:TextBox ID="expressionTextBox" CssClass="result"  runat="server"></asp:TextBox>
        <div>
      <asp:Label ID="resultLabel" CssClass="result" runat="server"></asp:Label> 
        </div>
      <div class="first-row">
        <asp:Button ID="buttonSquareRoot" CssClass="global" runat="server" Text="√" OnClientClick="appendToExpression('√'); return false;" />
        <asp:Button ID="buttonOpenBracket" CssClass="global" runat="server" Text="(" OnClientClick="appendToExpression('('); return false;" />
        <asp:Button ID="buttonCloseBracket" CssClass="global" runat="server" Text=")" OnClientClick="appendToExpression(')'); return false;" />
        <asp:Button ID="buttonPercentage"  CssClass="global" runat="server" Text="%" OnClientClick="appendToExpression('%'); return false;" />
      </div>
      <div class="second-row">
        <asp:Button ID="button7" CssClass="global" runat="server" Text="7" OnClientClick="appendToExpression('7'); return false;" />
        <asp:Button ID="button8" CssClass="global" runat="server" Text="8" OnClientClick="appendToExpression('8'); return false;" />
        <asp:Button ID="button9" CssClass="global" runat="server" Text="9" OnClientClick="appendToExpression('9'); return false;" />
        <asp:Button ID="buttonDivide" CssClass="global" runat="server" Text="/" OnClientClick="appendToExpression('/'); return false;" />
      </div>
      <div class="third-row">
        <asp:Button ID="button4" CssClass="global" runat="server" Text="4" OnClientClick="appendToExpression('4'); return false;" />
        <asp:Button ID="button5" CssClass="global" runat="server" Text="5" OnClientClick="appendToExpression('5'); return false;" />
        <asp:Button ID="button6" CssClass="global" runat="server" Text="6" OnClientClick="appendToExpression('6'); return false;" />
        <asp:Button ID="buttonMultiply" CssClass="global" runat="server" Text="*" OnClientClick="appendToExpression('*'); return false;" />
      </div>
      <div class="fourth-row">
        <asp:Button ID="button1" CssClass="global" runat="server" Text="1" OnClientClick="appendToExpression('1'); return false;" />
        <asp:Button ID="button2" CssClass="global" runat="server" Text="2" OnClientClick="appendToExpression('2'); return false;" />
        <asp:Button ID="button3" CssClass="global" runat="server" Text="3" OnClientClick="appendToExpression('3'); return false;" />
        <asp:Button ID="buttonMinus" CssClass="global" runat="server" Text="-" OnClientClick="appendToExpression('-'); return false;" />
      </div>
      <div class="conflict">
        <div class="left">
            <asp:Button ID="buttonBackspace" CssClass="small" runat="server" Text="&#9003;" OnClick="BackspaceButton_Click" />
           <asp:Button ID="button0" CssClass="small" runat="server" Text="0" OnClientClick="appendToExpression('0'); return false;" />
          <asp:Button ID="buttonDecimal" CssClass="small" runat="server" Text="." OnClientClick="appendToExpression(','); return false;" />
          <asp:Button ID="clearButton" CssClass="red small white-text top-margin" runat="server" Text="AC" OnClick="ClearButton_Click" />
          <asp:Button ID="calculateButton" CssClass="blue white-text big top-margin" runat="server" Text="=" OnClick="CalculateButton_Click" />
        </div>
        <div class="right">
          <asp:Button ID="buttonPlus" CssClass="global plus" runat="server" Text="+" OnClientClick="appendToExpression('+'); return false;" />
        </div>
      </div>
    </div>
    </form>
</body>
</html>