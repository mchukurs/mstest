%dw 2.0
output application/json
---
if (!isEmpty(attributes.queryParams.name))
{ toRequestValue: "SELECT externalIdentifier,name,revenue,rating,description FROM Account WHERE name =" ++ attributes.queryParams.name as String  }
else
if (!isEmpty(attributes.queryParams.numOfAcc))
{ toRequestValue: "SELECT externalIdentifier,name,revenue,rating,description FROM Account LIMIT " ++ attributes.queryParams.numOfAcc as Number  }
else 
if (!isEmpty(attributes.queryParams.externalIdentifier))
{ toRequestValue: "SELECT externalIdentifier,name,revenue,rating,description FROM Account WHERE externalIdentifier =" ++ attributes.queryParams.externalIdentifier as String  }
else
{toRequestValue : "all"}

