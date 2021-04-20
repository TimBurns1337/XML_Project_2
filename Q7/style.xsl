<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   <xsl:template match="/">
      <html>
         <head>
            <title>Title of the page</title>
         </head>
         <body>
            <h1>List of Country info</h1>
            <table border = "1">             
            <tr BGCOLOR= "gold">            
               <th>
                  Province Name
               </th>
               <th>
                  Local Name
               </th>
               <th>
                  Population (2011)
               </th>
               <th>
                  No of cities in the province 
               </th>               
            </tr> 
            <xsl:for-each select = "//province">           
            <tr>
               <td>
                  <xsl:value-of select="name"/>
               </td>


               <xsl:choose>
               <xsl:when test="count(localname)!=1"> <!-- when statement checker -->                                        
                        <td style='background-color: red'>
                           N/A
                        </td>  
               </xsl:when>
               <xsl:otherwise>
                        <td style='background-color: white'>
                           <xsl:value-of select="localname"/>
                        </td>
               </xsl:otherwise>
               </xsl:choose>
               <xsl:choose>
               <xsl:when test="count(population[@year='2011'])!=1"> <!-- when statement checker -->                                        
                        <td style='background-color: red'>
                           N/A
                        </td>  
               </xsl:when>
               <xsl:otherwise>
                        <td style='background-color: white'>
                           <xsl:value-of select="population[@year='2011']"/>
                        </td>
               </xsl:otherwise>
               </xsl:choose>
               <td>
                  <xsl:value-of select="count(city)"/>
               </td>               
            </tr>            
            </xsl:for-each>     
            </table>
         </body>
      </html>
   </xsl:template>
</xsl:stylesheet>