<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="EndofDay.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>End of Day - Homepage</title>
    <link href="css/styles.css" rel="stylesheet" />
    <meta name="viewport" content="width=device-width,initial-scale=1.0"/>
</head>
<body>
    
        
            <div class="homepage-container">
          <div class="title-box">
            <h1 class="title">End<br/> of<br/> Day</h1>
          </div>
          <div class="menuBox">
              <ul class="menuList">
                  <li class="menuli"><a href="SafeCount.aspx" runat="server" class="menulink blue">Safe Count</a></li>
                  <li class="menuli"><a href="DepositCalculator.aspx" class="menulink orange">Deposit</a></li>
                  <li class="menuli"><a href="WasteSheet.aspx" class="menulink green">Waste</a></li>
                  <li class="menuli"><a href="About.aspx" class="menulink purple">About</a></li>
              </ul>
          </div>
      </div>
        
    
</body>
</html>
