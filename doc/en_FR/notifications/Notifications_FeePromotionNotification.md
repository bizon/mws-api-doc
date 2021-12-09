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

<div id="Notifications_FeePromotionNotification" class="nested0">

# FeePromotionNotification

<div class="body">

<span class="ph">Sellers using <span class="ph">Amazon MWS</span> can
benefit from time-limited fee promotions. To receive notification of
available fee promotions, sellers must subscribe to <span
class="keyword parmname">FeePromotion</span> notification. When the
seller initially signs up for the subscription and `isEnabled` is set to
*true*, the seller receives all currently active promotions. Each
promotion is sent as a single message. Subsequent promotion
notifications are sent when the promotion becomes active. </span>

<span class="keyword parmname">FeePromotion</span> notification is made
up of a set of data fields describing the details of that promotion. All
qualifying criteria for each promotion will be described in those data
fields.

<div class="note note">

<span class="notetitle">Note:</span> <span class="ph">The estimated fees
returned by this API are not guaranteed. Actual fees may vary.</span>
<span id="Notifications_FeePromotionNotification__Fees_links"
class="ph">For more information on fees, see
<a href="https://sellercentral.amazon.co.uk/gp/help/200336920" class="xref">Selling on Amazon Fee Schedule</a>
and
<a href="https://sellercentral-europe.amazon.com/gp/help/201074400" class="xref">FBA features and fees</a>
on Seller Central.</span>

</div>

<div class="section">

## Availability

This notification is available in all marketplaces.

</div>

</div>

<div id="FeePromotionNotification" class="topic nested1">

## FeePromotionNotification

<div class="body">

<span class="ph">Contains the full details of an active fee promotion
for the given merchant/marketplace.</span>

This is the root element of the
<a href="http://g-ec2.images-amazon.com/images/G/01/mwsportal/doc/en_US/subscriptions/FeePromotionNotification.xsd" class="xref">FeePromotionNotification.xsd</a>
schema:

<div class="tablenoborder">

| Name                                                           | Description                                                                          |
|----------------------------------------------------------------|--------------------------------------------------------------------------------------|
| <span class="keyword parmname">FeePromotionNotification</span> | <span class="ph">The root element of the `FeePromotion` notification payload.</span> |

</div>

<div id="FeePromotionNotification__FeePromotionNotification_Elements"
class="section">

### FeePromotionNotification Attributes

