<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:param name="width" select="400"/>
<xsl:param name="height" select="400"/>

<xsl:template name="main" match="/">
  <div>
    <!-- Set Style -->
    <style type="text/css" media="all">
      .hex-row
      {
        clear: left;
        font-family: Arial, sans-serif;
        font-size: 20px;
        text-align: center;
        vertical-align: middle;
      }

      .hex
      {
        float: left;
        margin-left: 3px;
        margin-bottom: -19px;
      }
      .hex .top
      {
        width: 0;
        border-bottom: 22px solid transparent;
        border-left: 38px solid transparent;
        border-right: 38px solid transparent;
      }
      .hex .middle
      {
        width: 76px;
        height: 44px;
        background: transparent;
      }
      .hex .bottom
      {
        width: 0;
        border-top: 22px solid transparent;
        border-left: 38px solid transparent;
        border-right: 38px solid transparent;
      }

      .hex .middle p
      {
        margin: 0px;
        vertical-align: bottom;
      }

      .hex-row.even
      {
        margin-left: 39px;
      }


      .hex.empty .top
      {
        border-bottom: 22px solid #DDDDDD;
      }

      .hex.empty .middle
      {
        background: #DDDDDD;
      }

      .hex.empty .bottom
      {
        border-top: 22px solid #DDDDDD;
      }


      .hex.red .top
      {
        border-bottom: 22px solid #FF8888;
      }

      .hex.red .middle
      {
        background: #FF8888;
      }

      .hex.red .bottom
      {
        border-top: 22px solid #FF8888;
      }


      .hex.blue .top
      {
        border-bottom: 22px solid #8888FF;
      }

      .hex.blue .middle
      {
        background: #8888FF;
      }

      .hex.blue .bottom
      {
        border-top: 22px solid #8888FF;
      }
    </style>

    <xsl:variable name="a1"><xsl:choose><xsl:when test="//fact[relation='cell' and argument[1]='a1']/argument[2]!='blank'"><xsl:value-of select="//fact[relation='cell' and argument[1]='a1']/argument[2]"/></xsl:when><xsl:otherwise> </xsl:otherwise></xsl:choose></xsl:variable>
    <xsl:variable name="a2"><xsl:choose><xsl:when test="//fact[relation='cell' and argument[1]='a2']/argument[2]!='blank'"><xsl:value-of select="//fact[relation='cell' and argument[1]='a2']/argument[2]"/></xsl:when><xsl:otherwise> </xsl:otherwise></xsl:choose></xsl:variable>
    <xsl:variable name="a3"><xsl:choose><xsl:when test="//fact[relation='cell' and argument[1]='a3']/argument[2]!='blank'"><xsl:value-of select="//fact[relation='cell' and argument[1]='a3']/argument[2]"/></xsl:when><xsl:otherwise> </xsl:otherwise></xsl:choose></xsl:variable>
    <xsl:variable name="a4"><xsl:choose><xsl:when test="//fact[relation='cell' and argument[1]='a4']/argument[2]!='blank'"><xsl:value-of select="//fact[relation='cell' and argument[1]='a4']/argument[2]"/></xsl:when><xsl:otherwise> </xsl:otherwise></xsl:choose></xsl:variable>
    <xsl:variable name="b1"><xsl:choose><xsl:when test="//fact[relation='cell' and argument[1]='b1']/argument[2]!='blank'"><xsl:value-of select="//fact[relation='cell' and argument[1]='b1']/argument[2]"/></xsl:when><xsl:otherwise> </xsl:otherwise></xsl:choose></xsl:variable>
    <xsl:variable name="b2"><xsl:choose><xsl:when test="//fact[relation='cell' and argument[1]='b2']/argument[2]!='blank'"><xsl:value-of select="//fact[relation='cell' and argument[1]='b2']/argument[2]"/></xsl:when><xsl:otherwise> </xsl:otherwise></xsl:choose></xsl:variable>
    <xsl:variable name="b3"><xsl:choose><xsl:when test="//fact[relation='cell' and argument[1]='b3']/argument[2]!='blank'"><xsl:value-of select="//fact[relation='cell' and argument[1]='b3']/argument[2]"/></xsl:when><xsl:otherwise> </xsl:otherwise></xsl:choose></xsl:variable>
    <xsl:variable name="b4"><xsl:choose><xsl:when test="//fact[relation='cell' and argument[1]='b4']/argument[2]!='blank'"><xsl:value-of select="//fact[relation='cell' and argument[1]='b4']/argument[2]"/></xsl:when><xsl:otherwise> </xsl:otherwise></xsl:choose></xsl:variable>
    <xsl:variable name="b5"><xsl:choose><xsl:when test="//fact[relation='cell' and argument[1]='b5']/argument[2]!='blank'"><xsl:value-of select="//fact[relation='cell' and argument[1]='b5']/argument[2]"/></xsl:when><xsl:otherwise> </xsl:otherwise></xsl:choose></xsl:variable>
    <xsl:variable name="c1"><xsl:choose><xsl:when test="//fact[relation='cell' and argument[1]='c1']/argument[2]!='blank'"><xsl:value-of select="//fact[relation='cell' and argument[1]='c1']/argument[2]"/></xsl:when><xsl:otherwise> </xsl:otherwise></xsl:choose></xsl:variable>
    <xsl:variable name="c2"><xsl:choose><xsl:when test="//fact[relation='cell' and argument[1]='c2']/argument[2]!='blank'"><xsl:value-of select="//fact[relation='cell' and argument[1]='c2']/argument[2]"/></xsl:when><xsl:otherwise> </xsl:otherwise></xsl:choose></xsl:variable>
    <xsl:variable name="c3"><xsl:choose><xsl:when test="//fact[relation='cell' and argument[1]='c3']/argument[2]!='blank'"><xsl:value-of select="//fact[relation='cell' and argument[1]='c3']/argument[2]"/></xsl:when><xsl:otherwise> </xsl:otherwise></xsl:choose></xsl:variable>
    <xsl:variable name="c4"><xsl:choose><xsl:when test="//fact[relation='cell' and argument[1]='c4']/argument[2]!='blank'"><xsl:value-of select="//fact[relation='cell' and argument[1]='c4']/argument[2]"/></xsl:when><xsl:otherwise> </xsl:otherwise></xsl:choose></xsl:variable>
    <xsl:variable name="c5"><xsl:choose><xsl:when test="//fact[relation='cell' and argument[1]='c5']/argument[2]!='blank'"><xsl:value-of select="//fact[relation='cell' and argument[1]='c5']/argument[2]"/></xsl:when><xsl:otherwise> </xsl:otherwise></xsl:choose></xsl:variable>
    <xsl:variable name="c6"><xsl:choose><xsl:when test="//fact[relation='cell' and argument[1]='c6']/argument[2]!='blank'"><xsl:value-of select="//fact[relation='cell' and argument[1]='c6']/argument[2]"/></xsl:when><xsl:otherwise> </xsl:otherwise></xsl:choose></xsl:variable>
    <xsl:variable name="d1"><xsl:choose><xsl:when test="//fact[relation='cell' and argument[1]='d1']/argument[2]!='blank'"><xsl:value-of select="//fact[relation='cell' and argument[1]='d1']/argument[2]"/></xsl:when><xsl:otherwise> </xsl:otherwise></xsl:choose></xsl:variable>
    <xsl:variable name="d2"><xsl:choose><xsl:when test="//fact[relation='cell' and argument[1]='d2']/argument[2]!='blank'"><xsl:value-of select="//fact[relation='cell' and argument[1]='d2']/argument[2]"/></xsl:when><xsl:otherwise> </xsl:otherwise></xsl:choose></xsl:variable>
    <xsl:variable name="d3"><xsl:choose><xsl:when test="//fact[relation='cell' and argument[1]='d3']/argument[2]!='blank'"><xsl:value-of select="//fact[relation='cell' and argument[1]='d3']/argument[2]"/></xsl:when><xsl:otherwise> </xsl:otherwise></xsl:choose></xsl:variable>
    <xsl:variable name="d4"><xsl:choose><xsl:when test="//fact[relation='cell' and argument[1]='d4']/argument[2]!='blank'"><xsl:value-of select="//fact[relation='cell' and argument[1]='d4']/argument[2]"/></xsl:when><xsl:otherwise> </xsl:otherwise></xsl:choose></xsl:variable>
    <xsl:variable name="d5"><xsl:choose><xsl:when test="//fact[relation='cell' and argument[1]='d5']/argument[2]!='blank'"><xsl:value-of select="//fact[relation='cell' and argument[1]='d5']/argument[2]"/></xsl:when><xsl:otherwise> </xsl:otherwise></xsl:choose></xsl:variable>
    <xsl:variable name="d6"><xsl:choose><xsl:when test="//fact[relation='cell' and argument[1]='d6']/argument[2]!='blank'"><xsl:value-of select="//fact[relation='cell' and argument[1]='d6']/argument[2]"/></xsl:when><xsl:otherwise> </xsl:otherwise></xsl:choose></xsl:variable>
    <xsl:variable name="d7"><xsl:choose><xsl:when test="//fact[relation='cell' and argument[1]='d7']/argument[2]!='blank'"><xsl:value-of select="//fact[relation='cell' and argument[1]='d7']/argument[2]"/></xsl:when><xsl:otherwise> </xsl:otherwise></xsl:choose></xsl:variable>
    <xsl:variable name="e2"><xsl:choose><xsl:when test="//fact[relation='cell' and argument[1]='e2']/argument[2]!='blank'"><xsl:value-of select="//fact[relation='cell' and argument[1]='e2']/argument[2]"/></xsl:when><xsl:otherwise> </xsl:otherwise></xsl:choose></xsl:variable>
    <xsl:variable name="e3"><xsl:choose><xsl:when test="//fact[relation='cell' and argument[1]='e3']/argument[2]!='blank'"><xsl:value-of select="//fact[relation='cell' and argument[1]='e3']/argument[2]"/></xsl:when><xsl:otherwise> </xsl:otherwise></xsl:choose></xsl:variable>
    <xsl:variable name="e4"><xsl:choose><xsl:when test="//fact[relation='cell' and argument[1]='e4']/argument[2]!='blank'"><xsl:value-of select="//fact[relation='cell' and argument[1]='e4']/argument[2]"/></xsl:when><xsl:otherwise> </xsl:otherwise></xsl:choose></xsl:variable>
    <xsl:variable name="e5"><xsl:choose><xsl:when test="//fact[relation='cell' and argument[1]='e5']/argument[2]!='blank'"><xsl:value-of select="//fact[relation='cell' and argument[1]='e5']/argument[2]"/></xsl:when><xsl:otherwise> </xsl:otherwise></xsl:choose></xsl:variable>
    <xsl:variable name="e6"><xsl:choose><xsl:when test="//fact[relation='cell' and argument[1]='e6']/argument[2]!='blank'"><xsl:value-of select="//fact[relation='cell' and argument[1]='e6']/argument[2]"/></xsl:when><xsl:otherwise> </xsl:otherwise></xsl:choose></xsl:variable>
    <xsl:variable name="e7"><xsl:choose><xsl:when test="//fact[relation='cell' and argument[1]='e7']/argument[2]!='blank'"><xsl:value-of select="//fact[relation='cell' and argument[1]='e7']/argument[2]"/></xsl:when><xsl:otherwise> </xsl:otherwise></xsl:choose></xsl:variable>
    <xsl:variable name="f3"><xsl:choose><xsl:when test="//fact[relation='cell' and argument[1]='f3']/argument[2]!='blank'"><xsl:value-of select="//fact[relation='cell' and argument[1]='f3']/argument[2]"/></xsl:when><xsl:otherwise> </xsl:otherwise></xsl:choose></xsl:variable>
    <xsl:variable name="f4"><xsl:choose><xsl:when test="//fact[relation='cell' and argument[1]='f4']/argument[2]!='blank'"><xsl:value-of select="//fact[relation='cell' and argument[1]='f4']/argument[2]"/></xsl:when><xsl:otherwise> </xsl:otherwise></xsl:choose></xsl:variable>
    <xsl:variable name="f5"><xsl:choose><xsl:when test="//fact[relation='cell' and argument[1]='f5']/argument[2]!='blank'"><xsl:value-of select="//fact[relation='cell' and argument[1]='f5']/argument[2]"/></xsl:when><xsl:otherwise> </xsl:otherwise></xsl:choose></xsl:variable>
    <xsl:variable name="f6"><xsl:choose><xsl:when test="//fact[relation='cell' and argument[1]='f6']/argument[2]!='blank'"><xsl:value-of select="//fact[relation='cell' and argument[1]='f6']/argument[2]"/></xsl:when><xsl:otherwise> </xsl:otherwise></xsl:choose></xsl:variable>
    <xsl:variable name="f7"><xsl:choose><xsl:when test="//fact[relation='cell' and argument[1]='f7']/argument[2]!='blank'"><xsl:value-of select="//fact[relation='cell' and argument[1]='f7']/argument[2]"/></xsl:when><xsl:otherwise> </xsl:otherwise></xsl:choose></xsl:variable>
    <xsl:variable name="g4"><xsl:choose><xsl:when test="//fact[relation='cell' and argument[1]='g4']/argument[2]!='blank'"><xsl:value-of select="//fact[relation='cell' and argument[1]='g4']/argument[2]"/></xsl:when><xsl:otherwise> </xsl:otherwise></xsl:choose></xsl:variable>
    <xsl:variable name="g5"><xsl:choose><xsl:when test="//fact[relation='cell' and argument[1]='g5']/argument[2]!='blank'"><xsl:value-of select="//fact[relation='cell' and argument[1]='g5']/argument[2]"/></xsl:when><xsl:otherwise> </xsl:otherwise></xsl:choose></xsl:variable>
    <xsl:variable name="g6"><xsl:choose><xsl:when test="//fact[relation='cell' and argument[1]='g6']/argument[2]!='blank'"><xsl:value-of select="//fact[relation='cell' and argument[1]='g6']/argument[2]"/></xsl:when><xsl:otherwise> </xsl:otherwise></xsl:choose></xsl:variable>
    <xsl:variable name="g7"><xsl:choose><xsl:when test="//fact[relation='cell' and argument[1]='g7']/argument[2]!='blank'"><xsl:value-of select="//fact[relation='cell' and argument[1]='g7']/argument[2]"/></xsl:when><xsl:otherwise> </xsl:otherwise></xsl:choose></xsl:variable>

    <div class="hex-row">
      <div class="      hex"><div class="top"> </div><div class="middle"><p>                            </p></div><div class="bottom"> </div></div>
      <div class="      hex"><div class="top"> </div><div class="middle"><p>                            </p></div><div class="bottom"> </div></div>
      <div class="blue  hex"><div class="top"> </div><div class="middle"><p><xsl:value-of select="$a4"/></p></div><div class="bottom"> </div></div>
      <div class="blue  hex"><div class="top"> </div><div class="middle"><p><xsl:value-of select="$b5"/></p></div><div class="bottom"> </div></div>
      <div class="blue  hex"><div class="top"> </div><div class="middle"><p><xsl:value-of select="$c6"/></p></div><div class="bottom"> </div></div>
      <div class="blue  hex"><div class="top"> </div><div class="middle"><p><xsl:value-of select="$d7"/></p></div><div class="bottom"> </div></div>
    </div>
    <div class="hex-row even">
      <div class="      hex"><div class="top"> </div><div class="middle"><p>                            </p></div><div class="bottom"> </div></div>
      <div class="blue  hex"><div class="top"> </div><div class="middle"><p><xsl:value-of select="$a3"/></p></div><div class="bottom"> </div></div>
      <div class="blue  hex"><div class="top"> </div><div class="middle"><p><xsl:value-of select="$b4"/></p></div><div class="bottom"> </div></div>
      <div class="red   hex"><div class="top"> </div><div class="middle"><p><xsl:value-of select="$c5"/></p></div><div class="bottom"> </div></div>
      <div class="red   hex"><div class="top"> </div><div class="middle"><p><xsl:value-of select="$d6"/></p></div><div class="bottom"> </div></div>
      <div class="red   hex"><div class="top"> </div><div class="middle"><p><xsl:value-of select="$e7"/></p></div><div class="bottom"> </div></div>
    </div>
    <div class="hex-row">
      <div class="      hex"><div class="top"> </div><div class="middle"><p>                            </p></div><div class="bottom"> </div></div>
      <div class="red   hex"><div class="top"> </div><div class="middle"><p><xsl:value-of select="$a2"/></p></div><div class="bottom"> </div></div>
      <div class="blue  hex"><div class="top"> </div><div class="middle"><p><xsl:value-of select="$b3"/></p></div><div class="bottom"> </div></div>
      <div class="blue  hex"><div class="top"> </div><div class="middle"><p><xsl:value-of select="$c4"/></p></div><div class="bottom"> </div></div>
      <div class="red   hex"><div class="top"> </div><div class="middle"><p><xsl:value-of select="$d5"/></p></div><div class="bottom"> </div></div>
      <div class="blue  hex"><div class="top"> </div><div class="middle"><p><xsl:value-of select="$e6"/></p></div><div class="bottom"> </div></div>
      <div class="blue  hex"><div class="top"> </div><div class="middle"><p><xsl:value-of select="$f7"/></p></div><div class="bottom"> </div></div>
    </div>
    <div class="hex-row even">
      <div class="blue  hex"><div class="top"> </div><div class="middle"><p><xsl:value-of select="$a1"/></p></div><div class="bottom"> </div></div>
      <div class="blue  hex"><div class="top"> </div><div class="middle"><p><xsl:value-of select="$b2"/></p></div><div class="bottom"> </div></div>
      <div class="red   hex"><div class="top"> </div><div class="middle"><p><xsl:value-of select="$c3"/></p></div><div class="bottom"> </div></div>
      <div class="blue  hex"><div class="top"> </div><div class="middle"><p><xsl:value-of select="$d4"/></p></div><div class="bottom"> </div></div>
      <div class="red   hex"><div class="top"> </div><div class="middle"><p><xsl:value-of select="$e5"/></p></div><div class="bottom"> </div></div>
      <div class="blue  hex"><div class="top"> </div><div class="middle"><p><xsl:value-of select="$f6"/></p></div><div class="bottom"> </div></div>
      <div class="blue  hex"><div class="top"> </div><div class="middle"><p><xsl:value-of select="$g7"/></p></div><div class="bottom"> </div></div>
    </div>
    <div class="hex-row">
      <div class="      hex"><div class="top"> </div><div class="middle"><p>                            </p></div><div class="bottom"> </div></div>
      <div class="blue  hex"><div class="top"> </div><div class="middle"><p><xsl:value-of select="$b1"/></p></div><div class="bottom"> </div></div>
      <div class="blue  hex"><div class="top"> </div><div class="middle"><p><xsl:value-of select="$c2"/></p></div><div class="bottom"> </div></div>
      <div class="blue  hex"><div class="top"> </div><div class="middle"><p><xsl:value-of select="$d3"/></p></div><div class="bottom"> </div></div>
      <div class="blue  hex"><div class="top"> </div><div class="middle"><p><xsl:value-of select="$e4"/></p></div><div class="bottom"> </div></div>
      <div class="blue  hex"><div class="top"> </div><div class="middle"><p><xsl:value-of select="$f5"/></p></div><div class="bottom"> </div></div>
      <div class="blue  hex"><div class="top"> </div><div class="middle"><p><xsl:value-of select="$g6"/></p></div><div class="bottom"> </div></div>
    </div>
    <div class="hex-row even">
      <div class="      hex"><div class="top"> </div><div class="middle"><p>                            </p></div><div class="bottom"> </div></div>
      <div class="blue  hex"><div class="top"> </div><div class="middle"><p><xsl:value-of select="$c1"/></p></div><div class="bottom"> </div></div>
      <div class="red   hex"><div class="top"> </div><div class="middle"><p><xsl:value-of select="$d2"/></p></div><div class="bottom"> </div></div>
      <div class="blue  hex"><div class="top"> </div><div class="middle"><p><xsl:value-of select="$e3"/></p></div><div class="bottom"> </div></div>
      <div class="blue  hex"><div class="top"> </div><div class="middle"><p><xsl:value-of select="$f4"/></p></div><div class="bottom"> </div></div>
      <div class="blue  hex"><div class="top"> </div><div class="middle"><p><xsl:value-of select="$g5"/></p></div><div class="bottom"> </div></div>
    </div>
    <div class="hex-row">
      <div class="      hex"><div class="top"> </div><div class="middle"><p>                            </p></div><div class="bottom"> </div></div>
      <div class="      hex"><div class="top"> </div><div class="middle"><p>                            </p></div><div class="bottom"> </div></div>
      <div class="blue  hex"><div class="top"> </div><div class="middle"><p><xsl:value-of select="$d1"/></p></div><div class="bottom"> </div></div>
      <div class="red   hex"><div class="top"> </div><div class="middle"><p><xsl:value-of select="$e2"/></p></div><div class="bottom"> </div></div>
      <div class="red   hex"><div class="top"> </div><div class="middle"><p><xsl:value-of select="$f3"/></p></div><div class="bottom"> </div></div>
      <div class="red   hex"><div class="top"> </div><div class="middle"><p><xsl:value-of select="$g4"/></p></div><div class="bottom"> </div></div>
    </div>
  </div>
</xsl:template>

</xsl:stylesheet>
