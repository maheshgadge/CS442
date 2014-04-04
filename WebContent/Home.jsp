<%-- 
    Document   : Home
    Created on : Mar 26, 2014, 8:20:06 PM
    Author     : Neha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="Error.jsp"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
    function changeAccountType {
        document.getElementById("accounttypename").innerHTML = Date();
        alert("inside changeAcc");
        
        var list = document.getElementById('accounttypename');
alert(list[list.selectedIndex].value);
document.getElementById("demo").innerHTML="Hello World";
    }   
    </script>
    </head>
    <body>      
        <br/><br/><br/><br/><br/>
        <center>
            <h2>
            
            </h2>
            <br/>
            <br/>
            <br/><br/><br/><br/><br/>
            
	  <table width="70%" border="0" align="center" cellpadding="2" cellspacing="2">
        <tr>
          <th colspan="3" bgcolor="#333333" scope="col"><font color="#FFFFFF">View Bank Account Details</font></th>
        </tr>
        <tr>
          <td width="39%">&nbsp;</td>
          <td width="3%">&nbsp;</td>
          <td width="58%">&nbsp;</td>
        </tr>
        <tr>
            <td><div align="right">Account User Name </div> 
            </td>
      
          
          <td>:</td>
          <td id="demo"><label>
           nshah77
</label></td>
        </tr>
        
        <tr>
          <td><div align="right">Account Type </div></td>
          <td>:</td>
          <td><select name="accounttypename" onchange = "changeAccountType()">
		  <option value="Checking">Checking Account</option>
                  <option value="Saving">Saving Account</option>
		  <option value="CREDIT"> Credit Account</option>
		  <option value="REWARDS"> Rewards</option>
                </select></td>
        </tr>
        <tr>
          <td><div align="right">Account Details</div></td>
          <td>:</td>
          <td>
            <table border="1" style="width:300px">
<tr>
  <td>ACCOUNT ID</td>
  <td>CUSTOMER ID</td> 
  <td>ACCOUNT TYPE</td>
  <td>BALANCE </td>
</tr>
<tr>
  <td>1</td>
  <td>4</td> 
  <td>Checking</td>
  <td> 15467 </td>  
</tr>
<tr>
  <td>1</td>
  <td>4</td> 
  <td>Checking</td>
  <td> 15467 </td>  
</tr>
<tr>
  <td>1</td>
  <td>4</td> 
  <td>Checking</td>
  <td> 15467 </td>  
</tr>
<tr>
  <td>1</td>
  <td>4</td> 
  <td>Checking</td>
  <td> 15467 </td>  
</tr>
</table>
          </td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          
          <td>
          <form id="form1" name="form1" method="post" action="Transfer.jsp">
          <label>
            <input type="submit" name="Submit" value="Transfer Money" />
              </label> </form> </td>
              <td>
          <form action="Shoppinghome.jsp" method="post">
            <label>
            <input type="submit" name="Submit" value="Shop" />
            </label> </form> </td>
            
              
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td colspan="3" bgcolor="#333333">&nbsp;</td>
          </tr>
            
      </table>
      
  <tr style="height:30px;">
    <td colspan="3" style="background-color:#2175bc;">&nbsp;
     
   

        <a href="logout.jsp">Logout</a>
        </center>
  
     
    </body>
    
</html>


