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

<div id="Notifications_AnyOfferChangedNotification" class="nested0">

AnyOfferChangedNotification
===========================

<div class="body">

The <span class="keyword parmname">AnyOfferChanged</span> notification
is sent whenever there is a listing change for any of the top 20 offers,
by condition (new or used), or if the external price (the price from
other retailers) changes for an item that you sell. The top 20 offers
are determined by the landed price, which is the price plus shipping
minus Amazon Points. If multiple sellers are charging the same landed
price, the results will be returned in random order.

You will only receive <span
class="keyword parmname">AnyOfferChanged</span> notifications for items
for which you have active offers. You cannot subscribe to notifications
for items for which you do not have active offers.

<div class="section">

Availability
------------

This notification is available in all marketplaces.

</div>

<div class="section">

Elements
--------

This is the root element of the
<a href="https://m.media-amazon.com/images/G/01/mwsportal/doc/en_US/subscriptions/AnyOfferChangedNotification._CB467003493_.xsd" class="xref">AnyOfferChangedNotification.xsd</a>
schema:

<div class="tablenoborder">

| Name                                                                                                                                                                                     | Description                                                                                                          |
|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------|
| <a href="#AnyOfferChangedNotification" class="xref" title="The root element of the payload for the notification that is sent when an offer has changed.">AnyOfferChangedNotification</a> | <span class="ph">The root element of the payload for the notification that is sent when an offer has changed.</span> |

</div>

These are the complex elements of the <span
class="keyword parmname">AnyOfferChangedNotification</span> element:

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><a href="#BuyBoxPrice" class="xref" title="The price of the item that is displayed in the Buy Box.">BuyBoxPrice</a></td>
<td><span class="ph">The price of the item that is displayed in the Buy Box.</span></td>
</tr>
<tr class="even">
<td><a href="#LowestPrice" class="xref" title="The lowest price of the item.">LowestPrice</a></td>
<td><span class="ph">The lowest price of the item.</span></td>
</tr>
<tr class="odd">
<td><a href="#Offer" class="xref" title="One of the top 20 offers for the item and condition that had an offer change.">Offer</a></td>
<td><span class="ph">One of the top 20 offers for the item and condition that had an offer change.</span></td>
</tr>
<tr class="even">
<td><a href="#OfferChangeTrigger" class="xref" title="The event that caused the notification to be sent.">OfferChangeTrigger</a></td>
<td><span class="ph">The event that caused the notification to be sent.</span></td>
</tr>
<tr class="odd">
<td><a href="#OfferCount" class="xref" title="The total number of offers for the specified condition and fulfillment channel.">OfferCount</a></td>
<td><span class="ph">The total number of offers for the specified condition and fulfillment channel.</span></td>
</tr>
<tr class="even">
<td><a href="#Points" class="xref" title="The number of Amazon Points offered with the purchase of an item.">Points</a></td>
<td><span class="ph">The number of <span class="ph">Amazon Points</span> offered with the purchase of an item.</span>
<div class="note note">
<span class="notetitle">Note:</span> The <span class="keyword parmname">Points</span> element is only returned in Japan (JP).
</div></td>
</tr>
<tr class="odd">
<td><a href="#SalesRank" class="xref" title="The sales rank of the item in the given product category.">SalesRank</a></td>
<td><span class="ph">The sales rank of the item in the given product category.</span></td>
</tr>
<tr class="even">
<td><a href="#SellerFeedbackRating" class="xref" title="Information about the seller&#39;s feedback, including the percentage of positive feedback, and the total count of feedback received.">SellerFeedbackRating</a></td>
<td><span class="ph">Information about the seller's feedback, including the percentage of positive feedback, and the total count of feedback received.</span></td>
</tr>
<tr class="odd">
<td><a href="#ShippingTime" class="xref" title="The minimum and maximum time, in hours, that the item will likely be shipped after the order has been placed.">ShippingTime</a></td>
<td><span class="ph">The minimum and maximum time, in hours, that the item will likely be shipped after the order has been placed.</span></td>
</tr>
<tr class="even">
<td><a href="#ShipsFrom" class="xref" title="The state and country from where the item is shipped.">ShipsFrom</a></td>
<td><span class="ph">The state and country from where the item is shipped.</span></td>
</tr>
<tr class="odd">
<td><a href="#Summary" class="xref" title="Information about the product that had the offer change. The information in this summary applies to all conditions of the product.">Summary</a></td>
<td><span class="ph">Information about the product that had the offer change. The information in this summary applies to all conditions of the product.</span></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div id="AnyOfferChangedNotification" class="topic nested1">

