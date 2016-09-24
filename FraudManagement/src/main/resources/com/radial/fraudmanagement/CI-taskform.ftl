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
<#if fraud.fraudRequest.order.orderId??>
<tr>
<td><b>Order ID : ${fraud.fraudRequest.order.orderID}<b></td>
</tr>
</#if>
<tr>
  <td>
    <b>Customer Details:</b>
    <#if fraud.fraudRequest.order.customerInfo??>
   <span style="color:blue">
     ${fraud.fraudRequest.order.customerInfo}
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
  <#if fraud.fraudRequest.order.shippingInfo??>
   <p>
     ${fraud.fraudRequest.order.shippingInfo}
    </p> 
   </#if>
  </td>
<td>
  <#if fraud.fraudRequest.order.shippingInfo??>
   <p>
     ${fraud.fraudRequest.order.shippingInfo}
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
<#if fraud.audit??>  
<tr>
<td>
  <#if fraud.audit.totalScore??>
   <span>
     ${fraud.audit.totalScore}
    </span> 
  </#if>  
</td>
<td>
  <#if fraud.audit.auditTrail??>
   <span>
     ${fraud.audit.auditTrail}
    </span> 
  </#if>  
</td>
  <td>
  <#if fraud.audit.auditTrail??>
   <span>
     ${fraud.audit.auditTrail}
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