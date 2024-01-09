trigger CourseDeliveryTrigger on Course_Delivery__c (before insert, before update) {

    // Retrieve the Custom Metadata Type record for this trigger
    Trigger_Switch__mdt tsw = Trigger_Switch__mdt.getInstance('CourseDeliveryTrigger');

    // If no Custom Metadata Type record found or if the active flag is set to true then execute the trigger logic
    if (tsw == null || tsw.Active_Flag__c == true) {

       // TODO #1: Invoke the static method of the 
       //   CourseDeliveryTriggerHandler class called 
       //   preventInvalidCourseDeliveries and pass in the Trigger.new 
       //   and Trigger.oldMap variables.	
       CourseDeliveryTriggerHandler.preventInvalidCourseDeliveries(Trigger.new, Trigger.oldMap);
    }
}
