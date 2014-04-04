<%-- 
    Document   : ShoppingHome
    Created on : Mar 26, 2014, 11:49:29 PM
    Author     : Neha
--%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        
        
 <center>
            <h2>Pay for Products</h2>
 </center>        
<table width="900" border="1" align="center" cellpadding="0" cellspacing="0" style="font-weight:normal; background-color:#FFFFFF">
  <tr>
    <th colspan="3" scope="col" style="height:90px; background-color:#2175bc;"><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="900" height="90">
      
    </object></th>
  </tr>
  <tr>
    <td colspan="3">&nbsp;</td>
  </tr>
  <tr>
<td width="160" >


<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>	</td>
    <td colspan="2" style="padding:20px;line-height:20px;">
	<div class="box1">
	
	</div>
	<br/>
	<br/>
	<form id="form5" name="form5" method="post" action="PaymentConfirm.jsp">


	  <table width="80%" border="1" align="center" cellpadding="2" cellspacing="2">
        <tr>
          <th colspan="3" bgcolor="#333333" scope="col"><font color="#FFFFFF">Enter Payment Details </font></th>
        </tr>
        
 
          
<div>ENTER CARD DETAILS</div>
        <form>
Enter Card type: <input type="text" name="credit"><br>
Enter Card number: <input type="number" name="numbers"><br>
Enter Card CVV : <input type="number" name="numbers"><br>
Enter Name on Card : <input type="text" name="nameoncard"><br>

        </form>

      </table>
<input type="submit" value="Buy">
</body>


</html>