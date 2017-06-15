global class AvoidExportallcontactsPolicyCondition implements TxnSecurity.PolicyCondition {

 public boolean evaluate(TxnSecurity.Event e) {
  if(e.data.get('NumberOfRecords') == '10'){
    // test
       return true;
 }

 return false; 
}
 }