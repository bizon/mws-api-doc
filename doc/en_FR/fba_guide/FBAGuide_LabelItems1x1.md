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

<div id="FBAGuide_LabelItems1x1.dita" class="nested0">

**Labeling items one by one and including them in an inbound shipment**
=======================================================================

<div class="body">

If your workflow calls for you to label items one by one and add them to
one or more inbound shipments, you can do this by following the steps
below:

1.  Call the <span
    class="keyword apiname">CreateInboundShipmentPlan</span> operation
    for a single item—the item that you want to label and ship.

    If you have previously created a listing for this item, specify only
    the <span class="keyword parmname">SellerSKU</span> for the item.

    OR

    If you have not yet created a listing for this item, specify the
    <span class="keyword parmname">SellerSKU</span>, <span
    class="keyword parmname">ASIN</span>, and <span
    class="keyword parmname">Condition</span> for the item.

    <div class="note note">

    <span class="notetitle">Note:</span> For many items, it is difficult
    to know the <span class="keyword parmname">ASIN</span> before
    creating a listing for it. Specifying the wrong <span
    class="keyword parmname">ASIN</span> will lead to the wrong <span
    class="keyword parmname">FulfillmentNetworkSKU</span> being returned
    and subsequent problems receiving your shipment in <span
    class="ph">Amazon's fulfillment network</span>. For this reason,
    whenever possible you should create a listing for an item before
    calling the <span
    class="keyword apiname">CreateInboundShipmentPlan</span> operation
    for that item.

    </div>

    The response elements include <span
    class="keyword parmname">FulfillmentNetworkSKU</span>, <span
    class="keyword parmname">DestinationFulfillmentCenterId</span>, and
    <span class="keyword parmname">ShipmentId</span>.

2.  Use the <span class="keyword parmname">FulfillmentNetworkSKU</span>
    returned in Step 1 to create a label for your item, and then label
    the item.

3.  Check the <span
    class="keyword parmname">DestinationFulfillmentCenterId</span>
    returned in Step 1 to determine which <span class="ph">Amazon
    fulfillment center</span> to ship the item to.

4.  This step depends on whether an inbound shipment already exists for
    the item's destination.

    If this is the first item of a new inbound shipment, or if the <span
    class="keyword parmname">DestinationFulfillmentCenterId</span>
    returned in Step 1 indicates an <span class="ph">Amazon fulfillment
    center</span> that is different from any existing inbound shipment
    that you have in progress, do the following:

    -   Call the <span
        class="keyword apiname">CreateInboundShipment</span> operation
        to initiate a new inbound shipment, using the <span
        class="keyword parmname">ShipmentId</span> that was returned in
        Step 1.

    OR

    If you are adding this item to an existing inbound shipment, do the
    following:

    -   Identify the <span class="keyword parmname">ShipmentId</span> of
        an existing inbound shipment that has the same <span
        class="keyword parmname">DestinationFulfillmentCenterId</span>
        as the <span
        class="keyword parmname">DestinationFulfillmentCenterId</span>
        returned by the <span
        class="keyword parmname">CreateInboundShipmentPlan</span>
        operation in Step 1.
    -   Call the <span
        class="keyword apiname">UpdateInboundShipment</span> operation
        using the <span class="keyword parmname">ShipmentId</span>
        identified in the preceding bullet, as well as the <span
        class="keyword parmname">SellerSKU</span> and <span
        class="keyword parmname">QuantityShipped</span> values for the
        item.

For more information, see
<a href="../fba_inbound/FBAInbound_Overview.md" class="xref">Fulfillment Inbound Shipment API</a>.

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="../fba_guide/FBAGuide_CommonTasks.md" class="link">Common tasks</a>

</div>

</div>

</div>

</div>

<div id="MWSDX_footer">

Copyright © 2009-2019 Amazon.com, Inc. or its affiliates. Amazon and
Amazon.com are registered trademarks of Amazon.com, Inc. or its
affiliates. All other trademarks are the property of their respective
owners.

</div>

</div>

</div>

<div style="clear: both;">

</div>

</div>
