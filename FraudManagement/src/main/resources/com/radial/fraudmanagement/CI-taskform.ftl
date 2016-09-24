<!DOCTYPE html>
<html>
<head>
<style>
table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    text-align: left;
    padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
    background-color: #4CAF50;
    color: white;
}
</style>
</head>
<body>

<table width="100%">
<tbody>
<tr>
<td>
<h2>Order Details:</h2>
</td>
</tr>
<#if rev_in.orderId??>
<tr>
<td><b>Order ID : ${rev_in.orderId}<b></td>
</tr>
</#if>
<tr>
  <td>
    <b>Customer:</b>
    <#if rev_in.customerInfo??>
   <span style="color:blue">
     ${rev_in.customerInfo}
    </span> 
   </#if>
<table width="100%">
<tbody>
<tr>
<td><b>Shipping Details:</b></td>
<td><b>Billing Details:</b></td>
</tr>  
<tr>
  <td>
  <#if rev_in.shippingDetails??>
   <p>
     ${rev_in.shippingDetails}
    </p> 
   </#if>
  </td>
<td>
  <#if rev_in.billingDetails??>
   <p>
     ${rev_in.billingDetails}
    </p> 
   </#if>  
  </td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
<h3>Audit Trails:</h2>
<table width="100%">
<tbody>
<tr>
<th>Audit ID</th>
<th>Details</th>
<th>Score</th>
</tr>
<#if rev_in.audit??>  
<tr>
<td>
  <#if rev_in.audit.auditId??>
   <span>
     ${rev_in.audit.auditId}
    </span> 
  </#if>  
</td>
<td>
  <#if rev_in.audit.details??>
   <span>
     ${rev_in.audit.details}
    </span> 
  </#if>  
</td>
  <td>
  <#if rev_in.audit.score??>
   <span>
     ${rev_in.audit.score}
    </span> 
  </#if>  
</td>
</tr>
 </#if>
<tr>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
</tr>
</tbody>
</table>

</body>
</html>