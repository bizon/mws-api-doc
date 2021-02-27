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

<div id="Feeds_FeedType" class="nested0">

FeedType enumeration
====================

<div class="body">

Enumerates all the feed types that are available through the <span
class="ph">Feeds API</span> section.

</div>

<div id="Description" class="topic concept nested1">

Description
-----------

<div class="body conbody">

The <span class="keyword apiname">FeedType</span> enumeration includes
all the feed types that you can submit using the operations in <span
class="ph">Amazon MWS</span> <span class="ph">Feeds API</span> section.

</div>

</div>

<div id="FeedType_Enumeration" class="topic reference nested1">

FeedType enumeration
--------------------

<div class="body refbody">

<div class="section">

The following feed categories are supported:

-   <a href="#FeedType_Enumeration__ProductInventoryFeeds" class="xref">Product and inventory feeds</a>
-   <a href="#FeedType_Enumeration__OrderFeeds" class="xref">Order feeds</a>
-   <a href="#FeedType_Enumeration__FBAFeeds" class="xref">Fulfillment by Amazon (FBA) feeds</a>
-   <a href="#FeedType_Enumeration__BusinessFeeds" class="xref">Business feed</a>
-   <a href="#FeedType_Enumeration__EasyShipFeed" class="xref">Easy Ship feed</a>

</div>

<div id="FeedType_Enumeration__ProductInventoryFeeds" class="section">

### Product and inventory feeds

Each feed listed below includes a link to the appropriate XSD or Excel
template file. You can also see
<a href="https://sellercentral-europe.amazon.com/gp/help/1611" class="xref">XSDs</a>
for product category XSDs, and
<a href="https://sellercentral-europe.amazon.com/gp/help/1641" class="xref">Inventory File Templates</a>
for inventory and product category Excel templates.

<div class="tablenoborder">

