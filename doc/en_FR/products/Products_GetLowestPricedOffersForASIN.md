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

<div id="Products_GetLowestPricedOffersForASIN" class="nested0">

# GetLowestPricedOffersForASIN

<div class="body">

<span class="ph">Returns lowest priced offers for a single product,
based on <span class="keyword parmname">ASIN</span>.</span>

</div>

<div id="Description" class="topic concept nested1">

## Description

<div class="body conbody">

The <span class="keyword apiname">GetLowestPricedOffersForASIN</span>
operation is the same as the <span
class="keyword apiname">GetLowestPricedOffersForSKU</span> operation,
except that it uses a <span
class="keyword parmname">MarketplaceId</span> and an <span
class="keyword parmname">ASIN</span> to uniquely identify a product, and
it does not return the <span class="keyword parmname">MyOffer</span>
element. If you do not have the ASIN for a product, you can use the
<span class="keyword apiname">ListMatchingProducts</span> operation to
search for the ASIN.

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
<a href="Products_GetLowestPricedOffersForSKU.md" class="xref" title="Returns lowest priced offers for a single product, based on SellerSKU.">GetLowestPricedOffersForSKU</a>.
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
<span class="keyword apiname">GetLowestPricedOffersForASIN</span> to get
the top 20 offers for an ASIN you sell, you should call <span
class="keyword apiname">CreateSubscription</span> and subscribe to an
<span class="keyword parmname">AnyOfferChanged</span> notification. That
will inform you if the top 20 offers change for any ASIN you sell
without using any of your <span
class="keyword apiname">GetLowestPricedOffersForASIN</span> quota.

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
<th id="d240647e232" class="entry" data-valign="top" width="34.18367346938776%">Name</th>
<th id="d240647e235" class="entry" data-valign="top" width="25.510204081632654%">Description</th>
<th id="d240647e238" class="entry" data-valign="top" width="12.755102040816327%">Required</th>
<th id="d240647e241" class="entry" data-valign="top" width="27.551020408163268%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d240647e232 "><span class="keyword parmname">MarketplaceId</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d240647e235 "><span class="ph">An encrypted, Amazon-defined marketplace identifier.</span></td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d240647e238 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d240647e241 ">Type: <a href="Products_Datatypes.md#MarketplaceType" class="xref" title="An encrypted, Amazon-defined marketplace identifier.">MarketplaceType</a></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d240647e232 "><span class="keyword parmname">ASIN</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d240647e235 "><span class="ph">The Amazon Standard Identification Number (ASIN) of the item.</span></td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d240647e238 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d240647e241 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d240647e232 "><span class="keyword parmname">ItemCondition</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d240647e235 ">Filters the results based on item condition.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d240647e238 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d240647e241 "><span class="keyword parmname">ItemCondition</span> values: <var class="keyword varname">New</var>, <var class="keyword varname">Used</var>, <var class="keyword varname">Collectible</var>, <var class="keyword varname">Refurbished</var>, <var class="keyword varname">Club</var>.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
</tbody>
</table>

</div>

<div class="section">

### Notes

1.  If you specify an <span class="keyword parmname">ASIN</span> that
    identifies a variation parent ASIN, this operation returns
    `NoBuyableOffers`. A variation parent ASIN represents a generic
    product that cannot be sold. Variation child ASINs represent
    products that have specific characteristics (such as size and color)
    and can be sold.

</div>

</div>

</div>

<div id="ResponseElements" class="topic reference nested1">

## Response elements

<div class="body refbody">

<div class="section">

The response elements that the <span
class="keyword apiname">GetLowestPricedOffersForASIN</span> operation
returns are described by the publicly available XSD
<a href="http://g-ecx.images-amazon.com/images/G/01/mwsportal/doc/en_US/products/ProductsAPI_Response.xsd" class="xref">ProductsAPI_Response.xsd</a>.
The top-level elements returned by the <span
class="keyword apiname">GetLowestPricedOffersForASIN</span> operation
are:

</div>

<div class="section">

### GetLowestPricedOffersForASINResult Elements

<div class="tablenoborder">