AnyOfferChangedNotification
---------------------------

<div class="body">

<span class="ph">The root element of the payload for the notification
that is sent when an offer has changed.</span>

<div class="section">

### AnyOfferChangedNotification Elements

The following table shows the child elements of the <span
class="keyword parmname">AnyOfferChangedNotification</span> element:

<div class="tablenoborder">

<table id="AnyOfferChangedNotification__table_v4j_lkj_ll" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><span class="keyword parmname">OfferChangeTrigger</span></td>
<td><span class="ph">The event that caused the notification to be sent.</span>
<p>Required.</p>
<p>Type: <a href="#OfferChangeTrigger" class="xref" title="The event that caused the notification to be sent.">OfferChangeTrigger</a></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Summary</span></td>
<td><span class="ph">Information about the product that had the offer change. The information in this summary applies to all conditions of the product.</span>
<p>Required.</p>
<p>Type: <a href="#Summary" class="xref" title="Information about the product that had the offer change. The information in this summary applies to all conditions of the product.">Summary</a></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">Offers</span></td>
<td>The top 20 competitive offers for the item and condition that triggered the notification.
<p>Required.</p>
<p>Type: List of <a href="#Offer" class="xref" title="One of the top 20 offers for the item and condition that had an offer change.">Offer</a></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="BuyBoxPrice" class="topic nested1">

BuyBoxPrice
-----------

<div class="body">

<span class="ph">The price of the item that is displayed in the Buy
Box.</span>

<div class="section">

### BuyBoxPrice Attributes

The following table shows the attributes of the <span
class="keyword parmname">BuyBoxPrice</span> element:

<div class="tablenoborder">

<table id="BuyBoxPrice__table_qwc_b4j_ll" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><var class="keyword varname">condition</var></td>
<td>Indicates the condition of the item. For example: <span class="ph"><var class="keyword varname">New</var>, <var class="keyword varname">Used</var>, <var class="keyword varname">Collectible</var>, <var class="keyword varname">Refurbished</var>, or <var class="keyword varname">Club</var></span>.
<p>Required.</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="section">

### BuyBoxPrice Elements

The following table shows the child elements of the <span
class="keyword parmname">BuyBoxPrice</span> element:

<div class="tablenoborder">

<table id="BuyBoxPrice__table_zcf_24j_ll" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><span class="keyword parmname">LandedPrice</span></td>
<td><span class="keyword parmname">ListingPrice</span> + <span class="keyword parmname">Shipping</span> - <span class="keyword parmname">Points</span>.
<p>Required.</p>
<p>Type: <a href="Notifications_MWSPushNotificationCommon.md#ComplexTypes__MoneyType" class="xref">MoneyType</a></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">ListingPrice</span></td>
<td>The price of the item.
<p>Required.</p>
<p>Type: <a href="Notifications_MWSPushNotificationCommon.md#ComplexTypes__MoneyType" class="xref">MoneyType</a></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">Shipping</span></td>
<td>The shipping cost.
<p>Required.</p>
<p>Type: <a href="Notifications_MWSPushNotificationCommon.md#ComplexTypes__MoneyType" class="xref">MoneyType</a></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Points</span></td>
<td><span class="ph">The number of <span class="ph">Amazon Points</span> offered with the purchase of an item.</span>
<p>Optional.</p>
<div class="note note">
<span class="notetitle">Note:</span> The <span class="keyword parmname">Points</span> element is only returned in Japan (JP).
</div>
<p>Type: <a href="#Points" class="xref" title="The number of Amazon Points offered with the purchase of an item.">Points</a></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="LowestPrice" class="topic nested1">

LowestPrice
-----------

<div class="body">

<span class="ph">The lowest price of the item.</span>

<div class="section">

### LowestPrice Attributes

The following table shows the attributes of the <span
class="keyword parmname">LowestPrice</span> element:

<div class="tablenoborder">

<table id="LowestPrice__table_mm2_nnj_ll" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><var class="keyword varname">condition</var></td>
<td>Indicates the condition of the item. For example: <span class="ph"><var class="keyword varname">New</var>, <var class="keyword varname">Used</var>, <var class="keyword varname">Collectible</var>, <var class="keyword varname">Refurbished</var>, or <var class="keyword varname">Club</var></span>.
<p>Required.</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><var class="keyword varname">fulfillmentChannel</var></td>
<td><span class="ph">Indicates whether the item is fulfilled by Amazon or by the seller.</span>
<p>Required.</p>
<p>Type: <a href="Notifications_MWSPushNotificationCommon.md#SimpleTypes__FulfillmentChannelType" class="xref">FulfillmentChannelType</a></p></td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="section">

