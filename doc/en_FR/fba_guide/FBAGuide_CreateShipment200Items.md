<div id="MWSDX_noscript">

JavaScript is currently disabled in your browser.  
To use the Amazon MWS documentation, you must enable JavaScript in your
browser.

</div>

<div id="MWSDX_divtop">

[![Amazon
Services](https://images-na.ssl-images-amazon.com/images/G/08/mwsportal/fr_FR/amazonservices.gif "Amazon Services")](http://services.amazon.fr)

<div id="MWSDX_search">

<span id="MWSDX_searchlbl">Search:</span>

</div>

  
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

<div id="FBAGuide_CreateShipment200Items.dita" class="nested0">

Creating an inbound shipment containing over 200 items
======================================================

<div class="body">

Amazon recommends that you specify no more than 200 items (as defined by
<span class="keyword parmname">SellerSKU</span>) when calling the <span
class="keyword apiname">CreateInboundShipmentPlan</span> operation. If
you need to create an inbound shipment that includes more than 200
items, you can do this by following these guidelines:

1.  Divide your items into batches, with each batch containing 200 items
    (<span class="keyword parmname">SellerSKU</span> values) or fewer.
2.  Call the <span
    class="keyword apiname">CreateInboundShipmentPlan</span> operation
    for the first batch of items. For each inbound shipment plan that is
    returned, create a separate inbound shipment by calling the <span
    class="keyword apiname">CreateInboundShipment</span> operation.
3.  Call the <span
    class="keyword apiname">CreateInboundShipmentPlan</span> operation
    for the second batch of items. If an inbound shipment plan is
    returned that matches an inbound shipment created in Step 2, (i.e.
    they have the same <span
    class="keyword parmname">DestinationFulfillmentCenterId</span> and
    <span class="keyword parmname">LabelPrepType</span> values), then
    add the items from that inbound shipment plan to the matching
    inbound shipment. Do this by calling the <span
    class="keyword apiname">UpdateInboundShipment</span> operation.
    Otherwise, create a new inbound shipment by calling the <span
    class="keyword apiname">CreateInboundShipment</span> operation.
4.  Call the <span
    class="keyword apiname">CreateInboundShipmentPlan</span> operation
    for each batch of items. Continue matching the returned inbound
    shipment plans with existing inbound shipments, adding items to
    existing inbound shipments (using the <span
    class="keyword apiname">UpdateInboundShipment</span> operation) when
    possible and creating new inbound shipments (using the <span
    class="keyword apiname">CreateInboundShipment</span> operation) when
    necessary.

The following is a hypothetical workflow that illustrates in detail how
to create an inbound shipment containing more than 200 items. In the
example below, the inbound shipment contains 500 items.

1.  Call the <span
    class="keyword apiname">CreateInboundShipmentPlan</span> operation
    for items 1 through 200.

    Suppose the following two inbound shipment plans are returned:

    -   Plan 1: 50 items, <span
        class="keyword parmname">ShipmentId</span> = FBAEX0001, <span
        class="keyword parmname">DestinationFulfillmentCenterId</span> =
        RNO1 <span class="keyword parmname">LabelPrepType</span> =
        `NO_LABEL`
    -   Plan 2: 150 items, <span
        class="keyword parmname">ShipmentId</span> = FBAEX0002, <span
        class="keyword parmname">DestinationFulfillmentCenterId</span> =
        PHX3, <span class="keyword parmname">LabelPrepType</span> =
        `NO_LABEL`

2.  Call the <span class="keyword apiname">CreateInboundShipment</span>
    operation twice to create the following two inbound shipments:
    -   Shipment FBAEX0001: 50 items
    -   Shipment FBAEX0002: 150 items

3.  Call the <span
    class="keyword apiname">CreateInboundShipmentPlan</span> operation
    for items 201 through 400.

    Suppose the following two inbound shipment plans are returned:

    -   Plan 3: 180 items, <span
        class="keyword parmname">ShipmentId</span> = FBAEX0003, <span
        class="keyword parmname">DestinationFulfillmentCenterId</span> =
        RNO1, <span class="keyword parmname">LabelPrepType</span> =
        `NO_LABEL`
    -   Plan 4: 20 items, <span
        class="keyword parmname">ShipmentId</span> = FBAEX0004, <span
        class="keyword parmname">DestinationFulfillmentCenterId</span> =
        RNO1, <span class="keyword parmname">LabelPrepType</span> =
        `SELLER_LABEL`

4.  Call the <span class="keyword apiname">UpdateInboundShipment</span>
    operation to add the 180 items from Plan 3 to shipment FBAEX0001, as
    Plan 3 and Plan 1 have identical <span
    class="keyword parmname">DestinationFulfillmentCenterId</span> and
    <span class="keyword parmname">LabelPrepType</span> values.

5.  Call the <span class="keyword apiname">CreateInboundShipment</span>
    operation to create a new shipment FBAEX0004 for the 20 items in
    Plan 4, as the <span
    class="keyword parmname">DestinationFulfillmentCenterId</span> and
    <span class="keyword parmname">LabelPrepType</span> values of Plan 4
    do not match those of any existing inbound shipments.

6.  Call the <span
    class="keyword apiname">CreateInboundShipmentPlan</span> operation
    for items 401 through 500.

    Suppose the following inbound shipment plan is returned:

    -   Plan 5: 100 items, <span
        class="keyword parmname">ShipmentId</span>: FBAEX0005, <span
        class="keyword parmname">DestinationFulfillmentCenterId</span>:
        PHX3, <span class="keyword parmname">LabelPrepType</span>:
        `NO_LABEL`

7.  Call the <span class="keyword apiname">UpdateInboundShipment</span>
    operation to add the 100 items from Plan 5 to shipment FBAEX0002, as
    Plan 5 and Plan 2 have identical <span
    class="keyword parmname">DestinationFulfillmentCenterId</span> and
    <span class="keyword parmname">LabelPrepType</span> values.

The following three inbound shipments have been created:

-   Shipment FBAEX0001: 50 + 180 items, <span
    class="keyword parmname">DestinationFulfillmentCenterId</span> =
    RNO1, <span class="keyword parmname">LabelPrepType</span> =
    `NO_LABEL`
-   Shipment FBAEX0002: 150 + 100 items, <span
    class="keyword parmname">DestinationFulfillmentCenterId</span> =
    PHX3, <span class="keyword parmname">LabelPrepType</span> =
    `NO_LABEL`
-   Shipment FBAEX0004: 20 items, <span
    class="keyword parmname">DestinationFulfillmentCenterId</span> =
    RNO1, <span class="keyword parmname">LabelPrepType</span> =
    `SELLER_LABEL`

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
