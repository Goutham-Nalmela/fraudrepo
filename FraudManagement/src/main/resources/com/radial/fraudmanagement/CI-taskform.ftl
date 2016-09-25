<#if fraud??>
  ${fraud}
  <#if fraud.fraudRequest??>
    FraudRequest ID:${fraud.fraudRequest.id}
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
      <option value="Approve">Reject</option>                  
    </select>
  </div>
  <br/>
   <div>
     <b>Comments:</b><br/>
     <textarea id="approver1_comments" name="approver1_comments"></textarea>
  </div>
  
</#if>