| Name                                                                                                                                                                                                                                                    | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| <a href="#Identifier" class="xref" title="Identifies a product by marketplace and ASIN.">Identifier</a>                                                                                                                                                 | <span class="ph">Identifies a product by marketplace and ASIN.</span>                                                                                                                                                                                                                                                                                                                                                                                           |
| <a href="#Summary" class="xref" title="Contains price information about the product, including the LowestPrices and BuyBoxPrices, the ListPrice, the SuggestedLowerPricePlusShipping, and NumberOfOffers and NumberOfBuyBoxEligibleOffers.">Summary</a> | <span class="ph">Contains price information about the product, including the <span class="keyword parmname">LowestPrices</span> and <span class="keyword parmname">BuyBoxPrices</span>, the <span class="keyword parmname">ListPrice</span>, the <span class="keyword parmname">SuggestedLowerPricePlusShipping</span>, and <span class="keyword parmname">NumberOfOffers</span> and <span class="keyword parmname">NumberOfBuyBoxEligibleOffers</span>.</span> |
| <a href="#Offers" class="xref" title="A list of Offer elements, including Points, ShippingTime, Shipping, ShipsFrom, ListingPrice, SellerFeedbackRating, and more.">Offers</a>                                                                          | <span class="ph">A list of <a href="#Offers__Offer" class="xref">Offer</a> elements, including <span class="keyword parmname">Points</span>, <span class="keyword parmname">ShippingTime</span>, <span class="keyword parmname">Shipping</span>, <span class="keyword parmname">ShipsFrom</span>, <span class="keyword parmname">ListingPrice</span>, <span class="keyword parmname">SellerFeedbackRating</span>, and more.</span>                              |

</div>

</div>

<div class="section">

### GetLowestPricedOffersForASINResult Attributes

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
<th id="d240647e581" class="entry" data-valign="top" width="34.18367346938776%">Name</th>
<th id="d240647e584" class="entry" data-valign="top" width="25.510204081632654%">Description</th>
<th id="d240647e587" class="entry" data-valign="top" width="12.755102040816327%">Required</th>
<th id="d240647e590" class="entry" data-valign="top" width="27.551020408163268%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d240647e581 "><span class="keyword parmname">MarketplaceId</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d240647e584 "><span class="ph">An encrypted, Amazon-defined marketplace identifier.</span></td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d240647e587 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d240647e590 ">Type: <a href="Products_Datatypes.md#MarketplaceType" class="xref" title="An encrypted, Amazon-defined marketplace identifier.">MarketplaceType</a></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d240647e581 "><span class="keyword parmname">ASIN</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d240647e584 "><span class="ph">The Amazon Standard Identification Number (ASIN) of the item.</span></td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d240647e587 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d240647e590 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d240647e581 "><span class="keyword parmname">ItemCondition</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d240647e584 ">The item condition.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d240647e587 ">Yes</td>
<td id="ResponseElements__d51034e1547" class="entry" data-valign="top" width="27.551020408163268%" headers="d240647e590 "><span class="keyword parmname">ItemCondition</span> values: <var class="keyword varname">New</var>, <var class="keyword varname">Used</var>, <var class="keyword varname">Collectible</var>, <var class="keyword varname">Refurbished</var>, <var class="keyword varname">Club</var>.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d240647e581 "><span class="keyword parmname">Status</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d240647e584 ">The status of the operation.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d240647e587 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d240647e590 "><span class="keyword parmname">Status</span> values: <var class="keyword varname">Success</var>, <var class="keyword varname">ActiveButTooSoonForProcessing</var>, <var class="keyword varname">NoBuyableOffers</var>, or <var class="keyword varname">NoOfferDueToMissingShippingCharge</var>.
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
and ASIN.</span>

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
<th id="d240647e787" class="entry" data-valign="top" width="34.18367346938776%">Name</th>
<th id="d240647e790" class="entry" data-valign="top" width="25.510204081632654%">Description</th>
<th id="d240647e793" class="entry" data-valign="top" width="12.755102040816327%">Required</th>
<th id="d240647e796" class="entry" data-valign="top" width="27.551020408163268%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d240647e787 "><span class="keyword parmname">MarketplaceId</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d240647e790 "><span class="ph">An encrypted, Amazon-defined marketplace identifier.</span></td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d240647e793 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d240647e796 ">Type: <a href="Products_Datatypes.md#MarketplaceType" class="xref" title="An encrypted, Amazon-defined marketplace identifier.">MarketplaceType</a></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d240647e787 "><span class="keyword parmname">ASIN</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d240647e790 "><span class="ph">The Amazon Standard Identification Number (ASIN) of the item.</span></td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d240647e793 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d240647e796 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d240647e787 "><span class="keyword parmname">ItemCondition</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d240647e790 ">The item condition.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d240647e793 ">Yes</td>
<td id="Identifier__d51034e1547" class="entry" data-valign="top" width="27.551020408163268%" headers="d240647e796 "><span class="keyword parmname">ItemCondition</span> values: <var class="keyword varname">New</var>, <var class="keyword varname">Used</var>, <var class="keyword varname">Collectible</var>, <var class="keyword varname">Refurbished</var>, <var class="keyword varname">Club</var>.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d240647e787 "><span class="keyword parmname">TimeOfOfferChange</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d240647e790 ">The update time for the offer.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d240647e793 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d240647e796 ">In <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.
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

