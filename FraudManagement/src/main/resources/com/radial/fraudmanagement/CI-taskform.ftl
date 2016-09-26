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

<#if fraud??>
  <h3>
    Case Investigator
  </h3>
  <#if fraud.fraudRequest??>
    <#if fraud.fraudRequest.order.orderID??>    
    <table width="100%">
      <tr>
	  <td><h2>Order Details:</h2>
	  </td>
	</tr>
	<tr>
	  <td><b>Order ID : </b>${fraud.fraudRequest.order.orderID}</td>
	</tr>
<#if fraud.fraudRequest.order.customerInfo??>
	<tr>
	 <td>
       <b>Customer Details:</b><br/>      
       
		Given Name:${fraud.fraudRequest.order.customerInfo.personName.givenName} <br/>
		Last Name: ${fraud.fraudRequest.order.customerInfo.personName.surname}	<br/>
		<#if fraud.fraudRequest.order.totalCost??>
		Email:${fraud.fraudRequest.order.totalCost.email} <br/>
		</#if>
		Telephone Number: (${fraud.fraudRequest.order.customerInfo.telephone.phoneLocationType}) ${fraud.fraudRequest.order.customerInfo.telephone.legacyPhoneNumber}<br/>
       Address:<br/> 
		${fraud.fraudRequest.order.customerInfo.address.addressLine}<br/>
		${fraud.fraudRequest.order.customerInfo.address.cityName} ${fraud.fraudRequest.order.customerInfo.address.postalCode}<br/>
		${fraud.fraudRequest.order.customerInfo.address.stateProv} ${fraud.fraudRequest.order.customerInfo.address.countryName.name}<br/>
		
	   
	  
	 </td>
	</tr>
</#if>
<#if fraud.fraudRequest.ipAddress??>	
	<tr>
	 <td>
       <b>IP Address:</b><br/>
	 
		IP: ${fraud.fraudRequest.ipAddress.id}<br/>
		IP Country:${fraud.fraudRequest.ipAddress.countryName.name}<br/>
	 
	 </td>	 
	</tr>
</#if>
	
<#if fraud.fraudRequest.order.shippingInfo??>	
	<tr>
	 <td>
       <b>Shipping Details:</b><br/>
     
       Shipping Method: ${fraud.fraudRequest.order.shippingInfo.shippingMethod}<br/>
	   Shipping Cost: ${fraud.fraudRequest.order.shippingInfo.costTotals.amountAfterTax}<br/>
      
	 </td>	 
	</tr>
</#if>
<#if fraud.fraudRequest.order.totalCost??>
	<tr>
	 <td>
	  <b>Billing Address:</b><br/>
	  
		${fraud.fraudRequest.order.totalCost.address.addressLine}<br/>
		${fraud.fraudRequest.order.totalCost.address.cityName} ${fraud.fraudRequest.order.totalCost.address.postalCode}<br/>
		${fraud.fraudRequest.order.totalCost.address.stateProv} ${fraud.fraudRequest.order.totalCost.address.countryName.name}<br/>		
	  
	  <b>Card Details:</b><br/>
	  
		Card Number:${fraud.fraudRequest.order.totalCost.paymentCard.maskedCardNumber}<br/>
		Type:${fraud.fraudRequest.order.totalCost.paymentCard.cardType}<br/>
		Payee Name:${fraud.fraudRequest.order.totalCost.paymentCard.cardHolderName}<br/>				
	  
	  </td>
	</tr>
</#if>
<#if fraud.fraudRequest.order.lineItems??>
	<tr>
	 <td>
	 <#if fraud.fraudRequest.order.totalCost??>
		<b>Total Order Cost:${fraud.fraudRequest.order.totalCost.costTotals.amountAfterTax} </b><br/>
	 </#if>
		
	 </td>
	</tr>
</#if>
    </table>
  </#if>
  </#if>
      
    
  
  <#if fraud.audit??>
    <table width="100%">
	<tr>
       <td><b>Total Audit Score :</b> ${fraud.audit.totalScore}</td>
	</tr>
	<tr>
	  <td>
	  <table>
	  <tr><th>Rule Fired</th>
		<th>Action</th>
		<th>Score</th>
		<th>Notes</th>
	  </tr>
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
   </table>
</#if>
  <br/><br/>
  <hr>

  <div>
    <b>Action:</b>
    <select id="approver1_action" name="approver1_action">
      <option value="Approve">Approve</option>                  
      <option value="Reject">Reject</option>                  
    </select>
  </div>
  <br/>
   <div>
     <b>Comments:</b><br/>
     <textarea id="approver1_comments" name="approver1_comments"></textarea>
  </div>
  
</#if>