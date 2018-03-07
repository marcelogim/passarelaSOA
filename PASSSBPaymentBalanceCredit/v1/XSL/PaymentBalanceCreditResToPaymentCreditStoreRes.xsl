<xsl:stylesheet version="1.0" exclude-result-prefixes="xsd oracle-xsl-mapper xsi xsl ns0 tns UUIDUserFunction IsUserInGroupFunction oraext IsUserInRoleFunction xp20 DVMFunctions oraxsl RuntimeTypeConversionFunctions XrefFunctions BasicCredentialsUserFunction" xmlns:UUIDUserFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.UUIDUserFunction" xmlns:IsUserInGroupFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.IsUserInGroupFunction" xmlns:ns0="http://TargetNamespace.com/PaymentCreditBalancePS_payment_credit_request" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:IsUserInRoleFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.IsUserInRoleFunction" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:DVMFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.functions.dvm.DVMFunctions" xmlns:tns="http://TargetNamespace.com/PaymentCreditBalancePS_payment_credit_response" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:RuntimeTypeConversionFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.RuntimeTypeConversionFunctions" xmlns:XrefFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.functions.xref.XrefFunctions" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:BasicCredentialsUserFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.BasicCredentialsUserFunction" xmlns:nxsd="http://xmlns.oracle.com/pcbpel/nxsd">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="XSD">
        <oracle-xsl-mapper:schema location="../Resources/nxsd_PaymentCreditStoreReq.xsd"/>
        <oracle-xsl-mapper:rootElement name="Root-Element" namespace="http://TargetNamespace.com/PaymentCreditBalancePS_payment_credit_request"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="XSD">
        <oracle-xsl-mapper:schema location="../Resources/nxsd_PaymentCreditStoreRes.xsd"/>
        <oracle-xsl-mapper:rootElement name="Root-Element" namespace="http://TargetNamespace.com/PaymentCreditBalancePS_payment_credit_response"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.2.0(XSLT Build 161003.0739.0018) AT [WED MAR 07 15:51:01 BRT 2018].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:param name="currentTimestampMiliseconds"/>
  <xsl:template match="/">
    <tns:Root-Element>
      <tns:amount>
        <xsl:value-of select="/ns0:Root-Element/ns0:amount"/>
      </tns:amount>
      <tns:orderId>
        <xsl:value-of select="/ns0:Root-Element/ns0:orderId"/>
      </tns:orderId>
      <tns:channel>
        <xsl:value-of select="/ns0:Root-Element/ns0:channel"/>
      </tns:channel>
      <tns:authorizationResponse>
        <tns:hostTransactionTimestamp>
          <xsl:value-of select="$currentTimestampMiliseconds"/>
        </tns:hostTransactionTimestamp>
        <tns:responseReason>authResponseReason</tns:responseReason>
        <tns:responseDescription>authResponseDescription</tns:responseDescription>
        <tns:merchantTransactionId>
          <xsl:value-of select="/ns0:Root-Element/ns0:transactionId"/>
        </tns:merchantTransactionId>
        <tns:hostTransactionId>
          <xsl:value-of select="/ns0:Root-Element/ns0:transactionId"/>
        </tns:hostTransactionId>
        <tns:responseCode>1000</tns:responseCode>
        <tns:merchantTransactionTimestamp>
          <xsl:value-of select="$currentTimestampMiliseconds"/>
        </tns:merchantTransactionTimestamp>
      </tns:authorizationResponse>
      <tns:locale>
        <xsl:value-of select="/ns0:Root-Element/ns0:locale"/>
      </tns:locale>
      <tns:transactionId>
        <xsl:value-of select="/ns0:Root-Element/ns0:transactionId"/>
      </tns:transactionId>
      <tns:transactionTimestamp>
        <xsl:value-of select="/ns0:Root-Element/ns0:transactionTimestamp"/>
      </tns:transactionTimestamp>
      <tns:transactionType>
        <xsl:value-of select="/ns0:Root-Element/ns0:transactionType"/>
      </tns:transactionType>
      <tns:paymentId>
        <xsl:value-of select="/ns0:Root-Element/ns0:paymentId"/>
      </tns:paymentId>
      <tns:paymentMethod>
        <xsl:value-of select="/ns0:Root-Element/ns0:paymentMethod"/>
      </tns:paymentMethod>
      <tns:siteId>
        <xsl:value-of select="/ns0:Root-Element/ns0:siteId"/>
      </tns:siteId>
      <tns:currencyCode>
        <xsl:value-of select="/ns0:Root-Element/ns0:currencyCode"/>
      </tns:currencyCode>
      <tns:gatewayId>
        <xsl:value-of select="/ns0:Root-Element/ns0:gatewayId"/>
      </tns:gatewayId>
    </tns:Root-Element>
  </xsl:template>
</xsl:stylesheet>