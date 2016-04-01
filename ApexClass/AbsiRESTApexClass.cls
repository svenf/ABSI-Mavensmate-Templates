/**********************************************************************
 Name: {{api_name}}
 Other classes used:
======================================================
Description: 
	Sample description
***********************************************************************/
@RestResource(urlmapping='/example')
global with sharing class {{ api_name }} 
{
	@HttpGet
	global static void getMethod()
	{
		//Service service = new Service();
		//service.callMethod();
	}
	
	@HttpPost
	global static void postMethod()
	{
		//Service service = new Service();
		//service.callMethod();
	}
	
	@HttpPut
	global static void putMethod()
	{
		//Service service = new Service();
		//service.callMethod();
	}
	
	@HttpDelete
	global static void deleteMethod()
	{
		//Service service = new Service();
		//service.callMethod();
	}
}