<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
                xmlns:UUIDUserFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.UUIDUserFunction"
                xmlns:IsUserInGroupFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.IsUserInGroupFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:IsUserInRoleFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.IsUserInRoleFunction"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:DVMFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.functions.dvm.DVMFunctions"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:RuntimeTypeConversionFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.RuntimeTypeConversionFunctions"
                xmlns:ns0="http://TargetNamespace.com/AbandonedCart_idleCart_request"
                xmlns:XrefFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.functions.xref.XrefFunctions"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:tns="http://TargetNamespace.com/ResponsysAbandonedCart_putEvent_request"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:BasicCredentialsUserFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.BasicCredentialsUserFunction"
                exclude-result-prefixes="xsd oracle-xsl-mapper xsi xsl ns0 tns UUIDUserFunction IsUserInGroupFunction oraext IsUserInRoleFunction xp20 DVMFunctions oraxsl RuntimeTypeConversionFunctions XrefFunctions BasicCredentialsUserFunction"
                xmlns:nxsd="http://xmlns.oracle.com/pcbpel/nxsd">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="XSD">
        <oracle-xsl-mapper:schema location="../Resources/nxsd_AbandonedCartReq.xsd"/>
        <oracle-xsl-mapper:rootElement name="Root-Element"
                                       namespace="http://TargetNamespace.com/AbandonedCart_idleCart_request"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="XSD">
        <oracle-xsl-mapper:schema location="../Resources/nxsd_FilaAbandonoBrutoReq.xsd"/>
        <oracle-xsl-mapper:rootElement name="Root-Element"
                                       namespace="http://TargetNamespace.com/ResponsysAbandonedCart_putEvent_request"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.2.0(XSLT Build 161003.0739.0018) AT [WED MAR 07 17:01:47 BRT 2018].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:param name="TokenPMWeb"/>
  <xsl:template match="/">
    <tns:Root-Element>
      <tns:Event>
        <tns:EventCode/>
        <tns:EventName>FILA_ABANDONOBRUTO</tns:EventName>
      </tns:Event>
      <tns:DataLists>
        <xsl:for-each select="/ns0:Root-Element/ns0:idleCart/ns0:shoppingCart/ns0:items">
          <tns:TableLists>
            <tns:ApplicationName>SANDBOX_SUP_ABANDONOBRUTO</tns:ApplicationName>
            <tns:TableKey>DATAABANDONO;CUSTOMERID;SKU</tns:TableKey>
            <tns:TableType>S</tns:TableType>
            <tns:Folder>Sandbox_API</tns:Folder>
            <xsl:if test="/ns0:Root-Element/ns0:idleCart/ns0:lastModifiedDate != ''">
              <tns:Elements>
                <tns:Name>DATAABANDONO</tns:Name>
                <tns:Value>
                  <xsl:value-of select="xp20:format-dateTime (/ns0:Root-Element/ns0:idleCart/ns0:lastModifiedDate, '[Y0001]-[M01]-[D01] [H01]:[m01]:[s01].0' )"/>
                </tns:Value>
              </tns:Elements>
            </xsl:if>
            <xsl:if test="/ns0:Root-Element/ns0:idleCart/ns0:profile/ns0:id != ''">
              <tns:Elements>
                <tns:Name>CUSTOMERID</tns:Name>
                <tns:Value>
                  <xsl:value-of select="/ns0:Root-Element/ns0:idleCart/ns0:profile/ns0:id"/>
                </tns:Value>
              </tns:Elements>
            </xsl:if>
            <xsl:if test='ns0:catRefId != ""'>
              <tns:Elements>
                <tns:Name>TAMANHO</tns:Name>
                <tns:Value>
                  <xsl:value-of select="substring (ns0:catRefId, 11, 2 )"/>
                </tns:Value>
              </tns:Elements>
            </xsl:if>
            <xsl:if test='ns0:catRefId != ""'>
              <tns:Elements>
                <tns:Name>SKU</tns:Name>
                <tns:Value>
                  <xsl:value-of select="ns0:catRefId"/>
                </tns:Value>
              </tns:Elements>
            </xsl:if>
          </tns:TableLists>
        </xsl:for-each>
      </tns:DataLists>
      <tns:Token>
        <xsl:value-of select="$TokenPMWeb"/>
      </tns:Token>
    </tns:Root-Element>
  </xsl:template>
</xsl:stylesheet>
