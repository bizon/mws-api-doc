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

<div id="FBAGuide_UsingAmazonCarrierToShip" class="nested0">

Using an Amazon-partnered carrier for your inbound shipments
============================================================

<div class="body">

Sellers in the EU region (the France, Germany, Italy, Spain, and UK
marketplaces) and the US marketplace can take advantage of discounted
shipping rates by using an Amazon-partnered carrier for their inbound
shipments.

<div class="note important">

<span class="importanttitle">Important:</span>

-   Before using an Amazon-partnered carrier for an inbound shipment,
    you must read the Seller Central Help about Amazon's Partnered
    Carrier Program to help ensure that you successfully follow the
    program instructions and guidelines
    (<a href="https://sellercentral.amazon.co.uk/gp/help/201119120" class="xref">Europe</a>)
    (<a href="https://sellercentral.amazon.com/gp/help/201119120" class="xref">US</a>).
-   In the EU region, before using an Amazon-partnered carrier for an
    inbound shipment, you must first review and accept the terms and
    conditions of the carrier and the terms and conditions of Amazon's
    Partnered Carrier Program. You can do this on
    <a href="https://sellercentral.amazon.co.uk/gp/help/201119120" class="xref">Seller Central</a>.
    If you attempt to use <span class="ph">Amazon Marketplace Web
    Service (Amazon MWS)</span> to create an inbound shipment using an
    Amazon-partnered carrier before accepting these terms and
    conditions, the service returns an error.

</div>

To use an Amazon-partnered carrier for an inbound shipment, begin by
following the first four steps of the
<a href="FBAGuide_ShipInventoryToAFN.md" class="xref">Shipping inventory to Amazon's fulfillment network</a>
section. After you create an inbound shipment you can request that your
shipment be shipped by an Amazon-partnered carrier.

See the following steps for creating and shipping an inbound shipment
using an Amazon-partnered carrier:

<a href="#SubmitCartonContentsFeed" class="xref">Step 1 - Submit carton content information</a>

<a href="#SendTransportInfo" class="xref">Step 2 - Submit the transportation information</a>

<a href="#RequestEstimate" class="xref">Step 3 - Request that an estimate is generated for the shipping costs</a>

<a href="#GetEstimate" class="xref">Step 4 - Get an estimate for the shipping cost</a>

<a href="#ConfirmRequrest" class="xref">Step 5 - Confirm the transportation request</a>

<a href="#RequestTransportDocs" class="xref">Step 6 - Request package labels for your inbound shipment</a>

<a href="#RequestPalletLabelsOrBOL" class="xref">Step 7 - Request pallet labels or bills of lading (LTL/FTL only)</a>

<a href="#SendShipmentToAFN" class="xref">Step 8 - Send your shipments to Amazon's fulfillment network</a>

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="../fba_guide/FBAGuide_CommonTasks.md" class="link">Common tasks</a>

</div>

</div>

</div>

<div id="SubmitCartonContentsFeed" class="topic concept nested1">

Step 1 - Submit carton content information
------------------------------------------

<div class="body conbody">

Submit carton content information using the FBA Inbound Shipment Carton
Information Feed (\_POST\_FBA\_INBOUND\_CARTON\_CONTENTS\_) of the Feeds
API section. For more information about this feed, see
<a href="../feeds/Feeds_FeedType.md#FeedType_Enumeration__FBAFeeds" class="xref">Fulfillment by Amazon (FBA) feeds</a>.

<div class="note important">

<span class="importanttitle">Important:</span>

-   Retain the <span class="keyword parmname">CartonId</span> values
    that you specify using this feed, as you will need them to specify
    which package labels to print in
    <a href="#RequestTransportDocs" class="xref">Step 6</a>. Also,
    retain a record of the correspondence between each package and its
    <span class="keyword parmname">CartonId</span> value. This is so
    that after you get your labels in Step 6, you will know which
    packages to put them on.

</div>

</div>

</div>

<div id="SendTransportInfo" class="topic concept nested1">

Step 2 - Submit the transportation information
----------------------------------------------

