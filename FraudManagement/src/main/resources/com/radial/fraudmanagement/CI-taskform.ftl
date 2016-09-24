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
<#if fraud.fraudRequest.order.orderID??>
<tr>
<td><b>Order ID : ${fraud.fraudRequest.order.orderID}<b></td>
</tr>
</#if>
<tr>
  <td>
    <b>Customer Details:</b>
    <#if fraud.fraudRequest.order.customerInfo??>
   <span style="color:blue">
   Given Name:${fraud.fraudRequest.order.customerInfo.personName.givenName} <br/>
   Last Name: ${fraud.fraudRequest.order.customerInfo.personName.surname}	<br/>
   Telephone Number: ${fraud.fraudRequest.order.customerInfo.telephone != null ? "("+fraud.fraudRequest.order.customerInfo.telephone.phoneLocationType + ") "+ fraud.fraudRequest.order.customerInfo.telephone.legacyPhoneNumber:""}<br/>
   <#if fraud.fraudRequest.order.customerInfo.address??>
	Address:<p> 
	${fraud.fraudRequest.order.customerInfo.address.addressLine}<br/>
	${fraud.fraudRequest.order.customerInfo.address.cityName} ${fraud.fraudRequest.order.customerInfo.address.postalCode}<br/>
	${fraud.fraudRequest.order.customerInfo.address.stateProv} ${fraud.fraudRequest.order.customerInfo.address.countryName != null?fraud.fraudRequest.order.customerInfo.address.countryName.name:""}<br/>
	</p>
   </#if>
   
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
     Shipping Method: ${fraud.fraudRequest.order.shippingInfo.shippingMethod}<br/>
	 Shipping Cost: ${fraud.fraudRequest.order.shippingInfo.costTotals !=null?fraud.fraudRequest.order.shippingInfo.costTotals.amountAfterTax:"0.0"}
    </p> 
   </#if>
  </td>
<td>
  <#if fraud.fraudRequest.order.totalCost??>
  <#if fraud.fraudRequest.order.totalCost.address??>
   <B>Billing Address:</B><p> 
	${fraud.fraudRequest.order.totalCost.address.addressLine}<br/>
	${fraud.fraudRequest.order.totalCost.address.cityName} ${fraud.fraudRequest.order.totalCost.address.postalCode}<br/>
	${fraud.fraudRequest.order.totalCost.address.stateProv} ${fraud.fraudRequest.order.totalCost.address.countryName != null?fraud.fraudRequest.order.totalCost.address.countryName.name:""}<br/>
	</p>
	 </#if>  
	<#if fraud.fraudRequest.order.totalCost.paymentCard??>
   <B>Card Details:</B><p> 
	Card Number: ${fraud.fraudRequest.order.totalCost.paymentCard.maskedCardNumber}<br/>
	Card Type: ${fraud.fraudRequest.order.totalCost.paymentCard.cardType}<br/>
	Card Holder Name: ${fraud.fraudRequest.order.totalCost.paymentCard.cardHolderName}<br/>
	Expires On: ${fraud.fraudRequest.order.totalCost.paymentCard.expireDate}<br/>	
	</p>
	 </#if>
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