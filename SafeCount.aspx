<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SafeCount.aspx.cs" Inherits="EndofDay.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>End Of Day - Safe Count</title>
    <link href="css/styles.css" rel="stylesheet" />
    <meta name="viewport" content="width=device-width,initial-scale=1.0"/>
</head>
<body>
    <form id="form1" runat="server">
        <div class="safe-count-bg">
           <div class="waste-backbutton-div">
                    <a href="Homepage.aspx" class="back-link">Back</a>
            </div>
            <div class="desktop-container">
            <div>
                <h1 class="coinbox-heading">Safe Count</h1>
            </div>
            <div class="coins-container">
                <div class="dollar-container">
                    <div class="box-container">
                        <div class="value-box"><asp:Label runat="server" Text="$100" Enabled="false" CssClass="value-label"></asp:Label></div>
                        <div><asp:TextBox runat="server" ID="hundredAmount" AutoPostBack="true" Text ="0" OnTextChanged="valueUpdated" CssClass="waste-text-box"/></div>   
                    </div>
                    <div class="box-container">
                        <div class="value-box"><asp:Label runat="server" Text="$50" Enabled="false" CssClass="value-label"></asp:Label></div>
                        <div><asp:TextBox runat="server"  ID="fiftyAmount" AutoPostBack="true" Text ="0" OnTextChanged="valueUpdated" CssClass="waste-text-box"/></div>   
                    </div>
                    <div class="box-container">
                        <div class="value-box"><asp:Label runat="server" Text="$20" Enabled="false" CssClass="value-label"></asp:Label></div>
                        <div><asp:TextBox runat="server"  ID="twentyAmount" AutoPostBack="true" Text ="0" OnTextChanged="valueUpdated" CssClass="waste-text-box"/></div>   
                    </div>
                    <div class="box-container">
                        <div class="value-box"><asp:Label runat="server" Text="$10" Enabled="false" CssClass="value-label"></asp:Label></div>
                        <div><asp:TextBox runat="server"  ID="tenAmount" AutoPostBack="true" Text ="0" OnTextChanged="valueUpdated" CssClass="waste-text-box"/></div>   
                    </div>
                    <div class="box-container">
                        <div class="value-box"><asp:Label runat="server" Text="$5" Enabled="false" CssClass="value-label"></asp:Label></div>
                        <div><asp:TextBox runat="server"  ID="fiveAmount" AutoPostBack="true" Text ="0" OnTextChanged="valueUpdated" CssClass="waste-text-box"/></div>   
                    </div>
                </div>
                <div class="cent-container">
                    <div class="box-container">
                        <div class="value-box"><asp:Label runat="server" Text="$2" Enabled="false" CssClass="value-label"></asp:Label></div>
                        <div><asp:TextBox runat="server"  ID="twoAmount" AutoPostBack="true" Text ="0" OnTextChanged="valueUpdated" CssClass="waste-text-box"/></div> 
                        <asp:Button ID="tooneyRoll" Text="Add Roll" OnClick="addtooneyRoll" runat="server" CssClass="add-roll-btn"/>
                    </div>
                    <div class="box-container">
                        <div class="value-box"><asp:Label runat="server" Text="$1" Enabled="false" CssClass="value-label"></asp:Label></div>
                        <div><asp:TextBox runat="server"  ID="oneAmount" AutoPostBack="true" Text ="0" OnTextChanged="valueUpdated" CssClass="waste-text-box"/></div>
                        <asp:Button ID="looneyRoll" Text="Add Roll" OnClick="addlooneyRoll" runat="server" CssClass="add-roll-btn"/>
                    </div>
                
                
                    <div class="box-container">
                        <div class="value-box"><asp:Label runat="server" Text="$0.25" Enabled="false" CssClass="value-label"></asp:Label></div>
                        <div><asp:TextBox runat="server"  ID="quarterAmount" AutoPostBack="true" Text ="0" OnTextChanged="valueUpdated" CssClass="waste-text-box"/></div>
                        <asp:Button ID="quarterRoll" Text="Add Roll" OnClick="addquarterRoll" runat="server" CssClass="add-roll-btn"/>
                    </div>
                    <div class="box-container">
                        <div class="value-box"><asp:Label runat="server" Text="$0.10" Enabled="false" CssClass="value-label"></asp:Label></div>
                        <div><asp:TextBox runat="server"  ID="tenthAmount" AutoPostBack="true" Text ="0" OnTextChanged="valueUpdated" CssClass="waste-text-box"/></div>
                        <asp:Button ID="dimeRoll" Text="Add Roll" OnClick="adddimeRoll" runat="server" CssClass="add-roll-btn"/>
                    </div>
                    <div class="box-container">
                        <div class="value-box"><asp:Label runat="server" Text="$0.05" Enabled="false" CssClass="value-label"></asp:Label></div>
                        <div><asp:TextBox runat="server"  ID="twentythAmount" AutoPostBack="true" Text ="0" OnTextChanged="valueUpdated" CssClass="waste-text-box"/></div> 
                        <asp:Button ID="nickelRoll" Text="Add Roll" OnClick="addnickelRoll" runat="server" CssClass="add-roll-btn"/>
                    </div>
                </div>
            </div>
            </div>
                <div class="total-container">
                    <asp:Label Text="Total" runat="server" CssClass="total-label">Total</asp:Label>
                    <asp:TextBox ID="total" runat="server" Text="0" Enabled="false" CssClass="total-textbox"></asp:TextBox>
                </div>
            
            </div>
        </form>
            
</body>
</html>
