<#if fraud>
  ${fraud}
  <#if fraud.fraudRequest>
    Inside FraudRequest::::
    ${fraud.fraudRequest.id}
  </#if>
</#if>