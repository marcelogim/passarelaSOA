xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://TargetNamespace.com/OCCClassifyImagesBS_getProducts_response";
(:: import schema at "../Resources/nxsd_productsResponse.xsd" ::)

declare variable $prodRquest as element() (:: schema-element(ns1:Root-Element) ::) external;

declare function local:func($prodRquest as element() (:: schema-element(ns1:Root-Element) ::)) as element() (:: schema-element(ns1:Root-Element) ::) {
    <ns1:Root-Element>
    {
    
     for $setname in distinct-values($prodRquest/ns1:childSKUs/ns1:cor) 
     let $file-in-set := $prodRquest/ns1:childSKUs[ns1:cor=$setname] 
     
       return        
          $file-in-set [1]      
      }
  </ns1:Root-Element>
    
};



local:func($prodRquest)