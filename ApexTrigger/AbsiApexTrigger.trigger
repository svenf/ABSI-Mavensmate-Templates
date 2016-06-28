/**********************************************************************
 Name: {{api_name}}
======================================================
Description: 
***********************************************************************/
trigger {{ api_name }} on {{ object_name }} (
	before insert, 
	before update, 
	before delete, 
	after insert, 
	after update, 
	after delete, 
	after undelete) {
	
	// Before cases
	if(trigger.isBefore) 
	{	
		if(trigger.isInsert) 
		{
			// Before Insert
		}
		else if(trigger.isUpdate) 
		{
			// Before Update
		}
		else if(trigger.isDelete) 
		{
			// Before Delete
		}
	}
	
	// After cases
	else if(trigger.isAfter) 
	{	
		if(trigger.isInsert) 
		{
			// After Insert
		}
		else if(trigger.isUpdate) 
		{
			// After Update
		}
		else if(trigger.isDelete) 
		{
			// After Delete
		}
		else if(trigger.isUndelete) 
		{
			// After Undelete
		}
	}
}