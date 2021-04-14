public with sharing class UnderstandSObject {
    public UnderstandSObject() {
System.debug('THIS IS THE CONSTRUCTOR');
    }

public static void createInsertAccount(){
    Account acc = new Account(name='name1',phone='0997655', NumberOfEmployees=100);
    insert acc;
    Id acct = acc.id;
    System.System.debug('Account Id: '+acct);
}
public static void createInsertContacts(){
    List<Contact> contacts = new List<Contact>{
    new Contact(FirstName='fname1',LastName='lname1',Department='Technology'),
    new Contact(FirstName='fname9',LastName='lname9',Department='Finance'),
    new Contact(FirstName='fname2',LastName='lname2',Department='Education'),
    new Contact(FirstName='fname3',LastName='lname3',Department='Technology'),
    new Contact(FirstName='fname4',LastName='lname4',Department='Finance'),
    new Contact(FirstName='fname5',LastName='lname5',Department='Education'),
    new Contact(FirstName='fname6',LastName='lname6',Department='Technology'),
    new Contact(FirstName='fname7',LastName='lname7',Department='Finance'),
    new Contact(FirstName='fname8',LastName='lname8',Department='Education')
    };
    List<Database.SaveResult> savedResulst =   Database.insert(contacts, false);
    for (Database.SaveResult sresult : savedResulst) {
    if (sresult.isSuccess()) {
        System.debug('Successfully inserted: '+sresult.id);
        }
    }
    List<Contact> contactsToUpdate = new List<Contact>();

        for (Contact con : contacts) {
        if(con.department=='Education'){
            con.department='EduFin';
          contactsToUpdate.add(con); 
         }
     }
        update contactsToUpdate;
}

public static void upsertContact(){

    Contact contact = new contact(FirstName='Jane',
                         LastName='Smith',
                         Email='jane.smith@example.com',
                         Description='Contact of the day');   
    insert contact;
    Contact contact2 = new contact(FirstName='Jane',
                         LastName='Smith',
                         Email='jane.smith@example.com',
                         Description='Prefers to be contacted by email');
    upsert contact2 Contact.fields.email;


    //Contact[] id = [select id from contact where email ='jane.smith@example.com'];

    //System.assertEquals('Prefers to be contacted by email',[select description from contact where id=:id].description);

}

public static void SoqlExamples(){
  Account[] accounts =  [select name from Account];
  for (Account act : accounts) {
      System.debug(act.name);
  }

}

}