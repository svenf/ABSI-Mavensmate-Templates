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
public with sharing class {{ api_name }} //extends fflib_SObjectSelector
{
	/*
	//Implementation of the abstract method to define the object to query on
	public Schema.SObjectType getSObjectType()
	{
		return KONE_Contact__c.sObjectType;
	}

	//Public property to hold the paging info
	public ccPaging paging {get; set;}
	
	*/

	//Constructor
	public {{ api_name }}() 
	{
		//Init the paging property
		this.paging = new ccPaging();
	}	
	/*
	//Public property to define the fields to be returned
	public List<Schema.SObjectField> sObjectFieldList {get; set;}
	
	//Implementation of the abstract method in the fflib class. Use the public list property to define the return fields
	private List<Schema.SObjectField> getSObjectFieldList()
	{
		//When the public list property contains items, return the public list
		if(sObjectFieldList != null && sObjectFieldList.size() > 0)
		{
			return sObjectFieldList;			
		} //The public list property wasn't used, so return some default fields
		else return new List<Schema.SObjectField> {
			Account_KONEContact__c.Id,
			Account_KONEContact__c.Name
		};
	}

	//Public property to define the fields to be returned (defined as strings)
	//This is needed to support inner queries and parent relationships
	public List<String> sObjectFieldStringList {get; set;}			

	//Method to create the select string of the query
	private String getSelectString()
	{
		//A list of fields (strings) has been defined, so append the strings and return the string
		if(sObjectFieldStringList != null && !sObjectFieldStringList.isEmpty())
		{
			return String.join(sObjectFieldStringList, ', ');
		} //Otherwise use the flow of the fflib library
		else return getFieldListString();
	}	

	//Method to return the paging string to add to the query
	private String getPagingString()
	{
		//When the paging is defined and has been enabled
		if(this.paging != null && this.paging.enabled)
		{
			//Get the records per page
			Integer take = this.paging.recordsPerPage;

			//Get the number to use as offset in the query
			Integer skip = (this.paging.currentPage - 1) * take;

			return String.format('LIMIT {0} OFFSET {1}', new List<String> { String.valueOf(take),
																			String.valueOf(skip)
																			});
		}
		else return '';
	}

	//Public property to define the fields to be returned (defined as strings)
	public List<String> orderByFieldList {get; set;}	

	//Method to return the order by string
	private String getOrderByString()
	{
		//The order by string has been defined
		if(orderByFieldList!= null && !orderByFieldList.isEmpty())
		{		
			//Return the formatted string
			return String.format('ORDER BY {0}', new List<String> { String.join(orderByFieldList, ', ') });	
		}
		return '';
	}

	//SELECTORS

	//Select service orders by id
	public ccQueryResult selectById(Set<Id> idSet)
	{
		assertIsAccessible();	
        String query = String.format(
				'SELECT {0} ' +
				  'FROM {1} ' +
				  'WHERE Id IN : idSet ' + 				  
				  'ORDER BY {2} ' +
				  '{3}',				
				new List<String> {
						getFieldListString(),
						getSObjectName(),
						getOrderBy(),
						getPagingString()						
					});

		return new ccQueryResult(Database.query(query), paging, Datetime.now(), query);
	}	

	//Get the service orders without any criteria
	public ccQueryResult selectAll()
	{
		assertIsAccessible();	
        String query = String.format(
				'SELECT {0} ' +
				  'FROM {1} ' +
				  'ORDER BY {2} ' +
				  '{3}',				
				new List<String> {
						getFieldListString(),
						getSObjectName(),
						getOrderBy(),
						getPagingString()						
					});

		return new ccQueryResult(Database.query(query), paging, Datetime.now(), query);
	}*/
}