Each <span class="keyword parmname">FeePromotionNotification</span>
element is made up of the following data objects:

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d194549e187" class="entry" data-valign="top" width="20%">Name</th>
<th id="d194549e190" class="entry" data-valign="top" width="30%">Description</th>
<th id="d194549e193" class="entry" data-valign="top" width="10%">Required</th>
<th id="d194549e196" class="entry" data-valign="top" width="40%">Value</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="20%" headers="d194549e187 "><span class="keyword parmname">FeePromotionType</span></td>
<td class="entry" data-valign="top" width="30%" headers="d194549e190 "><span class="ph">The type of promotion.</span></td>
<td class="entry" data-valign="top" width="10%" headers="d194549e193 ">Yes</td>
<td class="entry" data-valign="top" width="40%" headers="d194549e196 "><span class="ph">Values: <var class="keyword varname">Pricing</var>, <var class="keyword varname">SelectionASIN</var>, or <var class="keyword varname">SelectionCategory</var>. Additional types may become available in the future.</span>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="20%" headers="d194549e187 "><span class="keyword parmname">FeePromotionTypeDescription</span></td>
<td class="entry" data-valign="top" width="30%" headers="d194549e190 "><span class="ph">Provides more details on the purpose of a promotion.</span></td>
<td class="entry" data-valign="top" width="10%" headers="d194549e193 ">No</td>
<td class="entry" data-valign="top" width="40%" headers="d194549e196 "><span class="ph">A friendly, localized string description. Useful for integrators to display on a UI.</span>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="20%" headers="d194549e187 "><span class="keyword parmname">MarketplaceId</span></td>
<td class="entry" data-valign="top" width="30%" headers="d194549e190 "><span class="ph">The promotion applies to this marketplaceId.</span></td>
<td class="entry" data-valign="top" width="10%" headers="d194549e193 ">Yes</td>
<td class="entry" data-valign="top" width="40%" headers="d194549e196 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="20%" headers="d194549e187 "><span class="keyword parmname">MerchantId</span></td>
<td class="entry" data-valign="top" width="30%" headers="d194549e190 "><span class="ph">The promotion applies to this merchantId.</span></td>
<td class="entry" data-valign="top" width="10%" headers="d194549e193 ">Yes</td>
<td class="entry" data-valign="top" width="40%" headers="d194549e196 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="20%" headers="d194549e187 "><span class="keyword parmname">IdentifierList</span></td>
<td class="entry" data-valign="top" width="30%" headers="d194549e190 "><span class="ph">A list of items to which this promotion applies.</span></td>
<td class="entry" data-valign="top" width="10%" headers="d194549e193 ">Yes</td>
<td class="entry" data-valign="top" width="40%" headers="d194549e196 ">Type: List of type <a href="#IdentifierList" class="xref" title="A description of an item to which this promotion applies.">Identifier</a></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="20%" headers="d194549e187 "><span class="keyword parmname">PromotionActiveTimeRange</span></td>
<td class="entry" data-valign="top" width="30%" headers="d194549e190 "><span class="ph">The range of time when this promotion is active.</span></td>
<td class="entry" data-valign="top" width="10%" headers="d194549e193 ">Yes</td>
<td class="entry" data-valign="top" width="40%" headers="d194549e196 ">Type: <a href="#TimeRange" class="xref" title="The range of time when this promotion is active.">PromotionActiveTimeRange</a></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="20%" headers="d194549e187 "><span class="keyword parmname">PromotionInformation</span></td>
<td class="entry" data-valign="top" width="30%" headers="d194549e190 "><span class="ph">An object containing additional details about the promotion. A fee estimate is included if applicable.</span></td>
<td class="entry" data-valign="top" width="10%" headers="d194549e193 ">Yes</td>
<td class="entry" data-valign="top" width="40%" headers="d194549e196 ">Type: <a href="#PromotionInformation" class="xref" title="An object containing additional details about the promotion. A fee estimate is included if applicable.">PromotionInformation</a></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="IdentifierList" class="topic nested1">

## Identifier

<div class="body">

<span class="ph">A description of an item to which this promotion
applies.</span>

<div class="section">

### Identifier Attributes

The following table describes the attributes of an item from the <span
class="keyword parmname">IdentifierList</span> element:

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d194549e458" class="entry" data-valign="top" width="17.475728155339805%">Name</th>
<th id="d194549e461" class="entry" data-valign="top" width="33.98058252427184%">Description</th>
<th id="d194549e464" class="entry" data-valign="top" width="9.70873786407767%">Required</th>
<th id="d194549e467" class="entry" data-valign="top" width="38.83495145631068%">Value</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="17.475728155339805%" headers="d194549e458 "><span class="keyword parmname">IdentifierType</span></td>
<td class="entry" data-valign="top" width="33.98058252427184%" headers="d194549e461 "><span class="ph">The merchant identifier type for which this promotion will apply to.</span></td>
<td class="entry" data-valign="top" width="9.70873786407767%" headers="d194549e464 ">Yes</td>
<td class="entry" data-valign="top" width="38.83495145631068%" headers="d194549e467 "><span class="ph">For example: ASIN, SKU, Browse node, Brand.</span>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="17.475728155339805%" headers="d194549e458 "><span class="keyword parmname">IdentifierValueList</span></td>
<td class="entry" data-valign="top" width="33.98058252427184%" headers="d194549e461 "><span class="ph">The merchant identifier values to which this promotion will apply. </span></td>
<td class="entry" data-valign="top" width="9.70873786407767%" headers="d194549e464 ">Yes</td>
<td class="entry" data-valign="top" width="38.83495145631068%" headers="d194549e467 "><span class="ph">For example: the merchant's actual ASINs or SKUs, an actual list of brands (like <em>Nike</em>), an actual list of browse nodes.</span>
<p>Type: List of type <a href="#IdentifierValue" class="xref" title="A description of identifier values to which this promotion applies."><var class="keyword varname">IdentifierValue</var></a></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="IdentifierValue" class="topic nested1">

