<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TMNT_Pizza.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
   
<head runat="server">
     <style>
        h1, h2, h3, h4, h5, p {font-family:Arial;}
        body {background-color:antiquewhite;}
    </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
           <h2> 
        
        <asp:Image ID="Logo" runat="server" ImageUrl="~/ninjaTeam.bmp" Height="84px" Width="80px" /> 
          TMNT Pizza
           </h2>
        <hr />
        <h3>Select Your Size</h3>
        <asp:RadioButton ID="SizeSmallRadioButton" runat="server" Text="Leonardo Size(10) - £10"  GroupName="PizzaSize" />
        <br />
        <asp:RadioButton ID="SizeMediumRadioButton" runat="server" Text="Donatello Size (13) - £13"  GroupName="PizzaSize"/> <!-- pizza size -->
        <br />
        <asp:RadioButton ID="SizeLargeRadioButton" runat="server" Text="Michalangelo Size (16) - £16" GroupName="PizzaSize" />
        <br />
        <br />
        <h3>Choose Base</h3>
        <asp:RadioButton ID="ThinCrustRadioButton" runat="server" Text="Thin Crust" GroupName="PizzaBase" />
        <br />                                                                              <!-- Thin or Deep dish radio buttons-->
        <asp:RadioButton ID="DeepDishRadioButton" runat="server" Text="Deep Dish - £2" GroupName="PizzaBase" />
        <br />
        <asp:RadioButton ID="StuffCrustRadioButton" runat="server" Text="Stuff Crust - £2.50" GroupName="PizzaBase" />
        <br />
        <br />  
        <h3>Toppings</h3><!-- Toppings check list-->
        <asp:CheckBox ID="PepperoniCheckBox" runat="server" Text="Pepperoni(+£1.50)" />
           <br />   
           <asp:CheckBox ID="OnionsCheckBox" runat="server" Text="Onions(+£0.75)" />
           <br />
           <asp:CheckBox ID="GreenPeppersCheckBox" runat="server" Text="Green Peppers(+£0.50)" />
           <br />
           <asp:CheckBox ID="RedPeppersCheckBox" runat="server" Text="Red Peppers(+£0.75)" />
           <br />
           <asp:CheckBox ID="AnchoviesCheckBox" runat="server" Text="Anchovies(+£2 )" />
        <h3>Raphael's Special Deal</h3>
        <p>Save £2.00 when you add Pepperoni, Green Peppers, and Anchovies OR Pepperoni, Red Peppers and Onions to your pizza.</p>
        <br />
        <asp:Button ID="PurchaseButton" runat="server" Text="Purchase" OnClick="PurchaseButton_Click" />
        <br />
        <asp:Label ID="TotalLabel" runat="server" Text="Total: "></asp:Label>
        <p>We currently do only pickup orders.</p>
    </form>
</body>
</html>

