<%-- 
    Document   : EnterPaymentDetails
    Created on : Mar 27, 2014, 9:27:33 PM
    Author     : Mahesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table width="900" border="1" align="center" cellpadding="0" cellspacing="0" style="font-weight:normal; background-color:#FFFFFF">
  <tr>
    <th colspan="3" scope="col" style="height:90px; background-color:#2175bc;"><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="900" height="90">
      
    </object></th>
  </tr>
  
    <td colspan="2" style="padding:20px;line-height:20px;">
	<div class="box1">
	
	</div>
	<br/>
	<br/>
	<form id="form1" name="form1" method="post" action="MakePayment.jsp">
	  <table width="60%" border="0" align="center" cellpadding="2" cellspacing="2">
        <tr>
          <th colspan="3" bgcolor="#333333" scope="col"><font color="#FFFFFF">Enter Payment Details </font></th>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
       
        <tr>
          <td width="23%"><div align="right"><strong>Option 1 :</strong></div></td>
          <td width="2%">:</td>
          <td width="25%">
             <select name="accounttypename" >
                  <option value="0">Select </option>
		  <option value="4">Checking Account </option>
                  <option value="10">Saving Account</option>
		  
                </select>
                    </td>
          <td width="25%"><div align="right">Amount</div></td>
          <td width="2%">:</td>
          <td width="23%">
             <label>
            <input name="Amount" type="text" id="Amount" size="10" />
          </label>
                    </td>          
        </tr>
        <tr></tr>
         <tr>
          <td width="23%"><div align="right"><strong>Option 2 :</strong></div></td>
          <td width="2%">:</td>
          <td width="25%">
             <select name="accounttypename" >
                  <option value="0">Select </option>
		  <option value="4">Checking Account </option>
                  <option value="10">Saving Account</option>
		 
                </select>
                    </td>
          <td width="25%"><div align="right">Amount</div></td>
          <td width="2%">:</td>
          <td width="23%">
             <label>
            <input name="Amount" type="text" id="Amount" size="10" />
          </label>
                    </td>          
        </tr>
         <tr></tr>
        <tr>
          <td width="23%"><div align="right"><strong>Option 3 :</strong></div></td>
          <td width="2%">:</td>
          <td width="25%">
             <select name="accounttypename" >
                  <option value="0">Select </option>
		  <option value="4">Checking Account </option>
                  <option value="10">Saving Account</option>
		  
                </select>
                    </td>
          <td width="25%"><div align="right">Amount</div></td>
          <td width="2%">:</td>
          <td width="23%">
             <label>
            <input name="Amount" type="text" id="Amount" size="10" />
          </label>
                    </td>          
        </tr>
         <tr></tr>
         <tr>
          <td width="100%"><div align="right"><strong>Option 4 : Credit Card</strong></div></td>
              
        </tr>
        
        <tr>
          <td width="43%"><div align="right">Enter Card No.</div></td>
          <td width="2%">:</td>
          <td width="55%">
            <label>
            <input name="Amount" type="text" id="Amount" size="20" />
          </label>
                    </td>
        </tr>
        
        <tr>
          <td width="43%"><div align="right">CVV2</div></td>
          <td width="2%">:</td>
          <td width="55%">
            <label>
            <input name="Amount" type="text" id="Amount" size="10" />
          </label>
                    </td>
        </tr>
        
        <tr>
          <td width="43%"><div align="right">Amount</div></td>
          <td width="2%">:</td>
          <td width="55%">
            <label>
            <input name="Amount" type="text" id="Amount" size="10" />
          </label>
                    </td>
        </tr>
        
        <tr> 
        <td width="50%">
        <input align="right" type="submit" name="Submit" value="Make Payment" />
        </td>
        
        </tr>
        
        
    </body>
</html>
