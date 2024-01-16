public with sharing class TrialExpirationController {
    
    @AuraEnabled(cacheable=true)
    public static Integer getExpirationDaysLeft(){
        Integer daysLeft;

        try {
            Organization org = [SELECT TrialExpirationDate From Organization];
            Datetime expDate = org.TrialExpirationDate;

            daysLeft = Date.today().daysBetween(date.valueOf(expDate)) - 1;
        } catch (Exception e) {
            System.debug(e);
        }   
        return daysLeft;
    }
}