### LowestPrice Elements

The following table shows the child elements of the <span
class="keyword parmname">LowestPrice</span> element:

<div class="tablenoborder">

<table id="LowestPrice__table_kdt_lnj_ll" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><span class="keyword parmname">LandedPrice</span></td>
<td><span class="keyword parmname">ListingPrice</span> + <span class="keyword parmname">Shipping</span> - <span class="keyword parmname">Points</span>.
<p>Required.</p>
<p>Type: <a href="Notifications_MWSPushNotificationCommon.md#ComplexTypes__MoneyType" class="xref">MoneyType</a></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">ListingPrice</span></td>
<td>The price of the item.
<p>Required.</p>
<p>Type: <a href="Notifications_MWSPushNotificationCommon.md#ComplexTypes__MoneyType" class="xref">MoneyType</a></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">Shipping</span></td>
<td>The shipping cost.
<p>Required.</p>
<p>Type: <a href="Notifications_MWSPushNotificationCommon.md#ComplexTypes__MoneyType" class="xref">MoneyType</a></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Points</span></td>
<td><span class="ph">The number of <span class="ph">Amazon Points</span> offered with the purchase of an item.</span>
<p>Optional.</p>
<div class="note note">
<span class="notetitle">Note:</span> The <span class="keyword parmname">Points</span> element is only returned in Japan (JP).
</div>
<p>Type: <a href="#Points" class="xref" title="The number of Amazon Points offered with the purchase of an item.">Points</a></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="Offer" class="topic nested1">

Offer
-----

<div class="body">

<span class="ph">One of the top 20 offers for the item and condition
that had an offer change.</span>

<div class="section">

### Offer Elements

The following table shows the child elements of the <span
class="keyword parmname">Offer</span> element:

<div class="tablenoborder">

<table id="Offer__table_q3v_pqj_ll" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><span class="keyword parmname">SellerId</span></td>
<td>The seller identifier for the offer.
<p>Required.</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">SubCondition</span></td>
<td>The subcondition of the item. For example: <span class="ph"><var class="keyword varname">New</var>, <var class="keyword varname">Mint</var>, <var class="keyword varname">Very Good</var>, <var class="keyword varname">Good</var>, <var class="keyword varname">Acceptable</var>, <var class="keyword varname">Poor</var>, <var class="keyword varname">Club</var>, <var class="keyword varname">OEM</var>, <var class="keyword varname">Warranty</var>, <var class="keyword varname">Refurbished                     Warranty</var>, <var class="keyword varname">Refurbished</var>, <var class="keyword varname">Open Box</var>, or <var class="keyword varname">Other</var></span>.
<p>Required.</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">SellerFeedbackRating</span></td>
<td><span class="ph">Information about the seller's feedback, including the percentage of positive feedback, and the total count of feedback received.</span>
<p>Optional.</p>
<p>Type: <a href="#SellerFeedbackRating" class="xref" title="Information about the seller&#39;s feedback, including the percentage of positive feedback, and the total count of feedback received.">SellerFeedbackRating</a></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">ShippingTime</span></td>
<td><span class="ph">The minimum and maximum time, in hours, that the item will likely be shipped after the order has been placed.</span>
<p>Required.</p>
<p>Type: <a href="#ShippingTime" class="xref" title="The minimum and maximum time, in hours, that the item will likely be shipped after the order has been placed.">ShippingTime</a></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">ListingPrice</span></td>
<td>The price of the item.
<p>Required.</p>
<p>Type: <a href="Notifications_MWSPushNotificationCommon.md#ComplexTypes__MoneyType" class="xref">MoneyType</a></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Points</span></td>
<td><span class="ph">The number of <span class="ph">Amazon Points</span> offered with the purchase of an item.</span>
<p>Optional.</p>
<div class="note note">
<span class="notetitle">Note:</span> The <span class="keyword parmname">Points</span> element is only returned in Japan (JP).
</div>
<p>Type: <a href="#Points" class="xref" title="The number of Amazon Points offered with the purchase of an item.">Points</a></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">Shipping</span></td>
<td>The shipping cost.
<p>Required.</p>
<p>Type: <a href="Notifications_MWSPushNotificationCommon.md#ComplexTypes__MoneyType" class="xref">MoneyType</a></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">ShipsFrom</span></td>
<td><span class="ph">The state and country from where the item is shipped.</span>
<p>Optional.</p>
<p>Type: <a href="#ShipsFrom" class="xref" title="The state and country from where the item is shipped.">ShipsFrom</a></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">IsFulfilledByAmazon</span></td>
<td>Indicates whether the offer is fulfilled by Amazon.
<p>Required.</p>
<p><span class="ph">Type: xs:boolean</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">IsBuyBoxWinner</span></td>
<td>Indicates whether the offer is currently in the Buy Box. There can be up to two Buy Box winners at any time per ASIN, one that is eligible for Prime and one that is not eligible for Prime.
<p>Optional.</p>
<p><span class="ph">Type: xs:boolean</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">ConditionNotes</span></td>
<td>Information about the condition of the item.
<p>Optional.</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">PrimeInformation</span></td>
<td><span class="ph">Amazon Prime information.</span>
<p>Optional.</p>
<p>Type: <a href="#PrimeInformation" class="xref" title="Amazon Prime information.">PrimeInformation</a></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">IsExpeditedShippingAvailable</span></td>
<td>Indicates whether expedited shipping is available.
<p>Optional.</p>
<p><span class="ph">Type: xs:boolean</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">IsFeaturedMerchant</span></td>
<td>Indicates whether the seller of the item is eligible to win the Buy Box.
<p>Optional.</p>
<p><span class="ph">Type: xs:boolean</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">ShipsDomestically</span></td>
<td>Indicates whether the item ships domestically.
<p>Optional.</p>
<p><span class="ph">Type: xs:boolean</span></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="OfferChangeTrigger" class="topic nested1">

