%dw 2.0
output application/json
---
{
    "health-check-response": {
      header: {
        apiName: p('api.name'),
        apiVersion: p('api.version'),
        correlationId: attributes.headers.'x-correlation-id'
      },
      data: {
        apiStatus: "Alive",
        downStreamType: "Resource API",
        downStreamStatus: "Alive"
      }
    }
  
}