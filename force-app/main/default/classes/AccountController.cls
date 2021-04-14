public  with sharing class AccountController {
     private static  List<Account> getAllActiveAccounts() {
      return [SELECT Id,Name,Active__c FROM Account WHERE Active__c = 'Yes'];
      
    }

    public static void example01(){
      List<String> colors = new List<String>();
      String[] colors2 = new List<String>();
      colors.add('a');
      colors.add('b');
      String s = 'k';
      colors2.add(s);

      for (String c : colors) {
        System.debug(c);
      }
      for (String c2 : colors2) {
          System.debug(c2);
      }

      System.debug('Line one'+colors.get(0));
      System.debug('Line two'+colors[1]);
      System.debug('Line three'+colors2.get(0));

    }
  }