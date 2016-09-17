package com.radial.fraudmanagement;

/**
 * This class was automatically generated by the data modeler tool.
 */

public class Address implements java.io.Serializable
{

   static final long serialVersionUID = 1L;

   private java.lang.String addressLine;
   private java.lang.String cityName;
   private java.lang.String postalCode;
   private java.lang.String stateProv;
   private com.radial.fraudmanagement.CountryName countryName;

   public Address()
   {
   }

   public java.lang.String getAddressLine()
   {
      return this.addressLine;
   }

   public void setAddressLine(java.lang.String addressLine)
   {
      this.addressLine = addressLine;
   }

   public java.lang.String getCityName()
   {
      return this.cityName;
   }

   public void setCityName(java.lang.String cityName)
   {
      this.cityName = cityName;
   }

   public java.lang.String getPostalCode()
   {
      return this.postalCode;
   }

   public void setPostalCode(java.lang.String postalCode)
   {
      this.postalCode = postalCode;
   }

   public java.lang.String getStateProv()
   {
      return this.stateProv;
   }

   public void setStateProv(java.lang.String stateProv)
   {
      this.stateProv = stateProv;
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

   public Address(java.lang.String addressLine, java.lang.String cityName,
         java.lang.String postalCode, java.lang.String stateProv,
         com.radial.fraudmanagement.CountryName countryName)
   {
      this.addressLine = addressLine;
      this.cityName = cityName;
      this.postalCode = postalCode;
      this.stateProv = stateProv;
      this.countryName = countryName;
   }

}