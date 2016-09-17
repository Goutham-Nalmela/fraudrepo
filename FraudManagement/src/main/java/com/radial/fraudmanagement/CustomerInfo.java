package com.radial.fraudmanagement;

/**
 * This class was automatically generated by the data modeler tool.
 */

public class CustomerInfo implements java.io.Serializable
{

   static final long serialVersionUID = 1L;

   public com.radial.fraudmanagement.PersonName personName;
   public com.radial.fraudmanagement.Telephone telephone;
   public com.radial.fraudmanagement.Address address;

   public CustomerInfo()
   {
   }

   public com.radial.fraudmanagement.PersonName getPersonName()
   {
       if(null == this.personName) {
           this.personName = new PersonName();
       }
      return this.personName;
   }

   public void setPersonName(com.radial.fraudmanagement.PersonName personName)
   {
      this.personName = personName;
   }

   public com.radial.fraudmanagement.Telephone getTelephone()
   {
       if(null == this.telephone) {
           this.telephone = new Telephone();
       }
      return this.telephone;
   }

   public void setTelephone(com.radial.fraudmanagement.Telephone telephone)
   {
      this.telephone = telephone;
   }

   public com.radial.fraudmanagement.Address getAddress()
   {
       if(null == this.address) {
           this.address = new Address();
       }
      return this.address;
   }

   public void setAddress(com.radial.fraudmanagement.Address address)
   {
      this.address = address;
   }

   public CustomerInfo(com.radial.fraudmanagement.PersonName personName,
         com.radial.fraudmanagement.Telephone telephone,
         com.radial.fraudmanagement.Address address)
   {
      this.personName = personName;
      this.telephone = telephone;
      this.address = address;
   }

}