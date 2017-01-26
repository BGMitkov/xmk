<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:exsl="http://exslt.org/common" exclude-result-prefixes="msxsl" extension-element-prefixes="exsl"
>
    <xsl:output method="html" indent="yes"/>
  
    <xsl:template match="/">
      <html>
        <head>
          <title>Dams in Bulgaria</title>
          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" integrity="sha512-dTfge/zgoMYpP7QbHy4gWMEGsbsdZeCXz7irItjcC3sPUFtf0kuFbDz/ixG7ArTxmDjLXDmezHubeNikyKGVyQ==" crossorigin="anonymous" />
        </head>
        <body>
          <h1 class="jumbotron">Dams in Bulgaria</h1>
          <table class="table table-striped table-hover content">
            <thead>
              <tr class="info">
                <th>
                  name
                </th>
                <th>
                  sealevel
                </th>
                <th>
                  area (km2)
                </th>
                <th>
                  water volume (mln m3)
                </th>
              </tr>
            </thead>
            
                       <tbody>
       <xsl:for-each select="DamCatalog/DAMS/DAM">
           <!-- kliu4ive za stenata 
    <xsl:variable name="name" select="//Dam[@DamID=$DamId]/@name" />   
    <xsl:variable name="sealevel" select="//Dam[@DamID=$DamId]/@sealevel" />  
    <xsl:variable name="area" select="//Dam[@DamID=$DamId]/@area" />  
    <xsl:variable name="waterVolume" select="//Dam[@DamID=$DamId]/@waterVolume" />  -->
                                
        
                <tr>
                  <td>
                    <xsl:value-of select="@name"/>
                  </td>
                  <td>
                    <xsl:value-of select="@seaLevel"/>
                  </td>
                  <td>
                  <xsl:value-of select="@area"/>
                  </td>
                  <td>
                   <xsl:value-of select="@waterVolume"/>
                  </td>
                </tr>
              </xsl:for-each>
            </tbody> 
              
</table>
            
      </body>
      </html>
    </xsl:template>
</xsl:stylesheet>          