public with sharing class ClassExample02 {

    public static void insertAccount(){
    Account a = new Account(name='Siddaramu');
    Contact c = new Contact(LastName='siddu');
    c.AccountId  = a.Id;


    }
    
}