## IdentifierValue

<div class="body">

A description of identifier values to which this promotion applies.

<div class="section">

### IdentifierValue Attributes

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d194549e579" class="entry" data-valign="top" width="17.475728155339805%">Name</th>
<th id="d194549e582" class="entry" data-valign="top" width="33.98058252427184%">Description</th>
<th id="d194549e585" class="entry" data-valign="top" width="9.70873786407767%">Required</th>
<th id="d194549e588" class="entry" data-valign="top" width="38.83495145631068%">Value</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="17.475728155339805%" headers="d194549e579 "><span class="keyword parmname">IdentifierValueId</span></td>
<td class="entry" data-valign="top" width="33.98058252427184%" headers="d194549e582 "><span class="ph">The actual browse node ID, actual ASIN/SKU, or brand value.</span></td>
<td class="entry" data-valign="top" width="9.70873786407767%" headers="d194549e585 ">Yes</td>
<td class="entry" data-valign="top" width="38.83495145631068%" headers="d194549e588 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="17.475728155339805%" headers="d194549e579 "><span class="keyword parmname">IdentifierValueFriendlyName</span></td>
<td class="entry" data-valign="top" width="33.98058252427184%" headers="d194549e582 "><span class="ph">The friendly name of the ID value.</span></td>
<td class="entry" data-valign="top" width="9.70873786407767%" headers="d194549e585 ">No</td>
<td class="entry" data-valign="top" width="38.83495145631068%" headers="d194549e588 "><span class="ph">Only relevant/populated for things like browse nodes. For example, this would be a browse node's <em>friendly</em> name.</span>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="TimeRange" class="topic nested1">

## PromotionActiveTimeRange

<div class="body">

<span class="ph">The range of time when this promotion is active.</span>

<div class="section">

### PromotionActiveTimeRange Attributes

The following table shows the child elements of the <span
class="keyword parmname">PromotionActiveTimeRange</span> element:

<div class="tablenoborder">

| Name                                                       | Description                                                                 | Required | Value                                     |
|------------------------------------------------------------|-----------------------------------------------------------------------------|----------|-------------------------------------------|
| <span class="keyword parmname">EffectiveFromDate</span>    | <span class="ph">Date (inclusive) when the promotion becomes active.</span> | Yes      | <span class="ph">Type: xs:dateTime</span> |
| <span class="keyword parmname">EffectiveThroughDate</span> | <span class="ph">Date (exclusive) when the promotion has ended.</span>      | Yes      | <span class="ph">Type: xs:dateTime</span> |

</div>

</div>

</div>

</div>

<div id="PromotionInformation" class="topic nested1">

## PromotionInformation

<div class="body">

<span class="ph">An object containing additional details about the
promotion. A fee estimate is included if applicable.</span>

<div class="section">

### PromotionInformation Attributes

