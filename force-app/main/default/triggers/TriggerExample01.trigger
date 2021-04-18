trigger TriggerExample01 on User (before insert,after insert) {
    for (User newUser : Trigger.new) {
         system.debug('Trigger.old executed'+'Is before:'+Trigger.isBefore+'Is after:'+trigger.isAfter);
        newUser.AboutMe = 'I am siddu here, who updated this user after create(Trigger.new)';
        
    }

    for(User userOld: Trigger.old){
        system.debug('Trigger.old executed'+'Is before:'+Trigger.isBefore+'Is after:'+trigger.isAfter);

    userOld.AboutMe = 'I am siddu here, who updated this user after create Trigger.old';


    }

}