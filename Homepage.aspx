<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="EndofDay.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>End of Day - Homepage</title>
    <link href="css/styles.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container">
          <div class="title-box">
            <h1 class="title">End<br/> of<br/> Day</h1>
          </div>
          <div class="menuBox">
              <ul class="menuList">
                  <li class="menuli"><a href="SafeCount.aspx" runat="server" class="menuLink green">Safe Count</a></li>
                  <li class="menuli"><a href="Deposit.aspx" class="menuLink blue">Deposit</a></li>
                  <li class="menuli"><a href="WasteSheet.aspx" class="menuLink brown">Waste</a></li>
                  <li class="menuli"><a href="About.aspx" class="menuLink purple">About</a></li>
              </ul>
          </div>
      </div>
        </div>
    </form>
</body>
</html>