<div class="body conbody">

Call the <span class="keyword apiname">PutTransportContent</span>
operation and specify either <span
class="keyword parmname">PartneredSmallParcelData</span> or <span
class="keyword parmname">PartneredLtlData</span>, depending on whether
your inbound shipment is a <span class="ph">Small Parcel</span> or a
<span class="ph">Less Than Truckload/Full Truckload (LTL/FTL)</span>
shipment. This provides the information that an Amazon-partnered carrier
needs to provide an estimate for shipping costs. It also provides
information that an <span class="ph">Amazon fulfillment center</span>
can use to forecast and plan for the arrival of your shipment.

</div>

</div>

<div id="RequestEstimate" class="topic concept nested1">

Step 3 - Request that an estimate is generated for the shipping costs
---------------------------------------------------------------------

<div class="body conbody">

Call the <span class="keyword apiname">EstimateTransportRequest</span>
operation to request that an estimate be generated for an
Amazon-partnered carrier to ship your inbound shipment.

</div>

</div>

<div id="GetEstimate" class="topic concept nested1">

Step 4 - Get an estimate for the shipping cost
----------------------------------------------

<div class="body conbody">

Call the <span class="keyword apiname">GetTransportContent</span>
operation to get an estimate for the cost to ship your shipment with an
Amazon-partnered carrier. The estimate is returned in the <span
class="keyword parmname">PartneredEstimate</span> response element. Note
that the estimate will not be returned until the <span
class="keyword parmname">TransportStatus</span> value of the inbound
shipment is `ESTIMATED`, `CONFIRMING`, or `CONFIRMED`. Because the <span
class="keyword apiname">GetTransportContent</span> operation returns
<span class="keyword parmname">TransportStatus</span> values, you can
use this operation to monitor the progress of your inbound shipment. If
a <span class="keyword parmname">PartneredEstimate</span> value is not
yet available, retry the operation later.

</div>

</div>

<div id="ConfirmRequrest" class="topic concept nested1">

Step 5 - Confirm the transportation request
-------------------------------------------

<div class="body conbody">

Call the <span class="keyword apiname">ConfirmTransportRequest</span>
operation to accept the Amazon-partnered shipping estimate, agree to
allow Amazon to charge your account for the shipping cost, and request
that the Amazon-partnered carrier ship your inbound shipment.

<div class="note important">

<span class="importanttitle">Important:</span> After confirming the
transportation request, if you decide that you do not want the
Amazon-partnered carrier to ship your inbound shipment, you can call the
<span class="keyword apiname">VoidTransportRequest</span> operation to
cancel the transportation request. Note that for a <span
class="ph">Small Parcel</span> shipment, you have 24 hours after
confirming a transportation request to void it. For a <span
class="ph">Less Than Truckload/Full Truckload (LTL/FTL)</span> shipment,
you have one hour after confirming a transportation request to void it.
After the grace period has expired your account will be charged for the
shipping cost.

</div>

</div>

</div>

<div id="RequestTransportDocs" class="topic concept nested1">

Step 6 - Request package labels for your inbound shipment
---------------------------------------------------------

<div class="body conbody">

Call the
<a href="../fba_inbound/FBAInbound_GetUniquePackageLabels.md" class="xref">GetUniquePackageLabels</a>
operation to request unique shipping labels for your inbound shipments.
For Amazon-partnered, <span class="ph">Small Parcel</span> shipments,
this operation also returns carrier labels.

<div class="note important">

<span class="importanttitle">Important:</span> Before calling the <span
class="keyword apiname">GetUniquePackageLabels</span> operation, use the
<a href="../feeds/Feeds_Overview.md" class="xref">Feeds API section</a>
to submit the FBA Inbound Shipment Carton Information Feed (see
<a href="#SubmitCartonContentsFeed" class="xref">Step 1</a>). This
provides information to Amazon about the carton contents of your inbound
shipment, which helps to ensure that your shipment is processed at the
<span class="ph">Amazon fulfillment center</span> quickly and
accurately. You must submit this feed before calling the <span
class="keyword apiname">GetUniquePackageLabels</span> operation,
otherwise the operation returns the <span
class="keyword parmname">NoPackageContentInformation</span> error.

