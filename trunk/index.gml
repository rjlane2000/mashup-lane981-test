<gm:page title="Mashup">

  <div style="float: left; width: 50%">
    <gm:list id="CAParks" data="http://www.mapnut.com/calstatepark.xml" pagesize="25"/>
  </div>

  <div style="float: left; width: 50%">

    <gm:map id="CAParkMarkers" data="${CAParks}" latref="geo:lat" lngref="geo:long">
      <gm:handleEvent src="CAParks"/>
    </gm:map>

  </div>

</gm:page>
