
/**
 * ItemSearchServiceCallbackHandler.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.6.2  Built on : Apr 17, 2012 (05:33:49 IST)
 */

    package search;

    /**
     *  ItemSearchServiceCallbackHandler Callback class, Users can extend this class and implement
     *  their own receiveResult and receiveError methods.
     */
    public abstract class ItemSearchServiceCallbackHandler{



    protected Object clientData;

    /**
    * User can pass in any object that needs to be accessed once the NonBlocking
    * Web service call is finished and appropriate method of this CallBack is called.
    * @param clientData Object mechanism by which the user can pass in user data
    * that will be avilable at the time this callback is called.
    */
    public ItemSearchServiceCallbackHandler(Object clientData){
        this.clientData = clientData;
    }

    /**
    * Please use this constructor if you don't want to set any clientData
    */
    public ItemSearchServiceCallbackHandler(){
        this.clientData = null;
    }

    /**
     * Get the client data
     */

     public Object getClientData() {
        return clientData;
     }

        
           /**
            * auto generated Axis2 call back method for getItemByDescribe method
            * override this method for handling normal response from getItemByDescribe operation
            */
           public void receiveResultgetItemByDescribe(
                    search.ItemSearchServiceStub.GetItemByDescribeResponse result
                        ) {
           }

          /**
           * auto generated Axis2 Error handler
           * override this method for handling error response from getItemByDescribe operation
           */
            public void receiveErrorgetItemByDescribe(java.lang.Exception e) {
            }
                
           /**
            * auto generated Axis2 call back method for getItemByBClass method
            * override this method for handling normal response from getItemByBClass operation
            */
           public void receiveResultgetItemByBClass(
                    search.ItemSearchServiceStub.GetItemByBClassResponse result
                        ) {
           }

          /**
           * auto generated Axis2 Error handler
           * override this method for handling error response from getItemByBClass operation
           */
            public void receiveErrorgetItemByBClass(java.lang.Exception e) {
            }
                
           /**
            * auto generated Axis2 call back method for getItemByDate method
            * override this method for handling normal response from getItemByDate operation
            */
           public void receiveResultgetItemByDate(
                    search.ItemSearchServiceStub.GetItemByDateResponse result
                        ) {
           }

          /**
           * auto generated Axis2 Error handler
           * override this method for handling error response from getItemByDate operation
           */
            public void receiveErrorgetItemByDate(java.lang.Exception e) {
            }
                
           /**
            * auto generated Axis2 call back method for getItemByAccount method
            * override this method for handling normal response from getItemByAccount operation
            */
           public void receiveResultgetItemByAccount(
                    search.ItemSearchServiceStub.GetItemByAccountResponse result
                        ) {
           }

          /**
           * auto generated Axis2 Error handler
           * override this method for handling error response from getItemByAccount operation
           */
            public void receiveErrorgetItemByAccount(java.lang.Exception e) {
            }
                
           /**
            * auto generated Axis2 call back method for getAllItems method
            * override this method for handling normal response from getAllItems operation
            */
           public void receiveResultgetAllItems(
                    search.ItemSearchServiceStub.GetAllItemsResponse result
                        ) {
           }

          /**
           * auto generated Axis2 Error handler
           * override this method for handling error response from getAllItems operation
           */
            public void receiveErrorgetAllItems(java.lang.Exception e) {
            }
                
           /**
            * auto generated Axis2 call back method for getItemByName method
            * override this method for handling normal response from getItemByName operation
            */
           public void receiveResultgetItemByName(
                    search.ItemSearchServiceStub.GetItemByNameResponse result
                        ) {
           }

          /**
           * auto generated Axis2 Error handler
           * override this method for handling error response from getItemByName operation
           */
            public void receiveErrorgetItemByName(java.lang.Exception e) {
            }
                
           /**
            * auto generated Axis2 call back method for getItemBySClass method
            * override this method for handling normal response from getItemBySClass operation
            */
           public void receiveResultgetItemBySClass(
                    search.ItemSearchServiceStub.GetItemBySClassResponse result
                        ) {
           }

          /**
           * auto generated Axis2 Error handler
           * override this method for handling error response from getItemBySClass operation
           */
            public void receiveErrorgetItemBySClass(java.lang.Exception e) {
            }
                
           /**
            * auto generated Axis2 call back method for getItemByMoney method
            * override this method for handling normal response from getItemByMoney operation
            */
           public void receiveResultgetItemByMoney(
                    search.ItemSearchServiceStub.GetItemByMoneyResponse result
                        ) {
           }

          /**
           * auto generated Axis2 Error handler
           * override this method for handling error response from getItemByMoney operation
           */
            public void receiveErrorgetItemByMoney(java.lang.Exception e) {
            }
                


    }
    