<span class="ph">Contains price information about the product, including
the <span class="keyword parmname">LowestPrices</span> and <span
class="keyword parmname">BuyBoxPrices</span>, the <span
class="keyword parmname">ListPrice</span>, the <span
class="keyword parmname">SuggestedLowerPricePlusShipping</span>, and
<span class="keyword parmname">NumberOfOffers</span> and <span
class="keyword parmname">NumberOfBuyBoxEligibleOffers</span>.</span>

<div class="section">

### Summary Elements

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
<th id="d240647e972" class="entry" data-valign="top" width="34.18367346938776%">Name</th>
<th id="d240647e975" class="entry" data-valign="top" width="25.510204081632654%">Description</th>
<th id="d240647e978" class="entry" data-valign="top" width="12.755102040816327%">Required</th>
<th id="d240647e981" class="entry" data-valign="top" width="27.551020408163268%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d240647e972 "><span class="keyword parmname">TotalOfferCount</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d240647e975 ">The number of unique offers contained in <span class="keyword parmname">NumberOfOffers</span>.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d240647e978 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d240647e981 "><span class="ph">Type: xs:int</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d240647e972 "><span class="keyword parmname">NumberOfOffers</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d240647e975 ">A list that contains the total number of offers for the item for the given conditions and fulfillment channels.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d240647e978 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d240647e981 ">Type: <a href="Products_Datatypes.md#OfferCountType" class="xref" title="The total number of offers for the specified condition and fulfillment channel.">OfferCountType</a></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d240647e972 "><span class="keyword parmname">LowestPrices</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d240647e975 ">A list of the lowest prices for the item.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d240647e978 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d240647e981 ">Type: List of <a href="Products_Datatypes.md#LowestPrice" class="xref" title="The lowest price of an item.">LowestPrice</a></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d240647e972 "><span class="keyword parmname">BuyBoxPrices</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d240647e975 ">A list of item prices.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d240647e978 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d240647e981 ">Type: List of <a href="Products_Datatypes.md#BuyBoxPrice" class="xref" title="The price of an item that is displayed in the Buy Box.">BuyBoxPrice</a></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d240647e972 "><span class="keyword parmname">ListPrice</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d240647e975 ">The list price of the item as suggested by the manufacturer.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d240647e978 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d240647e981 ">Type: <a href="Products_Datatypes.md#MoneyType" class="xref" title="An amount of money in a specified currency.">MoneyType</a></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d240647e972 "><span class="keyword parmname">SuggestedLowerPricePlusShipping</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d240647e975 ">The suggested lower price of the item, including shipping and Amazon Points. The suggested lower price is based on a range of factors, including historical selling prices, recent Buy Box-eligible prices, and input from customers for your products.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d240647e978 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d240647e981 ">Type: <a href="Products_Datatypes.md#MoneyType" class="xref" title="An amount of money in a specified currency.">MoneyType</a></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d240647e972 "><span class="keyword parmname">SalesRankings</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d240647e975 ">A list that contains the sales rank of the item in the given product categories.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d240647e978 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d240647e981 ">Type: List of <a href="Products_Datatypes.md#SalesRank" class="xref" title="The sales rank of the item in the given product category.">SalesRank</a></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d240647e972 "><span class="keyword parmname">BuyBoxEligibleOffers</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d240647e975 ">A list that contains the total number of offers that are eligible for the Buy Box for the given conditions and fulfillment channels.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d240647e978 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d240647e981 ">Type: <a href="Products_Datatypes.md#OfferCountType" class="xref" title="The total number of offers for the specified condition and fulfillment channel.">OfferCountType</a></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d240647e972 "><span class="keyword parmname">CompetitivePriceThreshold</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d240647e975 ">This price is based on competitive prices from other retailers (excluding other Amazon sellers). The offer may be ineligible for the Buy Box if the seller's price + shipping (minus Amazon Points) is greater than this competitive price.
<div class="note note">
<span class="notetitle">Note:</span> In Japan, <span class="keyword parmname">CompetitivePriceThreshold</span> considers any points that a non-Amazon retailer applies to their selling price.
</div></td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d240647e978 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d240647e981 ">Type: <a href="Products_Datatypes.md#MoneyType" class="xref" title="An amount of money in a specified currency.">MoneyType</a></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d240647e972 "><span class="keyword parmname">OffersAvailableTime</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d240647e975 ">When the status is <var class="keyword varname">ActiveButTooSoonForProcessing</var>, this is the time when the offers will be available for processing.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d240647e978 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d240647e981 "><span class="ph">Type: xs:dateTime</span></td>
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

