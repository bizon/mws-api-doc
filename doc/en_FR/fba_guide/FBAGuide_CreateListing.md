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

Step 1 - Create a listing and convert it to FBA
===============================================

<div class="body conbody">

<div class="section">

<span class="ph">If a product already exists in the Amazon catalog,
creating a listing can be as simple as associating a unique
seller-defined SKU with the unique Amazon-defined ASIN (Amazon Standard
Item Number) for the product. If a product does not yet exist in the
Amazon catalog, creating a listing requires providing descriptive
information about the product so Amazon can build a record and assign an
ASIN to the product. You can create listings by submitting feeds using
the <span class="ph">Feeds API section</span>.</span> See the following
guidance for using XML or flat file feeds to create a listing and
convert it to <span class="ph">Fulfillment by Amazon (FBA)</span>.

<div class="note important">

<span class="importanttitle">Important:</span> Before you can convert a
listing to <span class="ph">FBA</span> you need to provide additional
information on any products that are batteries, contain or are sold with
batteries, or may be considered dangerous goods. Any attempt to convert
a listing to <span class="ph">FBA</span> without providing battery and
dangerous goods information will fail. See
<a href="FBAGuide_ProvideBatteryAndDgInfo.md#FBAGuide_ProvideBatteryAndDgInfo" class="xref">Provide battery and dangerous goods information</a>.

</div>

</div>

<div class="section">

Using XML feeds
---------------

You can create a listing and convert it to <span class="ph">FBA</span>
by submitting XML feeds using the <span class="ph">Feeds API
section</span>. See
<a href="../feeds/Feeds_Overview.md" class="xref">What you should know about the Amazon MWS Feeds API section</a>.

**To create a listing and convert it to <span class="ph">FBA</span>**

1.  Submit the Product Feed (\_POST\_PRODUCT\_DATA\_).

    **If the product is in Amazon's catalog**, the feed should include:

    -   The <span class="keyword parmname">SKU</span> element,
        containing to the seller's unique SKU for the product.
    -   The <span class="keyword parmname">StandardProductID</span>
        element, containing values that uniquely identify the product in
        Amazon's catalog.
    -   Battery and dangerous goods information, according to the
        guidance in
        <a href="https://images-na.ssl-images-amazon.com/images/G/01/rainier/help/xsd/release_4_1/MWSDangerousGoodsAttributesConditionalRequirementsOct182017.pdf" class="xref">Requirements for MWS Integrators (PDF)</a>.

    OR

    **If the product is not yet in Amazon's catalog**, the feed should
    include:

    -   Elements that describe the product, according to the guidance in
        the "Manage Listings with XML" section of
        <a href="https://images-na.ssl-images-amazon.com/images/G/01/rainier/help/XML_Documentation_Intl._V324496426_.pdf" class="xref">Selling on Amazon Guide to XML</a>.
    -   Battery and dangerous goods information, according to the
        guidance in
        <a href="https://images-na.ssl-images-amazon.com/images/G/01/rainier/help/xsd/release_4_1/MWSDangerousGoodsAttributesConditionalRequirementsOct182017.pdf" class="xref">Requirements for MWS Integrators (PDF)</a>.

2.  Submit the Inventory Feed (\_POST\_INVENTORY\_AVAILABILITY\_DATA\_).
    The feed should include:
    -   The <span class="keyword parmname">FulfillmentCenterID</span>
        element, set to `AMAZON_NA`, `AMAZON_EU`, `AMAZON_IN`, or
        `AMAZON_JP`, depending on the seller's marketplace.
    -   The <span class="keyword parmname">Lookup</span> element, set to
        `FulfillmentNetwork`.
    -   The <span class="keyword parmname">SwitchFulfillmentTo</span>
        element, set to `AFN`.

For more information about feed types, see
<a href="../feeds/Feeds_FeedType.md" class="xref">FeedType enumeration</a>.

</div>

<div class="section">

Using flat file feeds
---------------------

You can create a listing and convert it to <span class="ph">FBA</span>
by submitting flat file feeds using the <span class="ph">Feeds API
section</span>. See
<a href="../feeds/Feeds_Overview.md" class="xref">What you should know about the Amazon MWS Feeds API section</a>.

**To create a listing and convert it to <span class="ph">FBA</span> (if
the product is in Amazon's catalog)**

1.  Submit the Flat File Inventory Loader Feed
    (\_POST\_FLAT\_FILE\_INVLOADER\_DATA\_). Alternatively, you can
    submit the Flat File Listings Loader Feed
    (\_POST\_FLAT\_FILE\_LISTINGS\_DATA\_). The feed should include:
    -   The <span class="keyword parmname">sku</span> field, containing
        the seller's unique SKU for the product.
    -   The <span class="keyword parmname">product-id</span> and <span
        class="keyword parmname">product-id-type</span> fields,
        containing values that uniquely identify the product in Amazon's
        catalog.
    -   The <span class="keyword parmname">fulfillment-center-id</span>
        field, set to `AMAZON_NA`, `AMAZON_EU`, `AMAZON_IN`, or
        `AMAZON_JP`, depending on the seller's marketplace.
    -   Battery and dangerous goods information, according to the
        guidance in
        <a href="https://images-na.ssl-images-amazon.com/images/G/01/rainier/help/xsd/release_4_1/MWSDangerousGoodsAttributesConditionalRequirementsOct182017.pdf" class="xref">Requirements for MWS Integrators (PDF)</a>

**To create a listing and convert it to <span class="ph">FBA</span> (if
the product is not yet in Amazon's catalog)**

1.  Submit an Inventory File Template. See the <span
    class="ph uicontrol">Download an Inventory File</span> tab of the
    <a href="https://sellercentral-europe.amazon.com/listing/download" class="xref">Add Products via Upload</a>
    page of Seller Central.
    -   Set the field values according to the instructions in the
        Inventory File Template.
2.  Submit the Flat File Inventory Loader Feed
    (\_POST\_FLAT\_FILE\_INVLOADER\_DATA\_). Alternatively, you can
    submit the Flat File Listings Loader Feed
    (\_POST\_FLAT\_FILE\_LISTINGS\_DATA\_). The feed should include:
    -   The <span class="keyword parmname">fulfillment-center-id</span>
        field, set to `AMAZON_NA`, `AMAZON_EU`, `AMAZON_IN`, or
        `AMAZON_JP`, depending on the seller's marketplace.
    -   Battery and dangerous goods information, according to the
        guidance in
        <a href="https://images-na.ssl-images-amazon.com/images/G/01/rainier/help/xsd/release_4_1/MWSDangerousGoodsAttributesConditionalRequirementsOct182017.pdf" class="xref">Requirements for MWS Integrators (PDF)</a>

For more information about feed types, see
<a href="../feeds/Feeds_FeedType.md" class="xref">FeedType enumeration</a>.

</div>

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="../fba_guide/FBAGuide_ShipInventoryToAFN.md" class="link">Shipping inventory to Amazon's fulfillment network</a>

</div>

<div class="nextlink">

**Next topic:**
<a href="../fba_guide/FBAGuide_CreateInShipPlan.md" class="link">Step 2 - Create an inbound shipment plan</a>

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