<table id="FeedType_Enumeration__feeds_list" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>File</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><span class="keyword parmname">Product Feed</span>
<p>Enumeration value: <samp class="ph codeph">_POST_PRODUCT_DATA_</samp></p></td>
<td><a href="https://images-na.ssl-images-amazon.com/images/G/01/rainier/help/xsd/release_4_1/Product.xsd" class="xref">Product.xsd</a>
<p>More information: <a href="https://sellercentral-europe.amazon.com/gp/help/1611" class="xref">XSDs</a></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Inventory Feed</span>
<p>Enumeration value: <samp class="ph codeph">_POST_INVENTORY_AVAILABILITY_DATA_</samp></p></td>
<td><a href="https://images-na.ssl-images-amazon.com/images/G/01/rainier/help/xsd/release_4_1/Inventory.xsd" class="xref">Inventory.xsd</a>
<p>More information: <a href="https://sellercentral-europe.amazon.com/gp/help/1611" class="xref">XSDs</a></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">Overrides Feed</span>
<p>Enumeration value: <samp class="ph codeph">_POST_PRODUCT_OVERRIDES_DATA_</samp></p></td>
<td><a href="https://images-na.ssl-images-amazon.com/images/G/01/rainier/help/xsd/release_4_1/Override.xsd" class="xref">Override.xsd</a>
<p>More information: <a href="https://sellercentral-europe.amazon.com/gp/help/1611" class="xref">XSDs</a></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Pricing Feed</span>
<p>Enumeration value: <samp class="ph codeph">_POST_PRODUCT_PRICING_DATA_</samp></p></td>
<td><a href="https://images-na.ssl-images-amazon.com/images/G/01/rainier/help/xsd/release_4_1/Price.xsd" class="xref">Price.xsd</a>
<p>More information: <a href="https://sellercentral-europe.amazon.com/gp/help/1611" class="xref">XSDs</a></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">Product Images Feed</span>
<p>Enumeration value: <samp class="ph codeph">_POST_PRODUCT_IMAGE_DATA_</samp></p></td>
<td><a href="https://images-na.ssl-images-amazon.com/images/G/01/rainier/help/xsd/release_4_1/ProductImage.xsd" class="xref">ProductImage.xsd</a>
<p>More information: <a href="https://sellercentral-europe.amazon.com/gp/help/1611" class="xref">XSDs</a></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Relationships Feed</span>
<p>Enumeration value: <samp class="ph codeph">_POST_PRODUCT_RELATIONSHIP_DATA_</samp></p></td>
<td><a href="https://images-na.ssl-images-amazon.com/images/G/01/rainier/help/xsd/release_4_1/Relationship.xsd" class="xref">Relationship.xsd</a>
<p>More information: <a href="https://sellercentral-europe.amazon.com/gp/help/1611" class="xref">XSDs</a></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">Flat File Inventory Loader Feed</span>
<p>Enumeration value: <samp class="ph codeph">_POST_FLAT_FILE_INVLOADER_DATA_</samp></p></td>
<td><a href="https://s3.amazonaws.com/seller-templates/ff/eu/fr/Flat.File.InventoryLoader.fr.xls" class="xref">Flat.File.InventoryLoader.fr.xls</a>- For creating or updating listings for products already in Amazon's catalog.
<p>More information: <a href="https://sellercentral-europe.amazon.com/gp/help/200385480" class="xref">Inventory Loader Instructions</a></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Flat File Listings Feed</span>
<p>Enumeration value: <samp class="ph codeph">_POST_FLAT_FILE_LISTINGS_DATA_</samp></p></td>
<td>To create a listing for a product not yet in the Amazon catalog, use the corresponding category template file in <a href="https://sellercentral-europe.amazon.com/gp/help/1641" class="xref">Inventory File Templates</a>
<p>You can also create and update listings for products already in Amazon's catalog using <a href="https://s3.amazonaws.com/seller-templates/ff/eu/fr/Flat.File.Listingloader.fr.xls" class="xref">Flat.File.Listingloader.fr.xls</a>.</p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">Flat File Book Loader Feed</span>
<p>Enumeration value: <samp class="ph codeph">_POST_FLAT_FILE_BOOKLOADER_DATA_</samp></p></td>
<td><a href="https://s3.amazonaws.com/seller-templates/ff/eu/fr/Flat.File.BookLoader.fr.xls" class="xref">Flat.File.BookLoader.fr.xls</a>
<p>More information: <a href="https://sellercentral-europe.amazon.com/gp/help/200385470" class="xref">Standard Book Loader Instructions</a></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Flat File Music Loader Feed</span>
<p>Enumeration value: <samp class="ph codeph">_POST_FLAT_FILE_CONVERGENCE_LISTINGS_DATA_</samp></p></td>
<td><a href="https://s3.amazonaws.com/seller-templates/ff/eu/fr/Flat.File.Music.fr.xls" class="xref">Flat.File.Music.fr.xls</a>
<p>More information: <a href="https://sellercentral-europe.amazon.com/gp/help/200409990" class="xref">Music Loader Instructions</a></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">Flat File Video Loader Feed</span>
<p>Enumeration value: <samp class="ph codeph">_POST_FLAT_FILE_LISTINGS_DATA_</samp></p></td>
<td><a href="https://s3.amazonaws.com/seller-templates/ff/eu/fr/Flat.File.Video.fr.xls" class="xref">Flat.File.Video.fr.xls</a>
<p>More information: <a href="https://sellercentral-europe.amazon.com/gp/help/200482410" class="xref">Video Loader Instructions</a></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Flat File Price and Quantity Update Feed</span>
<p>Enumeration value: <samp class="ph codeph">_POST_FLAT_FILE_PRICEANDQUANTITYONLY_UPDATE_DATA_</samp></p></td>
<td><a href="https://s3.amazonaws.com/seller-templates/ff/eu/fr/Flat.File.PriceInventory.fr.xls" class="xref">Flat.File.PriceInventory.fr.xls</a>
<p>More information: <a href="https://sellercentral-europe.amazon.com/gp/help/200385490" class="xref">Price and Quantity Updates</a></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">UIEE Inventory Feed</span>
<p>Enumeration value: <samp class="ph codeph">_POST_UIEE_BOOKLOADER_DATA_</samp></p></td>
<td><a href="https://images-na.ssl-images-amazon.com/images/G/01/rainier/help/ff/release_1_4/standard-book-template.xls" class="xref">standard-book-template.xls</a>
<p>More information: <a href="https://sellercentral-europe.amazon.com/gp/help/200247530" class="xref">UIEE Format for Book Sellers</a></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">ACES 3.0 Data (Automotive Part Finder) Feed</span>
<p>Enumeration value: <samp class="ph codeph">_POST_STD_ACES_DATA_</samp></p></td>
<td><a href="https://images-na.ssl-images-amazon.com/images/G/01/rainier/help/xsd/release_4_1/AutoAccessory.xsd" class="xref">AutoAccessory.xsd</a>
<p>More information: <a href="https://sellercentral-europe.amazon.com/gp/help/201710040" class="xref">Provide Fitment Data to Amazon</a></p></td>
</tr>
</tbody>
</table>

