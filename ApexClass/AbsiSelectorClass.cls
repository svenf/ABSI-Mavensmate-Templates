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
public with sharing class {{ api_name }} extends fflib_SObjectSelector
{
	public {{ api_name }}() 
	{
		this.paging = new ccPaging();
	}
	
	//Public property to hold the paging info
	public ccPaging paging {get; set;}
	
	//Public property to define the fields to be returned
	public List<Schema.SObjectField> sObjectFieldList {get; set;}
	
	//Implementation of the abstract method. Use the public property when it is defined, otherwise return the common fields
	public List<Schema.SObjectField> getSObjectFieldList()
	{
		if(sObjectFieldList != null && sObjectFieldList.size() > 0)
		{
			return sObjectFieldList;
		}
		else return new List<Schema.SObjectField> {
				Service_Order__c.Id,
				Service_Order__c.Name
			};
	}

	//Implementation of the abstract method to define the object
	public Schema.SObjectType getSObjectType()
	{
		return null;
		//return Service_Order__c.sObjectType;
	}	
/*
	//Method to return the paging string to add to the query
	private String getPagingString()
	{
		if(this.paging != null && this.paging.enabled)
		{
			Integer take = this.paging.recordsPerPage;
			Integer skip = (this.paging.currentPage - 1) * take;

			return String.format('LIMIT {0} OFFSET {1}', new List<String> { String.valueOf(take),
																			String.valueOf(skip)
																			});
		}
		else return '';
	}

	public override String getOrderBy()
    {
        return 'Name';
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