The following table shows the child elements of the <span
class="keyword parmname">PromotionInformation</span> element:

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d194549e811" class="entry" data-valign="top" width="17.475728155339805%">Name</th>
<th id="d194549e814" class="entry" data-valign="top" width="33.98058252427184%">Description</th>
<th id="d194549e817" class="entry" data-valign="top" width="9.70873786407767%">Required</th>
<th id="d194549e820" class="entry" data-valign="top" width="38.83495145631068%">Value</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="17.475728155339805%" headers="d194549e811 "><span class="keyword parmname">FeeType</span></td>
<td class="entry" data-valign="top" width="33.98058252427184%" headers="d194549e814 "><span class="ph">The fee type which is being discounted in this promotion.</span></td>
<td class="entry" data-valign="top" width="9.70873786407767%" headers="d194549e817 ">Yes</td>
<td class="entry" data-valign="top" width="38.83495145631068%" headers="d194549e820 "><span class="ph">Allowed Fee types: <var class="keyword varname">ReferralFee</var>, <var class="keyword varname">VariableClosingFee</var>, <var class="keyword varname">PerItemFee</var>, <var class="keyword varname">FBAFees</var>, <var class="keyword varname">FBAPickAndPack</var>, <var class="keyword varname">FBAWeightHandling</var>, <var class="keyword varname">FBAOrderHandling</var>, <var class="keyword varname">FBADeliveryServicesFee</var>. </span>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="17.475728155339805%" headers="d194549e811 "><span class="keyword parmname">FeeDiscountType</span></td>
<td class="entry" data-valign="top" width="33.98058252427184%" headers="d194549e814 "><span class="ph">The type of promotion you will be receiving for your fees.</span></td>
<td class="entry" data-valign="top" width="9.70873786407767%" headers="d194549e817 ">Yes</td>
<td class="entry" data-valign="top" width="38.83495145631068%" headers="d194549e820 "><span class="ph">Either <var class="keyword varname">Fixed</var>, <var class="keyword varname">Discount</var>, or <var class="keyword varname">Percentage                                                 points off</var>.</span>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="17.475728155339805%" headers="d194549e811 "><span class="keyword parmname">PriceThreshold</span></td>
<td class="entry" data-valign="top" width="33.98058252427184%" headers="d194549e814 "><span class="ph">The qualifying threshold offer price, or less, that must be met for the promotion to apply.</span></td>
<td class="entry" data-valign="top" width="9.70873786407767%" headers="d194549e817 ">No</td>
<td class="entry" data-valign="top" width="38.83495145631068%" headers="d194549e820 "><p><span class="ph">Type: <a href="Notifications_MWSPushNotificationCommon.md#Notifications_MWSPushNotificationCommon__ComplexTypes" class="xref"><var class="keyword varname">MoneyType</var></a></span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="17.475728155339805%" headers="d194549e811 "><span class="keyword parmname">FeeDiscountMonetaryAmount</span></td>
<td class="entry" data-valign="top" width="33.98058252427184%" headers="d194549e814 "><span class="ph">The amount you will receive off of your fees if the <var class="keyword varname">FeeDiscountType</var> involves a monetary amount.</span></td>
<td class="entry" data-valign="top" width="9.70873786407767%" headers="d194549e817 ">No</td>
<td class="entry" data-valign="top" width="38.83495145631068%" headers="d194549e820 "><span class="ph">If the <span class="keyword parmname">FeeDiscountType</span> involves a monetary amount, this value will be populated.</span>
<p><span class="ph">Type: <a href="Notifications_MWSPushNotificationCommon.md#Notifications_MWSPushNotificationCommon__ComplexTypes" class="xref"><var class="keyword varname">MoneyType</var></a></span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="17.475728155339805%" headers="d194549e811 "><span class="keyword parmname">FeeDiscountValue</span></td>
<td class="entry" data-valign="top" width="33.98058252427184%" headers="d194549e814 "><span class="ph">The percentage discount of your fees if the <var class="keyword varname">FeeDiscountType</var> involves a non-monetary amount.</span></td>
<td class="entry" data-valign="top" width="9.70873786407767%" headers="d194549e817 ">No</td>
<td class="entry" data-valign="top" width="38.83495145631068%" headers="d194549e820 "><span class="ph">If the <span class="keyword parmname">FeeDiscountType</span> involves a non-monetary amount, this value will be populated.</span>
<p><span class="ph">Type: xs:BigDecimal</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="17.475728155339805%" headers="d194549e811 "><span class="keyword parmname">FeesEstimate</span></td>
<td class="entry" data-valign="top" width="33.98058252427184%" headers="d194549e814 "><span class="ph">The fee estimate for this promotion, if it is available. The estimate assumes that all condition required for the promotion have been met.</span></td>
<td class="entry" data-valign="top" width="9.70873786407767%" headers="d194549e817 ">No</td>
<td class="entry" data-valign="top" width="38.83495145631068%" headers="d194549e820 ">Type: <a href="#FeeEstimate" class="xref" title="The details of the fee estimate for this promotion, if it is available."><var class="keyword varname">FeesEstimate</var></a></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="FeeEstimate" class="topic nested1">

## FeesEstimate

<div class="body">

<span class="ph">The details of the fee estimate for this promotion, if
it is available.</span>

