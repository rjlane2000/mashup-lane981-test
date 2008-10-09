<gm:page title="Mashup">

  <div style="float: left; width: 50%">
    <gm:list id="CAParks" data="http://www.mapnut.com/calstatepark.xml" pagesize="25"/>
  </div>

  <div style="float: left; width: 50%">

    <gm:map id="CAParkMarkers" data="${CAParks}" latref="geo:lat" lngref="geo:long">
      <gm:handleEvent src="CAParks"/>
    </gm:map>

  </div>
  <table width="100%">
    <tr>
      <td style="padding-right:10px; width:250px" valign="top">
        <gm:list id="myList" data="http://www.mapnut.com/calstatepark.xml"
            pagesize="10" template="myListTemplate">
          <gm:handleEvent event="select" src="myMap"/>
        </gm:list>
      </td>
      <td valign="top">
        <gm:map id="myMap" style="border:solid black 1px" control="large"
            maptypes="true" data="${myList}" latref="geo:lat" lngref="geo:long"
            infotemplate="myMapDetailsTemplate">
          <gm:handleEvent event="select" src="myList"/>
        </gm:map>
      </td>
    </tr>    
  </table>

  <gm:template id="myListTemplate">
    <table class="blue-theme" style="width:250px">
      <tr repeat="true">
        <td><gm:text ref="atom:title"/></td>
      </tr>
      <tfoot>
        <tr>
          <td align="center"><gm:pager compact="true"/></td>
        </tr>
      </tfoot>
    </table>
  </gm:template>

  <gm:template id="myMapDetailsTemplate">
    <div repeat="true">
      <b><gm:text ref="atom:title"/></b><br/>
      Lat: <gm:text ref="geo:lat"/><br/>
      Long: <gm:text ref="geo:long"/>
    </div>
  </gm:template>


</gm:page>