</div>

Each shipping label returned by the <span
class="keyword apiname">GetUniquePackageLabels</span> operation should
be affixed to the package in the shipment that it corresponds to, so the
labels indicate the package contents. This helps to ensure that your
shipment is processed at the Amazon fulfillment center quickly and
accurately.

To get shipping labels on the right packages, do the following for each
shipping label:

1.  Get the Package ID, which is the string located directly below the
    bar code of the shipping label. This ID matches one of the <span
    class="keyword parmname">CartonId</span> values that you included in
    the FBA Inbound Shipment Carton Information Feed that you submitted
    in <a href="#SubmitCartonContentsFeed" class="xref">Step 1</a>.
2.  Determine which package to affix the shipping label to using the
    record of the correspondence between <span
    class="keyword parmname">CartonId</span> values and packages that
    you created in
    <a href="#SubmitCartonContentsFeed" class="xref">Step 1</a>.
3.  Affix the label to its corresponding package.

<div class="section">

### Information included on shipping labels

In all circumstances, the <span
class="keyword apiname">GetUniquePackageLabels</span> operation returns
shipping labels that include a unique bar code and Package ID (the
string located directly below the bar code). Depending on the contents
of the packages in your shipments, the labels can also include an ASIN
and an expiration date.

Shipping labels include an ASIN and an expiration date in either of the
following situations:

-   Every item in the shipment shares the same ASIN and expiration date.
-   The shipment includes multiple ASINs, but every package in the
    shipment contains items that share the same ASIN and expiration
    date.

Shipping labels include an ASIN and no expiration date in either of the
following situations:

-   Every item in the shipment shares the same ASIN. The ASIN does not
    have an expiration date.
-   The shipment includes multiple ASINs, but every package in the
    shipment contains items that share the same ASIN. The ASINs do not
    have expiration dates.

Shipping labels do not include an ASIN or an expiration date when the
shipment contains at least one package with items that do not share the
same ASIN and expiration date.

</div>

</div>

</div>

<div id="RequestPalletLabelsOrBOL" class="topic concept nested1">

Step 7 - Request pallet labels or bills of lading (LTL/FTL only)
----------------------------------------------------------------

<div class="body conbody">

For <span class="ph">Less Than Truckload/Full Truckload (LTL/FTL)</span>
shipments, if you don’t create your own pallet labels or bills of
lading, you can use the following operations:

-   <a href="../fba_inbound/FBAInbound_GetPalletLabels.md" class="xref">GetPalletLabels</a> -
    Returns labels for the outside of the shrink-wrapped pallets of your
    inbound shipment.
-   <a href="../fba_inbound/FBAInbound_GetBillOfLading.md" class="xref">GetBillOfLading</a> -
    Returns a bill of lading for your inbound shipment.

</div>

</div>

<div id="SendShipmentToAFN" class="topic concept nested1">

Step 8 - Send your shipments to <span class="ph">Amazon's fulfillment network</span>
------------------------------------------------------------------------------------

<div class="body conbody">

Do one of the following:

-   **For <span class="ph">Small Parcel</span>l shipments.** Go to
    <a href="FBAGuide_SendShipmentsToAFN.md#ShipItems" class="xref">Step 10 - Send your shipments to Amazon's fulfillment network</a>
    of "Shipping inventory to <span class="ph">Amazon's fulfillment
    network</span>."
-   **For <span class="ph">Less Than Truckload/Full Truckload
    (LTL/FTL)</span> shipments.** Follow the instructions in the
    <a href="https://sellercentral.amazon.com/gp/help/201119120" class="xref">Seller Central Help</a>
    for an LTL/FTL shipment using an Amazon-partnered carrier.

For more information, see
<a href="../fba_inbound/FBAInbound_Overview.md" class="xref">Fulfillment Inbound Shipment API</a>.

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
