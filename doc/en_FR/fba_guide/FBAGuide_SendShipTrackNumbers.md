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

Step 6 - Send shipment tracking numbers to Amazon
=================================================

<div class="body conbody">

When you use an Amazon-partnered carrier for an inbound shipment, the
carrier provides your shipment tracking numbers to Amazon as part of the
process. However, even if you are not using an Amazon-partnered carrier
for your inbound shipments, Amazon recommends that you send us the
shipment tracking numbers for your inbound shipment. Providing this
information helps Amazon process your inbound shipment at the <span
class="ph">Amazon fulfillment center</span> faster and more accurately.

**To send shipment tracking numbers to Amazon**

1.  Call the
    <a href="../fba_inbound/FBAInbound_PutTransportContent.md" class="xref">PutTransportContent</a>
    operation from the <span class="ph">Fulfillment Inbound Shipment API
    section</span>.

2.  Include your shipment tracking numbers using the <span
    class="keyword parmname">TrackingId</span> parameter. Example:

        &TransportDetails.NonPartneredSmallParcelData.PackageList.member.1.TrackingId=A135KKEKWF1J5666

<div class="section">

Getting the shipment status of non-Amazon-partnered Small Parcel shipments
--------------------------------------------------------------------------

After sending shipment tracking numbers for a non-Amazon-partnered <span
class="ph">Small Parcel</span> shipment to Amazon, you can get the
shipment status by calling the
<a href="../fba_inbound/FBAInbound_GetTransportContent.md" class="xref">GetTransportContent</a>
operation.

**To get the shipment status for your non-Amazon-partnered Small Parcel
shipment**

1.  Call the <span class="keyword apiname">PutTransportContent</span>
    operation. This provides your shipment tracking numbers to Amazon.
2.  Call the <span class="keyword apiname">GetTransportContent</span>
    operation. Amazon returns shipment status in the <span
    class="keyword parmname">PackageStatus</span> response element.

</div>

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="../fba_guide/FBAGuide_ShipInventoryToAFN.md" class="link">Shipping inventory to Amazon's fulfillment network</a>

</div>

<div class="previouslink">

**Previous topic:**
<a href="../fba_guide/FBAGuide_UseAmazonCarrierToShip.md" class="link">Step 5 - Use an Amazon-partnered carrier for your inbound shipments (optional)</a>

</div>

<div class="nextlink">

**Next topic:**
<a href="../fba_guide/FBAGuide_SubmitCartonContentsFeed.md" class="link">Step 7 - Submit carton content information</a>

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