<div class="section">

### FeesEstimate Attributes

The following table shows the child elements of the <span
class="keyword parmname">FeesEstimate</span> element:

<div class="tablenoborder">

| Name                                                      | Description                                                                                               | Required | Value                                                                                                                                                                                                                                   |
|-----------------------------------------------------------|-----------------------------------------------------------------------------------------------------------|----------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| <span class="keyword parmname">TimeOfFeesEstimated</span> | <span class="ph">The date time when the fees were estimated.</span>                                       | Yes      | <span class="ph">Type: xs:dateTime</span>                                                                                                                                                                                               |
| <span class="keyword parmname">TotalFeesEstimate</span>   | <span class="ph">The total amount of fees if the price is lowered to or below the price threshold.</span> | Yes      | <span class="ph">Type: <a href="Notifications_MWSPushNotificationCommon.md#Notifications_MWSPushNotificationCommon__ComplexTypes" class="xref"><var class="keyword varname">MoneyType</var></a></span>                                |
| <span class="keyword parmname">FeeDetailList</span>       | <span class="ph">An itemization of the `TotalFeesEstimate`).</span>                                       | Yes      | Type: List of <a href="#FeeDetail" class="xref" title="The FeeDetail data type is a container for an itemization of fee estimates. It can contain other FeeDetail elements as needed."><var class="keyword varname">FeeDetail</var></a> |

</div>

</div>

</div>

</div>

<div id="FeeDetail" class="topic nested1">

## FeeDetail

<div class="body">

<span class="ph">The FeeDetail data type is a container for an
itemization of fee estimates. It can contain other FeeDetail elements as
needed.</span>

<div class="section">

### FeeDetail Attributes

The following table shows the attributes of a <span
class="keyword parmname">FeeDetail</span> element:

<div class="tablenoborder">

