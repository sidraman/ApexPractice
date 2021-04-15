public inherited sharing class Example01 {
    public static Map addd(integer k) {
        Map<Id,String> accountMap = new Map<Id,String>();
        accountMap = [select Id,name from Account];
        System.debug('this is to commint');
        return accountMap;
    }

      
  }
    