OfferChangeTrigger
------------------

<div class="body">

<span class="ph">The event that caused the notification to be
sent.</span>

<div class="section">

### OfferChangeTrigger Elements

The following table shows the child elements of the <span
class="keyword parmname">OfferChangeTrigger</span> element:

<div class="tablenoborder">

<table id="OfferChangeTrigger__table_zss_glj_ll" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><span class="keyword parmname">MarketplaceId</span></td>
<td>The marketplace identifier of the item that had an offer change.
<p>Required.</p>
<p>Type: <a href="Notifications_MWSPushNotificationCommon.md#SimpleTypes__MarketplaceType" class="xref">MarketplaceType</a></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">ASIN</span></td>
<td>The ASIN for the item that had an offer change.
<p>Required.</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">ItemCondition</span></td>
<td>The condition of the item that had an offer change. For example, if a used offer changes, the list of offers in the <span class="keyword parmname">Offers</span> element will be only used items. The <span class="keyword parmname">Summary</span> element provides a summary for the other conditions that can be used for repricing.
<p>Required.</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">TimeOfOfferChange</span></td>
<td>The update time for the offer that caused this notification.
<p>Required.</p>
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">OfferChangeType</span></td>
<td>The type of offer that changed and triggered this notification.
<p><span class="keyword parmname">OfferChangeType</span> values:</p>
<ul>
<li><var class="keyword varname">External</var> - An offer from a non-Amazon seller. The <span class="keyword parmname">CompetitivePriceThreshold</span> in the <span class="keyword parmname">Summary</span> element has changed.</li>
<li><var class="keyword varname">Internal</var> - An offer from an Amazon seller. The price of an offer on Amazon's retail website has changed.</li>
</ul>
<p>Required.</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="OfferCount" class="topic nested1">

OfferCount
----------

<div class="body">

<span class="ph">The total number of offers for the specified condition
and fulfillment channel.</span>

<div class="section">

### OfferCount Attributes

The following table shows the attributes of the <span
class="keyword parmname">OfferCount</span> element:

<div class="tablenoborder">

<table id="OfferCount__table_k3l_smj_ll" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><var class="keyword varname">condition</var></td>
<td>Indicates the condition of the item. For example: <span class="ph"><var class="keyword varname">New</var>, <var class="keyword varname">Used</var>, <var class="keyword varname">Collectible</var>, <var class="keyword varname">Refurbished</var>, or <var class="keyword varname">Club</var></span>.
<p>Required.</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><var class="keyword varname">fulfillmentChannel</var></td>
<td><span class="ph">Indicates whether the item is fulfilled by Amazon or by the seller.</span>
<p>Required.</p>
<p>Type: <a href="Notifications_MWSPushNotificationCommon.md#SimpleTypes__FulfillmentChannelType" class="xref">FulfillmentChannelType</a></p></td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="section">

