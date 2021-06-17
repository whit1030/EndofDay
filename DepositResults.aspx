<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DepositResults.aspx.cs" Inherits="EndofDay.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>End of Day - Deposit Results</title>
    <link href="css/styles.css" rel="stylesheet" />
    <meta name="viewport" content="width=device-width,initial-scale=1.0"/>
</head>
<body>
    <form id="form1" runat="server">
        <div class="deposit-background">
            <div class="results-container">
            <div id="tipsDiv">
                <h1 class="deposit-heading">Tip Deposit</h1>
                <asp:Table runat="server" ID="tipsTable">
                    <asp:TableHeaderRow runat="server">
                        <asp:TableHeaderCell runat="server">Currency</asp:TableHeaderCell>
                        <asp:TableHeaderCell runat="server">Value to Deposit</asp:TableHeaderCell>
                    </asp:TableHeaderRow >
                    <asp:TableRow runat="server" ID="thundredRow" Visible="false">
                        <asp:TableCell text="$100" runat="server" />
                        <asp:TableCell runat="server" ID="tipHundredValue"/>
                    </asp:TableRow>
                    <asp:TableRow runat="server" ID="tfiftyRow" Visible="false">
                        <asp:TableCell text="$50" runat="server"/>
                        <asp:TableCell runat="server" ID="tipFiftyValue"/>
                    </asp:TableRow>
                    <asp:TableRow runat="server" ID="ttwentyRow" Visible="false">
                        <asp:TableCell text="$20" runat="server" />
                        <asp:TableCell runat="server" ID="tipTwentyValue"/>
                    </asp:TableRow>
                    <asp:TableRow runat="server" ID="ttenRow" Visible="false">
                        <asp:TableCell text="$10" runat="server" />
                        <asp:TableCell runat="server" ID="tipTenValue"/>
                    </asp:TableRow>
                    <asp:TableRow runat="server" ID="tfiveRow" Visible="false">
                        <asp:TableCell text="$5" runat="server" />
                        <asp:TableCell runat="server" ID="tipFiveValue"/>
                    </asp:TableRow>
                    <asp:TableRow runat="server" ID="ttwoRow" Visible="false">
                        <asp:TableCell text="$2" runat="server" />
                        <asp:TableCell runat="server" ID="tipTwoValue"/>
                    </asp:TableRow>
                    <asp:TableRow runat="server" ID="toneRow" Visible="false">
                        <asp:TableCell text="$1" runat="server"/>
                        <asp:TableCell runat="server" ID="tipOneValue"/>
                    </asp:TableRow>
                    <asp:TableRow runat="server" ID="tquarterRow" Visible="false">
                        <asp:TableCell text="$0.25" runat="server"/>
                        <asp:TableCell runat="server" ID="tipQuarterValue"/>
                    </asp:TableRow>
                    <asp:TableRow runat="server" ID="tdimeRow" Visible="false">
                        <asp:TableCell text="$0.10" runat="server"/>
                        <asp:TableCell runat="server" ID="tipDimeValue"/>
                    </asp:TableRow>
                    <asp:TableRow runat="server" ID="tnickelRow" Visible="false">
                        <asp:TableCell text="$0.05" runat="server" />
                        <asp:TableCell runat="server" ID="tipNickelValue"/>
                    </asp:TableRow>
                </asp:Table>
            </div >

            <div id="DepositDiv">
                <h1 class="deposit-heading">Sales Deposit</h1>
                <asp:Table runat="server" ID="depositTable">
                    <asp:TableHeaderRow runat="server">
                        <asp:TableHeaderCell runat="server">Currency</asp:TableHeaderCell>
                        <asp:TableHeaderCell runat="server">Value to Deposit</asp:TableHeaderCell>
                    </asp:TableHeaderRow >
                    <asp:TableRow runat="server" ID="dhundredRow" Visible="false">
                        <asp:TableCell runat="server" Text="$100"/>
                        <asp:TableCell runat="server" ID="depositHundredValue"/>
                    </asp:TableRow>
                    <asp:TableRow runat="server" ID="dfiftyRow" Visible="false">
                        <asp:TableCell runat="server" Text="$50"/>
                        <asp:TableCell runat="server" ID="depositFiftyValue"/>
                    </asp:TableRow>
                    <asp:TableRow runat="server" ID="dtwentyRow" Visible="false">
                        <asp:TableCell runat="server" Text="$20"/>
                        <asp:TableCell runat="server" ID="depositTwentyValue"/>
                    </asp:TableRow>
                    <asp:TableRow runat="server" ID="dtenRow" Visible="false">
                        <asp:TableCell runat="server" Text="$10"/>
                        <asp:TableCell runat="server" ID="depositTenValue"/>
                    </asp:TableRow>
                    <asp:TableRow runat="server" ID="dfiveRow" Visible="false">
                        <asp:TableCell runat="server" Text="$5"/>
                        <asp:TableCell runat="server" ID="depositFiveValue"/>
                    </asp:TableRow>
                    <asp:TableRow runat="server" ID="dtwoRow" Visible="false">
                        <asp:TableCell runat="server" Text="$2"/>
                        <asp:TableCell runat="server" ID="depositTwoValue"/>
                    </asp:TableRow>
                    <asp:TableRow runat="server" ID="doneRow" Visible="false">
                        <asp:TableCell runat="server" Text="$1"/>
                        <asp:TableCell runat="server" ID="depositOneValue"/>
                    </asp:TableRow>
                    <asp:TableRow runat="server" ID="dquarterRow" Visible="false">
                        <asp:TableCell runat="server" Text="$0.25"/>
                        <asp:TableCell runat="server" ID="depositQuarterValue"/>
                    </asp:TableRow>
                    <asp:TableRow runat="server" ID="ddimeRow" Visible="false">
                        <asp:TableCell runat="server" Text="$0.10"/>
                        <asp:TableCell runat="server" ID="depositDimeValue"/>
                    </asp:TableRow>
                    <asp:TableRow runat="server" ID="dnickelRow" Visible="false">
                        <asp:TableCell runat="server" Text="$0.05"/>
                        <asp:TableCell runat="server" ID="depositNickelValue"/>
                    </asp:TableRow>
                    
                </asp:Table >
            </div>

            <div id="emailDiv">
                <h1 class="deposit-heading">End of Day</h1>
                <div>
                <asp:TextBox runat="server" ID="emailTextBox" TextMode="MultiLine" Height="500px" CssClass="waste-output-box"></asp:TextBox>
                    </div>
            </div>
                </div>
        </div>
    </form>
</body>
</html>
