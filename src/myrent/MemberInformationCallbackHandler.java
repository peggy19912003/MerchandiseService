
/**
 * MemberInformationCallbackHandler.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.6.2  Built on : Apr 17, 2012 (05:33:49 IST)
 */

    package myrent;

    /**
     *  MemberInformationCallbackHandler Callback class, Users can extend this class and implement
     *  their own receiveResult and receiveError methods.
     */
    public abstract class MemberInformationCallbackHandler{



    protected Object clientData;

    /**
    * User can pass in any object that needs to be accessed once the NonBlocking
    * Web service call is finished and appropriate method of this CallBack is called.
    * @param clientData Object mechanism by which the user can pass in user data
    * that will be avilable at the time this callback is called.
    */
    public MemberInformationCallbackHandler(Object clientData){
        this.clientData = clientData;
    }

    /**
    * Please use this constructor if you don't want to set any clientData
    */
    public MemberInformationCallbackHandler(){
        this.clientData = null;
    }

    /**
     * Get the client data
     */

     public Object getClientData() {
        return clientData;
     }

        
           /**
            * auto generated Axis2 call back method for print_TenantRecords method
            * override this method for handling normal response from print_TenantRecords operation
            */
           public void receiveResultprint_TenantRecords(
                    myrent.MemberInformationStub.Print_TenantRecordsResponse result
                        ) {
           }

          /**
           * auto generated Axis2 Error handler
           * override this method for handling error response from print_TenantRecords operation
           */
            public void receiveErrorprint_TenantRecords(java.lang.Exception e) {
            }
                
           /**
            * auto generated Axis2 call back method for insert_appraisal method
            * override this method for handling normal response from insert_appraisal operation
            */
           public void receiveResultinsert_appraisal(
                    myrent.MemberInformationStub.Insert_appraisalResponse result
                        ) {
           }

          /**
           * auto generated Axis2 Error handler
           * override this method for handling error response from insert_appraisal operation
           */
            public void receiveErrorinsert_appraisal(java.lang.Exception e) {
            }
                
           /**
            * auto generated Axis2 call back method for print_LessorRecords method
            * override this method for handling normal response from print_LessorRecords operation
            */
           public void receiveResultprint_LessorRecords(
                    myrent.MemberInformationStub.Print_LessorRecordsResponse result
                        ) {
           }

          /**
           * auto generated Axis2 Error handler
           * override this method for handling error response from print_LessorRecords operation
           */
            public void receiveErrorprint_LessorRecords(java.lang.Exception e) {
            }
                
           /**
            * auto generated Axis2 call back method for print_Information method
            * override this method for handling normal response from print_Information operation
            */
           public void receiveResultprint_Information(
                    myrent.MemberInformationStub.Print_InformationResponse result
                        ) {
           }

          /**
           * auto generated Axis2 Error handler
           * override this method for handling error response from print_Information operation
           */
            public void receiveErrorprint_Information(java.lang.Exception e) {
            }
                


    }
    