</div>

</div>

<div id="FeedType_Enumeration__OrderFeeds" class="section">

### Order feeds

Each feed listed below includes a link to the appropriate XSD or Excel
template file. You can also see
<a href="https://sellercentral-europe.amazon.com/gp/help/1611" class="xref">XSDs</a>
in Seller Central help for a list of XSDs for feeds, and the
<a href="https://sellercentral-europe.amazon.com/gp/help/13461" class="xref">Text File Templates</a>
for Excel templates for feeds.

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>File</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><span class="keyword parmname">Order Acknowledgement Feed</span>
<p>Enumeration value: <samp class="ph codeph">_POST_ORDER_ACKNOWLEDGEMENT_DATA_</samp></p></td>
<td><a href="https://images-na.ssl-images-amazon.com/images/G/01/rainier/help/xsd/release_4_1/OrderAcknowledgement.xsd" class="xref">OrderAcknowledgement.xsd</a>
<p>More information: <a href="https://sellercentral-europe.amazon.com/gp/help/1611" class="xref">XSDs</a></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Order Adjustments Feed</span>
<p>Enumeration value: <samp class="ph codeph">_POST_PAYMENT_ADJUSTMENT_DATA_</samp></p></td>
<td><a href="https://images-na.ssl-images-amazon.com/images/G/01/rainier/help/xsd/release_4_1/OrderAdjustment.xsd" class="xref">OrderAdjustment.xsd</a>
<p>More information: <a href="https://sellercentral-europe.amazon.com/gp/help/1611" class="xref">XSDs</a></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">Order Fulfillment Feed</span>
<p>Enumeration value: <samp class="ph codeph">_POST_ORDER_FULFILLMENT_DATA_</samp></p></td>
<td><a href="https://images-na.ssl-images-amazon.com/images/G/01/rainier/help/xsd/release_4_1/OrderFulfillment.xsd" class="xref">OrderFulfillment.xsd</a>
<p>More information: <a href="https://sellercentral-europe.amazon.com/gp/help/200387170" class="xref">Confirm Shipment and Get Paid - Order Fulfillment</a></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Invoice Confirmation Feed</span>
<p>Enumeration value: <samp class="ph codeph">_POST_INVOICE_CONFIRMATION_DATA_</samp></p></td>
<td><a href="https://images-na.ssl-images-amazon.com/images/G/28/rainier/help/xsd/InvoiceConfirmation.xsd" class="xref">InvoiceConfirmation.xsd</a>
<p>More information: <a href="https://mai.amazon.cn/gp/help/help-page.html/ref=au_1611_cont_scsearch?ie=UTF8&amp;itemID=1611&amp;language=zh_CN" class="xref">Invoice Confirmation</a></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">Sourcing On Demand Feed</span> (Japan only)
<p>Enumeration value: <samp class="ph codeph">_POST_EXPECTED_SHIP_DATE_SOD_</samp></p></td>
<td><a href="https://m.media-amazon.com/images/G/01/rainier/help/xsd/release_4_1/OrderSourcingOnDemand._CB475945388_.xsd" class="xref">OrderSourcingOnDemand.xsd</a>
<p>More information: <a href="https://sellercentral-japan.amazon.com/gp/help/200376880" class="xref">Manage Orders with XML</a></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Flat File Order Acknowledgement Feed</span>
<p>This feed cancels orders. This feed does not acknowledge orders.</p>
<p>Enumeration value: <samp class="ph codeph">_POST_FLAT_FILE_ORDER_ACKNOWLEDGEMENT_DATA_</samp></p></td>
<td><a href="http://g-ec2.images-amazon.com/images/G/01/rainier/help/ff/release_1_9/Flat.File.OrderCancellation.fr.xls" class="xref">Flat.File.OrderCancellation.fr.xls</a>
<p>More information: <a href="https://sellercentral-europe.amazon.com/gp/help/50831" class="xref">Order Cancellation Template</a></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">Flat File Order Adjustments Feed</span>
<p>Enumeration value: <samp class="ph codeph">_POST_FLAT_FILE_PAYMENT_ADJUSTMENT_DATA_</samp></p></td>
<td><a href="http://g-ec2.images-amazon.com/images/G/01/rainier/help/ff/release_1_9/Flat.File.Adjustment.fr.xls" class="xref">Flat.File.Adjustment.fr.xls</a>
<p>More information: <a href="https://sellercentral-europe.amazon.com/gp/help/13511" class="xref">Adjustments Template</a></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Flat File Order Fulfillment Feed</span>
<p>Enumeration value: <samp class="ph codeph">_POST_FLAT_FILE_FULFILLMENT_DATA_</samp></p></td>
<td><a href="http://s3.amazonaws.com/seller-templates/ff/na/us/Flat.File.ShippingConfirm.xls" class="xref">Flat.File.ShippingConfirm.xls</a>
<p>More information: <a href="https://sellercentral-europe.amazon.com/gp/help/13491" class="xref">Shipping Confirmation Template</a></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">Flat File Sourcing On Demand Feed</span> (Japan only)
<p>Enumeration value: <samp class="ph codeph">_POST_EXPECTED_SHIP_DATE_SOD_FLAT_FILE_</samp></p></td>
<td><a href="https://m.media-amazon.com/images/G/01/jp/ff/release_4_0/Flat.File.OrderESDSetting.jp.xls" class="xref">Flat.File.OrderESDSetting.jp.xls</a>
<p>More information: <a href="https://sellercentral-japan.amazon.com/gp/help/YQL8UPPERLDG4HC" class="xref">Set the estimated ship date for Sourcing on Demand orders using a file</a></p></td>
</tr>
</tbody>
</table>

