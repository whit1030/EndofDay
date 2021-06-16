<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SafeCount.aspx.cs" Inherits="EndofDay.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>End Of Day - Safe Count</title>
    <link href="css/styles.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <a href="Homepage.aspx">Back</a>
            <div>
                <h1>Safe Count</h1>
            </div>
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
            </div>
            <div>
                <div>
                   <asp:Label Text="Total" runat="server">Total</asp:Label>
                    <asp:TextBox ID="total" runat="server" Text="0" Enabled="false"></asp:TextBox>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