<table id="FeeDetail__table_ktl_csj_ll" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d194549e1256" class="entry" data-valign="top" width="17.475728155339805%">Name</th>
<th id="d194549e1259" class="entry" data-valign="top" width="33.98058252427184%">Description</th>
<th id="d194549e1262" class="entry" data-valign="top" width="9.70873786407767%">Required</th>
<th id="d194549e1265" class="entry" data-valign="top" width="38.83495145631068%">Value</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="17.475728155339805%" headers="d194549e1256 "><span class="keyword parmname">FeeType</span></td>
<td class="entry" data-valign="top" width="33.98058252427184%" headers="d194549e1259 "><span class="ph">The type of fees charged.</span></td>
<td class="entry" data-valign="top" width="9.70873786407767%" headers="d194549e1262 ">Yes</td>
<td class="entry" data-valign="top" width="38.83495145631068%" headers="d194549e1265 "><span class="ph">Allowed Fee types: <var class="keyword varname">ReferralFee</var>, <var class="keyword varname">VariableClosingFee</var>, <var class="keyword varname">PerItemFee</var>, <var class="keyword varname">FBAFees</var>, <var class="keyword varname">FBAPickAndPack</var>, <var class="keyword varname">FBAWeightHandling</var>, <var class="keyword varname">FBAOrderHandling</var>, <var class="keyword varname">FBADeliveryServicesFee</var>. </span>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="17.475728155339805%" headers="d194549e1256 "><span class="keyword parmname">FeeAmount</span></td>
<td class="entry" data-valign="top" width="33.98058252427184%" headers="d194549e1259 "><span class="ph"> The fee amount corresponding to the fee type.</span></td>
<td class="entry" data-valign="top" width="9.70873786407767%" headers="d194549e1262 ">Yes</td>
<td class="entry" data-valign="top" width="38.83495145631068%" headers="d194549e1265 "><span class="ph">Type: <a href="Notifications_MWSPushNotificationCommon.md#Notifications_MWSPushNotificationCommon__ComplexTypes" class="xref"><var class="keyword varname">MoneyType</var></a></span></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="17.475728155339805%" headers="d194549e1256 "><span class="keyword parmname">FeePromotion</span></td>
<td class="entry" data-valign="top" width="33.98058252427184%" headers="d194549e1259 "><span class="ph"> The fee promotion amount corresponding to the fee type.</span></td>
<td class="entry" data-valign="top" width="9.70873786407767%" headers="d194549e1262 ">No</td>
<td class="entry" data-valign="top" width="38.83495145631068%" headers="d194549e1265 "><span class="ph">Type: <a href="Notifications_MWSPushNotificationCommon.md#Notifications_MWSPushNotificationCommon__ComplexTypes" class="xref"><var class="keyword varname">MoneyType</var></a></span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="17.475728155339805%" headers="d194549e1256 "><span class="keyword parmname">TaxAmount</span></td>
<td class="entry" data-valign="top" width="33.98058252427184%" headers="d194549e1259 "><span class="ph"> The tax calculated over fee that would be charged to the seller.</span></td>
<td class="entry" data-valign="top" width="9.70873786407767%" headers="d194549e1262 ">No</td>
<td class="entry" data-valign="top" width="38.83495145631068%" headers="d194549e1265 "><span class="ph">Type: <a href="Notifications_MWSPushNotificationCommon.md#Notifications_MWSPushNotificationCommon__ComplexTypes" class="xref"><var class="keyword varname">MoneyType</var></a></span></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="17.475728155339805%" headers="d194549e1256 "><span class="keyword parmname">FinalFee</span></td>
<td class="entry" data-valign="top" width="33.98058252427184%" headers="d194549e1259 "><span class="ph">The final fee that would be charged to the seller.</span></td>
<td class="entry" data-valign="top" width="9.70873786407767%" headers="d194549e1262 ">Yes</td>
<td class="entry" data-valign="top" width="38.83495145631068%" headers="d194549e1265 "><span class="ph">The <var class="keyword varname">FeeAmount</var> minus the <var class="keyword varname">FeePromotion</var>.</span>
<p><span class="ph">Type: <a href="Notifications_MWSPushNotificationCommon.md#Notifications_MWSPushNotificationCommon__ComplexTypes" class="xref"><var class="keyword varname">MoneyType</var></a></span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="17.475728155339805%" headers="d194549e1256 "><span class="keyword parmname">IncludedFeeDetailList</span></td>
<td class="entry" data-valign="top" width="33.98058252427184%" headers="d194549e1259 "><span class="ph"> A structured list of FeeDetail that contains the itemization of a specific fee type.</span></td>
<td class="entry" data-valign="top" width="9.70873786407767%" headers="d194549e1262 ">No</td>
<td class="entry" data-valign="top" width="38.83495145631068%" headers="d194549e1265 ">Type: List of <a href="#FeeDetail" class="xref" title="The FeeDetail data type is a container for an itemization of fee estimates. It can contain other FeeDetail elements as needed."><var class="keyword varname">FeeDetail</var></a></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="Examples" class="topic reference nested1">

## Examples

<div class="body refbody">

<div class="section">

<span class="ph">Amazon MWS returns an XML file that contains the
response to a successful request or subscription. If the request is
unsuccessful, the main response element is <span
class="keyword apiname">ErrorResponse</span>. For more information, see
<a href="../dev_guide/DG_ResponseFormat.md" class="xref">Response format</a>
in the <span class="ph">Amazon MWS Developer Guide</span>.</span>

</div>

<div class="section">

### Example notification 1

