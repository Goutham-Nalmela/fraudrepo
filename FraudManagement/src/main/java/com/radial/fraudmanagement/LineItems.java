package com.radial.fraudmanagement;

/**
 * This class was automatically generated by the data modeler tool.
 */

public class LineItems implements java.io.Serializable
{

   static final long serialVersionUID = 1L;

   private java.util.List<com.radial.fraudmanagement.LineItem> lineItem;

   public LineItems()
   {
   }

   public java.util.List<com.radial.fraudmanagement.LineItem> getLineItem()
   {
      return this.lineItem;
   }

   public void setLineItem(
         java.util.List<com.radial.fraudmanagement.LineItem> lineItem)
   {
      this.lineItem = lineItem;
   }

   public LineItems(
         java.util.List<com.radial.fraudmanagement.LineItem> lineItem)
   {
      this.lineItem = lineItem;
   }

}