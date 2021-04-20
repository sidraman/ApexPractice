public with sharing class ClassExample01 {
    public static void insertAccounts() {
        
        List<Account> actList = new List<Account>();
        for(integer i=0;i<99;i++){
            Account act = new Account();
            act.Name='name'+i;
            actList.add(act);
        }
        insert actList;

    }

    public static void displayAccountsCreated(){
        List<Account> allAccounts = [SELECT Id,Name FROM Account 
                                    WHERE name LIKE 'name%'];

        if(allAccounts.size()>0){
            System.debug('The accounts fetched');
        }
        
        for(Account a:allAccounts){
            System.debug('The account name and Id'+a.Name+'Id: '+a.Id);
        }
        


    }
}
