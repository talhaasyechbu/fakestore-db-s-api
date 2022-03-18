%dw 2.0
output application/json
---
{
	"header" : {
	   "apiName": p('api.name'),
      "apiVersion": p('api.version'),
      "correlationId" : attributes.headers.'x-correlation-id'
	},
	"error" : {
	    "description" : "Internal Server Error.",
	    "code": "500",
	     "timestamp": now() as DateTime { format: "MM-dd-yyy-HH:mm:ss" }
	    }
}