<xsl:stylesheet version="1.0"
                exclude-result-prefixes="xsd oracle-xsl-mapper xsi xsl ns0 tns UUIDUserFunction IsUserInGroupFunction oraext IsUserInRoleFunction xp20 DVMFunctions oraxsl RuntimeTypeConversionFunctions XrefFunctions BasicCredentialsUserFunction"
                xmlns:UUIDUserFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.UUIDUserFunction"
                xmlns:IsUserInGroupFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.IsUserInGroupFunction"
                xmlns:ns0="http://TargetNamespace.com/RestService_QuoteByProduct_response"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:IsUserInRoleFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.IsUserInRoleFunction"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:DVMFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.functions.dvm.DVMFunctions"
                xmlns:tns="http://TargetNamespace.com/IntelipostQuoteByProductPS_quote_by_product_response"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:RuntimeTypeConversionFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.RuntimeTypeConversionFunctions"
                xmlns:XrefFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.functions.xref.XrefFunctions"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:BasicCredentialsUserFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.BasicCredentialsUserFunction"
                xmlns:nxsd="http://xmlns.oracle.com/pcbpel/nxsd"
                xmlns:ns1="http://TargetNamespace.com/IntelipostQuoteByProductPS_quote_by_product_request">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="XSD">
        <oracle-xsl-mapper:schema location="../Resources/nxsd_schema_QuoteByProductRes.xsd"/>
        <oracle-xsl-mapper:rootElement name="Root-Element"
                                       namespace="http://TargetNamespace.com/RestService_QuoteByProduct_response"/>
      </oracle-xsl-mapper:source>
       <oracle-xsl-mapper:source type="XSD">
            <oracle-xsl-mapper:schema location="../Resources/nxsd_schema_InterfaceQuoteByProductReq.xsd"/>
            <oracle-xsl-mapper:rootElement name="Root-Element" namespace="http://TargetNamespace.com/IntelipostQuoteByProductPS_quote_by_product_request"/>
            <oracle-xsl-mapper:param name="request"/>
         </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="XSD">
        <oracle-xsl-mapper:schema location="../Resources/nxsd_schema_InterfaceQuoteByProductRes.xsd"/>
        <oracle-xsl-mapper:rootElement name="Root-Element"
                                       namespace="http://TargetNamespace.com/IntelipostQuoteByProductPS_quote_by_product_response"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.2.0(XSLT Build 161003.0739.0018) AT [TUE FEB 20 17:14:54 BRT 2018].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
 <xsl:param name="request"/>
  <xsl:template match="/">
    <tns:Root-Element>
     
      <!--<tns:status>
                <xsl:value-of select="/ns0:Root-Element/ns0:status"/>
            </tns:status>
            <xsl:for-each select="/ns0:Root-Element/ns0:messages">
                <tns:messages>
                    <tns:type>
                        <xsl:value-of select="ns0:type"/>
                    </tns:type>
                    <tns:text>
                        <xsl:value-of select="ns0:text"/>
                    </tns:text>
                    <tns:key>
                        <xsl:value-of select="ns0:key"/>
                    </tns:key>
                </tns:messages>
            </xsl:for-each>-->
      <xsl:for-each select="/ns0:Root-Element/ns0:content/ns0:delivery_options">
        <tns:shippingMethods>
          <tns:shippingCost>
            <xsl:value-of select="ns0:provider_shipping_cost"/>
          </tns:shippingCost>
          <tns:shippingTax>0</tns:shippingTax>
          <tns:shippingTotal>
            <xsl:value-of select="ns0:provider_shipping_cost"/>
          </tns:shippingTotal>
          <tns:internationalDutiesTaxesFees>0</tns:internationalDutiesTaxesFees>
          <tns:eligibleForProductWithSurcharges>true</tns:eligibleForProductWithSurcharges>
          <tns:deliveryDays>
            <xsl:value-of select="ns0:delivery_estimate_business_days"/>
          </tns:deliveryDays>
          <tns:estimatedDeliveryDateGuaranteed>false</tns:estimatedDeliveryDateGuaranteed>
          <tns:estimatedDeliveryDate>
            <xsl:value-of select="xp20:current-dateTime ( )"/>
          </tns:estimatedDeliveryDate>
          <tns:displayName>
            <xsl:value-of select="ns0:description"/>
          </tns:displayName>
          <tns:carrierId>
            <xsl:value-of select="ns0:logistic_provider_name"/>
          </tns:carrierId>
          <tns:taxcode>
            <xsl:value-of select="$request/ns1:Root-Element/ns1:request/ns1:items/ns1:product/ns1:taxCode"/>
          </tns:taxcode>
          <tns:currency>BRL</tns:currency>
        </tns:shippingMethods>
      </xsl:for-each>
    </tns:Root-Element>
  </xsl:template>
</xsl:stylesheet>