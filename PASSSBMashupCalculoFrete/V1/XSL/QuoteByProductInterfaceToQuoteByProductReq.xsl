<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
                xmlns:UUIDUserFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.UUIDUserFunction"
                xmlns:IsUserInGroupFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.IsUserInGroupFunction"
                xmlns:tns="http://TargetNamespace.com/RestService_QuoteByProduct_request"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:IsUserInRoleFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.IsUserInRoleFunction"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:DVMFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.functions.dvm.DVMFunctions"
                xmlns:ns0="http://TargetNamespace.com/IntelipostQuoteByProductPS_quote_by_product_request"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:RuntimeTypeConversionFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.RuntimeTypeConversionFunctions"
                xmlns:XrefFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.functions.xref.XrefFunctions"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:BasicCredentialsUserFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.BasicCredentialsUserFunction"
                exclude-result-prefixes="xsd oracle-xsl-mapper xsi xsl ns0 tns UUIDUserFunction IsUserInGroupFunction oraext IsUserInRoleFunction xp20 DVMFunctions oraxsl RuntimeTypeConversionFunctions XrefFunctions BasicCredentialsUserFunction"
                xmlns:nxsd="http://xmlns.oracle.com/pcbpel/nxsd">
    <oracle-xsl-mapper:schema>
        <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
        <oracle-xsl-mapper:mapSources>
            <oracle-xsl-mapper:source type="XSD">
                <oracle-xsl-mapper:schema location="../Resources/nxsd_schema_InterfaceQuoteByProductReq.xsd"/>
                <oracle-xsl-mapper:rootElement name="Root-Element"
                                               namespace="http://TargetNamespace.com/IntelipostQuoteByProductPS_quote_by_product_request"/>
            </oracle-xsl-mapper:source>
        </oracle-xsl-mapper:mapSources>
        <oracle-xsl-mapper:mapTargets>
            <oracle-xsl-mapper:target type="XSD">
                <oracle-xsl-mapper:schema location="../Resources/nxsd_schema_QuoteByProductReq.xsd"/>
                <oracle-xsl-mapper:rootElement name="Root-Element"
                                               namespace="http://TargetNamespace.com/RestService_QuoteByProduct_request"/>
            </oracle-xsl-mapper:target>
        </oracle-xsl-mapper:mapTargets>
        <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.2.0(XSLT Build 161003.0739.0018) AT [TUE FEB 20 17:02:44 BRT 2018].-->
    </oracle-xsl-mapper:schema>
    <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
    <xsl:template match="/">
        <tns:Root-Element>
            <tns:origin_zip_code>13213070</tns:origin_zip_code>
            <tns:destination_zip_code>
                <xsl:value-of select="/ns0:Root-Element/ns0:request/ns0:address/ns0:postalCode"/>
            </tns:destination_zip_code>
            <tns:quoting_mode>DYNAMIC_BOX_ALL_ITEMS</tns:quoting_mode>
            <xsl:for-each select="/ns0:Root-Element/ns0:request/ns0:items">
                <tns:products>
                    <tns:weight>
                        <xsl:value-of select="ns0:product/ns0:weight"/>
                    </tns:weight>
                    <tns:cost_of_goods>
                        <xsl:value-of select="ns0:amount"/>
                    </tns:cost_of_goods>
                    <tns:width>
                        <xsl:value-of select="ns0:product/ns0:width"/>
                    </tns:width>
                    <tns:height>
                        <xsl:value-of select="ns0:product/ns0:height"/>
                    </tns:height>
                    <tns:length>
                        <xsl:value-of select="ns0:product/ns0:length"/>
                    </tns:length>
                    <tns:quantity>
                        <xsl:value-of select="ns0:quantity"/>
                    </tns:quantity>
                    <tns:sku_id>
                        <xsl:value-of select="ns0:product/ns0:id"/>
                    </tns:sku_id>
                    <tns:product_category>
                        <xsl:value-of select="ns0:catalogRefId"/>
                    </tns:product_category>
                </tns:products>
            </xsl:for-each>
        </tns:Root-Element>
    </xsl:template>
</xsl:stylesheet>
