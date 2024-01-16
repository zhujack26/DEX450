import { LightningElement, wire } from 'lwc';
import getExpirationDaysLeft from "@salesforce/apex/TrialExpirationController.getExpirationDaysLeft";

export default class trialExpirationLWCDEX450 extends LightningElement {
    daysLeftString;
    errors;

    @wire(getExpirationDaysLeft)
    wireDaysLeft({error, data}){
        if(data){
            this.daysLeftString = 'This org will expire in ' + data + ' days';
            this.errors = undefined;
        } else if (error) {
            this.errors = error;
            this.daysLeftString = undefined;
        }
    }
}