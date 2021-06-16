<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WasteSheet.aspx.cs" Inherits="EndofDay.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>End of Day - Waste Sheet</title>
    <link href="css/styles.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <a href="Homepage.aspx">Back</a>
            <div>
                <h1>Waste Sheet</h1>
            </div>
            <div>
                <asp:Label Text="Apple Cranberry Muffin" runat="server" ID="applecranMuffin" AssociatedControlID="applecranmuffinAmount"></asp:Label>
                <asp:TextBox runat="server" Text="0" OnTextChanged="Unnamed_TextChanged" ID="applecranmuffinAmount" AutoPostBack="true"/>
            </div>
            <div>
                <asp:Label Text="Triple Berry Muffin" runat="server" ID="tripleberryMuffin" AssociatedControlID="tripleberrymuffinAmount"></asp:Label>
                <asp:TextBox runat="server" Text="0" OnTextChanged="Unnamed_TextChanged" ID="tripleberrymuffinAmount" AutoPostBack="true"/>
            </div>
            <div>
                <asp:Label Text="Cheddar Scone" runat="server" ID="cheddarScone" AssociatedControlID="cheddarsconeAmount"></asp:Label>
                <asp:TextBox runat="server" Text="0" OnTextChanged="Unnamed_TextChanged" ID="cheddarsconeAmount" AutoPostBack="true"/>
            </div>
            <div>
                <asp:Label Text="Raspberry Scone" runat="server" ID="raspberryScone" AssociatedControlID="raspberrysconeAmount"></asp:Label>
                <asp:TextBox runat="server" Text="0" OnTextChanged="Unnamed_TextChanged" ID="raspberrysconeAmount" AutoPostBack="true"/>
            </div>
            <div>
                <asp:Label Text="Croissant" runat="server" ID="croissant" AssociatedControlID="croissantAmount"></asp:Label>
                <asp:TextBox runat="server" Text="0" OnTextChanged="Unnamed_TextChanged" ID="croissantAmount" AutoPostBack="true" />
            </div>
            <div>
                <asp:Label Text="Ham and Gruyere" runat="server" ID="hamandgruyere" AssociatedControlID="hamandgruyereAmount"></asp:Label>
                <asp:TextBox runat="server" Text="0" OnTextChanged="Unnamed_TextChanged" ID="hamandgruyereAmount" AutoPostBack="true"/>
            </div>
            <div>
                <asp:Label Text="Quinoa Loaf" runat="server" ID="quinoaLoaf" AssociatedControlID="quinoaloafAmount"></asp:Label>
                <asp:TextBox runat="server" Text="0" OnTextChanged="Unnamed_TextChanged" ID="quinoaloafAMount" AutoPostBack="true"/>
            </div>
            <div>
                <asp:Label Text="Cherry Lemon Loaf" runat="server" ID="cherrylemonLoaf" AssociatedControlID="cherrylemonloafAmount"></asp:Label>
                <asp:TextBox runat="server" Text="0" OnTextChanged="Unnamed_TextChanged" ID="cherrylemonloafAmount" AutoPostBack="true"/>
            </div>
            <div>
                <asp:Label Text="Ginger Cookie" runat="server" ID="gingerCookie" AssociatedControlID="gingercookieAmount"></asp:Label>
                <asp:TextBox runat="server" Text="0" OnTextChanged="Unnamed_TextChanged" ID="gingercookieAmount" AutoPostBack="true"/>
            </div>
            <div>
                <asp:Label Text="Chocolate Chip Cookie" runat="server" ID="chocolatechipCookie" AssociatedControlID="chocolatechipAmount"></asp:Label>
                <asp:TextBox runat="server" Text="0" OnTextChanged="Unnamed_TextChanged" ID="chocolatechipAmount" AutoPostBack="true"/>
            </div>
            <div>
                <asp:Label Text="Granola Cookie" runat="server" ID="granolaCookie" AssociatedControlID="granolacookieAmount"></asp:Label>
                <asp:TextBox runat="server" Text="0" OnTextChanged="Unnamed_TextChanged" ID="granolacookieAmount" AutoPostBack="true"/>
            </div>
            <div>
                <asp:Label Text="Cocoa Chia Bites" runat="server" ID="chiaBites" AssociatedControlID="chiabiteAmount"></asp:Label>
                <asp:TextBox runat="server" Text="0" OnTextChanged="Unnamed_TextChanged" ID="chiabiteAmount" AutoPostBack="true"/>
            </div>
            <div>
                <asp:Label Text="Peanut Butter Bites" runat="server" ID="pbBites" AssociatedControlID="pbbiteAmount"></asp:Label>
                <asp:TextBox runat="server" Text="0" OnTextChanged="Unnamed_TextChanged" ID="pbbiteAmount" AutoPostBack="true"/>
            </div>
             <div>
                <asp:Label Text="Peanut Butter Overnight Oats" runat="server" ID="pbOats" AssociatedControlID="pbonAmount"></asp:Label>
                <asp:TextBox runat="server" Text="0" OnTextChanged="Unnamed_TextChanged" ID="pbonAmount" AutoPostBack="true"/>
            </div>
            <div>
                <asp:Label Text="Egg and Cheese" runat="server" ID="eggcheeseWrap" AssociatedControlID="eggcheeseAmount"></asp:Label>
                <asp:TextBox runat="server" Text="0" OnTextChanged="Unnamed_TextChanged" ID="eggcheeseAmount" AutoPostBack="true"/>
            </div>
            <div>
                <asp:Label Text="Egg and Bacon" runat="server" ID="eggbaconWrap" AssociatedControlID="eggbaconAmount"></asp:Label>
                <asp:TextBox runat="server" Text="0" OnTextChanged="Unnamed_TextChanged" ID="eggbaconAmount" AutoPostBack="true"/>
            </div>
            <div>
                <asp:Label Text="Egg and Sausage" runat="server" ID="eggsausageWrap" AssociatedControlID="eggsausageAmount"></asp:Label>
                <asp:TextBox runat="server" Text="0" OnTextChanged="Unnamed_TextChanged" ID="eggsausageAmount" AutoPostBack="true"/>
            </div>
            <div>
                <asp:Label Text="Chickpea Salad Wrap" runat="server" ID="chickpeaWrap" AssociatedControlID="chickpeaAmount"></asp:Label>
                <asp:TextBox runat="server" Text="0" OnTextChanged="Unnamed_TextChanged" ID="chickpeaAmount" AutoPostBack="true"/>
            </div>
            <div>
                <asp:Label Text="Bean Burrito" runat="server" ID="beanBurrito" AssociatedControlID="beanburritoAmount"></asp:Label>
                <asp:TextBox runat="server" Text="0" OnTextChanged="Unnamed_TextChanged" ID="beanburritoAmount" AutoPostBack="true"/>
            </div>
            <div>
                <asp:Label Text="Chicken Coconut Curry Wrap" runat="server" ID="cococurryWrap" AssociatedControlID="cococurryAmount"></asp:Label>
                <asp:TextBox runat="server" Text="0" OnTextChanged="Unnamed_TextChanged" ID="cococurryAmount" AutoPostBack="true"/>
            </div>
            <div>
                <asp:TextBox runat="server" ReadOnly="true" ID="outputBox" Height="500px" TextMode="MultiLine"></asp:TextBox>
            </div>
        </div>
    </form>
</body>
</html>
