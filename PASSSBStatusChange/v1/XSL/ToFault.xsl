<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:UUIDUserFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.UUIDUserFunction" xmlns:IsUserInGroupFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.IsUserInGroupFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:IsUserInRoleFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.IsUserInRoleFunction" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:DVMFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.functions.dvm.DVMFunctions" xmlns:tns="http://TargetNamespace.com/OCCStatusChange_updateOrder_response" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:RuntimeTypeConversionFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.RuntimeTypeConversionFunctions" xmlns:XrefFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.functions.xref.XrefFunctions" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:BasicCredentialsUserFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.BasicCredentialsUserFunction" exclude-result-prefixes=" xsd oracle-xsl-mapper xsi xsl tns UUIDUserFunction IsUserInGroupFunction oraext IsUserInRoleFunction xp20 DVMFunctions oraxsl RuntimeTypeConversionFunctions XrefFunctions BasicCredentialsUserFunction"
                xmlns:nxsd="http://xmlns.oracle.com/pcbpel/nxsd">
   <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source/>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="XSD">
            <oracle-xsl-mapper:schema location="../Resources/nxsd_updateStatusOrderRes.xsd"/>
            <oracle-xsl-mapper:rootElement name="Root-Element" namespace="http://TargetNamespace.com/OCCStatusChange_updateOrder_response"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.2.0(XSLT Build 161003.0739.0018) AT [THU MAR 01 14:02:36 BRT 2018].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:param name="status"/>
  <xsl:param name="type"/>
    <xsl:param name="text"/>
    <xsl:param name="key"/>
    <xsl:param name="time"/>
    <xsl:param name="timezone"/>
    <xsl:param name="locale"/>
    <xsl:template match="/">
        <tns:Root-Element>
            <tns:status>
                <xsl:value-of select="$status"/>
            </tns:status>
            <tns:messages>
                <tns:type>
                    <xsl:value-of select="$type"/>
                </tns:type>
                <tns:text>
                    <xsl:value-of select="$text"/>
                </tns:text>
                <tns:key>
                    <xsl:value-of select="$key"/>
                </tns:key>
            </tns:messages>
            <tns:time>
                <xsl:value-of select="$time"/>
            </tns:time>
            <tns:timezone>
                <xsl:value-of select="$timezone"/>
            </tns:timezone>
            <tns:locale>
                <xsl:value-of select="$locale"/>
            </tns:locale>
        </tns:Root-Element>
    </xsl:template>
</xsl:stylesheet>