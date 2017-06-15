/*
*  Test class debuger , dev console ....
*/
public class MyClass {
    
    // class that run something
    static public void run(){
        Contact cont = new Contact(LastName= 'MrTest', FirstName='TestFN');
        insert cont;
        integer i  = 0;
        for(Contact c : [SELECT id,LastName,FirstName,Name FROM Contact LIMIT 10 ]){
            System.debug('############ contact c : '+c);
            i++;
        }
    }
    
    // class that test sharing
    static public void retreiveAccountSharing(){
        for(AccountShare ash : [SELECT AccountAccessLevel,AccountId,CaseAccessLevel,ContactAccessLevel,Id,IsDeleted,OpportunityAccessLevel,RowCause,UserOrGroupId FROM AccountShare]){
            System.debug('############ AccountShare ash : '+ash);
        }
        
        for(LeadShare lsh : [ SELECT Id,IsDeleted,LastModifiedById,LastModifiedDate,LeadAccessLevel,LeadId,RowCause,UserOrGroupId FROM LeadShare]){
            System.debug('############ LeadShare lsh : '+lsh);
        }
        
        
         for(test__Share tsh : [ SELECT AccessLevel,Id,IsDeleted,LastModifiedById,LastModifiedDate,ParentId,RowCause,UserOrGroupId FROM test__Share]){
            System.debug('############ test__Share tsh : '+tsh);
        }
    }
    
}