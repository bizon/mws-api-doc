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
<span id="MWSDX_dep_notice"></span>

### Deprecation Notice:

Amazon Marketplace Web Service (MWS) will no longer be available after
**December 31, 2023**. All MWS developers must migrate to Selling
Partner API (SP-API) to avoid service disruptions. Refer to the
[Migration
Hub](https://developer-docs.amazon.com/sp-api/page/migration-hub) for
more information.

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

<div id="Products_GetLowestPricedOffersForSKU" class="nested0">

# GetLowestPricedOffersForSKU

<div class="body">

<span class="ph">Returns lowest priced offers for a single product,
based on <span class="keyword parmname">SellerSKU</span>.</span>

</div>

<div id="Description" class="topic concept nested1">

## Description

<div class="body conbody">

The <span class="keyword apiname">GetLowestPricedOffersForSKU</span>
operation returns the top 20 offers for a given <span
class="keyword parmname">MarketplaceId</span>, <span
class="keyword parmname">SellerSKU</span>, and <span
class="keyword parmname">ItemCondition</span> that you specify. The top
20 offers are determined by the lowest landed price, which is the price
plus shipping minus Amazon Points. If multiple sellers are charging the
same landed price, the results will be returned in random order.

<div class="section">

### Pricing Models

This operation returns pricing for active offer listings based on two
pricing models: New Buy Box Price and Used Buy Box Price. These pricing
models are equivalent to the main Buy Box Price and the subordinate Buy
Box Price, respectively, on a detail page from an Amazon marketplace
website. Products with active offer listings might not return either of
these prices. This could happen, for example, if none of the sellers
with offer listings for a product are qualified for the New Buy Box or
the Used Buy Box. Your own price for the <span
class="keyword parmname">SellerSKU</span> that you specify is not
excluded from the response, so your price will be returned if it is
among the lowest listed prices. The number of offer listings, the
trade-in value, and the sales rankings for the <span
class="keyword parmname">SellerSKU</span> that you specify are also
returned.

</div>

<div class="section">

### Availability

This operation is available in all marketplaces.

</div>

<div class="section">

### Throttling

<div class="p">

<div class="tablenoborder">

| Maximum request quota | Restore rate            | Hourly request quota  |
|-----------------------|-------------------------|-----------------------|
| 10 requests           | Five items every second | 200 requests per hour |

</div>

This quota and restore rate is shared with
<a href="Products_GetLowestPricedOffersForASIN.md" class="xref" title="Returns lowest priced offers for a single product, based on ASIN.">GetLowestPricedOffersForASIN</a>.
<span class="ph">Operations in the <span class="ph">Products API
section</span> that send lists of items as input parameters have restore
rates that are measured by item. For information on per-item throttling,
see
<a href="Products_Throttling.md" class="xref" title="Describes the throttling policy for the Products API section.">Throttling in the Products API</a>.
For definitions of throttling terminology and for a complete explanation
of throttling, see
<a href="../dev_guide/DG_Throttling.md" class="xref">Throttling: Limits to how often you can submit requests</a>
in the <span class="ph">Amazon MWS Developer Guide</span>. </span>

</div>

Because you can only query 200 SKUs or ASINs per hour, after you call
<span class="keyword apiname">GetLowestPricedOffersForSKU</span> to get
the top 20 offers for a SKU you sell, you should call <span
class="keyword apiname">CreateSubscription</span> and subscribe to an
<span class="keyword parmname">AnyOfferChanged</span> notification. That
will inform you if the top 20 offers change for any SKU you sell without
using any of your <span
class="keyword apiname">GetLowestPricedOffersForSKU</span> quota.

</div>

</div>

</div>

<div id="RequestParameters" class="topic reference nested1">

## Request parameters

<div class="body refbody">

<div class="section">

<span class="ph">For more information about the request parameters that
are required for all <span class="ph">Amazon MWS</span> operations, see
<a href="../dev_guide/DG_RequiredRequestParameters.md" class="xref">Required request parameters</a>
in the <span class="ph">Amazon MWS Developer Guide</span>.</span>

</div>

<div class="tablenoborder">

<table id="RequestParameters__RequestParametersTable" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d245651e241" class="entry" data-valign="top" width="34.18367346938776%">Name</th>
<th id="d245651e244" class="entry" data-valign="top" width="25.510204081632654%">Description</th>
<th id="d245651e247" class="entry" data-valign="top" width="12.755102040816327%">Required</th>
<th id="d245651e250" class="entry" data-valign="top" width="27.551020408163268%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d245651e241 "><span class="keyword parmname">MarketplaceID</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d245651e244 ">A marketplace identifier. Specifies the marketplace from which prices are returned.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d245651e247 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d245651e250 "><span class="ph">For a list of <span class="keyword parmname">MarketplaceId</span> values, see <a href="../dev_guide/DG_Endpoints.md" class="xref">Amazon MWS endpoints and MarketplaceId values</a> in the <span class="ph">Amazon MWS Developer Guide</span>.</span>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d245651e241 "><span class="keyword parmname">SellerSKU</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d245651e244 ">The <span class="keyword parmname">SellerSKU</span> that identifies the product to query.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d245651e247 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d245651e250 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d245651e241 "><span class="keyword parmname">ItemCondition</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d245651e244 ">Filters the results based on item condition.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d245651e247 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d245651e250 "><span class="keyword parmname">ItemCondition</span> values: <var class="keyword varname">New</var>, <var class="keyword varname">Used</var>, <var class="keyword varname">Collectible</var>, <var class="keyword varname">Refurbished</var>, <var class="keyword varname">Club</var>.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
</tbody>
</table>

</div>

<div class="section">

### Notes

1.  <span class="keyword parmname">SellerSKU</span> is qualified by your
    <span class="keyword parmname">SellerId</span>, which is included
    with every <span class="ph">Amazon Marketplace Web Service (Amazon
    MWS)</span> operation that you submit.
2.  If you specify a <span class="keyword parmname">SellerSKU</span>
    that identifies a variation parent ASIN, this operation returns the
    <span class="keyword parmname">InvalidParamaterValue</span> error. A
    variation parent ASIN represents a generic product that cannot be
    sold. Variation child ASINs represent products that have specific
    characteristics (such as size and color) and can be sold.

</div>

</div>

</div>

<div id="ResponseElements" class="topic reference nested1">

## Response elements

<div class="body refbody">

<div class="section">

The response elements that the <span
class="keyword apiname">GetLowestPricedOffersForSKU</span> operation
returns are described by the publicly available XSD
<a href="http://g-ecx.images-amazon.com/images/G/01/mwsportal/doc/en_US/products/ProductsAPI_Response.xsd" class="xref">ProductsAPI_Response.xsd</a>.
The top-level elements returned by the <span
class="keyword apiname">GetLowestPricedOffersForSKU</span> operation
are:

</div>

<div class="section">

### GetLowestPricedOffersForSKUResult Elements

<div class="tablenoborder">

| Name                                                                                                                                                                                                                                                    | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| <a href="#Identifier" class="xref" title="Identifies a product by marketplace and SKU.">Identifier</a>                                                                                                                                                  | <span class="ph">Identifies a product by marketplace and SKU.</span>                                                                                                                                                                                                                                                                                                                                                                                            |
| <a href="#Summary" class="xref" title="Contains price information about the product, including the LowestPrices and BuyBoxPrices, the ListPrice, the SuggestedLowerPricePlusShipping, and NumberOfOffers and NumberOfBuyBoxEligibleOffers.">Summary</a> | <span class="ph">Contains price information about the product, including the <span class="keyword parmname">LowestPrices</span> and <span class="keyword parmname">BuyBoxPrices</span>, the <span class="keyword parmname">ListPrice</span>, the <span class="keyword parmname">SuggestedLowerPricePlusShipping</span>, and <span class="keyword parmname">NumberOfOffers</span> and <span class="keyword parmname">NumberOfBuyBoxEligibleOffers</span>.</span> |
| <a href="#Offers" class="xref" title="A list of Offer elements, including Points, ShippingTime, Shipping, ShipsFrom, ListingPrice, SellerFeedbackRating, and more.">Offers</a>                                                                          | <span class="ph">A list of <a href="#Offers__Offer" class="xref">Offer</a> elements, including <span class="keyword parmname">Points</span>, <span class="keyword parmname">ShippingTime</span>, <span class="keyword parmname">Shipping</span>, <span class="keyword parmname">ShipsFrom</span>, <span class="keyword parmname">ListingPrice</span>, <span class="keyword parmname">SellerFeedbackRating</span>, and more.</span>                              |

</div>

</div>

<div class="section">

### GetLowestPricedOffersForSKUResult Attributes

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
<th id="d245651e612" class="entry" data-valign="top" width="34.18367346938776%">Name</th>
<th id="d245651e615" class="entry" data-valign="top" width="25.510204081632654%">Description</th>
<th id="d245651e618" class="entry" data-valign="top" width="12.755102040816327%">Required</th>
<th id="d245651e621" class="entry" data-valign="top" width="27.551020408163268%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d245651e612 "><span class="keyword parmname">MarketplaceId</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d245651e615 "><span class="ph">An encrypted, Amazon-defined marketplace identifier.</span></td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d245651e618 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d245651e621 ">Type: <a href="Products_Datatypes.md#MarketplaceType" class="xref" title="An encrypted, Amazon-defined marketplace identifier.">MarketplaceType</a></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d245651e612 "><span class="keyword parmname">SKU</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d245651e615 ">The product queried.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d245651e618 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d245651e621 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d245651e612 "><span class="keyword parmname">ItemCondition</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d245651e615 ">The item condition.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d245651e618 ">Yes</td>
<td id="ResponseElements__d51101e1547" class="entry" data-valign="top" width="27.551020408163268%" headers="d245651e621 "><span class="keyword parmname">ItemCondition</span> values: <var class="keyword varname">New</var>, <var class="keyword varname">Used</var>, <var class="keyword varname">Collectible</var>, <var class="keyword varname">Refurbished</var>, <var class="keyword varname">Club</var>.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d245651e612 "><span class="keyword parmname">Status</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d245651e615 ">The status of the operation.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d245651e618 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d245651e621 "><span class="keyword parmname">Status</span> values: <var class="keyword varname">Success</var>, <var class="keyword varname">ActiveButTooSoonForProcessing</var>, <var class="keyword varname">NoBuyableOffers</var>, or <var class="keyword varname">NoOfferDueToMissingShippingCharge</var>.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
</tbody>
</table>

</div>

<div class="p">

Except for <span class="keyword parmname">Status</span>, each of these
attributes match the original request parameters for the call. <span
class="keyword parmname">Status</span> represents the overall result of
the operation with one of the following values:

-   `Success`
-   `ActiveButTooSoonForProcessing` - the item is active but no offers
    can be displayed until `OffersAvailableTime`
-   `NoBuyableOffers` - the item is not being offered for sale
-   `NoOfferDueToMissingShippingCharge` - the shipping charge is absent
    (for example, when the shipping charge varies by region)

</div>

</div>

</div>

</div>

<div id="Identifier" class="topic reference nested1">

## Identifier

<div class="body refbody">

<span id="sd_Identifier" class="ph">Identifies a product by marketplace
and SKU.</span>

<div class="section">

### Identifier Elements

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
<th id="d245651e815" class="entry" data-valign="top" width="34.18367346938776%">Name</th>
<th id="d245651e818" class="entry" data-valign="top" width="25.510204081632654%">Description</th>
<th id="d245651e821" class="entry" data-valign="top" width="12.755102040816327%">Required</th>
<th id="d245651e824" class="entry" data-valign="top" width="27.551020408163268%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d245651e815 "><span class="keyword parmname">MarketplaceId</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d245651e818 "><span class="ph">An encrypted, Amazon-defined marketplace identifier.</span></td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d245651e821 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d245651e824 ">Type: <a href="Products_Datatypes.md#MarketplaceType" class="xref" title="An encrypted, Amazon-defined marketplace identifier.">MarketplaceType</a></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d245651e815 "><span class="keyword parmname">SellerSKU</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d245651e818 "><span class="ph">The Seller SKU of the item.</span></td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d245651e821 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d245651e824 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d245651e815 "><span class="keyword parmname">ItemCondition</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d245651e818 ">The item condition.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d245651e821 ">Yes</td>
<td id="Identifier__d51101e1547" class="entry" data-valign="top" width="27.551020408163268%" headers="d245651e824 "><span class="keyword parmname">ItemCondition</span> values: <var class="keyword varname">New</var>, <var class="keyword varname">Used</var>, <var class="keyword varname">Collectible</var>, <var class="keyword varname">Refurbished</var>, <var class="keyword varname">Club</var>.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d245651e815 "><span class="keyword parmname">TimeOfOfferChange</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d245651e818 ">The update time for the offer.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d245651e821 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d245651e824 ">In <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="Summary" class="topic reference nested1">

## Summary

<div class="body refbody">

<span id="sd_Summary" class="ph">Contains price information about the
product, including the <span
class="keyword parmname">LowestPrices</span> and <span
class="keyword parmname">BuyBoxPrices</span>, the <span
class="keyword parmname">ListPrice</span>, the <span
class="keyword parmname">SuggestedLowerPricePlusShipping</span>, and
<span class="keyword parmname">NumberOfOffers</span> and <span
class="keyword parmname">NumberOfBuyBoxEligibleOffers</span>.</span>

<div class="section">

### Summary Elements

<div class="tablenoborder">

<table id="Summary__Summary_elements" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d245651e1000" class="entry" data-valign="top" width="34.18367346938776%">Name</th>
<th id="d245651e1003" class="entry" data-valign="top" width="25.510204081632654%">Description</th>
<th id="d245651e1006" class="entry" data-valign="top" width="12.755102040816327%">Required</th>
<th id="d245651e1009" class="entry" data-valign="top" width="27.551020408163268%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d245651e1000 "><span class="keyword parmname">TotalOfferCount</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d245651e1003 ">The number of unique offers contained in <span class="keyword parmname">NumberOfOffers</span>.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d245651e1006 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d245651e1009 "><span class="ph">Type: xs:int</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d245651e1000 "><span class="keyword parmname">NumberOfOffers</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d245651e1003 ">A list that contains the total number of offers for the item for the given conditions and fulfillment channels.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d245651e1006 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d245651e1009 ">Type: <a href="Products_Datatypes.md#OfferCountType" class="xref" title="The total number of offers for the specified condition and fulfillment channel.">OfferCountType</a></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d245651e1000 "><span class="keyword parmname">LowestPrices</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d245651e1003 ">A list of the lowest prices for the item.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d245651e1006 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d245651e1009 ">Type: List of <a href="Products_Datatypes.md#LowestPrice" class="xref" title="The lowest price of an item.">LowestPrice</a></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d245651e1000 "><span class="keyword parmname">BuyBoxPrices</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d245651e1003 ">A list of item prices.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d245651e1006 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d245651e1009 ">Type: List of <a href="Products_Datatypes.md#BuyBoxPrice" class="xref" title="The price of an item that is displayed in the Buy Box.">BuyBoxPrice</a></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d245651e1000 "><span class="keyword parmname">ListPrice</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d245651e1003 ">The list price of the item as suggested by the manufacturer.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d245651e1006 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d245651e1009 ">Type: <a href="Products_Datatypes.md#MoneyType" class="xref" title="An amount of money in a specified currency.">MoneyType</a></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d245651e1000 "><span class="keyword parmname">SuggestedLowerPricePlusShipping</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d245651e1003 ">The suggested lower price of the item, including shipping and Amazon Points. The suggested lower price is based on a range of factors, including historical selling prices, recent Buy Box-eligible prices, and input from customers for your products.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d245651e1006 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d245651e1009 ">Type: <a href="Products_Datatypes.md#MoneyType" class="xref" title="An amount of money in a specified currency.">MoneyType</a></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d245651e1000 "><span class="keyword parmname">SalesRankings</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d245651e1003 ">A list that contains the sales rank of the item in the given product categories.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d245651e1006 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d245651e1009 ">Type: List of <a href="Products_Datatypes.md#SalesRank" class="xref" title="The sales rank of the item in the given product category.">SalesRank</a></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d245651e1000 "><span class="keyword parmname">BuyBoxEligibleOffers</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d245651e1003 ">A list that contains the total number of offers that are eligible for the Buy Box for the given conditions and fulfillment channels.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d245651e1006 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d245651e1009 ">Type: <a href="Products_Datatypes.md#OfferCountType" class="xref" title="The total number of offers for the specified condition and fulfillment channel.">OfferCountType</a></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d245651e1000 "><span class="keyword parmname">CompetitivePriceThreshold</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d245651e1003 ">This price is based on competitive prices from other retailers (excluding other Amazon sellers). The offer may be ineligible for the Buy Box if the seller's price + shipping (minus Amazon Points) is greater than this competitive price.
<div class="note note">
<span class="notetitle">Note:</span> In Japan, <span class="keyword parmname">CompetitivePriceThreshold</span> considers any points that a non-Amazon retailer applies to their selling price.
</div></td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d245651e1006 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d245651e1009 ">Type: <a href="Products_Datatypes.md#MoneyType" class="xref" title="An amount of money in a specified currency.">MoneyType</a></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d245651e1000 "><span class="keyword parmname">OffersAvailableTime</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d245651e1003 ">When the status is <var class="keyword varname">ActiveButTooSoonForProcessing</var>, this is the time when the offers will be available for processing.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d245651e1006 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d245651e1009 "><span class="ph">Type: xs:dateTime</span></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="Offers" class="topic reference nested1">

## Offers

<div class="body refbody">

<span id="sd_Offers" class="ph">A list of
<a href="#Offers__Offer" class="xref">Offer</a> elements, including
<span class="keyword parmname">Points</span>, <span
class="keyword parmname">ShippingTime</span>, <span
class="keyword parmname">Shipping</span>, <span
class="keyword parmname">ShipsFrom</span>, <span
class="keyword parmname">ListingPrice</span>, <span
class="keyword parmname">SellerFeedbackRating</span>, and more.</span>

<div class="section">

This list is the same length as the <span
class="keyword parmname">TotalOfferCount</span> provided in the
<a href="#Summary" class="xref" title="Contains price information about the product, including the LowestPrices and BuyBoxPrices, the ListPrice, the SuggestedLowerPricePlusShipping, and NumberOfOffers and NumberOfBuyBoxEligibleOffers.">Summary</a>
or 20, whichever is less.

</div>

<div id="Offers__Offer" class="section">

### Offer Element

<div class="tablenoborder">

| Name                                                       | Description                                                                                                                                                                                                                                | Required | Values                                                                                                                                                                                                                                           |
|------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| <span class="keyword parmname">SellerId</span>             | The seller identifier for the offer.                                                                                                                                                                                                       | Yes      | <span class="ph">Type: xs:string</span>                                                                                                                                                                                                          |
| <span class="keyword parmname">MyOffer</span>              | `true` if this is your offer.                                                                                                                                                                                                              | No       | <span class="ph">Type: xs:boolean</span>                                                                                                                                                                                                         |
| <span class="keyword parmname">SubCondition</span>         | The subcondition of the item. For example: <span class="ph">`New`, `Mint`, `Very Good`, `Good`, `Acceptable`, `Poor`, `Club`, `OEM`, `Warranty`, `Refurbished                     Warranty`, `Refurbished`, `Open Box`, or `Other`</span>. | Yes      | <span class="ph">Type: xs:string</span>                                                                                                                                                                                                          |
| <span class="keyword parmname">SellerFeedbackRating</span> | <span id="Offers__d51101e1452" class="ph">Information about the seller's feedback, including the percentage of positive feedback, and the total count of feedback received.</span>                                                         | No       | Type: <a href="Products_Datatypes.md#SellerFeedbackRating" class="xref" title="Information about the seller&#39;s feedback, including the percentage of positive feedback, and the total count of feedback received.">SellerFeedbackRating</a> |
| <span class="keyword parmname">ShippingTime</span>         | <span id="Offers__d51101e1381" class="ph">The maximum time within which the item will likely be shipped once an order has been placed.</span>                                                                                              | Yes      | Type: <a href="Products_Datatypes.md#DetailedShippingTimeType" class="xref" title="The time range in which an item will likely be shipped once an order has been placed.">DetailedShippingTimeType</a>                                         |
| <span class="keyword parmname">ListingPrice</span>         | The price of the item.                                                                                                                                                                                                                     | Yes      | Type: <a href="Products_Datatypes.md#MoneyType" class="xref" title="An amount of money in a specified currency.">MoneyType</a>                                                                                                                 |
| <span class="keyword parmname">Points</span>               | <span class="ph">The number of <span class="ph">Amazon Points</span> offered with the purchase of an item.</span>                                                                                                                          | No       | Type: <a href="Products_Datatypes.md#Points" class="xref" title="The number of Amazon Points offered with the purchase of an item. The Amazon Points program is only available in Japan.">Points</a>                                           |
| <span class="keyword parmname">Shipping</span>             | The shipping cost.                                                                                                                                                                                                                         | Yes      | Type: <a href="Products_Datatypes.md#MoneyType" class="xref" title="An amount of money in a specified currency.">MoneyType</a>                                                                                                                 |
| <span class="keyword parmname">ShipsFrom</span>            | <span id="Offers__d51101e1433" class="ph">The state and country from where the item is shipped.</span>                                                                                                                                     | No       | Type: <a href="Products_Datatypes.md#ShipsFrom" class="xref" title="The state and country from where the item is shipped.">ShipsFrom</a>                                                                                                       |
| <span class="keyword parmname">IsFulfilledByAmazon</span>  | `true` if the offer is fulfilled by Amazon.                                                                                                                                                                                                | Yes      | <span class="ph">Type: xs:boolean</span>                                                                                                                                                                                                         |
| <span class="keyword parmname">IsBuyBoxWinner</span>       | `true` if the offer is currently in the Buy Box. There can be up to two Buy Box winners at any time per ASIN, one that is eligible for Prime and one that is not eligible for Prime.                                                       | No       | <span class="ph">Type: xs:boolean</span>                                                                                                                                                                                                         |
| <span class="keyword parmname">IsFeaturedMerchant</span>   | `true` if the seller of the item is eligible to win the Buy Box.                                                                                                                                                                           | No       | <span class="ph">Type: xs:boolean</span>                                                                                                                                                                                                         |
| <span class="keyword parmname">ConditionNotes</span>       | Information about the condition of the item.                                                                                                                                                                                               | No       | <span class="ph">Type: xs:string</span>                                                                                                                                                                                                          |
| <span class="keyword parmname">PrimeInformation</span>     | Amazon Prime information.                                                                                                                                                                                                                  | No       | Type: <a href="Products_Datatypes.md#PrimeInformation" class="xref" title="Amazon Prime information.">PrimeInformation</a>                                                                                                                     |

</div>

</div>

</div>

</div>

<div id="Examples" class="topic reference nested1">

## Examples

<div class="body refbody">

<div class="section">

### Example query request

<span class="ph">For information about standard request requirements,
see
<a href="../dev_guide/DG_RequiredRequestParameters.md" class="xref">Required request parameters</a>.</span>

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre
POST /Products/2011-10-01 HTTP/1.1
Content-Type: x-www-form-urlencoded
Host: mws.amazonservices.com
User-Agent: <Your User Agent Header>

&SellerSKU=24478624
&AWSAccessKeyId=AKIAEXAMPLEFWR4TJ7ZQ
&Action= GetLowestPricedOffersForSKU
&MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
&MarketplaceId=ATVPDKIKX0DER
&ItemCondition=New
&SellerId=A1IMEXAMPLEWRC
&SignatureMethod=HmacSHA256
&SignatureVersion=2
&Timestamp=2015-05-22T21%3A23%3A31Z
&Version=2011-10-01
&Signature=V1uTEXAMPLE8HVCfobAqQDKzylYyTRWfv3X4SEXAMPLEY%3D
```

<a href="#Examples" class="xref">↑ Top</a>

</div>

</div>

<div class="section">

### Example response (Success)

<span class="ph">For information about standard response formatting, see
<a href="../dev_guide/DG_ResponseFormat.md" class="xref">Response format</a>.</span>

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre
<?xml version="1.0"?>
<GetLowestPricedOffersForSKUResponse 
    xmlns="http://mws.amazonservices.com/schema/Products/2011-10-01">
    <GetLowestPricedOffersForSKUResult MarketplaceID="ATVPDKIKX0DER" 
        SKU="GE Product" ItemCondition="New" status="Success">
        <Identifier>
            <MarketplaceId>ATVPDKIKX0DER</MarketplaceId>
            <SellerSKU>GE Product</SellerSKU>
            <ItemCondition>New</ItemCondition>
            <TimeOfOfferChange>2015-07-19T23:15:11.859Z</TimeOfOfferChange>
        </Identifier>
        <Summary>
            <TotalOfferCount>1</TotalOfferCount>
            <NumberOfOffers>
                <OfferCount condition="new" 
                    fulfillmentChannel="Amazon">1</OfferCount>
            </NumberOfOffers>
            <LowestPrices>
                <LowestPrice condition="new" fulfillmentChannel="Amazon">
                    <LandedPrice>
                        <CurrencyCode>USD</CurrencyCode>
                        <Amount>32.99</Amount>
                    </LandedPrice>
                    <ListingPrice>
                        <CurrencyCode>USD</CurrencyCode>
                        <Amount>32.99</Amount>
                    </ListingPrice>
                    <Shipping>
                        <CurrencyCode>USD</CurrencyCode>
                        <Amount>0.00</Amount>
                    </Shipping>
                </LowestPrice>
            </LowestPrices>
            <BuyBoxPrices>
                <BuyBoxPrice condition="New">
                    <LandedPrice>
                        <CurrencyCode>USD</CurrencyCode>
                        <Amount>32.99</Amount>
                    </LandedPrice>
                    <ListingPrice>
                        <CurrencyCode>USD</CurrencyCode>
                        <Amount>32.99</Amount>
                    </ListingPrice>
                    <Shipping>
                        <CurrencyCode>USD</CurrencyCode>
                        <Amount>0.00</Amount>
                    </Shipping>
                </BuyBoxPrice>
            </BuyBoxPrices>
            <ListPrice>
                <CurrencyCode>USD</CurrencyCode>
                <Amount>58.34</Amount>
            </ListPrice>
            <SuggestedLowerPricePlusShipping>
                <CurrencyCode>USD</CurrencyCode>
                <Amount>32.99</Amount>
            </SuggestedLowerPricePlusShipping>
            <BuyBoxEligibleOffers>
                <OfferCount condition="new" 
                    fulfillmentChannel="Amazon">1</OfferCount>
            </BuyBoxEligibleOffers>
        </Summary>
        <Offers>
            <Offer>
                <MyOffer>false</MyOffer>
                <SubCondition>new</SubCondition>
                <SellerFeedbackRating>
                    <SellerPositiveFeedbackRating>100.0</SellerPositiveFeedbackRating>
                    <FeedbackCount>1</FeedbackCount>
                </SellerFeedbackRating>
                <ShippingTime minimumHours="0" maximumHours="0" 
                    availabilityType="NOW"/>
                <ListingPrice>
                    <CurrencyCode>USD</CurrencyCode>
                    <Amount>32.99</Amount>
                </ListingPrice>
                <Shipping>
                    <CurrencyCode>USD</CurrencyCode>
                    <Amount>0.00</Amount>
                </Shipping>
                <IsFulfilledByAmazon>true</IsFulfilledByAmazon>
                <IsBuyBoxWinner>true</IsBuyBoxWinner>
                <IsFeaturedMerchant>true</IsFeaturedMerchant>
            </Offer>
        </Offers>
    </GetLowestPricedOffersForSKUResult>
    <ResponseMetadata>
        <RequestId>fd2e6c6d-0b6d-499b-9fea-074175c0547a</RequestId>
    </ResponseMetadata>
</GetLowestPricedOffersForSKUResponse>
```

<a href="#Examples" class="xref">↑ Top</a>

</div>

</div>

<div class="section">

### Example response (Success with no offers)

<span class="ph">For information about standard response formatting, see
<a href="../dev_guide/DG_ResponseFormat.md" class="xref">Response format</a>.</span>

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre
<?xml version="1.0"?>
<GetLowestPricedOffersForSKUResponse 
    xmlns="http://mws.amazonservices.com/schema/Products/2011-10-01">
    <GetLowestPricedOffersForSKUResult MarketplaceID="ATVPDKIKX0DER" 
        SKU="0I-RIAS-6UA0" ItemCondition="new" status="NoBuyableOffers">
        <Identifier>
            <MarketplaceId>ATVPDKIKX0DER</MarketplaceId>
            <SellerSKU>0I-RIAS-6UA0</SellerSKU>
            <ItemCondition>New</ItemCondition>
        </Identifier>
        <Summary>
            <TotalOfferCount>0</TotalOfferCount>
        </Summary>
        <Offers/>
    </GetLowestPricedOffersForSKUResult>
    <ResponseMetadata>
        <RequestId>75621aa7-9c8b-40be-9bf9-3ac1efdcdb87</RequestId>
    </ResponseMetadata>
</GetLowestPricedOffersForSKUResponse>
```

<a href="#Examples" class="xref">↑ Top</a>

</div>

</div>

<div class="section">

### Example response (Missing shipping charge)

<span class="ph">For information about standard response formatting, see
<a href="../dev_guide/DG_ResponseFormat.md" class="xref">Response format</a>.</span>

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre
<?xml version="1.0" encoding="UTF-8"?>
<GetLowestPricedOffersForSKUResponse
  xmlns="http://mws.amazonservices.com/schema/Products/2011-10-01">
  <GetLowestPricedOffersForSKUResult MarketplaceID="ATVPDKIKX0DER" SKU="0I-RIAS-6UA0"
    ItemCondition="new" status="NoOfferDueToMissingShippingCharge">
    <Identifier>
      <MarketplaceId>ATVPDKIKX0DER</MarketplaceId>
      <SellerSKU>0I-RIAS-6UA0</SellerSKU>
      <ItemCondition>New</ItemCondition>
    </Identifier>
    <Summary>
      <TotalOfferCount>0</TotalOfferCount>
    </Summary>
    <Offers/>
  </GetLowestPricedOffersForSKUResult>
  <ResponseMetadata>
    <RequestId>75621aa7-9c8b-40be-9bf9-3ac1efdcdb87</RequestId>
  </ResponseMetadata>
</GetLowestPricedOffersForSKUResponse>
```

<a href="#Examples" class="xref">↑ Top</a>

</div>

</div>

<div class="section">

### Example response (Active but too soon for processing)

<span class="ph">For information about standard response formatting, see
<a href="../dev_guide/DG_ResponseFormat.md" class="xref">Response format</a>.</span>

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre
<?xml version="1.0"?>
<GetLowestPricedOffersForSKUResponse xmlns="http://mws.amazonservices.com/schema/Products/2011-10-01">
    <GetLowestPricedOffersForSKUResult MarketplaceID="A2EUQ1WTGCTBG2" SKU="ACA-8039-6PK-DL57" ItemCondition="New" status="ActiveButTooSoonForProcessing">
        <Identifier>
            <MarketplaceId>A2EUQ1WTGCTBG2</MarketplaceId>
            <SellerSKU>ACA-8039-6PK-DL57</SellerSKU>
            <ItemCondition>New</ItemCondition>
        </Identifier>
        <Summary>
            <TotalOfferCount>0</TotalOfferCount>
            <OffersAvailableTime>2017-03-08T07:13:21.763Z</OffersAvailableTime>
        </Summary>
        <Offers/>
    </GetLowestPricedOffersForSKUResult>
    <ResponseMetadata>
        <RequestId>1212334</RequestId>
    </ResponseMetadata>
</GetLowestPricedOffersForSKUResponse>
```

<a href="#Examples" class="xref">↑ Top</a>

</div>

</div>

<div class="section">

### Example response (Server error)

<span class="ph">For information about standard response formatting, see
<a href="../dev_guide/DG_ResponseFormat.md" class="xref">Response format</a>.</span>

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre
<?xml version="1.0"?>
<ErrorResponse xmlns="http://mws.amazonservices.com/schema/Products/2011-10-01">
  <Error MarketplaceID="ATVPDKIKX0DER" SKU="24478624" ItemCondition="New" 
    status="ServerError">
    <Type>Receiver</Type>
    <Message>Server Error. Try back later</Message>
    <Detail/>
  </Error>
  <ResponseMetadata>
    <RequestId>88faca76-b600-46d2-b53c-0c8c4533e43a</RequestId>
  </ResponseMetadata>
</ErrorResponse>

```

<a href="#Examples" class="xref">↑ Top</a>

</div>

</div>

<div class="section">

### Example response (Client error)

<span class="ph">For information about standard response formatting, see
<a href="../dev_guide/DG_ResponseFormat.md" class="xref">Response format</a>.</span>

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre
<?xml version="1.0"?>
<ErrorResponse xmlns="http://mws.amazonservices.com/schema/Products/2011-10-01">
    <Error MarketplaceID="ATVPDKIKX0DER" SKU="asdgv" ItemCondition="new" 
        status="ClientError">
        <Code>InvalidParameterValue</Code>
        <Type>Sender</Type>
        <Message>asdgv is an invalid SKU for marketplace ATVPDKIKX0DER</Message>
    </Error>
    <ResponseMetadata>
        <RequestId>1714394f-07a3-4bc4-8072-53abf8c3759a</RequestId>
    </ResponseMetadata>
</ErrorResponse>
```

<a href="#Examples" class="xref">↑ Top</a>

</div>

</div>

</div>

</div>

<div id="RelatedTopics" class="topic nested1">

## Related topics

<div class="body">

<a href="../products/Products_Overview.md" class="xref">Products API</a>

<a href="Products_GetLowestPricedOffersForASIN.md" class="xref" title="Returns lowest priced offers for a single product, based on ASIN.">GetLowestPricedOffersForASIN</a>

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
