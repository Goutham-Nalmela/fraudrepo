package com.radial.fraudmanagement;

/**
 * This class was automatically generated by the data modeler tool.
 */

public class IPAddress implements java.io.Serializable
{

   static final long serialVersionUID = 1L;

   private com.radial.fraudmanagement.CountryName countryName;
   private java.lang.String id;

   public IPAddress()
   {
   }

   public com.radial.fraudmanagement.CountryName getCountryName()
   {
      return this.countryName;
   }

   public void setCountryName(
         com.radial.fraudmanagement.CountryName countryName)
   {
      this.countryName = countryName;
   }

   public java.lang.String getId()
   {
      return this.id;
   }

   public void setId(java.lang.String id)
   {
      this.id = id;
   }

   public IPAddress(com.radial.fraudmanagement.CountryName countryName,
         java.lang.String id)
   {
      this.countryName = countryName;
      this.id = id;
   }

}