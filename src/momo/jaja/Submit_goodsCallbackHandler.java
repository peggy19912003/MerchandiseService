
/**
 * Submit_goodsCallbackHandler.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.6.2  Built on : Apr 17, 2012 (05:33:49 IST)
 */

    package momo.jaja;

    /**
     *  Submit_goodsCallbackHandler Callback class, Users can extend this class and implement
     *  their own receiveResult and receiveError methods.
     */
    public abstract class Submit_goodsCallbackHandler{



    protected Object clientData;

    /**
    * User can pass in any object that needs to be accessed once the NonBlocking
    * Web service call is finished and appropriate method of this CallBack is called.
    * @param clientData Object mechanism by which the user can pass in user data
    * that will be avilable at the time this callback is called.
    */
    public Submit_goodsCallbackHandler(Object clientData){
        this.clientData = clientData;
    }

    /**
    * Please use this constructor if you don't want to set any clientData
    */
    public Submit_goodsCallbackHandler(){
        this.clientData = null;
    }

    /**
     * Get the client data
     */

     public Object getClientData() {
        return clientData;
     }

        
           /**
            * auto generated Axis2 call back method for delete_mygood method
            * override this method for handling normal response from delete_mygood operation
            */
           public void receiveResultdelete_mygood(
                    momo.jaja.Submit_goodsStub.Delete_mygoodResponse result
                        ) {
           }

          /**
           * auto generated Axis2 Error handler
           * override this method for handling error response from delete_mygood operation
           */
            public void receiveErrordelete_mygood(java.lang.Exception e) {
            }
                
           /**
            * auto generated Axis2 call back method for ss method
            * override this method for handling normal response from ss operation
            */
           public void receiveResultss(
                    momo.jaja.Submit_goodsStub.SsResponse result
                        ) {
           }

          /**
           * auto generated Axis2 Error handler
           * override this method for handling error response from ss operation
           */
            public void receiveErrorss(java.lang.Exception e) {
            }
                
           /**
            * auto generated Axis2 call back method for query_Allgoods method
            * override this method for handling normal response from query_Allgoods operation
            */
           public void receiveResultquery_Allgoods(
                    momo.jaja.Submit_goodsStub.Query_AllgoodsResponse result
                        ) {
           }

          /**
           * auto generated Axis2 Error handler
           * override this method for handling error response from query_Allgoods operation
           */
            public void receiveErrorquery_Allgoods(java.lang.Exception e) {
            }
                
           /**
            * auto generated Axis2 call back method for submit method
            * override this method for handling normal response from submit operation
            */
           public void receiveResultsubmit(
                    momo.jaja.Submit_goodsStub.SubmitResponse result
                        ) {
           }

          /**
           * auto generated Axis2 Error handler
           * override this method for handling error response from submit operation
           */
            public void receiveErrorsubmit(java.lang.Exception e) {
            }
                
           /**
            * auto generated Axis2 call back method for update_mygood method
            * override this method for handling normal response from update_mygood operation
            */
           public void receiveResultupdate_mygood(
                    momo.jaja.Submit_goodsStub.Update_mygoodResponse result
                        ) {
           }

          /**
           * auto generated Axis2 Error handler
           * override this method for handling error response from update_mygood operation
           */
            public void receiveErrorupdate_mygood(java.lang.Exception e) {
            }
                
           /**
            * auto generated Axis2 call back method for query_goods method
            * override this method for handling normal response from query_goods operation
            */
           public void receiveResultquery_goods(
                    momo.jaja.Submit_goodsStub.Query_goodsResponse result
                        ) {
           }

          /**
           * auto generated Axis2 Error handler
           * override this method for handling error response from query_goods operation
           */
            public void receiveErrorquery_goods(java.lang.Exception e) {
            }
                
           /**
            * auto generated Axis2 call back method for query_sclass method
            * override this method for handling normal response from query_sclass operation
            */
           public void receiveResultquery_sclass(
                    momo.jaja.Submit_goodsStub.Query_sclassResponse result
                        ) {
           }

          /**
           * auto generated Axis2 Error handler
           * override this method for handling error response from query_sclass operation
           */
            public void receiveErrorquery_sclass(java.lang.Exception e) {
            }
                
           /**
            * auto generated Axis2 call back method for query_bclass method
            * override this method for handling normal response from query_bclass operation
            */
           public void receiveResultquery_bclass(
                    momo.jaja.Submit_goodsStub.Query_bclassResponse result
                        ) {
           }

          /**
           * auto generated Axis2 Error handler
           * override this method for handling error response from query_bclass operation
           */
            public void receiveErrorquery_bclass(java.lang.Exception e) {
            }
                


    }
    