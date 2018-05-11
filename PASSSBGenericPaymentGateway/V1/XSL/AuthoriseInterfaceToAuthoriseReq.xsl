<xsl:stylesheet version="1.0"
                exclude-result-prefixes="xsd oracle-xsl-mapper xsi xsl ns0 tns UUIDUserFunction IsUserInGroupFunction oraext IsUserInRoleFunction xp20 DVMFunctions oraxsl RuntimeTypeConversionFunctions XrefFunctions BasicCredentialsUserFunction"
                xmlns:UUIDUserFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.UUIDUserFunction"
                xmlns:IsUserInGroupFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.IsUserInGroupFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:IsUserInRoleFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.IsUserInRoleFunction"
                xmlns:ns0="http://TargetNamespace.com/AdyenPaymentGateway_authorise_int_request"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:DVMFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.functions.dvm.DVMFunctions"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:RuntimeTypeConversionFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.RuntimeTypeConversionFunctions"
                xmlns:XrefFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.functions.xref.XrefFunctions"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:BasicCredentialsUserFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.BasicCredentialsUserFunction"
                xmlns:tns="http://TargetNamespace.com/AdyenPaymentGateway_authoriseGeneric_request"
                xmlns:nxsd="http://xmlns.oracle.com/pcbpel/nxsd"
                xmlns:ns1="http://TargetNamespace.com/GetEnrichOrderProfile_OrderProfileOCC_response">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="XSD">
        <oracle-xsl-mapper:schema location="../Resources/Generic/nxsd_InterfaceAuthorisePaymentReq.xsd"/>
        <oracle-xsl-mapper:rootElement name="Root-Element"
                                       namespace="http://TargetNamespace.com/AdyenPaymentGateway_authorise_int_request"/>
      </oracle-xsl-mapper:source>
      <oracle-xsl-mapper:source type="XSD">
        <oracle-xsl-mapper:schema location="../../../PASSSBCommon/V1/GetEnrichOrderProfileOCC/resources/nxsd_OrderProfileOCCRes.xsd"/>
        <oracle-xsl-mapper:rootElement name="Root-Element"
                                       namespace="http://TargetNamespace.com/GetEnrichOrderProfile_OrderProfileOCC_response"/>
        <oracle-xsl-mapper:param name="profileOrder"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="XSD">
        <oracle-xsl-mapper:schema location="../Resources/Generic/nxsd_authorisePaymentReq.xsd"/>
        <oracle-xsl-mapper:rootElement name="Root-Element"
                                       namespace="http://TargetNamespace.com/AdyenPaymentGateway_authoriseGeneric_request"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.2.0(XSLT Build 161003.0739.0018) AT [WED FEB 21 13:12:38 BRT 2018].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:param name="merchantAccount"/>
  <xsl:param name="cardencryptedjson"/>
  <xsl:param name="profileOrder"/>
  <xsl:template match="/">
    <tns:Root-Element>
      <tns:additionalData>
        <xsl:if test="/ns0:Root-Element/ns0:customProperties/ns0:paymentType = 'creditCard' or /ns0:Root-Element/ns0:customProperties/ns0:paymentType = 'debitCard'      
        or /ns0:Root-Element/ns0:customProperties/ns0:paymentType = 'storeCard' or /ns0:Root-Element/ns0:customProperties/ns0:paymentType = 'oneClick'">
          <tns:card.encrypted.json>
            <xsl:value-of select="$cardencryptedjson"/>
          </tns:card.encrypted.json>
        </xsl:if>
        <xsl:if test="/ns0:Root-Element/ns0:customProperties/ns0:paymentType = 'debitCard'">
          <tns:executeThreeD>true</tns:executeThreeD>
        </xsl:if>
        <xsl:for-each select="$profileOrder/ns1:Root-Element/ns1:commerceItems">
          <xsl:if test="ns1:productId != ''">
            <xsl:value-of disable-output-escaping="yes"
                          select="concat('&lt;tns:riskdata.basket.', 'item', position(),'.itemID>')"/>
            <xsl:value-of select="ns1:productId"/>
            <xsl:value-of disable-output-escaping="yes"
                          select="concat('&lt;/tns:riskdata.basket.', 'item', position(),'.itemID>')"/>
          </xsl:if>
          <xsl:if test="ns1:productDisplayName != ''">
            <xsl:value-of disable-output-escaping="yes"
                          select="concat('&lt;tns:riskdata.basket.', 'item', position(),'.productTitle>')"/>
            <xsl:value-of select="ns1:productDisplayName"/>
            <xsl:value-of disable-output-escaping="yes"
                          select="concat('&lt;/tns:riskdata.basket.', 'item', position(),'.productTitle>')"/>
          </xsl:if>
          <xsl:if test="ns1:priceInfo/ns1:amount != ''">
            <xsl:value-of disable-output-escaping="yes"
                          select="concat('&lt;tns:riskdata.basket.', 'item', position(),'.amountPerItem>')"/>
            <xsl:value-of select="ns1:priceInfo/ns1:amount"/>
            <xsl:value-of disable-output-escaping="yes"
                          select="concat('&lt;/tns:riskdata.basket.', 'item', position(),'.amountPerItem>')"/>
          </xsl:if>
          <xsl:if test="ns1:priceInfo/ns1:currencyCode != ''">
            <xsl:value-of disable-output-escaping="yes"
                          select="concat('&lt;tns:riskdata.basket.', 'item', position(),'.currency>')"/>
            <xsl:value-of select="ns1:priceInfo/ns1:currencyCode"/>
            <xsl:value-of disable-output-escaping="yes"
                          select="concat('&lt;/tns:riskdata.basket.', 'item', position(),'.currency>')"/>
          </xsl:if>
          <xsl:if test="ns1:catalogRefId != ''">
            <xsl:value-of disable-output-escaping="yes"
                          select="concat('&lt;tns:riskdata.basket.', 'item', position(),'.sku>')"/>
            <xsl:value-of select="ns1:catalogRefId"/>
            <xsl:value-of disable-output-escaping="yes"
                          select="concat('&lt;/tns:riskdata.basket.', 'item', position(),'.sku>')"/>
          </xsl:if>
          <xsl:if test="ns1:catalogRefId != ''">
            <xsl:value-of disable-output-escaping="yes"
                          select="concat('&lt;tns:riskdata.basket.', 'item', position(),'.upc>')"/>
            <xsl:value-of select="ns1:catalogRefId"/>
            <xsl:value-of disable-output-escaping="yes"
                          select="concat('&lt;/tns:riskdata.basket.', 'item', position(),'.upc>')"/>
          </xsl:if>
          <xsl:if test="ns1:quantity != ''">
            <xsl:value-of disable-output-escaping="yes"
                          select="concat('&lt;tns:riskdata.basket.', 'item', position(),'.quantity>')"/>
            <xsl:value-of select="ns1:quantity"/>
            <xsl:value-of disable-output-escaping="yes"
                          select="concat('&lt;/tns:riskdata.basket.', 'item', position(),'.quantity>')"/>
          </xsl:if>
          <xsl:if test="ns1:collection1Subcategoria != ''">
            <xsl:value-of disable-output-escaping="yes"
                          select="concat('&lt;tns:riskdata.basket.', 'item', position(),'.category>')"/>
            <xsl:value-of select="ns1:collection1Subcategoria"/>
            <xsl:value-of disable-output-escaping="yes"
                          select="concat('&lt;/tns:riskdata.basket.', 'item', position(),'.category>')"/>
          </xsl:if>
          <xsl:if test="ns1:brand != ''">
            <xsl:value-of disable-output-escaping="yes"
                          select="concat('&lt;tns:riskdata.basket.', 'item', position(),'.brand>')"/>
            <xsl:value-of select="ns1:brand"/>
            <xsl:value-of disable-output-escaping="yes"
                          select="concat('&lt;/tns:riskdata.basket.', 'item', position(),'.brand>')"/>
          </xsl:if>
        </xsl:for-each>
        <xsl:if test="$profileOrder/ns1:Root-Element/ns1:firstVisitDate != ''">
          <tns:riskdata.shopperAccountCreationDate>
            <xsl:value-of select="$profileOrder/ns1:Root-Element/ns1:firstVisitDate"/>
          </tns:riskdata.shopperAccountCreationDate>
        </xsl:if>
        <xsl:if test="$profileOrder/ns1:Root-Element/ns1:shippingGroups/ns1:shippingMethod">
          <tns:riskdata.deliveryMethod>
            <xsl:value-of select="$profileOrder/ns1:Root-Element/ns1:shippingGroups/ns1:shippingMethod"/>
          </tns:riskdata.deliveryMethod>
        </xsl:if>
        <xsl:if test="/ns0:Root-Element/ns0:channel">
          <tns:riskdata.origin>
            <xsl:value-of select="/ns0:Root-Element/ns0:channel"/>
          </tns:riskdata.origin>
        </xsl:if>
      </tns:additionalData>
      <xsl:if test="/ns0:Root-Element/ns0:amount">
        <tns:amount>
          <xsl:if test="/ns0:Root-Element/ns0:amount">
            <tns:value>
              <xsl:value-of select="/ns0:Root-Element/ns0:amount"/>
            </tns:value>
          </xsl:if>
          <xsl:if test="/ns0:Root-Element/ns0:currencyCode">
            <tns:currency>
              <xsl:value-of select="/ns0:Root-Element/ns0:currencyCode"/>
            </tns:currency>
          </xsl:if>
        </tns:amount>
      </xsl:if>
      <xsl:if test="/ns0:Root-Element/ns0:transactionId">
        <tns:reference>
          <xsl:value-of select="substring(/ns0:Root-Element/ns0:transactionId,0, 78)"/>
        </tns:reference>
      </xsl:if>
      <xsl:if test="$profileOrder/ns1:Root-Element/ns1:email">
        <tns:shopperEmail>
          <xsl:value-of select="$profileOrder/ns1:Root-Element/ns1:email"/>
        </tns:shopperEmail>
      </xsl:if>
      <xsl:if test="$profileOrder/ns1:Root-Element/ns1:profileId != ''">
        <tns:shopperReference>
          <xsl:value-of select="$profileOrder/ns1:Root-Element/ns1:profileId"/>
        </tns:shopperReference>
      </xsl:if>
      <xsl:if test="/ns0:Root-Element/ns0:customProperties/ns0:paymentType = 'oneClick'">
        <tns:selectedRecurringDetailReference>LATEST</tns:selectedRecurringDetailReference>
      </xsl:if>
      <xsl:if test="/ns0:Root-Element/ns0:customProperties/ns0:paymentType = 'oneClick' or /ns0:Root-Element/ns0:customProperties/ns0:storeOneClick = 'true'">
        <tns:recurring>
          <tns:contract>ONECLICK</tns:contract>
        </tns:recurring>
      </xsl:if>
      <tns:billingAddress>
        <tns:city>
          <xsl:value-of select="substring-before ($profileOrder/ns1:Root-Element/ns1:paymentGroups/ns1:billingAddress/ns1:city, '@' )"/>
        </tns:city>
        <tns:country>
          <xsl:value-of select="$profileOrder/ns1:Root-Element/ns1:paymentGroups/ns1:billingAddress/ns1:country"/>
        </tns:country>
        <tns:houseNumberOrName>
          <xsl:value-of select="substring-after ($profileOrder/ns1:Root-Element/ns1:paymentGroups/ns1:billingAddress/ns1:address1, '@')"/>
        </tns:houseNumberOrName>
        <tns:postalCode>
          <xsl:value-of select="translate($profileOrder/ns1:Root-Element/ns1:paymentGroups/ns1:billingAddress/ns1:postalCode, '-', '')"/>
        </tns:postalCode>
        <tns:stateOrProvince>
          <xsl:value-of select="$profileOrder/ns1:Root-Element/ns1:paymentGroups/ns1:billingAddress/ns1:state"/>
        </tns:stateOrProvince>
        <tns:street>
          <xsl:value-of select="substring-before ($profileOrder/ns1:Root-Element/ns1:paymentGroups/ns1:billingAddress/ns1:address1,'@')"/>
        </tns:street>
      </tns:billingAddress>
      <tns:deliveryAddress>
        <tns:city>
          <xsl:value-of select="substring-before ($profileOrder/ns1:Root-Element/ns1:shippingGroups/ns1:shippingAddress/ns1:city, '@' )"/>
        </tns:city>
        <tns:country>
          <xsl:value-of select="$profileOrder/ns1:Root-Element/ns1:shippingGroups/ns1:shippingAddress/ns1:country"/>
        </tns:country>
        <tns:houseNumberOrName>
          <xsl:value-of select="substring-after ($profileOrder/ns1:Root-Element/ns1:shippingGroups/ns1:shippingAddress/ns1:address1, '@' )"/>
        </tns:houseNumberOrName>
        <tns:postalCode>
          <xsl:value-of select="translate($profileOrder/ns1:Root-Element/ns1:shippingGroups/ns1:shippingAddress/ns1:postalCode, '-', '')"/>
        </tns:postalCode>
        <tns:stateOrProvince>
          <xsl:value-of select="$profileOrder/ns1:Root-Element/ns1:shippingGroups/ns1:shippingAddress/ns1:state"/>
        </tns:stateOrProvince>
        <tns:street>
          <xsl:value-of select="substring-before ($profileOrder/ns1:Root-Element/ns1:shippingGroups/ns1:shippingAddress/ns1:address1, '@' )"/>
        </tns:street>
      </tns:deliveryAddress>
      <xsl:if test="$profileOrder/ns1:Root-Element/ns1:telCelular != ''">
        <tns:telephoneNumber>
          <xsl:value-of select="translate(translate(translate(translate($profileOrder/ns1:Root-Element/ns1:telCelular, '-', ''), '(',''), ')',''),' ','')"/>
        </tns:telephoneNumber>
      </xsl:if>
      <xsl:if test="$profileOrder/ns1:Root-Element/ns1:valorFraude != ''">
        <tns:fraudOffset>
          <xsl:value-of select="$profileOrder/ns1:Root-Element/ns1:valorFraude"/>
        </tns:fraudOffset>
      </xsl:if>
      <xsl:if test="$profileOrder/ns1:Root-Element/ns1:shippingGroups/ns1:shipOnDate != ''">
        <tns:deliveryDate>
          <xsl:value-of select="$profileOrder/ns1:Root-Element/ns1:shippingGroups/ns1:shipOnDate"/>
        </tns:deliveryDate>
      </xsl:if>
      <xsl:if test="/ns0:Root-Element/ns0:customProperties/ns0:paymentType = 'boleto'">
        <tns:selectedBrand>boletobancario_santander</tns:selectedBrand>
      </xsl:if>
      <xsl:if test="$profileOrder/ns1:Root-Element/ns1:BrowserInfo">
        <tns:browserInfo>
          <tns:acceptHeader>
            <xsl:value-of select="$profileOrder/ns1:Root-Element/ns1:BrowserInfo"/>
          </tns:acceptHeader>
          <tns:userAgent>
            <xsl:value-of select="$profileOrder/ns1:Root-Element/ns1:BrowserInfo"/>
          </tns:userAgent>
        </tns:browserInfo>
      </xsl:if>
      <xsl:if test="$profileOrder/ns1:Root-Element/ns1:birthDate != ''">
        <tns:dateOfBirth>
          <xsl:value-of select="$profileOrder/ns1:Root-Element/ns1:birthDate"/>
        </tns:dateOfBirth>
      </xsl:if>
      <xsl:if test="$profileOrder/ns1:Root-Element/ns1:nationality != ''">
        <tns:nationality>
          <xsl:value-of select="$profileOrder/ns1:Root-Element/ns1:nationality"/>
        </tns:nationality>
      </xsl:if>
      <tns:countryCode>
        <xsl:value-of select="/ns0:Root-Element/ns0:billingAddress/ns0:country"/>
      </tns:countryCode>
      <xsl:if test="/ns0:Root-Element/ns0:billingAddress/ns0:firstName">
        <tns:shopperName>
          <tns:firstName>
            <xsl:value-of select="/ns0:Root-Element/ns0:billingAddress/ns0:firstName"/>
          </tns:firstName>
          <tns:lastName>
            <xsl:value-of select="/ns0:Root-Element/ns0:billingAddress/ns0:lastName"/>
          </tns:lastName>
          <tns:gender>
            <xsl:value-of select="$profileOrder/ns1:Root-Element/ns1:gender"/>
          </tns:gender>
        </tns:shopperName>
      </xsl:if>
      <xsl:if test="/ns0:Root-Element/ns0:parcelas != ''">
        <tns:installments>
          <tns:value>
            <xsl:value-of select="/ns0:Root-Element/ns0:parcelas"/>
          </tns:value>
        </tns:installments>
      </xsl:if>
      <xsl:if test="/ns0:Root-Element/ns0:customProperties/ns0:md">
        <tns:md>
          <xsl:value-of select="/ns0:Root-Element/ns0:customProperties/ns0:md"/>
        </tns:md>
      </xsl:if>
      <xsl:if test="/ns0:Root-Element/ns0:customProperties/ns0:paResponse">
        <tns:paResponse>
          <xsl:value-of select="/ns0:Root-Element/ns0:customProperties/ns0:paResponse"/>
        </tns:paResponse>
      </xsl:if>
      <xsl:if test="/ns0:Root-Element/ns0:customProperties/ns0:paymentType = 'boleto'">
        <tns:shopperStatement>Aceitar o pagamento até 15 dias após o vencimento; Não cobrar juros. Não aceitar o
                              pagamento com cheque</tns:shopperStatement>
      </xsl:if>
      <xsl:if test="$profileOrder/ns1:Root-Element/ns1:CPF">
        <tns:socialSecurityNumber>
          <xsl:value-of select="translate(translate($profileOrder/ns1:Root-Element/ns1:CPF,'.',''),'-', '')"/>
        </tns:socialSecurityNumber>
      </xsl:if>
      <tns:merchantAccount>
        <xsl:value-of select="$merchantAccount"/>
      </tns:merchantAccount>
    </tns:Root-Element>
  </xsl:template>
</xsl:stylesheet>