### OfferCount Elements

The <span class="keyword parmname">OfferCount</span> element does not
contain any child elements. It is an extension of <span class="ph">Type:
xs:int</span>.

</div>

</div>

</div>

<div id="Points" class="topic nested1">

Points
------

<div class="body">

<span class="ph">The number of <span class="ph">Amazon Points</span>
offered with the purchase of an item.</span>

<div class="section">

### Points Elements

The following table shows the child elements of the <span
class="keyword parmname">Points</span> element:

<div class="tablenoborder">

<table id="Points__table_ev4_ckp_kq" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><span class="keyword parmname">PointsNumber</span></td>
<td>The number of <span class="ph">Amazon Points</span> offered with the purchase of an item.
<p>Required.</p>
<p><span class="ph">Type: xs:int</span></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="PrimeInformation" class="topic nested1">

PrimeInformation
----------------

<div class="body">

<span class="ph">Amazon Prime information.</span>

<div class="section">

### PrimeInformation Elements

The following table shows the child elements of the <span
class="keyword parmname">PrimeInformation</span> element:

<div class="tablenoborder">

<table id="PrimeInformation__table_ev4_ckp_kq" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><span class="keyword parmname">IsNationalPrime</span></td>
<td>Indicates whether the offer is an Amazon Prime offer throughout the entire marketplace where it is listed.
<p>Required.</p>
<p><span class="ph">Type: xs:boolean</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">IsPrime</span></td>
<td>Indicates whether the offer is an Amazon Prime offer.
<p>Required.</p>
<p><span class="ph">Type: xs:boolean</span></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="SalesRank" class="topic nested1">

SalesRank
---------

<div class="body">

<span class="ph">The sales rank of the item in the given product
category.</span>

<div class="section">

### SalesRank Elements

The following table shows the child elements of the <span
class="keyword parmname">SalesRank</span> element:

<div class="tablenoborder">

<table id="SalesRank__table_wzs_p4j_ll" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><span class="keyword parmname">ProductCategoryId</span></td>
<td>The product category identifier of the item.
<p>Required.</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Rank</span></td>
<td>The sales rank of the item in the given product category.
<p>Required.</p>
<p><span class="ph">Type: xs:int</span></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="SellerFeedbackRating" class="topic nested1">

SellerFeedbackRating
--------------------

<div class="body">

<span class="ph">Information about the seller's feedback, including the
percentage of positive feedback, and the total count of feedback
received.</span>

<div class="section">

### SellerFeedbackRating Elements

The following table shows the child elements of the <span
class="keyword parmname">SellerFeedbackRating</span> element:

<div class="tablenoborder">

<table id="SellerFeedbackRating__table_fsh_mrj_ll" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><span class="keyword parmname">SellerPositiveFeedbackRating</span></td>
<td>The percentage of positive feedback for the seller in the past 365 days.
<p>Optional.</p>
<p><span class="ph">Type: xs:double</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">FeedbackCount</span></td>
<td>The count of feedback received about the seller.
<p>Required.</p>
<p><span class="ph">Type: xs:long</span></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="ShippingTime" class="topic nested1">

ShippingTime
------------

<div class="body">

<span class="ph">The minimum and maximum time, in hours, that the item
will likely be shipped after the order has been placed.</span>

<div class="section">

### ShippingTime Attributes

The following table shows the attributes of the <span
class="keyword parmname">ShippingTime</span> element:

<div class="tablenoborder">

<table id="ShippingTime__table_ktl_csj_ll" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><var class="keyword varname">minimumHours</var></td>
<td>The minimum time, in hours, that the item will likely be shipped after the order has been placed.
<p>Optional.</p>
<p><span class="ph">Type: xs:short</span></p></td>
</tr>
<tr class="even">
<td><var class="keyword varname">maximumHours</var></td>
<td>The maximum time, in hours, that the item will likely be shipped after the order has been placed.
<p>Optional.</p>
<p><span class="ph">Type: xs:short</span></p></td>
</tr>
<tr class="odd">
<td><var class="keyword varname">availableDate</var></td>
<td>The date when the item will be available for shipping. Only displayed for items that are not currently available for shipping.
<p>Optional.</p>
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
<tr class="even">
<td><var class="keyword varname">availabilityType</var></td>
<td><span class="ph">Indicates whether the item is available for shipping now, or on a known or an unknown date in the future.</span> If known, the <var class="keyword varname">availableDate</var> attribute indicates the date that the item will be available for shipping.
<p>Optional.</p>
<p>Type: <a href="Notifications_MWSPushNotificationCommon.md#SimpleTypes__AvailabilityType" class="xref">AvailabilityType</a></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="ShipsFrom" class="topic nested1">

