<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
                xmlns:UUIDUserFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.UUIDUserFunction"
                xmlns:IsUserInGroupFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.IsUserInGroupFunction"
                xmlns:ns0="http://TargetNamespace.com/ResponsysUpdateShopperPS_profile_request"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:IsUserInRoleFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.IsUserInRoleFunction"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:DVMFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.functions.dvm.DVMFunctions"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:RuntimeTypeConversionFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.RuntimeTypeConversionFunctions"
                xmlns:XrefFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.functions.xref.XrefFunctions"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:tns="http://TargetNamespace.com/ResponsysUpdateShopperBS_PutEvent_request"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:BasicCredentialsUserFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.BasicCredentialsUserFunction"
                exclude-result-prefixes="xsd oracle-xsl-mapper xsi xsl ns0 tns UUIDUserFunction IsUserInGroupFunction oraext IsUserInRoleFunction xp20 DVMFunctions oraxsl RuntimeTypeConversionFunctions XrefFunctions BasicCredentialsUserFunction"
                xmlns:nxsd="http://xmlns.oracle.com/pcbpel/nxsd">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="XSD">
        <oracle-xsl-mapper:schema location="../Resources/nxsd_ProfileReq.xsd"/>
        <oracle-xsl-mapper:rootElement name="Root-Element"
                                       namespace="http://TargetNamespace.com/ResponsysUpdateShopperPS_profile_request"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="XSD">
        <oracle-xsl-mapper:schema location="../Resources/nxsd_FilaContactsReq.xsd"/>
        <oracle-xsl-mapper:rootElement name="Root-Element"
                                       namespace="http://TargetNamespace.com/ResponsysUpdateShopperBS_PutEvent_request"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.2.0(XSLT Build 161003.0739.0018) AT [MON MAR 12 22:18:27 BRT 2018].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:param name="TokenPMWeb"/>
  <xsl:template match="/">
    <tns:Root-Element>
      <tns:Event>
        <tns:EventName>FILA_CONTACT_LIST</tns:EventName>
      </tns:Event>
      <tns:DataLists>
        <tns:TableLists>
          <tns:ApplicationName>SANDBOX_CONTACTS_LIST</tns:ApplicationName>
          <tns:TableKey>EMAIL_ADDRESS_</tns:TableKey>
          <tns:TableType>C</tns:TableType>
          <tns:Folder>Sandbox_API</tns:Folder>
          <tns:Elements>
            <xsl:if test="/ns0:Root-Element/ns0:profile/ns0:id">
              <tns:Name>CUSTOMER_ID_</tns:Name>
              <tns:Value>
                <xsl:value-of select="/ns0:Root-Element/ns0:profile/ns0:id"/>
              </tns:Value>
            </xsl:if>
          </tns:Elements>
          <xsl:if test="/ns0:Root-Element/ns0:profile/ns0:email">
            <tns:Elements>
              <tns:Name>EMAIL_ADDRESS_</tns:Name>
              <tns:Value>
                <xsl:value-of select="/ns0:Root-Element/ns0:profile/ns0:email"/>
              </tns:Value>
            </tns:Elements>
          </xsl:if>
          <xsl:if test="/ns0:Root-Element/ns0:profile/ns0:receiveEmail">
            <tns:Elements>
              <tns:Name>EMAIL_PERMISSION_STATUS_</tns:Name>
              <xsl:if test="/ns0:Root-Element/ns0:profile/ns0:receiveEmail = 'yes'">
                <tns:Value>I</tns:Value>
              </xsl:if>
              <xsl:if test="/ns0:Root-Element/ns0:profile/ns0:receiveEmail = 'no'">
                <tns:Value>O</tns:Value>
              </xsl:if>
            </tns:Elements>
          </xsl:if>
          <xsl:if test="/ns0:Root-Element/ns0:profile/ns0:firstName">
            <tns:Elements>
              <tns:Name>FIRST_NAME</tns:Name>
              <tns:Value>
                <xsl:value-of select="/ns0:Root-Element/ns0:profile/ns0:firstName"/>
              </tns:Value>
            </tns:Elements>
          </xsl:if>
          <xsl:if test="/ns0:Root-Element/ns0:profile/ns0:lastName">
            <tns:Elements>
              <tns:Name>LAST_NAME</tns:Name>
              <tns:Value>
                <xsl:value-of select="/ns0:Root-Element/ns0:profile/ns0:lastName"/>
              </tns:Value>
            </tns:Elements>
          </xsl:if>
          <xsl:if test="/ns0:Root-Element/ns0:profile/ns0:birthDate">
            <tns:Elements>
              <tns:Name>DATE_OF_BIRTH</tns:Name>
              <tns:Value>
                <xsl:value-of select="xp20:format-dateTime (/ns0:Root-Element/ns0:profile/ns0:birthDate, '[Y0001]-[M01]-[D01] 00:00:00.0')"/>
              </tns:Value>
            </tns:Elements>
          </xsl:if>
          <xsl:if test="/ns0:Root-Element/ns0:profile/ns0:gender">
            <tns:Elements>
              <tns:Name>GENDER</tns:Name>
              <xsl:if test="/ns0:Root-Element/ns0:profile/ns0:gender = 'female'">
                <tns:Value>F</tns:Value>
              </xsl:if>
              <xsl:if test="/ns0:Root-Element/ns0:profile/ns0:gender = 'male'">
                <tns:Value>M</tns:Value>
              </xsl:if>
            </tns:Elements>
          </xsl:if>
          <xsl:if test="/ns0:Root-Element/ns0:profile/ns0:billingAddress/ns0:city">
            <tns:Elements>
              <tns:Name>CITY_</tns:Name>
              <tns:Value>
                <xsl:value-of select="/ns0:Root-Element/ns0:profile/ns0:billingAddress/ns0:city"/>
              </tns:Value>
            </tns:Elements>
          </xsl:if>
          <xsl:if test="/ns0:Root-Element/ns0:profile/ns0:billingAddress/ns0:state">
            <tns:Elements>
              <tns:Name>STATE_</tns:Name>
              <tns:Value>
                <xsl:value-of select="/ns0:Root-Element/ns0:profile/ns0:billingAddress/ns0:state"/>
              </tns:Value>
            </tns:Elements>
          </xsl:if>
          <xsl:if test="/ns0:Root-Element/ns0:profile/ns0:cellphoneNotifications != ''">
            <tns:Elements>
              <tns:Name>MOBILE_PERMISSION_STATUS_</tns:Name>
              <xsl:if test="/ns0:Root-Element/ns0:profile/ns0:cellphoneNotifications = 'true'">
                <tns:Value>I</tns:Value>
              </xsl:if>
              <xsl:if test="/ns0:Root-Element/ns0:profile/ns0:cellphoneNotifications = 'false'">
                <tns:Value>O</tns:Value>
              </xsl:if>
            </tns:Elements>
          </xsl:if>
          <xsl:if test="/ns0:Root-Element/ns0:profile/ns0:birthDate">
            <tns:Elements>
              <tns:Name>IDADE</tns:Name>
              <tns:Value>
                <xsl:value-of select="xp20:year-from-dateTime (xp20:current-date ( )) - xp20:year-from-dateTime (/ns0:Root-Element/ns0:profile/ns0:birthDate )"/>
              </tns:Value>
            </tns:Elements>
          </xsl:if>
          <xsl:if test="/ns0:Root-Element/ns0:profile/ns0:CPF or /ns0:Root-Element/ns0:profile/ns0:CNPJ">
            <xsl:if test="/ns0:Root-Element/ns0:profile/ns0:CPF != ''">
              <tns:Elements>
                <tns:Name>CPF_CNPJ</tns:Name>
                <tns:Value>
                  <xsl:value-of select="/ns0:Root-Element/ns0:profile/ns0:CPF"/>
                </tns:Value>
              </tns:Elements>
            </xsl:if>
            <tns:Elements>
              <tns:Name>TIPO_CADASTRO</tns:Name>
              <tns:Value>F</tns:Value>
            </tns:Elements>
          </xsl:if>
          <xsl:if test="/ns0:Root-Element/ns0:profile/ns0:CNPJ != ''">
            <tns:Elements>
              <tns:Name>CPF_CNPJ</tns:Name>
              <tns:Value>
                <xsl:value-of select="/ns0:Root-Element/ns0:profile/ns0:CNPJ"/>
              </tns:Value>
            </tns:Elements>
            <tns:Elements>
              <tns:Name>TIPO_CADASTRO</tns:Name>
              <tns:Value>J</tns:Value>
            </tns:Elements>
          </xsl:if>
          <xsl:if test="/ns0:Root-Element/ns0:profile/ns0:telCelular">
            <tns:Elements>
              <tns:Name>MOBILE_DDD</tns:Name>
              <tns:Value>
                <xsl:value-of select="substring (/ns0:Root-Element/ns0:profile/ns0:telCelular, 2, 2 )"/>
              </tns:Value>
            </tns:Elements>
            <tns:Elements>
              <tns:Name>MOBILE_NUMBER_</tns:Name>
              <tns:Value>
                <xsl:value-of select="translate(substring (/ns0:Root-Element/ns0:profile/ns0:telCelular, 6 ), '-', '')"/>
              </tns:Value>
            </tns:Elements>
          </xsl:if>
          <xsl:if test="/ns0:Root-Element/ns0:profile/ns0:registrationDate">
            <tns:Elements>
              <tns:Name>DATACADASTRO</tns:Name>
              <tns:Value>
                <xsl:value-of select="xp20:format-dateTime (/ns0:Root-Element/ns0:profile/ns0:registrationDate, '[Y0001]-[M01]-[D01] [H01]:[m01]:[s01].0')"/>
              </tns:Value>
            </tns:Elements>
          </xsl:if>
          <tns:Elements>
            <tns:Name>ORIGEM</tns:Name>
            <tns:Value>WEBSITE</tns:Value>
          </tns:Elements>
          <tns:Elements>
            <tns:Name>ID_FACEBOOK</tns:Name>
            <tns:Value>123456</tns:Value>
          </tns:Elements>
          <tns:Elements>
            <tns:Name>COMPRA_RAPIDA</tns:Name>
            <tns:Value>0</tns:Value>
          </tns:Elements>
        </tns:TableLists>
      </tns:DataLists>
      <tns:Token>
        <xsl:value-of select="$TokenPMWeb"/>
      </tns:Token>
    </tns:Root-Element>
  </xsl:template>
</xsl:stylesheet>