<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DepositCalculator.aspx.cs" Inherits="EndofDay.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>End of Day - Deposit Calculator</title>
    <link href="css/styles.css" rel="stylesheet" />
    <meta name="viewport" content="width=device-width,initial-scale=1.0"/>
</head>
<body>
    <form id="form1" runat="server">
        <div class="deposit-background">
            <div class="waste-backbutton-div">
                    <a href="Homepage.aspx" class="back-link">Back</a>
            </div>
            <div class="desktop-container">
            <div>
                <h1 class="deposit-header">Deposit</h1>
            </div>
            <asp:panel runat="server" ID="receiptInput" >
                <div class="waste-list">
                    <div class="waste-list-row">
                        <asp:Label runat="server" Text="Net Sales" AssociatedControlID="netValue"></asp:Label>
                        <asp:TextBox runat="server" ID="netValue" class="waste-text-box" Text="0"></asp:TextBox>
                    </div>
                    <div class="waste-list-row">
                         <asp:Label runat="server" Text="Quantity of Orders" AssociatedControlID="quantityValue"></asp:Label>
                         <asp:TextBox runat="server" ID="quantityValue" class="waste-text-box" Text="0"></asp:TextBox>
                    </div>
                    <div class="waste-list-row">
                        <asp:Label runat="server" Text="Tips" AssociatedControlID="tipValue"></asp:Label>
                        <asp:TextBox runat="server" ID="tipValue" class="waste-text-box" Text="0"></asp:TextBox>
                    </div>
                    <div class="waste-list-row">
                        <asp:Label runat="server" Text="Expected Deposit" AssociatedControlID="expectedValue"></asp:Label>
                        <asp:TextBox runat="server" ID="expectedValue" class="waste-text-box" Text="0"> </asp:TextBox>
                    </div>
                </div>
                <div>
                    <asp:Button Text="Submit" runat="server" OnClick="Submit_Click" CssClass="submit-btn"/>
                </div>
            </asp:panel>

            <asp:Panel runat="server" ID="coinInput" Visible="false" >
            <div class="coins-container"> 
            <div class="dollar-container">
                <div class="box-container">
                    <div class="value-box"><asp:Label runat="server" Text="$100" Enabled="false" CssClass="value-label"></asp:Label></div>
                    <div><asp:TextBox runat="server" ID="hundredAmount" AutoPostBack="true" Text ="0" OnTextChanged="valueUpdated" CssClass="waste-text-box"></asp:TextBox></div>   
                </div>

                <div class="box-container">
                    <div class="value-box"><asp:Label runat="server" Text="$50" Enabled="false" CssClass="value-label"></asp:Label></div>
                    <div><asp:TextBox runat="server"  ID="fiftyAmount" AutoPostBack="true" Text ="0" OnTextChanged="valueUpdated" CssClass="waste-text-box"></asp:TextBox></div>   
                </div>

                <div class="box-container">
                    <div class="value-box"><asp:Label runat="server" Text="$20" Enabled="false" CssClass="value-label"></asp:Label></div>
                    <div><asp:TextBox runat="server"  ID="twentyAmount" AutoPostBack="true" Text ="0" OnTextChanged="valueUpdated" CssClass="waste-text-box"></asp:TextBox></div>   
                </div>

                <div class="box-container">
                    <div class="value-box"><asp:Label runat="server" Text="$10" Enabled="false" CssClass="value-label"></asp:Label></div>
                    <div><asp:TextBox runat="server"  ID="tenAmount" AutoPostBack="true" Text ="0" OnTextChanged="valueUpdated" CssClass="waste-text-box"></asp:TextBox></div>   
                </div>

                <div class="box-container">

                    <div class="value-box"><asp:Label runat="server" Text="$5" Enabled="false" CssClass="value-label"></asp:Label></div>
                    <div><asp:TextBox runat="server"  ID="fiveAmount" AutoPostBack="true" Text ="0" OnTextChanged="valueUpdated" CssClass="waste-text-box"></asp:TextBox></div>  
                    
                </div>
            </div>
            <div class="cent-container">

                <div class="box-container">
                    <div class="value-box"><asp:Label runat="server" Text="$2" Enabled="false" CssClass="value-label"></asp:Label></div>
                    <div><asp:TextBox runat="server"  ID="twoAmount" AutoPostBack="true" Text ="0" OnTextChanged="valueUpdated" CssClass="waste-text-box"></asp:TextBox></div> 
                    <asp:Button ID="tooneyRoll" Text="Add Roll" OnClick="addtooneyRoll" runat="server" CssClass="add-roll-btn" />
                </div>

                <div class="box-container">
                    <div class="value-box"><asp:Label runat="server" Text="$1" Enabled="false" CssClass="value-label"></asp:Label></div>
                    <div><asp:TextBox runat="server"  ID="oneAmount" AutoPostBack="true" Text ="0" OnTextChanged="valueUpdated" CssClass="waste-text-box"></asp:TextBox></div>
                    <asp:Button ID="looneyRoll" Text="Add Roll" OnClick="addlooneyRoll" runat="server"  CssClass="add-roll-btn"/>
                </div>

                <div class="box-container">
                    <div class="value-box"><asp:Label runat="server" Text="$0.25" Enabled="false" CssClass="value-label"></asp:Label></div>
                    <div><asp:TextBox runat="server"  ID="quarterAmount" AutoPostBack="true" Text ="0" OnTextChanged="valueUpdated" CssClass="waste-text-box"></asp:TextBox></div>
                    <asp:Button ID="quarterRoll" Text="Add Roll" OnClick="addquarterRoll" runat="server"  CssClass="add-roll-btn"/>
                </div>

                <div class="box-container">
                    <div class="value-box"><asp:Label runat="server" Text="$0.10" Enabled="false" CssClass="value-label"></asp:Label></div>
                    <div><asp:TextBox runat="server"  ID="tenthAmount" AutoPostBack="true" Text ="0" OnTextChanged="valueUpdated" CssClass="waste-text-box"></asp:TextBox></div>
                    <asp:Button ID="dimeRoll" Text="Add Roll" OnClick="adddimeRoll" runat="server" CssClass="add-roll-btn" />
                </div>

                <div class="box-container">
                    <div class="value-box"><asp:Label runat="server" Text="$0.05" Enabled="false" CssClass="value-label"></asp:Label></div>
                    <div><asp:TextBox runat="server"  ID="twentythAmount" AutoPostBack="true" Text ="0" OnTextChanged="valueUpdated" CssClass="waste-text-box"></asp:TextBox></div> 
                    <asp:Button ID="nickelRoll" Text="Add Roll" OnClick="addnickelRoll" runat="server" CssClass="add-roll-btn"/>
                </div>
            </div>
                </div>

                <div class="form-end">
                <div class="total-container">
                  <asp:Label Text="Total" runat="server" CssClass="total-label">Total</asp:Label>
                    <asp:TextBox ID="total" runat="server" Text="0" Enabled="false" cssClass="total-textbox"></asp:TextBox>
                </div>
                <div class="submit-container">
                    <asp:Button text="submit" runat="server" OnClick="Coin_Submit" CssClass="submit-btn"  CausesValidation="true"/>
                </div>
                </div>
              </asp:Panel>  
            </div>