<table class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d240647e1332" class="entry" data-valign="top" width="34.18367346938776%">Name</th>
<th id="d240647e1335" class="entry" data-valign="top" width="25.510204081632654%">Description</th>
<th id="d240647e1338" class="entry" data-valign="top" width="12.755102040816327%">Required</th>
<th id="d240647e1341" class="entry" data-valign="top" width="27.551020408163268%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d240647e1332 "><span class="keyword parmname">SellerId</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d240647e1335 ">The seller identifier for the offer.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d240647e1338 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d240647e1341 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d240647e1332 "><span class="keyword parmname">Subcondition</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d240647e1335 ">The subcondition of the item.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d240647e1338 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d240647e1341 "><span class="keyword parmname">Subcondition</span> values: <span class="ph"><var class="keyword varname">New</var>, <var class="keyword varname">Mint</var>, <var class="keyword varname">Very Good</var>, <var class="keyword varname">Good</var>, <var class="keyword varname">Acceptable</var>, <var class="keyword varname">Poor</var>, <var class="keyword varname">Club</var>, <var class="keyword varname">OEM</var>, <var class="keyword varname">Warranty</var>, <var class="keyword varname">Refurbished                     Warranty</var>, <var class="keyword varname">Refurbished</var>, <var class="keyword varname">Open Box</var>, or <var class="keyword varname">Other</var></span>.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d240647e1332 "><span class="keyword parmname">SellerFeedbackRating</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d240647e1335 "><span id="Offers__d51034e1452" class="ph">Information about the seller's feedback, including the percentage of positive feedback, and the total count of feedback received.</span></td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d240647e1338 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d240647e1341 ">Type: <a href="Products_Datatypes.md#SellerFeedbackRating" class="xref" title="Information about the seller&#39;s feedback, including the percentage of positive feedback, and the total count of feedback received.">SellerFeedbackRating</a></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d240647e1332 "><span class="keyword parmname">ShippingTime</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d240647e1335 "><span id="Offers__d51034e1381" class="ph">The maximum time within which the item will likely be shipped once an order has been placed.</span></td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d240647e1338 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d240647e1341 ">Type: <a href="Products_Datatypes.md#DetailedShippingTimeType" class="xref" title="The time range in which an item will likely be shipped once an order has been placed.">DetailedShippingTimeType</a></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d240647e1332 "><span class="keyword parmname">ListingPrice</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d240647e1335 ">The price of the item.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d240647e1338 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d240647e1341 ">Type: <a href="Products_Datatypes.md#MoneyType" class="xref" title="An amount of money in a specified currency.">MoneyType</a></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d240647e1332 "><span class="keyword parmname">Points</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d240647e1335 "><span class="ph">The number of <span class="ph">Amazon Points</span> offered with the purchase of an item.</span></td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d240647e1338 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d240647e1341 ">Type: <a href="Products_Datatypes.md#Points" class="xref" title="The number of Amazon Points offered with the purchase of an item. The Amazon Points program is only available in Japan.">Points</a></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d240647e1332 "><span class="keyword parmname">Shipping</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d240647e1335 ">The shipping cost.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d240647e1338 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d240647e1341 ">Type: <a href="Products_Datatypes.md#MoneyType" class="xref" title="An amount of money in a specified currency.">MoneyType</a></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d240647e1332 "><span class="keyword parmname">ShipsFrom</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d240647e1335 "><span id="Offers__d51034e1433" class="ph">The state and country from where the item is shipped.</span></td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d240647e1338 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d240647e1341 ">Type: <a href="Products_Datatypes.md#ShipsFrom" class="xref" title="The state and country from where the item is shipped.">ShipsFrom</a></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d240647e1332 "><span class="keyword parmname">IsFulfilledByAmazon</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d240647e1335 "><var class="keyword varname">true</var> if the offer is fulfilled by Amazon.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d240647e1338 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d240647e1341 "><span class="ph">Type: xs:boolean</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d240647e1332 "><span class="keyword parmname">IsBuyBoxWinner</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d240647e1335 "><var class="keyword varname">true</var> if the offer is currently in the Buy Box. There can be up to two Buy Box winners at any time per ASIN, one that is eligible for Prime and one that is not eligible for Prime.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d240647e1338 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d240647e1341 "><span class="ph">Type: xs:boolean</span></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d240647e1332 "><span class="keyword parmname">IsFeaturedMerchant</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d240647e1335 "><var class="keyword varname">true</var> if the seller of the item is eligible to win the Buy Box.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d240647e1338 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d240647e1341 "><span class="ph">Type: xs:boolean</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d240647e1332 "><span class="keyword parmname">ConditionNotes</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d240647e1335 ">Information about the condition of the item.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d240647e1338 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d240647e1341 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d240647e1332 "><span class="keyword parmname">PrimeInformation</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d240647e1335 ">Amazon Prime information.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d240647e1338 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d240647e1341 ">Type: <a href="Products_Datatypes.md#PrimeInformation" class="xref" title="Amazon Prime information.">PrimeInformation</a></td>
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

