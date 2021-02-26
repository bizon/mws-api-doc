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

Step 2 - Create an inbound shipment plan
========================================

<div class="body conbody">

Create an inbound shipment plan by calling the <span
class="keyword apiname">CreateInboundShipmentPlan</span> operation of
the Inbound Shipment API section. An inbound shipment plan groups into
discrete shipments the items that you want to send to <span
class="ph">Amazon's fulfillment network</span>. For example, products
that you prep yourself must be sent in a separate shipment from products
that are prepped using the FBA Prep Service. Items that require special
handling at an <span class="ph">Amazon fulfillment center</span> because
of their size might need to be sent to a different fulfillment center
than items that don't require special handling. By calling the <span
class="keyword apiname">CreateInboundShipmentPlan</span> operation, you
provide Amazon with key information about the items that you want to
send. Amazon uses this information to create a shipment plan for your
items, which is returned after Amazon receives the <span
class="keyword apiname">CreateInboundShipmentPlan</span> operation. You
use the shipment plan to group and send your items to the appropriate
<span class="ph">Amazon fulfillment center</span>s.

<div class="note note">

<span class="notetitle">Note:</span> <span class="ph">Amazon recommends
that you create listings for all of the items that you want to include
in an inbound shipment plan before calling the <span
class="keyword apiname">CreateInboundShipmentPlan</span> operation.
After you have created listings for the items that you want to include
in the <span class="keyword apiname">CreateInboundShipmentPlan</span>
operation, include only the <span
class="keyword parmname">SellerSKU</span> and <span
class="keyword parmname">Quantity</span> request parameters when calling
the operation. Do not include the <span
class="keyword parmname">ASIN</span> or <span
class="keyword parmname">Condition</span> request parameters.</span>

</div>

<div class="section">

Label preparation preferences
-----------------------------

A key input parameter that you include with the <span
class="keyword apiname">CreateInboundShipmentPlan</span> operation is
<span class="keyword parmname">LabelPrepPreference</span>. This
parameter indicates your preference for label preparation for the items
you are sending to <span class="ph">Amazon's fulfillment network</span>.
The following are valid <span
class="keyword parmname">LabelPrepPreference</span> values:

-   `SELLER_LABEL` - Indicates that for items that require item labels
    (items that are not stickerless, commingled inventory) you will
    label each item yourself.
-   `AMAZON_LABEL_ONLY` - Amazon attempts to label the items in the
    inbound shipment when labels are required. If Amazon determines that
    it does not have the information required to successfully label an
    item, that item is not included in the inbound shipment plan.
-   `AMAZON_LABEL_PREFERRED` - Amazon attempts to label the items in the
    inbound shipment when labels are required. If Amazon determines that
    it does not have the information required to successfully label an
    item, that item is included in the inbound shipment plan and the
    seller must label it.

<div class="note note">

<span class="notetitle">Note:</span> Unless you are enrolled in the FBA
Label Service, `SELLER_LABEL` is the only valid <span
class="keyword parmname">LabelPrepPreference</span> value. For more
information about the FBA Label Service, see the Seller Central Help for
your marketplace.

</div>

Amazon returns the <span class="keyword parmname">LabelPrepType</span>
response element for each shipment in your shipment plan, which
indicates the labeling requirements for the items in each shipment. The
following are valid <span class="keyword parmname">LabelPrepType</span>
values:

-   `NO_LABEL` - No item labeling is required for this inbound shipment
    because the items are stickerless, commingled inventory. This value
    cannot be returned unless your <span class="ph">Fulfillment by
    Amazon (FBA)</span> account has been configured by Amazon for
    stickerless, commingled inventory. For more information about
    stickerless, commingled inventory and how to configure your FBA
    account for it, see the Amazon Seller Central Help for your
    marketplace.
-   `SELLER_LABEL` - Items in this inbound shipment must be labeled by
    the seller before sending the shipment to <span class="ph">Amazon's
    fulfillment network</span>.
-   `AMAZON_LABEL` - Label preparation by Amazon is required for this
    inbound shipment.

<div class="note note">

<span class="notetitle">Note:</span> `AMAZON_LABEL` is available only if
you are enrolled in the FBA Label Service. For more information about
the FBA Label Service, see the Seller Central Help for your marketplace.

</div>

For more information, see
<a href="../fba_inbound/FBAInbound_CreateInboundShipmentPlan.md" class="xref">CreateInboundShipmentPlan</a>.

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
<a href="../fba_guide/FBAGuide_CreateListing.md" class="link">Step 1 - Create a listing and convert it to FBA</a>

</div>

<div class="nextlink">

**Next topic:**
<a href="../fba_guide/FBAGuide_PrepareItems.md" class="link">Step 3 - Prepare the items for shipping</a>

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
