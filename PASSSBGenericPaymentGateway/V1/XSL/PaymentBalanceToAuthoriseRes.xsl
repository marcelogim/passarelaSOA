<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:tns="http://TargetNamespace.com/AdyenPaymentGateway_authorise_int_response" xmlns:UUIDUserFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.UUIDUserFunction" xmlns:IsUserInGroupFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.IsUserInGroupFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:IsUserInRoleFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.IsUserInRoleFunction" xmlns:ns1="http://TargetNamespace.com/AdyenPaymentGateway_authorise_int_request" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:DVMFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.functions.dvm.DVMFunctions" xmlns:ns0="http://TargetNamespace.com/PaymentCreditBalancePS_payment_credit_response" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:RuntimeTypeConversionFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.RuntimeTypeConversionFunctions" xmlns:XrefFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.functions.xref.XrefFunctions" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:BasicCredentialsUserFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.BasicCredentialsUserFunction" exclude-result-prefixes=" xsd oracle-xsl-mapper xsi xsl ns1 ns0 tns UUIDUserFunction IsUserInGroupFunction oraext IsUserInRoleFunction xp20 DVMFunctions oraxsl RuntimeTypeConversionFunctions XrefFunctions BasicCredentialsUserFunction"
                xmlns:nxsd="http://xmlns.oracle.com/pcbpel/nxsd">
   <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="XSD">
            <oracle-xsl-mapper:schema location="../../../PASSSBPaymentBalanceCredit/v1/Resources/nxsd_PaymentCreditStoreRes.xsd"/>
            <oracle-xsl-mapper:rootElement name="Root-Element" namespace="http://TargetNamespace.com/PaymentCreditBalancePS_payment_credit_response"/>
         </oracle-xsl-mapper:source>
         <oracle-xsl-mapper:source type="XSD">
            <oracle-xsl-mapper:schema location="../Resources/Generic/nxsd_InterfaceAuthorisePaymentReq.xsd"/>
            <oracle-xsl-mapper:rootElement name="Root-Element" namespace="http://TargetNamespace.com/AdyenPaymentGateway_authorise_int_request"/>
            <oracle-xsl-mapper:param name="bodyRequest"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="XSD">
            <oracle-xsl-mapper:schema location="../Resources/Generic/nxsd_InterfaceAuthorisePaymentRes.xsd"/>
            <oracle-xsl-mapper:rootElement name="Root-Element" namespace="http://TargetNamespace.com/AdyenPaymentGateway_authorise_int_response"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.2.0(XSLT Build 161003.0739.0018) AT [THU APR 05 18:50:22 BRT 2018].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:param name="bodyRequest"/>
  <xsl:param name="currentMileseconds"/>
  <xsl:template match="/">
    <tns:Root-Element>
      <xsl:if test="$bodyRequest/ns1:Root-Element/ns1:locale">
        <tns:locale>
          <xsl:value-of select="$bodyRequest/ns1:Root-Element/ns1:locale"/>
        </tns:locale>
      </xsl:if>
      <xsl:if test="$bodyRequest/ns1:Root-Element/ns1:referenceNumber">
        <tns:referenceNumber>
          <xsl:value-of select="$bodyRequest/ns1:Root-Element/ns1:referenceNumber"/>
        </tns:referenceNumber>
      </xsl:if>
      <xsl:if test="$bodyRequest/ns1:Root-Element/ns1:orderId">
        <tns:orderId>
          <xsl:value-of select="$bodyRequest/ns1:Root-Element/ns1:orderId"/>
        </tns:orderId>
      </xsl:if>
      <xsl:if test="$bodyRequest/ns1:Root-Element/ns1:currencyCode">
        <tns:currencyCode>
          <xsl:value-of select="$bodyRequest/ns1:Root-Element/ns1:currencyCode"/>
        </tns:currencyCode>
      </xsl:if>
      <xsl:if test="$bodyRequest/ns1:Root-Element/ns1:transactionId">
        <tns:transactionId>
          <xsl:value-of select="$bodyRequest/ns1:Root-Element/ns1:transactionId"/>
        </tns:transactionId>
      </xsl:if>
      <xsl:if test="$bodyRequest/ns1:Root-Element/ns1:paymentId">
        <tns:paymentId>
          <xsl:value-of select="$bodyRequest/ns1:Root-Element/ns1:paymentId"/>
        </tns:paymentId>
      </xsl:if>
      <tns:amount>
        <xsl:value-of select="$bodyRequest/ns1:Root-Element/ns1:amount"/>
      </tns:amount>
      <xsl:if test="$bodyRequest/ns1:Root-Element/ns1:transactionType">
        <tns:transactionType>
          <xsl:value-of select="$bodyRequest/ns1:Root-Element/ns1:transactionType"/>
        </tns:transactionType>
      </xsl:if>
      <!--<tns:hostTransactionTimestamp>
        <xsl:value-of select='xp20:format-dateTime (xp20:current-dateTime ( ), "[Y0001]-[M01]-[D01]T[H01]:[m01]:[s01]+0000" )'/>
      </tns:hostTransactionTimestamp>-->
      <tns:transactionTimestamp>
        <xsl:value-of select="$bodyRequest/ns1:Root-Element/ns1:transactionTimestamp"/>
      </tns:transactionTimestamp>
      <xsl:if test="$bodyRequest/ns1:Root-Element/ns1:paymentMethod">
        <tns:paymentMethod>
          <xsl:value-of select="$bodyRequest/ns1:Root-Element/ns1:paymentMethod"/>
        </tns:paymentMethod>
      </xsl:if>
      <xsl:if test="$bodyRequest/ns1:Root-Element/ns1:gatewayId">
        <tns:gatewayId>
          <xsl:value-of select="$bodyRequest/ns1:Root-Element/ns1:gatewayId"/>
        </tns:gatewayId>
      </xsl:if>
      <xsl:if test="$bodyRequest/ns1:Root-Element/ns1:siteId">
        <tns:siteId>
          <xsl:value-of select="$bodyRequest/ns1:Root-Element/ns1:siteId"/>
        </tns:siteId>
      </xsl:if>
      <xsl:if test="$bodyRequest/ns1:Root-Element/ns1:channel">
        <tns:channel>
          <xsl:value-of select="$bodyRequest/ns1:Root-Element/ns1:channel"/>
        </tns:channel>
      </xsl:if>
      <tns:merchantTransactionTimestamp>
        <xsl:value-of select="$currentMileseconds"/>
      </tns:merchantTransactionTimestamp>
      <xsl:if test="$bodyRequest/ns1:Root-Element/ns1:transactionId">
        <tns:merchantTransactionId>
          <xsl:value-of select="$bodyRequest/ns1:Root-Element/ns1:transactionId"/>
        </tns:merchantTransactionId>
      </xsl:if>
          <tns:authorizationResponse>
            <tns:responseReason>authResponseReason</tns:responseReason>
            <tns:responseCode>1000</tns:responseCode>
        <tns:responseReason>
          <xsl:value-of select="/ns0:Root-Element/ns0:authorizationResponse/ns0:responseReason"/>
        </tns:responseReason>
        <tns:responseDescription>
          <xsl:value-of select="/ns0:Root-Element/ns0:authorizationResponse/ns0:responseDescription"/>
        </tns:responseDescription>
        <tns:hostTransactionId>
          <xsl:value-of select="$bodyRequest/ns1:Root-Element/ns1:transactionId"/>
        </tns:hostTransactionId>
        <tns:merchantTransactionId>
          <xsl:value-of select="$bodyRequest/ns1:Root-Element/ns1:transactionId"/>
        </tns:merchantTransactionId>
        <tns:merchantTransactionTimestamp>
               <xsl:value-of select="$currentMileseconds"/>
            </tns:merchantTransactionTimestamp>
        <tns:transactionId>
          <xsl:value-of select="$bodyRequest/ns1:Root-Element/ns1:transactionId"/>
        </tns:transactionId>
        <tns:transactionTimestamp>
          <xsl:value-of select="$currentMileseconds"/>
        </tns:transactionTimestamp>
        <tns:paymentId>
          <xsl:value-of select="$bodyRequest/ns1:Root-Element/ns1:paymentId"/>
        </tns:paymentId>
        <tns:paymentMethod>
          <xsl:value-of select="$bodyRequest/ns1:Root-Element/ns1:paymentMethod"/>
        </tns:paymentMethod>
        <tns:gatewayId>
          <xsl:value-of select="$bodyRequest/ns1:Root-Element/ns1:gatewayId"/>
        </tns:gatewayId>
        <tns:amount>
          <xsl:value-of select="$bodyRequest/ns1:Root-Element/ns1:amount"/>
        </tns:amount>
      </tns:authorizationResponse>
      </tns:Root-Element>
   </xsl:template>
</xsl:stylesheet>