&ASIN=B00COK3FD8
&AWSAccessKeyId=AKIAEXAMPLEFWR4TJ7ZQ
&Action=GetLowestPricedOffersForASIN
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
<?xml version="1.0"?><GetLowestPricedOffersForASINResponse 
    xmlns="http://mws.amazonservices.com/schema/Products/2011-10-01">
    <GetLowestPricedOffersForASINResult MarketplaceID="ATVPDKIKX0DER" 
        ItemCondition="New" ASIN="B0002GTTRC" status="Success">
        <Identifier>
            <MarketplaceId>ATVPDKIKX0DER</MarketplaceId>
            <ASIN>B0002GTTRC</ASIN>
            <ItemCondition>New</ItemCondition>
            <TimeOfOfferChange>2015-07-19T23:15:11.859Z</TimeOfOfferChange>
        </Identifier>
        <Summary>
            <TotalOfferCount>0</TotalOfferCount>
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
    </GetLowestPricedOffersForASINResult>
    <ResponseMetadata>
        <RequestId>21534f03-e7e3-4d9a-9bea-0e15add3326d</RequestId>
    </ResponseMetadata>
</GetLowestPricedOffersForASINResponse>
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
<GetLowestPricedOffersForASINResponse
    xmlns="http://mws.amazonservices.com/schema/Products/2011-10-01">
    <GetLowestPricedOffersForASINResult MarketplaceID="ATVPDKIKX0DER" ItemCondition="New"
        ASIN="B000EVPGSQ" status="NoBuyableOffers">
        <Identifier>
            <MarketplaceId>ATVPDKIKX0DER</MarketplaceId>
            <ASIN>B000EVPGSQ</ASIN>
            <ItemCondition>New</ItemCondition>
        </Identifier>
        <Summary>
            <TotalOfferCount>0</TotalOfferCount>
        </Summary>
        <Offers/>
    </GetLowestPricedOffersForASINResult>
    <ResponseMetadata>
        <RequestId>2bb867cd-8fa3-406c-adba-eb84c1796d21</RequestId>
    </ResponseMetadata>
