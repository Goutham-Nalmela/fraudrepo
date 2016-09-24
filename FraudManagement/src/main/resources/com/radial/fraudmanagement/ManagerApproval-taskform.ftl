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
<h3>Manager Approval</h3>
<table width="100%">
  <tbody>
	<tr>
	  <td><h2>Order Details:</h2>
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
       <p>
		Given Name:${fraud.fraudRequest.order.customerInfo.personName.givenName} <br/>
		Last Name: ${fraud.fraudRequest.order.customerInfo.personName.surname}	<br/>
		<#if fraud.fraudRequest.order.totalCost??>
		Email:${fraud.fraudRequest.order.totalCost.email} <br/>
		</#if>
		Telephone Number: (${fraud.fraudRequest.order.customerInfo.telephone.phoneLocationType}) ${fraud.fraudRequest.order.customerInfo.telephone.legacyPhoneNumber}<br/>
		Address:<p> 
		${fraud.fraudRequest.order.customerInfo.address.addressLine}<br/>
		${fraud.fraudRequest.order.customerInfo.address.cityName} ${fraud.fraudRequest.order.customerInfo.address.postalCode}<br/>
		${fraud.fraudRequest.order.customerInfo.address.stateProv} ${fraud.fraudRequest.order.customerInfo.address.countryName.name}<br/>
		</p>     
	  </p> 
	  </#if>
	 </td>
	</tr>
<#if fraud.fraudRequest.ipAddress??>	
	<tr>
	 <td>
	 <b>IP Address:</b>
	 <p>
		IP: ${fraud.fraudRequest.ipAddress.id}<br/>
		IP Country:${fraud.fraudRequest.ipAddress.countryName.name}<br/>
	 </p>
	 </td>	 
	</tr>
</#if>
	
<#if fraud.fraudRequest.order.shippingInfo??>	
	<tr>
	 <td>
	 <b>Shipping Details:</b>
      <p>
       Shipping Method: ${fraud.fraudRequest.order.shippingInfo.shippingMethod}<br/>
	   Shipping Cost: ${fraud.fraudRequest.order.shippingInfo.costTotals.amountAfterTax}<br/>
      </p>
	 </td>	 
	</tr>
</#if>
<#if fraud.fraudRequest.order.totalCost??>
	<tr>
	 <td>
	  <b>Billing Address:</b>
	  <p> 
		${fraud.fraudRequest.order.totalCost.address.addressLine}<br/>
		${fraud.fraudRequest.order.totalCost.address.cityName} ${fraud.fraudRequest.order.totalCost.address.postalCode}<br/>
		${fraud.fraudRequest.order.totalCost.address.stateProv} ${fraud.fraudRequest.order.totalCost.address.countryName.name}<br/>		
	  </p>
	  <b>Card Details:</b>
	  <p>
		Card Number:${fraud.fraudRequest.order.totalCost.paymentCard.maskedCardNumber}<br/>
		Type:${fraud.fraudRequest.order.totalCost.paymentCard.cardType}<br/>
		Payee Name:${fraud.fraudRequest.order.totalCost.paymentCard.cardHolderName}<br/>				
	  </p>
	  </td>
	</tr>
</#if>
<#if fraud.fraudRequest.order.lineItems??>
	<tr>
	 <td>
	 <#if fraud.fraudRequest.order.totalCost??>
		Total Order Cost:${fraud.fraudRequest.order.totalCost.costTotals.amountAfterTax} <br/>
	 </#if>
		<table>
		  <#list fraud.fraudRequest.order.lineItems.lineItem as items>
			<tr>
			   <td>${items}</td>			   
			</tr>
		  </#list>
		</table>
	 </td>
	</tr>
</#if>
<#if fraud.audit??>
	<tr>
	  <td><b>Total Audit Score :</b> ${fraud.audit.totalScore}</td>
	</tr>
	<tr>
	  <td>
	  <table>
	  <th>
		<td>Rule Fired</td>
		<td>Action</td>
		<td>Score</td>
		<td>Notes</td>
	  </th>
	  <#list fraud.audit.auditTrail as trail>
	  <tr>
		<td>${trail.rule}</td>
        <td>${trail.action}</td>
        <td>${trail.score}</td>
		<td>${trail.notes}</td>	
	  </tr>
	  </#list>
	  </table>
	  
	  </td>
	</tr>
</#if>
  </tbody>
</table>

 <div>
 Approver Comments:${approver1_comments}
 </div>
 <div class="control-group">
    <label class="control-label" for="approver2_action">Action:</label>
    <div class="controls">
		<select id="approver2_action" name="approver2_action">
            <option value="Approve">Approve</option>
            <option value="Reject">Reject</option>                 
        </select>
	</div><hr>
    <label class="control-label" for="approver2_comments">Notes:</label>
    <div class="controls">
        <textarea id="approver2_comments" name="approver2_comments"></textarea>
    </div>
 </div>   

</body>
</html>