ShipsFrom
---------

<div class="body">

<span class="ph">The state and country from where the item is
shipped.</span>

<div class="section">

### ShipsFrom Elements

The following table shows the child elements of the <span
class="keyword parmname">ShipsFrom</span> element:

<div class="tablenoborder">

<table id="ShipsFrom__table_zlb_msj_ll" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><span class="keyword parmname">State</span></td>
<td>The state from where the item is shipped.
<p>Optional.</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Country</span></td>
<td>The country from where the item is shipped.
<p>Optional.</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="Summary" class="topic nested1">

Summary
-------

<div class="body">

<span class="ph">Information about the product that had the offer
change. The information in this summary applies to all conditions of the
product.</span>

<div class="section">

### Summary Elements

The following table shows the child elements of the <span
class="keyword parmname">Summary</span> element:

<div class="tablenoborder">

<table id="Summary__table_scn_vlj_ll" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><span class="keyword parmname">NumberOfOffers</span></td>
<td>A list that contains the total number of offers for the item for the given conditions and fulfillment channels.
<p>Required.</p>
<p>Type: List of <a href="#OfferCount" class="xref" title="The total number of offers for the specified condition and fulfillment channel.">OfferCount</a></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">LowestPrices</span></td>
<td>A list that contains the lowest prices of the item for the given conditions and fulfillment channels.
<p>Required.</p>
<p>Type: List of <a href="#LowestPrice" class="xref" title="The lowest price of the item.">LowestPrice</a></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">BuyBoxPrices</span></td>
<td>A list that contains the Buy Box price of the item for the given conditions.
<p>Optional.</p>
<p>Type: List of <a href="#BuyBoxPrice" class="xref" title="The price of the item that is displayed in the Buy Box.">BuyBoxPrice</a></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">ListPrice</span></td>
<td>The list price of the item as suggested by the manufacturer.
<p>Optional.</p>
<p>Type: <a href="Notifications_MWSPushNotificationCommon.md#ComplexTypes__MoneyType" class="xref">MoneyType</a></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">SuggestedLowerPricePlusShipping</span></td>
<td>The suggested lower price of the item, including shipping (minus Amazon Points). The suggested lower price is based on a range of factors, including historical selling prices, recent Buy Box-eligible prices, and input from customers for your products.
<p>Optional.</p>
<p>Type: <a href="Notifications_MWSPushNotificationCommon.md#ComplexTypes__MoneyType" class="xref">MoneyType</a></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">SalesRankings</span></td>
<td>A list that contains the sales rank of the item in the given product categories.
<p>Optional.</p>
<p>Type: List of <a href="#SalesRank" class="xref" title="The sales rank of the item in the given product category.">SalesRank</a></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">BuyBoxEligibleOffers</span></td>
<td>A list that contains the total number of offers that are eligible for the Buy Box for the given conditions and fulfillment channels.
<p>Required.</p>
<p>Type: List of <a href="#OfferCount" class="xref" title="The total number of offers for the specified condition and fulfillment channel.">OfferCount</a></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">CompetitivePriceThreshold</span></td>
<td>This price is based on competitive prices from other retailers (excluding other Amazon sellers). The offer may be ineligible for the Buy Box if the seller's price + shipping (minus Amazon Points) is greater than this competitive price.
<div class="note note">
<span class="notetitle">Note:</span> In Japan, <span class="keyword parmname">CompetitivePriceThreshold</span> considers any points that a non-Amazon retailer applies to their selling price.
</div>
<p>Optional.</p>
<p>Type: <a href="Notifications_MWSPushNotificationCommon.md#ComplexTypes__MoneyType" class="xref">MoneyType</a></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="RelatedTopics" class="topic nested1">

Related topics
--------------

<div class="body">

<a href="../subscriptions/Subscriptions_Overview.md" class="xref">What you should know about the Amazon MWS Subscriptions API section</a>

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