</GetLowestPricedOffersForASINResponse>
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
<GetLowestPricedOffersForASINResponse
  xmlns="http://mws.amazonservices.com/schema/Products/2011-10-01">
  <GetLowestPricedOffersForASINResult MarketplaceID="ATVPDKIKX0DER" ItemCondition="New"
    ASIN="B000EVPGSQ" status="NoOfferDueToMissingShippingCharge">
    <Identifier>
      <MarketplaceId>ATVPDKIKX0DER</MarketplaceId>
      <ASIN>B000EVPGSQ</ASIN>
      <ItemCondition>New</ItemCondition>
    </Identifier>
    <Summary>
      <TotalOfferCount>0</TotalOfferCount>
    </Summary>
    <Offers/>
  </GetLowestPricedOffersForASINResult>
  <ResponseMetadata>
    <RequestId>2bb867cd-8fa3-406c-adba-eb84c1796d21</RequestId>
  </ResponseMetadata>
</GetLowestPricedOffersForASINResponse>
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
<GetLowestPricedOffersForASINResponse xmlns="http://mws.amazonservices.com/schema/Products/2011-10-01">
    <GetLowestPricedOffersForASINResult MarketplaceID="ATVPDKIKX0DER" ItemCondition="New" ASIN="B01DL3WCPI" status="ActiveButTooSoonForProcessing">
        <Identifier>
            <MarketplaceId>ATVPDKIKX0DER</MarketplaceId>
            <ASIN>B01DL3WCPI</ASIN>
            <ItemCondition>New</ItemCondition>
        </Identifier>
        <Summary>
            <TotalOfferCount>0</TotalOfferCount>
            <OffersAvailableTime>2017-03-08T06:21:05.330Z</OffersAvailableTime>
        </Summary>
        <Offers/>
    </GetLowestPricedOffersForASINResult>
    <ResponseMetadata>
        <RequestId>1212334</RequestId>
    </ResponseMetadata>
</GetLowestPricedOffersForASINResponse>
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
  <Error MarketplaceID="ATVPDKIKX0DER" ASIN="24478624" ItemCondition="New" 
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

### Example response (Invalid ASIN)

<span class="ph">For information about standard response formatting, see
<a href="../dev_guide/DG_ResponseFormat.md" class="xref">Response format</a>.</span>

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre
<?xml version="1.0"?>
<ErrorResponse 
    xmlns="http://mws.amazonservices.com/schema/Products/2011-10-01">
    <Error MarketplaceID="ATVPDKIKX0DER" ASIN="B0002GTTRD" ItemCondition="New" 
        status="ClientError">
        <Code>InvalidParameterValue</Code>
        <Type>Sender</Type>
        <Message>B0002GTTRD is an invalid ASIN for marketplace ATVPDKIKX0DER</Message>
    </Error>
    <ResponseMetadata>
        <RequestId>3e8e64e8-edd7-4b63-a855-fa44094951ff</RequestId>
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

<a href="Products_GetLowestPricedOffersForSKU.md" class="xref" title="Returns lowest priced offers for a single product, based on SellerSKU.">GetLowestPricedOffersForSKU</a>

<a href="Products_ListMatchingProducts.md" class="xref" title="Returns a list of products and their attributes, based on a search query.">ListMatchingProducts</a>

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
