%dw 2.0
output application/json
---

if (!isEmpty(vars.storeParams.originalParams.name))
{ toRequestValue: "SELECT externalIdentifier__c,Name,AnnualRevenue,Rating,Description FROM Account WHERE Name = '" ++ attributes.queryParams.name as String ++ "'"  }
else
if (!isEmpty(vars.storeParams.originalParams.numOfAcc))
{ toRequestValue: "SELECT externalIdentifier__c,Name,AnnualRevenue,Rating,Description FROM Account LIMIT " ++ attributes.queryParams.numOfAcc as Number  }
else 
if (!isEmpty(vars.storeParams.originalParams.externalIdentifier))
{ toRequestValue: "SELECT externalIdentifier__c,Name,AnnualRevenue,Rating,Description FROM Account WHERE externalIdentifier__c = " ++ attributes.queryParams.externalIdentifier  as String }
else
{toRequestValue : "SELECT externalIdentifier__c,Name,AnnualRevenue,Rating,Description FROM Account " }