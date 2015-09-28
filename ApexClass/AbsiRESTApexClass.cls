/**********************************************************************
 Name: {{api_name}}
 Other classes used:
======================================================
Description: 
	Sample description
======================================================
History                                                            
-------                                                            
VERSION         AUTHOR                  DATE            DETAIL                                 
1.0             John Doe  				29/08/1997		Initial development
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