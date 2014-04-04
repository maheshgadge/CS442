<%-- 
    Document   : login
    Created on : Mar 26, 2014, 8:18:16 PM
    Author     : Neha
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="Error.jsp"%>
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
	<form id="form1" name="form1" method="post" action="TransactionResult.jsp">
	  <table width="80%" border="0" align="center" cellpadding="2" cellspacing="2">
        <tr>
          <th colspan="3" bgcolor="#333333" scope="col"><font color="#FFFFFF">Please Select the Accounts for Transfer </font></th>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
       <tr>
            <td><div align="right">Account User Name </div> 
            </td>
      
          
          <td>:</td>
          <td><label>
           nshah77
</label></td>
        </tr>
        <tr>
          <td width="43%"><div align="right"><strong>Select Source Account No.</strong></div></td>
          <td width="2%">:</td>
          <td width="55%">
             <select name="accounttypename" onchange = "changeAccountType()">
		  <option value="4">Checking Account </option>
                  <option value="10">Saving Account</option>
		  <option value="16"> Credit Account</option>
                </select>
                    </td>
        </tr>
        <tr>
          <td><div align="right"><strong>Select Destination Account No. </strong></div></td>
           <td width="2%">:</td>
          <td width="55%">
             <select name="accounttypename" onchange = "changeAccountType()">
		  <option value="4">Checking Account </option>
                  <option value="10">Saving Account</option>
		 
                </select>
                    </td>
        </tr>
        <tr>
          <td><div align="right"><strong>Amount</strong></div></td>
          <td>:</td>
          <td><label>
            <input name="Amount" type="text" id="Amount" size="10" />
          $</label></td>
        </tr>
        <tr>
          <td><div align="right"><strong>Customer Comments</strong></div></td>
          <td>:</td>
          <td><label>
            <textarea name="textfield2" cols="30" rows="4"></textarea>
          </label></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td><label>
          <input type="submit" name="makeTransaction" value="Transfer Amount" />
          </label></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
      </table>
      </form>
	</td>
  </tr>
  <tr style="height:30px;">
    <td colspan="3" style="background-color:#2175bc;">&nbsp;</td>
  </tr>
</table>
</body>


</html>



