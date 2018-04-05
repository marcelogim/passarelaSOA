<xsl:stylesheet version="1.0" exclude-result-prefixes=" xsd oracle-xsl-mapper xsi xsl ns1 ns0 tns UUIDUserFunction IsUserInGroupFunction oraext IsUserInRoleFunction xp20 DVMFunctions oraxsl RuntimeTypeConversionFunctions XrefFunctions BasicCredentialsUserFunction" xmlns:UUIDUserFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.UUIDUserFunction" xmlns:IsUserInGroupFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.IsUserInGroupFunction" xmlns:ns1="http://TargetNamespace.com/OCCGetProfileOrder_profileRequest_response" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:IsUserInRoleFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.IsUserInRoleFunction" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:DVMFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.functions.dvm.DVMFunctions" xmlns:tns="http://TargetNamespace.com/GetEnrichOrderProfile_OrderProfileOCC_response" xmlns:ns0="http://TargetNamespace.com/OCCGetProfileOrder_orderRequest_response" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:RuntimeTypeConversionFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.RuntimeTypeConversionFunctions" xmlns:XrefFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.functions.xref.XrefFunctions" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:BasicCredentialsUserFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.BasicCredentialsUserFunction" xmlns:nxsd="http://xmlns.oracle.com/pcbpel/nxsd">
   <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="XSD">
            <oracle-xsl-mapper:schema location="../resources/nxsd_OrderRes.xsd"/>
            <oracle-xsl-mapper:rootElement name="Root-Element" namespace="http://TargetNamespace.com/OCCGetProfileOrder_orderRequest_response"/>
         </oracle-xsl-mapper:source>
         <oracle-xsl-mapper:source type="XSD">
            <oracle-xsl-mapper:schema location="../resources/nxsd_ProfileRes.xsd"/>
            <oracle-xsl-mapper:rootElement name="Root-Element" namespace="http://TargetNamespace.com/OCCGetProfileOrder_profileRequest_response"/>
            <oracle-xsl-mapper:param name="profile"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="XSD">
            <oracle-xsl-mapper:schema location="../resources/nxsd_ProfileOCCRes.xsd"/>
            <oracle-xsl-mapper:rootElement name="Root-Element" namespace="http://TargetNamespace.com/GetEnrichOrderProfile_OrderProfileOCC_response"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.2.0(XSLT Build 161003.0739.0018) AT [FRI MAR 09 10:25:04 BRT 2018].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:param name="profile"/>
   <xsl:template match="/">
      <tns:Root-Element>
         <tns:gender>
            <xsl:value-of select="$profile/ns1:Root-Element/ns1:gender"/>
         </tns:gender>
         <tns:CPF>
            <xsl:value-of select="$profile/ns1:Root-Element/ns1:CPF"/>
         </tns:CPF>
         <tns:nationality>
            <xsl:value-of select="$profile/ns1:Root-Element/ns1:nationality"/>
         </tns:nationality>
         <tns:valorFraude>
            <xsl:value-of select="$profile/ns1:Root-Element/ns1:valorFraude"/>
         </tns:valorFraude>
         <tns:firstVisitDate>
            <xsl:value-of select="$profile/ns1:Root-Element/ns1:firstVisitDate"/>
         </tns:firstVisitDate>
         <tns:birthDate>
            <xsl:value-of select="$profile/ns1:Root-Element/ns1:birthDate"/>
         </tns:birthDate>
         <tns:telCelular>
            <xsl:value-of select="$profile/ns1:Root-Element/ns1:telCelular"/>
         </tns:telCelular>
         <tns:email>
            <xsl:value-of select="$profile/ns1:Root-Element/ns1:email"/>
         </tns:email>
        
         <tns:shippingGroups>
            <tns:shippingMethod>
               <xsl:value-of select="/ns0:Root-Element/ns0:shippingGroups/ns0:shippingMethod"/>
            </tns:shippingMethod>
            <tns:description>
               <xsl:value-of select="/ns0:Root-Element/ns0:shippingGroups/ns0:description"/>
            </tns:description>
            <tns:shipOnDate>
               <xsl:value-of select="/ns0:Root-Element/ns0:shippingGroups/ns0:shipOnDate"/>
            </tns:shipOnDate>
            <tns:shippingAddress>
               <tns:lastName>
                  <xsl:value-of select="/ns0:Root-Element/ns0:shippingGroups/ns0:shippingAddress/ns0:lastName"/>
               </tns:lastName>
               <tns:country>
                  <xsl:value-of select="/ns0:Root-Element/ns0:shippingGroups/ns0:shippingAddress/ns0:country"/>
               </tns:country>
               <tns:address3>
                  <xsl:value-of select="/ns0:Root-Element/ns0:shippingGroups/ns0:shippingAddress/ns0:address3"/>
               </tns:address3>
               <tns:city>
                  <xsl:value-of select="/ns0:Root-Element/ns0:shippingGroups/ns0:shippingAddress/ns0:city"/>
               </tns:city>
               <tns:address2>
                  <xsl:value-of select="/ns0:Root-Element/ns0:shippingGroups/ns0:shippingAddress/ns0:address2"/>
               </tns:address2>
               <tns:prefix>
                  <xsl:value-of select="/ns0:Root-Element/ns0:shippingGroups/ns0:shippingAddress/ns0:prefix"/>
               </tns:prefix>
               <tns:address1>
                  <xsl:value-of select="/ns0:Root-Element/ns0:shippingGroups/ns0:shippingAddress/ns0:address1"/>
               </tns:address1>
               <tns:companyName>
                  <xsl:value-of select="/ns0:Root-Element/ns0:shippingGroups/ns0:shippingAddress/ns0:companyName"/>
               </tns:companyName>
               <tns:jobTitle>
                  <xsl:value-of select="/ns0:Root-Element/ns0:shippingGroups/ns0:shippingAddress/ns0:jobTitle"/>
               </tns:jobTitle>
               <tns:postalCode>
                  <xsl:value-of select="/ns0:Root-Element/ns0:shippingGroups/ns0:shippingAddress/ns0:postalCode"/>
               </tns:postalCode>
               <tns:county>
                  <xsl:value-of select="/ns0:Root-Element/ns0:shippingGroups/ns0:shippingAddress/ns0:county"/>
               </tns:county>
               <tns:suffix>
                  <xsl:value-of select="/ns0:Root-Element/ns0:shippingGroups/ns0:shippingAddress/ns0:suffix"/>
               </tns:suffix>
               <tns:ownerId>
                  <xsl:value-of select="/ns0:Root-Element/ns0:shippingGroups/ns0:shippingAddress/ns0:ownerId"/>
               </tns:ownerId>
               <tns:firstName>
                  <xsl:value-of select="/ns0:Root-Element/ns0:shippingGroups/ns0:shippingAddress/ns0:firstName"/>
               </tns:firstName>
               <tns:phoneNumber>
                  <xsl:value-of select="/ns0:Root-Element/ns0:shippingGroups/ns0:shippingAddress/ns0:phoneNumber"/>
               </tns:phoneNumber>
               <tns:faxNumber>
                  <xsl:value-of select="/ns0:Root-Element/ns0:shippingGroups/ns0:shippingAddress/ns0:faxNumber"/>
               </tns:faxNumber>
               <tns:middleName>
                  <xsl:value-of select="/ns0:Root-Element/ns0:shippingGroups/ns0:shippingAddress/ns0:middleName"/>
               </tns:middleName>
               <tns:state>
                  <xsl:value-of select="/ns0:Root-Element/ns0:shippingGroups/ns0:shippingAddress/ns0:state"/>
               </tns:state>
               <tns:id>
                  <xsl:value-of select="/ns0:Root-Element/ns0:shippingGroups/ns0:shippingAddress/ns0:id"/>
               </tns:id>
               <tns:email>
                  <xsl:value-of select="/ns0:Root-Element/ns0:shippingGroups/ns0:shippingAddress/ns0:email"/>
               </tns:email>
            </tns:shippingAddress>
         </tns:shippingGroups>
         <tns:paymentGroups>
            <tns:PONumber>
               <xsl:value-of select="/ns0:Root-Element/ns0:paymentGroups/ns0:PONumber"/>
            </tns:PONumber>
            <tns:expirationYear>
               <xsl:value-of select="/ns0:Root-Element/ns0:paymentGroups/ns0:expirationYear"/>
            </tns:expirationYear>
            <tns:amountAuthorized>
               <xsl:value-of select="/ns0:Root-Element/ns0:paymentGroups/ns0:amountAuthorized"/>
            </tns:amountAuthorized>
            <tns:amount>
               <xsl:value-of select="/ns0:Root-Element/ns0:paymentGroups/ns0:amount"/>
            </tns:amount>
            <tns:expirationMonth>
               <xsl:value-of select="/ns0:Root-Element/ns0:paymentGroups/ns0:expirationMonth"/>
            </tns:expirationMonth>
            <tns:submittedDate>
               <xsl:value-of select="/ns0:Root-Element/ns0:paymentGroups/ns0:submittedDate"/>
            </tns:submittedDate>
            <tns:authorizationStatus>
               <tns:transactionUuid>
                  <xsl:value-of select="/ns0:Root-Element/ns0:paymentGroups/ns0:authorizationStatus/ns0:transactionUuid"/>
               </tns:transactionUuid>
               <tns:authorizationDecision>
                  <xsl:value-of select="/ns0:Root-Element/ns0:paymentGroups/ns0:authorizationStatus/ns0:authorizationDecision"/>
               </tns:authorizationDecision>
               <tns:amount>
                  <xsl:value-of select="/ns0:Root-Element/ns0:paymentGroups/ns0:authorizationStatus/ns0:amount"/>
               </tns:amount>
               <tns:transactionSuccess>
                  <xsl:value-of select="/ns0:Root-Element/ns0:paymentGroups/ns0:authorizationStatus/ns0:transactionSuccess"/>
               </tns:transactionSuccess>
               <tns:errorMessage>
                  <xsl:value-of select="/ns0:Root-Element/ns0:paymentGroups/ns0:authorizationStatus/ns0:errorMessage"/>
               </tns:errorMessage>
               <tns:currency>
                  <xsl:value-of select="/ns0:Root-Element/ns0:paymentGroups/ns0:authorizationStatus/ns0:currency"/>
               </tns:currency>
               <tns:reasonCode>
                  <xsl:value-of select="/ns0:Root-Element/ns0:paymentGroups/ns0:authorizationStatus/ns0:reasonCode"/>
               </tns:reasonCode>
               <tns:transactionId>
                  <xsl:value-of select="/ns0:Root-Element/ns0:paymentGroups/ns0:authorizationStatus/ns0:transactionId"/>
               </tns:transactionId>
            </tns:authorizationStatus>
            <tns:token>
               <xsl:value-of select="/ns0:Root-Element/ns0:paymentGroups/ns0:token"/>
            </tns:token>
            <tns:paymentGroupClassType>
               <xsl:value-of select="/ns0:Root-Element/ns0:paymentGroups/ns0:paymentGroupClassType"/>
            </tns:paymentGroupClassType>
            <tns:creditCardNumber>
               <xsl:value-of select="/ns0:Root-Element/ns0:paymentGroups/ns0:creditCardNumber"/>
            </tns:creditCardNumber>
            <tns:paymentMethod>
               <xsl:value-of select="/ns0:Root-Element/ns0:paymentGroups/ns0:paymentMethod"/>
            </tns:paymentMethod>
            <tns:billingAddress>
               <tns:lastName>
                  <xsl:value-of select="/ns0:Root-Element/ns0:paymentGroups/ns0:billingAddress/ns0:lastName"/>
               </tns:lastName>
               <tns:country>
                  <xsl:value-of select="/ns0:Root-Element/ns0:paymentGroups/ns0:billingAddress/ns0:country"/>
               </tns:country>
               <tns:address3>
                  <xsl:value-of select="/ns0:Root-Element/ns0:paymentGroups/ns0:billingAddress/ns0:address3"/>
               </tns:address3>
               <tns:city>
                  <xsl:value-of select="/ns0:Root-Element/ns0:paymentGroups/ns0:billingAddress/ns0:city"/>
               </tns:city>
               <tns:address2>
                  <xsl:value-of select="/ns0:Root-Element/ns0:paymentGroups/ns0:billingAddress/ns0:address2"/>
               </tns:address2>
               <tns:prefix>
                  <xsl:value-of select="/ns0:Root-Element/ns0:paymentGroups/ns0:billingAddress/ns0:prefix"/>
               </tns:prefix>
               <tns:address1>
                  <xsl:value-of select="/ns0:Root-Element/ns0:paymentGroups/ns0:billingAddress/ns0:address1"/>
               </tns:address1>
               <tns:companyName>
                  <xsl:value-of select="/ns0:Root-Element/ns0:paymentGroups/ns0:billingAddress/ns0:companyName"/>
               </tns:companyName>
               <tns:jobTitle>
                  <xsl:value-of select="/ns0:Root-Element/ns0:paymentGroups/ns0:billingAddress/ns0:jobTitle"/>
               </tns:jobTitle>
               <tns:postalCode>
                  <xsl:value-of select="/ns0:Root-Element/ns0:paymentGroups/ns0:billingAddress/ns0:postalCode"/>
               </tns:postalCode>
               <tns:county>
                  <xsl:value-of select="/ns0:Root-Element/ns0:paymentGroups/ns0:billingAddress/ns0:county"/>
               </tns:county>
               <tns:suffix>
                  <xsl:value-of select="/ns0:Root-Element/ns0:paymentGroups/ns0:billingAddress/ns0:suffix"/>
               </tns:suffix>
               <tns:ownerId>
                  <xsl:value-of select="/ns0:Root-Element/ns0:paymentGroups/ns0:billingAddress/ns0:ownerId"/>
               </tns:ownerId>
               <tns:firstName>
                  <xsl:value-of select="/ns0:Root-Element/ns0:paymentGroups/ns0:billingAddress/ns0:firstName"/>
               </tns:firstName>
               <tns:phoneNumber>
                  <xsl:value-of select="/ns0:Root-Element/ns0:paymentGroups/ns0:billingAddress/ns0:phoneNumber"/>
               </tns:phoneNumber>
               <tns:faxNumber>
                  <xsl:value-of select="/ns0:Root-Element/ns0:paymentGroups/ns0:billingAddress/ns0:faxNumber"/>
               </tns:faxNumber>
               <tns:middleName>
                  <xsl:value-of select="/ns0:Root-Element/ns0:paymentGroups/ns0:billingAddress/ns0:middleName"/>
               </tns:middleName>
               <tns:state>
                  <xsl:value-of select="/ns0:Root-Element/ns0:paymentGroups/ns0:billingAddress/ns0:state"/>
               </tns:state>
               <tns:id>
                  <xsl:value-of select="/ns0:Root-Element/ns0:paymentGroups/ns0:billingAddress/ns0:id"/>
               </tns:id>
               <tns:email>
                  <xsl:value-of select="/ns0:Root-Element/ns0:paymentGroups/ns0:billingAddress/ns0:email"/>
               </tns:email>
            </tns:billingAddress>
            <tns:id>
               <xsl:value-of select="/ns0:Root-Element/ns0:paymentGroups/ns0:id"/>
            </tns:id>
            <tns:currencyCode>
               <xsl:value-of select="/ns0:Root-Element/ns0:paymentGroups/ns0:currencyCode"/>
            </tns:currencyCode>
         </tns:paymentGroups>
         <tns:profileId>
            <xsl:value-of select="$profile/ns1:Root-Element/ns1:id"/>
         </tns:profileId>
         <xsl:for-each select="/ns0:Root-Element/ns0:commerceItems">
            <tns:commerceItems>
               <tns:brand>
                  <xsl:value-of select="ns0:brand"/>
               </tns:brand>
               <tns:collection1Subcategoria>
                  <xsl:value-of select="ns0:collection1Subcategoria"/>
               </tns:collection1Subcategoria>
               <tns:priceInfo>
                  <tns:amount>
                     <xsl:value-of select="ns0:priceInfo/ns0:amount"/>
                  </tns:amount>
                  <tns:currencyCode>
                     <xsl:value-of select="ns0:priceInfo/ns0:currencyCode"/>
                  </tns:currencyCode>
               </tns:priceInfo>
               <tns:id>
                  <xsl:value-of select="ns0:id"/>
               </tns:id>
               <tns:quantity>
                  <xsl:value-of select="ns0:quantity"/>
               </tns:quantity>
               <tns:productId>
                  <xsl:value-of select="ns0:productId"/>
               </tns:productId>
               <tns:catalogRefId>
                  <xsl:value-of select="ns0:catalogRefId"/>
               </tns:catalogRefId>
               <tns:productDisplayName>
                  <xsl:value-of select="ns0:productDisplayName"/>
               </tns:productDisplayName>
            </tns:commerceItems>
         </xsl:for-each>
      </tns:Root-Element>
   </xsl:template>
</xsl:stylesheet>