<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DepositCalculator.aspx.cs" Inherits="EndofDay.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>End of Day - Deposit Calculator</title>
    <link href="css/styles.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <a href="Homepage.aspx">Back</a>
            <div>
                <h1>Deposit</h1>
            </div>
            <asp:panel runat="server" ID="receiptInput" >
                <div>
                    <asp:Label runat="server" Text="Net Sales" AssociatedControlID="netValue"></asp:Label>
                    <asp:TextBox runat="server" ID="netValue"></asp:TextBox>
                     <asp:Label runat="server" Text="Quantity of Orders" AssociatedControlID="quantityValue"></asp:Label>
                     <asp:TextBox runat="server" ID="quantityValue"></asp:TextBox>
                    <asp:Label runat="server" Text="Tips" AssociatedControlID="tipValue"></asp:Label>
                    <asp:TextBox runat="server" ID="tipValue"></asp:TextBox>
                    <asp:Label runat="server" Text="Expected Deposit" AssociatedControlID="expectedValue"></asp:Label>
                    <asp:TextBox runat="server" ID="expectedValue"> </asp:TextBox>
                </div>
                <div>
                <asp:Button Text="Submit" runat="server" OnClick="Submit_Click"/>
            </div>
            </asp:panel>

            <asp:Panel runat="server" ID="coinInput" Visible="false">
                <div>

                <div>
                    <div><asp:Label runat="server" Text="$100" Enabled="false"></asp:Label></div>
                    <div><asp:TextBox runat="server" ID="hundredAmount" AutoPostBack="true" Text ="0" OnTextChanged="valueUpdated"></asp:TextBox></div>   
                </div>

                <div>
                    <div><asp:Label runat="server" Text="$50" Enabled="false"></asp:Label></div>
                    <div><asp:TextBox runat="server"  ID="fiftyAmount" AutoPostBack="true" Text ="0" OnTextChanged="valueUpdated"></asp:TextBox></div>   
                </div>

                <div>
                    <div><asp:Label runat="server" Text="$20" Enabled="false"></asp:Label></div>
                    <div><asp:TextBox runat="server"  ID="twentyAmount" AutoPostBack="true" Text ="0" OnTextChanged="valueUpdated"></asp:TextBox></div>   
                </div>

                <div>
                    <div><asp:Label runat="server" Text="$10" Enabled="false"></asp:Label></div>
                    <div><asp:TextBox runat="server"  ID="tenAmount" AutoPostBack="true" Text ="0" OnTextChanged="valueUpdated"></asp:TextBox></div>   
                </div>

                <div>

                    <div><asp:Label runat="server" Text="$5" Enabled="false"></asp:Label></div>
                    <div><asp:TextBox runat="server"  ID="fiveAmount" AutoPostBack="true" Text ="0" OnTextChanged="valueUpdated"></asp:TextBox></div>  
                    
                </div>

                <div>
                    <div><asp:Label runat="server" Text="$2" Enabled="false"></asp:Label></div>
                    <div><asp:TextBox runat="server"  ID="twoAmount" AutoPostBack="true" Text ="0" OnTextChanged="valueUpdated"></asp:TextBox></div> 
                    <asp:Button ID="tooneyRoll" Text="Add Roll" OnClick="addtooneyRoll" runat="server" />
                </div>

                <div>
                    <div><asp:Label runat="server" Text="$1" Enabled="false"></asp:Label></div>
                    <div><asp:TextBox runat="server"  ID="oneAmount" AutoPostBack="true" Text ="0" OnTextChanged="valueUpdated"></asp:TextBox></div>
                    <asp:Button ID="looneyRoll" Text="Add Roll" OnClick="addlooneyRoll" runat="server" />
                </div>

                <div>
                    <div><asp:Label runat="server" Text="$0.25" Enabled="false"></asp:Label></div>
                    <div><asp:TextBox runat="server"  ID="quarterAmount" AutoPostBack="true" Text ="0" OnTextChanged="valueUpdated"></asp:TextBox></div>
                    <asp:Button ID="quarterRoll" Text="Add Roll" OnClick="addquarterRoll" runat="server" />
                </div>

                <div>
                    <div><asp:Label runat="server" Text="$0.10" Enabled="false"></asp:Label></div>
                    <div><asp:TextBox runat="server"  ID="tenthAmount" AutoPostBack="true" Text ="0" OnTextChanged="valueUpdated"></asp:TextBox></div>
                    <asp:Button ID="dimeRoll" Text="Add Roll" OnClick="adddimeRoll" runat="server" />
                </div>

                <div>
                    <div><asp:Label runat="server" Text="$0.05" Enabled="false"></asp:Label></div>
                    <div><asp:TextBox runat="server"  ID="twentythAmount" AutoPostBack="true" Text ="0" OnTextChanged="valueUpdated"></asp:TextBox></div> 
                    <asp:Button ID="nickelRoll" Text="Add Roll" OnClick="addnickelRoll" runat="server"/>
                </div>

                <div>
                   <asp:Label Text="Total" runat="server">Total</asp:Label>
                    <asp:TextBox ID="total" runat="server" Text="0" Enabled="false"></asp:TextBox>
                </div>
                <div>
                    <asp:Button text="submit" runat="server" OnClick="Coin_Submit" />
                </div>

            </div>

            </asp:Panel>
            
        </div>
    </form>
</body>
</html>
