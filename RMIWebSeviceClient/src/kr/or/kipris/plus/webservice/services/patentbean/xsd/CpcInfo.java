/**
 * CpcInfo.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package kr.or.kipris.plus.webservice.services.patentbean.xsd;

public class CpcInfo  implements java.io.Serializable {
    private java.lang.String cpcDate;

    private java.lang.String cpcNumber;

    public CpcInfo() {
    }

    public CpcInfo(
           java.lang.String cpcDate,
           java.lang.String cpcNumber) {
           this.cpcDate = cpcDate;
           this.cpcNumber = cpcNumber;
    }


    /**
     * Gets the cpcDate value for this CpcInfo.
     * 
     * @return cpcDate
     */
    public java.lang.String getCpcDate() {
        return cpcDate;
    }


    /**
     * Sets the cpcDate value for this CpcInfo.
     * 
     * @param cpcDate
     */
    public void setCpcDate(java.lang.String cpcDate) {
        this.cpcDate = cpcDate;
    }


    /**
     * Gets the cpcNumber value for this CpcInfo.
     * 
     * @return cpcNumber
     */
    public java.lang.String getCpcNumber() {
        return cpcNumber;
    }


    /**
     * Sets the cpcNumber value for this CpcInfo.
     * 
     * @param cpcNumber
     */
    public void setCpcNumber(java.lang.String cpcNumber) {
        this.cpcNumber = cpcNumber;
    }

    private java.lang.Object __equalsCalc = null;
    public synchronized boolean equals(java.lang.Object obj) {
        if (!(obj instanceof CpcInfo)) return false;
        CpcInfo other = (CpcInfo) obj;
        if (obj == null) return false;
        if (this == obj) return true;
        if (__equalsCalc != null) {
            return (__equalsCalc == obj);
        }
        __equalsCalc = obj;
        boolean _equals;
        _equals = true && 
            ((this.cpcDate==null && other.getCpcDate()==null) || 
             (this.cpcDate!=null &&
              this.cpcDate.equals(other.getCpcDate()))) &&
            ((this.cpcNumber==null && other.getCpcNumber()==null) || 
             (this.cpcNumber!=null &&
              this.cpcNumber.equals(other.getCpcNumber())));
        __equalsCalc = null;
        return _equals;
    }

    private boolean __hashCodeCalc = false;
    public synchronized int hashCode() {
        if (__hashCodeCalc) {
            return 0;
        }
        __hashCodeCalc = true;
        int _hashCode = 1;
        if (getCpcDate() != null) {
            _hashCode += getCpcDate().hashCode();
        }
        if (getCpcNumber() != null) {
            _hashCode += getCpcNumber().hashCode();
        }
        __hashCodeCalc = false;
        return _hashCode;
    }

    // Type metadata
    private static org.apache.axis.description.TypeDesc typeDesc =
        new org.apache.axis.description.TypeDesc(CpcInfo.class, true);

    static {
        typeDesc.setXmlType(new javax.xml.namespace.QName("http://patentbean.services.webservice.plus.kipris.or.kr/xsd", "CpcInfo"));
        org.apache.axis.description.ElementDesc elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("cpcDate");
        elemField.setXmlName(new javax.xml.namespace.QName("http://patentbean.services.webservice.plus.kipris.or.kr/xsd", "cpcDate"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("cpcNumber");
        elemField.setXmlName(new javax.xml.namespace.QName("http://patentbean.services.webservice.plus.kipris.or.kr/xsd", "cpcNumber"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
    }

    /**
     * Return type metadata object
     */
    public static org.apache.axis.description.TypeDesc getTypeDesc() {
        return typeDesc;
    }

    /**
     * Get Custom Serializer
     */
    public static org.apache.axis.encoding.Serializer getSerializer(
           java.lang.String mechType, 
           java.lang.Class _javaType,  
           javax.xml.namespace.QName _xmlType) {
        return 
          new  org.apache.axis.encoding.ser.BeanSerializer(
            _javaType, _xmlType, typeDesc);
    }

    /**
     * Get Custom Deserializer
     */
    public static org.apache.axis.encoding.Deserializer getDeserializer(
           java.lang.String mechType, 
           java.lang.Class _javaType,  
           javax.xml.namespace.QName _xmlType) {
        return 
          new  org.apache.axis.encoding.ser.BeanDeserializer(
            _javaType, _xmlType, typeDesc);
    }

}
