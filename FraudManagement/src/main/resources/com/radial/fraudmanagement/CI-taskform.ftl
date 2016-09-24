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
       <span style="color:blue">
		Given Name:${fraud.fraudRequest.order.customerInfo.personName.givenName} <br/>
		Last Name: ${fraud.fraudRequest.order.customerInfo.personName.surname}	<br/>
		Telephone Number: ${fraud.fraudRequest.order.customerInfo.telephone.phoneLocationType} ${fraud.fraudRequest.order.customerInfo.telephone.legacyPhoneNumber}<br/>
		Address:<p> 
		${fraud.fraudRequest.order.customerInfo.address.addressLine}<br/>
		${fraud.fraudRequest.order.customerInfo.address.cityName} ${fraud.fraudRequest.order.customerInfo.address.postalCode}<br/>
		${fraud.fraudRequest.order.customerInfo.address.stateProv} ${fraud.fraudRequest.order.customerInfo.address.countryName.name}<br/>
		</p>     
	  </span> 
	  </#if>
	 </td>
	</tr>
<#if fraud.audit??>
	<tr>
	  <td><b>Total Audit Score :</b> ${fraud.audit.totalScore}</td>
	</tr>
	<tr>
	  <td>
	   <ui:repeat value="#{fraud.audit.auditTrail}" var="trail">
		<li>${trail.rule}</li>
        <li>${trail.action}</li>
        <li>${trail.score}</li>
		<li>${trail.notes}</li>		  
	   </ui:repeat>	 
	  </td>
	</tr>
</#if>
  </tbody>
</table>

</body>
</html>