package com.radial.fraudmanagement;

/**
 * This class was automatically generated by the data modeler tool.
 */

public class TotalCost implements java.io.Serializable
{

   static final long serialVersionUID = 1L;

   private com.radial.fraudmanagement.Address address;
   private com.radial.fraudmanagement.PersonName personName;
   private java.lang.String email;

   private com.radial.fraudmanagement.PaymentCard paymentCard;

   private com.radial.fraudmanagement.CostTotals costTotals;

   public TotalCost()
   {
   }

   public com.radial.fraudmanagement.Address getAddress()
   {
      return this.address;
   }

   public void setAddress(com.radial.fraudmanagement.Address address)
   {
      this.address = address;
   }

   public com.radial.fraudmanagement.PersonName getPersonName()
   {
      return this.personName;
   }

   public void setPersonName(com.radial.fraudmanagement.PersonName personName)
   {
      this.personName = personName;
   }

   public java.lang.String getEmail()
   {
      return this.email;
   }

   public void setEmail(java.lang.String email)
   {
      this.email = email;
   }

   public com.radial.fraudmanagement.PaymentCard getPaymentCard()
   {
      return this.paymentCard;
   }

   public void setPaymentCard(com.radial.fraudmanagement.PaymentCard paymentCard)
   {
      this.paymentCard = paymentCard;
   }

   public com.radial.fraudmanagement.CostTotals getCostTotals()
   {
      return this.costTotals;
   }

   public void setCostTotals(com.radial.fraudmanagement.CostTotals costTotals)
   {
      this.costTotals = costTotals;
   }

   public TotalCost(com.radial.fraudmanagement.Address address,
         com.radial.fraudmanagement.PersonName personName,
         java.lang.String email,
         com.radial.fraudmanagement.PaymentCard paymentCard,
         com.radial.fraudmanagement.CostTotals costTotals)
   {
      this.address = address;
      this.personName = personName;
      this.email = email;
      this.paymentCard = paymentCard;
      this.costTotals = costTotals;
   }

}