</div>

</div>

<div id="FeedType_Enumeration__FBAFeeds" class="section">

### <span class="ph">Fulfillment by Amazon (FBA)</span> feeds

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>File</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><span class="keyword parmname">FBA Fulfillment Order Feed</span>
<p>Enumeration value: <samp class="ph codeph">_POST_FULFILLMENT_ORDER_REQUEST_DATA_</samp></p></td>
<td><a href="https://images-na.ssl-images-amazon.com/images/G/01/rainier/help/xsd/release_4_1/FulfillmentOrderRequest.xsd" class="xref">FulfillmentOrderRequest.xsd</a>
<p>More information: <a href="https://sellercentral-europe.amazon.com/gp/help/1611" class="xref">XSDs</a></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">FBA Fulfillment Order Cancellation Feed</span>
<p>Enumeration value: <samp class="ph codeph">_POST_FULFILLMENT_ORDER_CANCELLATION_REQUEST_DATA_</samp></p></td>
<td><a href="https://images-na.ssl-images-amazon.com/images/G/01/rainier/help/xsd/release_4_1/FulfillmentOrderCancellationRequest.xsd" class="xref">FulfillmentOrderCancellationRequest.xsd</a>
<p>More information: <a href="https://sellercentral-europe.amazon.com/gp/help/1611" class="xref">XSDs</a></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">FBA Inbound Shipment Carton Information Feed</span>
<p>Enumeration value: <samp class="ph codeph">_POST_FBA_INBOUND_CARTON_CONTENTS_</samp></p></td>
<td><a href="https://images-na.ssl-images-amazon.com/images/G/01/rainier/help/xsd/release_4_1/CartonContentsRequest.xsd" class="xref">CartonContentsRequest.xsd</a>
<p>More information: <a href="../fba_guide/FBAGuide_ShipInventoryToAFN.md" class="xref">Shipping inventory to Amazon's fulfillment network</a></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Flat File FBA Fulfillment Order Feed</span>
<p>Enumeration value: <samp class="ph codeph">_POST_FLAT_FILE_FULFILLMENT_ORDER_REQUEST_DATA_</samp></p></td>
<td><a href="https://images-na.ssl-images-amazon.com/images/G/01/rainier/help/ff/release_4_1/Flat.File.FulfillmentOrderRequest._V337946872_.xls" class="xref">Flat.File.FulfillmentOrderRequest.xls</a>
<p>More information: <a href="https://sellercentral-europe.amazon.com/gp/basic-fulfillment/upload-create.html/ref=ag_xx_cont_xx" class="xref">Upload Multi-Channel Fulfillment File (Create Order)</a></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">Flat File FBA Fulfillment Order Cancellation Feed</span>
<p>Enumeration value: <samp class="ph codeph">_POST_FLAT_FILE_FULFILLMENT_ORDER_CANCELLATION_REQUEST_DATA_</samp></p></td>
<td><a href="https://images-na.ssl-images-amazon.com/images/G/01/rainier/help/ff/release_4_1/Flat.File.FulfillmentOrderCancellationRequest._V216846686_.xls" class="xref">Flat.File.FulfillmentOrderCancellationRequest.xls</a>
<p>More information: <a href="https://sellercentral-europe.amazon.com/gp/basic-fulfillment/upload-cancel.html/ref=au_xx_cont_xx" class="xref">Upload Multi-Channel Fulfillment File (Cancel Order)</a></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Flat File FBA Create Inbound Shipment Plan Feed</span>
<p>Enumeration value: <samp class="ph codeph">_POST_FLAT_FILE_FBA_CREATE_INBOUND_PLAN_</samp></p></td>
<td><a href="https://images-na.ssl-images-amazon.com/images/G/01/rainier/help/ff/Flat.File.CreateInboundPlanRequest._V377511647_.xls" class="xref">Flat.File.CreateInboundPlanRequest.xls</a>
<p>More information: <a href="https://sellercentral-europe.amazon.com/gp/help/201281490" class="xref">How to Create a Shipping Plan Request</a></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">Flat File FBA Update Inbound Shipment Plan Feed</span>
<p>Enumeration value: <samp class="ph codeph">_POST_FLAT_FILE_FBA_UPDATE_INBOUND_PLAN_</samp></p></td>
<td><a href="https://images-na.ssl-images-amazon.com/images/G/01/rainier/help/ff/Flat.File.UpdateInboundPlanRequest._V377511641_.xls" class="xref">Flat.File.UpdateInboundPlanRequest.xls</a>
<p>More information: <a href="https://sellercentral-europe.amazon.com/gp/help/201281500" class="xref">How to Update a Shipping Plan Request</a></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Flat File FBA Create Removal Feed</span>
<p>Enumeration value: <samp class="ph codeph">_POST_FLAT_FILE_FBA_CREATE_REMOVAL_</samp></p></td>
<td><a href="https://images-na.ssl-images-amazon.com/images/G/01/rainier/help/ff/release_4_1/Flat.File.RemovalOrderRequest._V306317865_.xls" class="xref">Flat.File.RemovalOrderRequest.xls</a>
<p>More information: <a href="https://sellercentral-europe.amazon.com/gp/help/200721270" class="xref">Create Removal Order using a Removal Order File</a></p></td>
</tr>
</tbody>
</table>