</div>
            
    <asp:RangeValidator runat="server" Type="Double" 
MinimumValue="0" MaximumValue="40000" ControlToValidate="netValue" 
ErrorMessage="Value must be a a number" />     
        <asp:RangeValidator runat="server" Type="Double" 
MinimumValue="0" MaximumValue="400" ControlToValidate="quantityValue" 
ErrorMessage="Value must be a whole number between 0 and 400" />
        <asp:RangeValidator runat="server" Type="Double" 
MinimumValue="0" MaximumValue="40000" ControlToValidate="tipValue" 
ErrorMessage="Value must be a whole number between 0 and 400" />
        <asp:RangeValidator runat="server" Type="Double" 
MinimumValue="-4000000" MaximumValue="400000" ControlToValidate="expectedValue" 
ErrorMessage="must be a number" />

        <asp:RequiredFieldValidator ID="rfvcandidate" 
   runat="server" ControlToValidate ="netValue"
   ErrorMessage="Please choose a candidate" 
   InitialValue="Please choose a candidate">
   
</asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
   runat="server" ControlToValidate ="quantityValue"
   ErrorMessage="Please choose a candidate" 
   InitialValue="Please choose a candidate">
   
</asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
   runat="server" ControlToValidate ="tipValue"
   ErrorMessage="Please choose a candidate" 
   InitialValue="Please choose a candidate">
   
</asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" 
   runat="server" ControlToValidate ="expectedValue"
   ErrorMessage="Please choose a candidate" 
   InitialValue="Please choose a candidate">
   
</asp:RequiredFieldValidator>
    </form>
</body>
</html>
