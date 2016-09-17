package com.radial.fraudmanagement;

/**
 * This class was automatically generated by the data modeler tool.
 */

public class ShippingInfo implements java.io.Serializable
{

   static final long serialVersionUID = 1L;

   private java.lang.String shippingMethod;
   public com.radial.fraudmanagement.CostTotals costTotals;

   public ShippingInfo()
   {
   }

   public java.lang.String getShippingMethod()
   {
      return this.shippingMethod;
   }

   public void setShippingMethod(java.lang.String shippingMethod)
   {
      this.shippingMethod = shippingMethod;
   }

   public com.radial.fraudmanagement.CostTotals getCostTotals()
   {
       if(null == this.costTotals) {
           this.costTotals = new CostTotals();
       }
      return this.costTotals;
   }

   public void setCostTotals(com.radial.fraudmanagement.CostTotals costTotals)
   {
      this.costTotals = costTotals;
   }

   public ShippingInfo(java.lang.String shippingMethod,
         com.radial.fraudmanagement.CostTotals costTotals)
   {
      this.shippingMethod = shippingMethod;
      this.costTotals = costTotals;
   }

}