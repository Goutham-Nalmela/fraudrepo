package com.radial.fraudmanagement;

/**
 * This class was automatically generated by the data modeler tool.
 */

public class Fraud implements java.io.Serializable
{

   static final long serialVersionUID = 1L;

   private com.radial.fraudmanagement.FraudRequest fraudRequest;
   private com.radial.fraudmanagement.Audit audit;

   public Fraud()
   {
   }

   public com.radial.fraudmanagement.FraudRequest getFraudRequest()
   {
       if(null == this.fraudRequest) {
           this.fraudRequest = new FraudRequest();
       }
      return this.fraudRequest;
   }

   public void setFraudRequest(
         com.radial.fraudmanagement.FraudRequest fraudRequest)
   {
      this.fraudRequest = fraudRequest;
   }

   public com.radial.fraudmanagement.Audit getAudit()
   {
       if(null == this.audit) {
           this.audit = new Audit();
       }
      return this.audit;
   }

   public void setAudit(com.radial.fraudmanagement.Audit audit)
   {
      this.audit = audit;
   }

   public Fraud(com.radial.fraudmanagement.FraudRequest fraudRequest,
         com.radial.fraudmanagement.Audit audit)
   {
      this.fraudRequest = fraudRequest;
      this.audit = audit;
   }

}