</div>

</div>

<div id="FeedType_Enumeration__BusinessFeeds" class="section">

### Business feed

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>File</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><span class="keyword parmname">Flat File Manage Quotes Feed</span>
<p>Enumeration value:<samp class="ph codeph">_RFQ_UPLOAD_FEED_</samp></p></td>
<td>Amazon Business sellers can use this feed to upload quantity discounts in response to requests from business customers. This functionality is available only in the US, Spain, UK, France, Germany, Italy, India, and Japan marketplaces. <span class="ph">For Amazon Business sellers only.</span>
<p>More information, see "Manage Quotes feed files" in the Seller Central Help.</p></td>
</tr>
</tbody>
</table>

</div>

</div>

<div id="FeedType_Enumeration__EasyShipFeed" class="section">

### Easy Ship feed

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>File</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><span class="keyword parmname">Easy Ship Feed</span>
<p>Enumeration value: <samp class="ph codeph">_POST_EASYSHIP_DOCUMENTS_</samp></p></td>
<td><span class="ph">This functionality is available only in the India marketplace.</span>
<p>More information: <a href="../easy_ship/EasyShip_HowToGetEasyShipDocs.md" class="xref">How to get invoice, shipping label, and warranty documents</a>.</p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="RelatedActions" class="topic nested1">

Related topics
--------------

<div class="body">

<a href="../feeds/Feeds_Overview.md" class="xref">What you should know about the Amazon MWS Feeds API section</a>

<a href="https://images-na.ssl-images-amazon.com/images/G/01/rainier/help/XML_Documentation_Intl.pdf" class="xref">Selling on Amazon Guide to XML</a>

<a href="../feeds/Feeds_SubmitFeed.md" class="xref">SubmitFeed</a>

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
