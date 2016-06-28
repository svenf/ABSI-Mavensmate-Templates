/**********************************************************************
 Name: {{api_name}}
======================================================
Description: 
***********************************************************************/
public with sharing class {{ api_name }} 
{
	private final sObject mysObject;

    // The extension constructor initializes the private member
    // variable mysObject by using the getRecord method from the standard
    // controller.
    public {{ api_name }}(ApexPages.StandardController stdController) 
	{
        this.mysObject = (sObject)stdController.getRecord();
    }

    public String getRecords() 
	{
        //Service service = new Service();
		//service.callMethod();
    }
}