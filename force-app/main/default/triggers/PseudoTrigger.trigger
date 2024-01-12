trigger PseudoTrigger on Certification_Attempt__c (after insert, after update) {


    /* new[0], Certification id, #certification element, Check candidate
    for(Certification_Attempt__c att : Trigger.new) {
    }
    // Trigger.new [0]
    // 1. Get Certification id
    // named : List<Id> certIds;
    // SOQL : SELECT Certification_Element_r.Certification_c FROM Certification__c WHERE


    // 2. Get the size of the List of all certification elements
    // named : List<Certification_Element__c> elements;
    // SOQL : SELECT Id, Name, (SELECT Id FROM Certification_Attempt__c WHERE status = ‘Complete/Pass’)
    //        FROM Certification__c
    //        WHERE Certification__c.Id IN :certIds


    // 3. Check if there are desired number of candiates.
    // elements 리스트의 Certification_Attempt__c != NULL 인 원소의 개수를 리스트의 사이즈와 비교
    // 참이면 Held를 생성
}   */ 
}