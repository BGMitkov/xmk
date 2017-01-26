<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:fo="http://www.w3.org/1999/XSL/Format"
xmlns:msxsl="urn:schemas-microsoft-com:xslt" 
xmlns:exsl="http://exslt.org/common" 
exclude-result-prefixes="msxsl" 
extension-element-prefixes="exsl">

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
                    Name
                </th>
                <th>
                  Location
                </th>
                <th>
                 Nearest City
                </th>
                <th>
                 Source
                </th>
                   <th>
                  Lenght
                </th>
                   <th>
                 Depth
                </th>
                   <th>
                 Width
                </th>
                   <th>
                  SeaLevel
                </th>
                   <th>
                  Area
                </th>
                  <th>
                  YearBuildStarted
                </th>
                  <th>
                 YearBuildFinished
                </th>
                <th>
                 Water Volume
                </th>
              
                
              </tr>
                
                
            </thead>
            
                       <tbody>
       <xsl:for-each select="DamCatalog/Dams/Dam">
           
           <xsl:variable name="wallid" select="@wallID" />
           <!-- kliu4ive za stenata 
    <xsl:variable name="name" select="//Dam[@DamID=$DamId]/@name" />   
    <xsl:variable name="sealevel" select="//Dam[@DamID=$DamId]/@sealevel" />  
    <xsl:variable name="area" select="//Dam[@DamID=$DamId]/@area" />  
    <xsl:variable name="waterVolume" select="//Dam[@DamID=$DamId]/@waterVolume" />  -->
           <xsl:variable name="wallHeight" select="DamCatalog/WALLS/WALL[@WallID=$wallid]/@height" />          
           <xsl:variable name="wallLeigth" select="DamCatalog/WALLS/WALL[@WallID=$wallid]/@length" />  
           
                <tr>
                  <td>
                    <xsl:value-of select="@Name"/>
                  </td>
                  <td>
                    <xsl:value-of select="@Location"/>
                  </td>
                  <td>
                  <xsl:value-of select="@NearestCity"/>
                  </td>
                    <td>
                   <xsl:value-of select="@Source"/>
                  </td>
                    <td>
                   <xsl:value-of select="@Lenght"/>
                  </td>
                    <td>
                   <xsl:value-of select="@Depth"/>
                  </td>
                    <td>
                   <xsl:value-of select="@Width"/>
                  </td>
                    <td>
                   <xsl:value-of select="@SeaLevel"/>
                  </td>
                    <td>
                   <xsl:value-of select="@Area"/>
                  </td>
                    <td>
                   <xsl:value-of select="@YearBuildStarted"/>
                  </td>
                     <td>
                   <xsl:value-of select="@YearBuildFinished"/>
                  </td>
                     <td>
                   <xsl:value-of select="@WaterVolume"/>
                  </td>
                    
                </tr>
              </xsl:for-each>
            </tbody> 
              
</table>
            
      </body>
      </html>
    </xsl:template>
</xsl:stylesheet>          