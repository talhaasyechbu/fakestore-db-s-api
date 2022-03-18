%dw 2.0
output application/json
---
{
	"header" : {
	"apiName": p('api.name'),
	"apiVersion": p('api.version'),
	"correlationId" : correlationId
	},
	"data" : {
		"message" : "data submited",
		"employeeId": "admin"
	}
}