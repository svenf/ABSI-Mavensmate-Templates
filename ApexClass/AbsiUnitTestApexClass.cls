/**********************************************************************
 Name: {{api_name}}
======================================================
Description: 
***********************************************************************/
@isTest
private class {{ api_name }} 
{	
	@testSetup
    static void createTestData() 
	{
		// Set up test data for test methods
	}
	
	static testMethod void test_method_one() 
	{
		// Implement test code
		Test.startTest();

		Test.stopTest();
	}	
}