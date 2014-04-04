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
            <h1>Welcome to Shopping Page</h1>
            <form action="SearchResult.jsp" method="post">
            <br/>Product Name:<input type="text" name="productname">
            
            <br/><input type="submit" value="Search">
            </form>
        </center> 
        
 <center>
            <h2>Browse Products and Select for Purchase</h2>
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
	<form id="form2" name="form2" method="post" action="ViewCart.jsp">

	  <table width="80%" border="1" align="center" cellpadding="2" cellspacing="2">
        <tr>
          <th colspan="3" bgcolor="#333333" scope="col"><font color="#FFFFFF">Please Select the Items you want to buy </font></th>
        </tr>
 
<tr>
  <td>Select Product  </td>
  <td>Item Name </td> 
  <td>Item Cost </td>
  <td> Item Quantity  </td>
  <td> Total Cost for Item </td>
</tr>
<tr>
<td> <input type="checkbox" ></td>
<td> <input type="text"  name="productname"> </td>
<td><input type="text"  name="price"></td>
<td>  <select name="quantity">
		  <option value="1">1</option>
		  <option value="2"> 2</option>
		  <option value="3"> 3</option>
		  </select></td>
<td> <input type="text"  name="totalpdtcost"></td>
</tr>
       

       
      </table>
            <center>
<input type="submit" value="Add To Cart">
            </center>
      </form>
	</td>
  </tr>
  <tr style="height:30px;">
    <td colspan="3" style="background-color:#2175bc;">&nbsp;</td>
  </tr>
</table>
</body>


</html>