**ASIN-level pricing promotion** (meaning: lower your price to receive a
discount off of your fees):

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre
<?xml version="1.0"?>
<FeePromotionNotification xmlns="http://mws.amazonservices.com/schema/Subscription/2011-10-01>
    <MerchantId>ATEXAMPLERGR</MerchantId>
    <MarketplaceId>ATVPDKIKX0DER</MarketplaceId>
    <FeePromotionType>Pricing</FeePromotionType>
    <FeePromotionTypeDescription>A promotion encouraging you to lower your price on an item to receive lower fees.</FeePromotionTypeDescription>
    <PromotionActiveTimeRange>
        <EffectiveFromDate>2015-07-19T23:15:11.859Z </EffectiveFromDate>
        <EffectiveThroughDate>2015-08-19T23:15:11.859Z </EffectiveThroughDate>
    </PromotionActiveTimeRange >
    <IdentifierList>
        <Identifier>
            <IdentifierValueList>
                <IdentifierValue>
                    <IdentifierValueId>B0002GTTRC</IdentifierValueId>
                </IdentifierValue>
            </IdentifierValueList>
            <IdentifierType>ASIN</IdentifierType>
        </Identifier>
    </IdentifierList>
    <PromotionInformationList>
        <PromotionInformation>
            <FeeType>ReferralFee</FeeType>
            <FeeDiscountType>Percentage points off</FeeDiscountType>
            <FeeDiscountValue>6.0</FeeDiscountValue>
            <PriceThreshold>
                <CurrencyCode>USD</CurrencyCode>
                <Amount>100.00</Amount>
            </PriceThreshold>
            <FeesEstimate>
                <TimeOfFeesEstimated>2015-07-12T23:15:11.859Z </TimeOfFeesEstimated>
                <TotalFeesEstimate>
                    <CurrencyCode>USD</CurrencyCode>
                    <Amount>6.30</Amount>
                </TotalFeesEstimate>
                <FeeDetailList>
                    <FeeDetail>
                        <FeeType>ReferralFee</FeeType>
                        <FeeAmount>
                            <CurrencyCode>USD</CurrencyCode>
                            <Amount>10.00</Amount>
                        </FeeAmount>
                        <FeePromotion>
                            <CurrencyCode>USD</CurrencyCode>
                            <Amount>6.00</Amount>
                        </FeePromotion>
                        <FinalFee>
                            <CurrencyCode>USD</CurrencyCode>
                            <Amount>4.00</Amount>
                        </FinalFee>
                    </FeeDetail>
                    <FeeDetail>
                        <FeeType>VariableClosingFee</FeeType>
                        <FeeAmount>
                            <CurrencyCode>USD</CurrencyCode>
                            <Amount>0.00</Amount>
                        </FeeAmount>
                    </FeeDetail>
                    <FeeDetail>
                        <FeeType>PerItemFee</FeeType>
                        <FeeAmount>
                            <CurrencyCode>USD</CurrencyCode>
                            <Amount>0.00</Amount>
                        </FeeAmount>
                    </FeeDetail>
                    <FeeDetail>
                        <FeeType>FBAFees</FeeType>
                        <FeeAmount>
                            <CurrencyCode>USD</CurrencyCode>
                            <Amount>2.30</Amount>
                        </FeeAmount>
                        <IncludedFeeList>
                            <FeeDetail>
                                <FeeType>FBAOrderHandling</FeeType>
                                <FeeAmount>
                                    <CurrencyCode>USD</CurrencyCode>
                                    <Amount>1.00</Amount>
                                </FeeAmount>
                            </FeeDetail>
                            <FeeDetail>
                                <FeeType>FBAPickAndPack</FeeType>
                                <FeeAmount>
                                    <CurrencyCode>USD</CurrencyCode>
                                    <Amount>0.30</Amount>
                                </FeeAmount>
                            </FeeDetail>
                            <FeeDetail>
                                <FeeType>FBAWeightHandling</FeeType>
                                <FeeAmount>
                                    <CurrencyCode>USD</CurrencyCode>
                                    <Amount>1.00</Amount>
                                </FeeAmount>
                            </FeeDetail>
                        </IncludedFeeList>
                    </FeeDetail>
                </FeeDetailList>
            </FeesEstimate>
        </PromotionInformation>
    </PromotionInformationList>
</FeePromotionNotification>
<ResponseMetadata>
    <RequestId>21534f03-e7e3-4d9a-9bea-0e15add3326d</RequestId>
