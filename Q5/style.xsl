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
                  Country Name
               </th>
               <th>
                  Capital
               </th>
               <th>
                  Unemployment %
               </th>
               <th>
                  Total GDP
               </th>               
            </tr> 
            <xsl:for-each select = "//country">           
            <tr>
               <td>
                  <xsl:value-of select="name"/>
               </td>
               <td>
                  <xsl:value-of select="@capital"/>
               </td>
               <xsl:choose>
               <xsl:when test="count(unemployment)!=1"> <!-- when statement checker -->                                        
                        <td style='background-color: red'>
                           N/A
                        </td>  
               </xsl:when>
               <xsl:otherwise>
                        <td style='background-color: white'>
                           <xsl:value-of select="unemployment"/>
                        </td>
               </xsl:otherwise>
               </xsl:choose>
               <xsl:choose>
               <xsl:when test="count(gdp_total)!=1"> <!-- when statement checker -->                                        
                        <td style='background-color: red'>
                           N/A
                        </td>  
               </xsl:when>
               <xsl:otherwise>
                        <td style='background-color: white'>
                           <xsl:value-of select="gdp_total"/>
                        </td>
               </xsl:otherwise>
               </xsl:choose>
            </tr>            
            </xsl:for-each>     
            </table>
         </body>
      </html>
   </xsl:template>
</xsl:stylesheet>