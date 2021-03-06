<xsl:stylesheet version="1.0" exclude-result-prefixes=" xsd oracle-xsl-mapper xsi xsl ns0 UUIDUserFunction IsUserInGroupFunction oraext IsUserInRoleFunction xp20 DVMFunctions oraxsl RuntimeTypeConversionFunctions XrefFunctions BasicCredentialsUserFunction" xmlns:UUIDUserFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.UUIDUserFunction" xmlns:IsUserInGroupFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.IsUserInGroupFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:IsUserInRoleFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.IsUserInRoleFunction" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:DVMFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.functions.dvm.DVMFunctions" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:RuntimeTypeConversionFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.RuntimeTypeConversionFunctions" xmlns:XrefFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.functions.xref.XrefFunctions" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:BasicCredentialsUserFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.BasicCredentialsUserFunction" xmlns:ns0="http://TargetNamespace.com/OCCStatusChange_updateOrder_request" xmlns:nxsd="http://xmlns.oracle.com/pcbpel/nxsd">
   <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="XSD">
            <oracle-xsl-mapper:schema location="../Resources/nxsd_updateStatusOrderReq.xsd"/>
            <oracle-xsl-mapper:rootElement name="Root-Element" namespace="http://TargetNamespace.com/OCCStatusChange_updateOrder_request"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="XSD">
            <oracle-xsl-mapper:schema location="../Resources/nxsd_updateStatusOrderReq.xsd"/>
            <oracle-xsl-mapper:rootElement name="Root-Element" namespace="http://TargetNamespace.com/OCCStatusChange_updateOrder_request"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.2.0(XSLT Build 161003.0739.0018) AT [THU MAR 01 14:07:46 BRT 2018].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
    <xsl:param name="id"/>
    <xsl:param name="idPayment"/>
    <xsl:param name="idShipping"/>
 
   <xsl:template match="/">
      <ns0:Root-Element>
         <xsl:if test="$id != ''">
            <ns0:id>
               <xsl:value-of select="$id"/>
            </ns0:id>
         </xsl:if>
         <xsl:if test="/ns0:Root-Element/ns0:state != ''">
            <ns0:state>
               <xsl:value-of select="/ns0:Root-Element/ns0:state"/>
            </ns0:state>
         </xsl:if>
         <xsl:if test="/ns0:Root-Element/ns0:paymentGroups">
            <xsl:for-each select="/ns0:Root-Element/ns0:paymentGroups">
               <ns0:paymentGroups>
                  <xsl:if test="$idPayment != ''">
                     <ns0:id>
                        <xsl:value-of select="$idPayment"/>
                     </ns0:id>
                  </xsl:if>
                  <xsl:if test="ns0:state != ''">
                     <ns0:state>
                        <xsl:value-of select="ns0:state"/>
                     </ns0:state>
                  </xsl:if>
               </ns0:paymentGroups>
            </xsl:for-each>
         </xsl:if>
         <xsl:if test="/ns0:Root-Element/ns0:shippingGroups">
            <xsl:for-each select="/ns0:Root-Element/ns0:shippingGroups">
               <ns0:shippingGroups>
                  <xsl:if test="$idShipping != ''">
                     <ns0:id>
                        <xsl:value-of select="$idShipping"/>
                     </ns0:id>
                  </xsl:if>
                  <xsl:if test="ns0:state != ''">
                     <ns0:state>
                        <xsl:value-of select="ns0:state"/>
                     </ns0:state>
                  </xsl:if>
               </ns0:shippingGroups>
            </xsl:for-each>
         </xsl:if>
         <xsl:if test="/ns0:Root-Element/ns0:notaFiscal">
            <ns0:notaFiscal>
               <xsl:value-of select="/ns0:Root-Element/ns0:notaFiscal"/>
            </ns0:notaFiscal>
         </xsl:if>
      </ns0:Root-Element>
   </xsl:template>
</xsl:stylesheet>