</ResponseMetadata>
```

<a href="#Examples" class="xref">↑ Top</a>

</div>

</div>

<div class="section">

### Example notification 2

**ASIN-level selection promotion** (meaning: add this ASIN to your
selection to receive a discount off of your fees):

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre
<?xml version="1.0"?>
<FeePromotionNotification xmlns="http://mws.amazonservices.com/schema/Subscription/2011-10-01">
    <MerchantId>ATEXAMPLERGR</MerchantId>
    <MarketplaceId>ATVPDKIKX0DER</MarketplaceId>
    <FeePromotionType>SelectionASIN</FeePromotionType>
    <FeePromotionTypeDescription>A promotion encouraging you to list a particular ASIN or set of ASINs.</FeePromotionTypeDescription>
    <PromotionActiveTimeRange>
        <EffectiveFromDate>2015-07-19T23:15:11.859Z </EffectiveFromDate>
        <EffectiveThroughDate>2015-08-19T23:15:11.859Z </EffectiveThroughDate>
    </PromotionActiveTimeRange >
    <IdentifierList>
        <Identifier>
            <IdentifierValueList>
                <IdentifierValue>
                    <IdentifierValueId>B0002GTTRC</IdentifierValueId>
                </IdentifierValue>
            </IdentifierValueList>
            <IdentifierType>ASIN</IdentifierType>
        </Identifier>
    </IdentifierList>
    <PromotionInformationList>
        <PromotionInformation>
            <FeeType>ReferralFee</FeeType>
            <FeeDiscountType>PercentagePoints</FeeDiscountType>
            <FeeDiscountValue>6.0</FeeDiscountValue>
        </PromotionInformation>
    </PromotionInformationList>
</FeePromotionNotification>
<ResponseMetadata>
    <RequestId>21534f03-e7e3-4d9a-9bea-0e15add3326d</RequestId>
</ResponseMetadata>
```

<a href="#Examples" class="xref">↑ Top</a>

</div>

</div>

<div class="section">

### Example notification 3

**Category-level selection promotion** (meaning: add this category to
your selection to receive a discount off your fees):

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre
<?xml version="1.0"?>
<FeePromotionNotification xmlns="http://mws.amazonservices.com/schema/Subscription/2011-10-01">
    <MerchantId>ATEXAMPLERGR</MerchantId>
    <MarketplaceId>ATVPDKIKX0DER</MarketplaceId>
    <FeePromotionType>SelectionCategory</FeePromotionType>
    <FeePromotionTypeDescription>A promotion encouraging you to begin selling new items in a  brand, category or area to increase sales..</FeePromotionTypeDescription>
    <PromotionActiveTimeRange>
        <EffectiveFromDate>2015-07-19T23:15:11.859Z </EffectiveFromDate>
        <EffectiveThroughDate>2015-08-19T23:15:11.859Z </EffectiveThroughDate>
    </PromotionActiveTimeRange >
    <IdentifierList>
        <Identifier>
            <IdentifierValueList>
                <IdentifierValue>
                    <IdentifierValueId>123456789</IdentifierValueId>
                    <IdentifierValueFriendlyName>Espresso Machines</IdentifierValueFriendlyName>
                </IdentifierValue>
                <IdentifierValue>
                    <IdentifierValueId>987654321</IdentifierValueId>
                    <IdentifierValueFriendlyName>Espresso Accessories</IdentifierValueFriendlyName>
                </IdentifierValue>
            </IdentifierValueList>
            <IdentifierType>BrowseNode</IdentifierType>
        </Identifier>
    </IdentifierList>
    <PromotionInformationList>
        <PromotionInformation>
            <FeeType>ReferralFee</FeeType>
            <FeeDiscountType>PercentagePoints</FeeDiscountType>
            <FeeDiscountValue>6.0</FeeDiscountValue>
        </PromotionInformation>
    </PromotionInformationList>
</FeePromotionNotification>
<ResponseMetadata>
    <RequestId>21534f03-e7e3-4d9a-9bea-0e15add3326d</RequestId>
</ResponseMetadata>
```

<a href="#Examples" class="xref">↑ Top</a>

</div>

</div>

</div>

</div>

<div id="RelatedTopics" class="topic nested1">

## Related topics

<div class="body">

<a href="../subscriptions/Subscriptions_Overview.md" class="xref">What you should know about the Amazon MWS Subscriptions API section</a>

<a href="https://sellercentral.amazon.com/gp/help/200336920" class="xref">Selling on Amazon Fee Schedule</a>

<a href="https://sellercentral.amazon.com/gp/help/201185590" class="xref">FBA_Fee_Overview</a>

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
