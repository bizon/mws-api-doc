<div id="MWSDX_noscript">

JavaScript is currently disabled in your browser.  
To use the Amazon MWS documentation, you must enable JavaScript in your
browser.

</div>

<div id="MWSDX_divtop">

[![Amazon
Services](https://images-na.ssl-images-amazon.com/images/G/08/mwsportal/fr_FR/amazonservices.gif "Amazon Services")](http://services.amazon.fr)  
<span id="MWSDX_titlebar">[Amazon Marketplace Web Service (Amazon MWS)
Documentation](https://developer.amazonservices.fr/gp/mws/docs.html)</span>

</div>

<div id="MWSDX_divbottom">

<div id="MWSDX_divleft">

<div id="MWSDX_toc">

</div>

</div>

<div id="MWSDX_divright">

<div id="MWSDX_content">

<span id="MWSDX_breadcrumbs">[Amazon MWS
Documentation](https://developer.amazonservices.fr/gp/mws/docs.html)</span>

Step 11 - Mark your shipments as shipped
========================================

<div class="body conbody">

After sending a shipment to <span class="ph">Amazon's fulfillment
network</span>, you should call the <span
class="keyword apiname">UpdateInboundShipment</span> operation of the
Inbound Shipment API section. Include the <span
class="keyword parmname">ShipmentId</span> that you used when you called
the <span class="keyword apiname">CreateInboundShipment</span> operation
for that shipment. Also include the <span
class="keyword parmname">ShipmentStatus</span> request parameter with
its value set to `SHIPPED`. For more information about the Inbound
Shipment API section, see
<a href="../fba_inbound/FBAInbound_Overview.md" class="xref">Fulfillment Inbound Shipment API</a>.
For code samples for calling the <span
class="keyword apiname">UpdateInboundShipment</span> operation, see the
Client Library links on the <span class="ph">Amazon Marketplace Web
Service (Amazon MWS)</span> portal for your region.

For more information, see
<a href="../fba_inbound/FBAInbound_Overview.md" class="xref">Fulfillment Inbound Shipment API</a>.

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="../fba_guide/FBAGuide_ShipInventoryToAFN.md" class="link">Shipping inventory to Amazon's fulfillment network</a>

</div>

<div class="previouslink">

**Previous topic:**
<a href="../fba_guide/FBAGuide_SendShipmentsToAFN.md" class="link">Step 10 - Send your shipments to Amazon's fulfillment network</a>

</div>

</div>

</div>

<div id="MWSDX_footer">

Copyright © 2009-2020 Amazon.com, Inc. or its affiliates. Amazon and
Amazon.com are registered trademarks of Amazon.com, Inc. or its
affiliates. All other trademarks are the property of their respective
owners.

</div>

</div>

</div>

<div style="clear: both;">

</div>

</div>
