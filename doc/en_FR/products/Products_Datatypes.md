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

<div id="Products_Datatypes" class="nested0">

# Products Datatypes

<div class="body">

The following datatypes are used in the response elements of the <span
class="ph">Amazon Marketplace Web Service (Amazon MWS)</span> <span
class="ph">Products API section</span>:

<div class="tablenoborder">

| Datatype                                                                                                                                                                                                            | Description                                                                                                                                               |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------|
| <a href="#AvailabilityType" class="xref" title="Indicates whether the item is available for shipping now, or on a known or an unknown date in the future.">AvailabilityType</a>                                     | <span class="ph">Indicates whether the item is available for shipping now, or on a known or an unknown date in the future.</span>                         |
| <a href="#BuyBoxPrice" class="xref" title="The price of an item that is displayed in the Buy Box.">BuyBoxPrice</a>                                                                                                  | <span class="ph">The price of an item that is displayed in the Buy Box.</span>                                                                            |
| <a href="#DetailedShippingTimeType" class="xref" title="The time range in which an item will likely be shipped once an order has been placed.">DetailedShippingTimeType</a>                                         | <span class="ph">The maximum time within which the item will likely be shipped once an order has been placed.</span>                                      |
| <a href="#FeeDetail" class="xref" title="The type of fee, fee amount, and other details.">FeeDetail</a>                                                                                                             | <span class="ph">The type of fee, fee amount, and other details.</span>                                                                                   |
| <a href="#FeesEstimate" class="xref" title="The total estimated fees for a product and a list of details.">FeesEstimate</a>                                                                                         | <span class="ph">The total estimated fees for a product and a list of details.</span>                                                                     |
| <a href="#FeesEstimateIdentifier" class="xref" title="A product identifier, marketplace, time of request, and other details that identify an estimate.">FeesEstimateIdentifier</a>                                  | <span class="ph">A product identifier, marketplace, time of request, and other details that identify an estimate.</span>                                  |
| <a href="#FeesEstimateRequest" class="xref" title="A product, marketplace, and proposed price used to request estimated fees.">FeesEstimateRequest</a>                                                              | <span class="ph">A product, marketplace, and proposed price used to request estimated fees.</span>                                                        |
| <a href="#FeesEstimateResult" class="xref" title="A product identifier and the estimated fees for that product.">FeesEstimateResult</a>                                                                             | <span class="ph">A product identifier and the estimated fees for that product.</span>                                                                     |
| <a href="#FeeType" class="xref" title="The type of fee charged to a seller.">FeeType</a>                                                                                                                            | <span class="ph">The type of fee charged to a seller.</span>                                                                                              |
| <a href="#FulfillmentChannelType" class="xref" title="Indicates whether the item is fulfilled by Amazon or by the seller.">FulfillmentChannelType</a>                                                               | <span class="ph">Indicates whether the item is fulfilled by Amazon or by the seller.</span>                                                               |
| <a href="#LowestPrice" class="xref" title="The lowest price of an item.">LowestPrice</a>                                                                                                                            | <span class="ph">The lowest price of an item.</span>                                                                                                      |
| <a href="#MarketplaceType" class="xref" title="An encrypted, Amazon-defined marketplace identifier.">MarketplaceType</a>                                                                                            | <span class="ph">An encrypted, Amazon-defined marketplace identifier.</span>                                                                              |
| <a href="#MoneyType" class="xref" title="An amount of money in a specified currency.">MoneyType</a>                                                                                                                 | <span class="ph">An amount of money in a specified currency.</span>                                                                                       |
| <a href="#OfferCount" class="xref" title="The number of offers in a fulfillment channel that meet a specific condition.">OfferCount</a>                                                                             | <span class="ph">The number of offers in a fulfillment channel that meet a specific condition.</span>                                                     |
| <a href="#OfferCountType" class="xref" title="The total number of offers for the specified condition and fulfillment channel.">OfferCountType</a>                                                                   | <span class="ph">The total number of offers for the specified condition and fulfillment channel.</span>                                                   |
| <a href="#Points" class="xref" title="The number of Amazon Points offered with the purchase of an item. The Amazon Points program is only available in Japan.">Points</a>                                           | <span class="ph">The number of <span class="ph">Amazon Points</span> offered with the purchase of an item.</span>                                         |
| <a href="#PriceToEstimateFees" class="xref" title="Price information for a product, used to estimate fees.">PriceToEstimateFees</a>                                                                                 | <span class="ph">Price information for a product, used to estimate fees.</span>                                                                           |
| <a href="#PrimeInformation" class="xref" title="Amazon Prime information.">PrimeInformation</a>                                                                                                                     | <span class="ph">Amazon Prime information.</span>                                                                                                         |
| <a href="#SalesRank" class="xref" title="The sales rank of the item in the given product category.">SalesRank</a>                                                                                                   | <span class="ph">The sales rank of the item in the given product category.</span>                                                                         |
| <a href="#SellerFeedbackRating" class="xref" title="Information about the seller&#39;s feedback, including the percentage of positive feedback, and the total count of feedback received.">SellerFeedbackRating</a> | <span class="ph">Information about the seller's feedback, including the percentage of positive feedback, and the total count of feedback received.</span> |
| <a href="#ShipsFrom" class="xref" title="The state and country from where the item is shipped.">ShipsFrom</a>                                                                                                       | <span class="ph">The state and country from where the item is shipped.</span>                                                                             |

</div>

</div>

<div id="AvailabilityType" class="topic reference nested1">

## AvailabilityType

<div class="body refbody">

<span class="ph">Indicates whether the item is available for shipping
now, or on a known or an unknown date in the future.</span>

<div class="section">

**Type:** xs:string

**Values:**

-   <span class="keyword parmname">NOW</span> - The item is available
    for shipping now.
-   <span class="keyword parmname">FUTURE_WITHOUT_DATE</span> - The item
    will be available for shipping on an unknown date in the future.
-   <span class="keyword parmname">FUTURE_WITH_DATE</span> - The item
    will be available for shipping on a known date in the future.

</div>

</div>

</div>

<div id="BuyBoxPrice" class="topic nested1">

## BuyBoxPrice

<div class="body">

<span class="ph">The price of an item that is displayed in the Buy
Box.</span>

<div class="section">

### BuyBoxPrice Attributes

<div class="tablenoborder">

| Name        | Description                                                                                                                       | Required | Values                                  |
|-------------|-----------------------------------------------------------------------------------------------------------------------------------|----------|-----------------------------------------|
| `condition` | Indicates the condition of the item. For example: <span class="ph">`New`, `Used`, `Collectible`, `Refurbished`, or `Club`</span>. | Yes      | <span class="ph">Type: xs:string</span> |

</div>

</div>

<div class="section">

### BuyBoxPrice Elements

<div class="tablenoborder">

| Name                                               | Description                                                                                                                                        | Required | Values                                                                                                                                                                                                 |
|----------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------|----------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| <span class="keyword parmname">LandedPrice</span>  | <span class="keyword parmname">ListingPrice</span> + <span class="keyword parmname">Shipping</span> - <span class="keyword parmname">Points</span> | Yes      | Type: <a href="Products_Datatypes.md#MoneyType" class="xref" title="An amount of money in a specified currency.">MoneyType</a>                                                                       |
| <span class="keyword parmname">ListingPrice</span> | The price of the item.                                                                                                                             | Yes      | Type: <a href="Products_Datatypes.md#MoneyType" class="xref" title="An amount of money in a specified currency.">MoneyType</a>                                                                       |
| <span class="keyword parmname">Shipping</span>     | The shipping cost.                                                                                                                                 | Yes      | Type: <a href="Products_Datatypes.md#MoneyType" class="xref" title="An amount of money in a specified currency.">MoneyType</a>                                                                       |
| <span class="keyword parmname">Points</span>       | <span class="ph">The number of <span class="ph">Amazon Points</span> offered with the purchase of an item.</span>                                  | No       | Type: <a href="Products_Datatypes.md#Points" class="xref" title="The number of Amazon Points offered with the purchase of an item. The Amazon Points program is only available in Japan.">Points</a> |

</div>

</div>

</div>

</div>

<div id="DetailedShippingTimeType" class="topic reference nested1">

## DetailedShippingTimeType

<div class="body refbody">

<span class="ph">The time range in which an item will likely be shipped
once an order has been placed.</span>

<div class="section">

### DetailedShippingTimeType Attributes

<div class="tablenoborder">

<table id="DetailedShippingTimeType__DetailedShippingTimeType" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d226792e971" class="entry" data-valign="top" width="34.18367346938776%">Name</th>
<th id="d226792e974" class="entry" data-valign="top" width="25.510204081632654%">Description</th>
<th id="d226792e977" class="entry" data-valign="top" width="12.755102040816327%">Required</th>
<th id="d226792e980" class="entry" data-valign="top" width="27.551020408163268%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d226792e971 "><var class="keyword varname">minimumHours</var></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d226792e974 ">The minimum time, in hours, that the item will likely be shipped after the order has been placed.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d226792e977 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d226792e980 "><span class="ph">Type: xs:short</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d226792e971 "><var class="keyword varname">maximumHours</var></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d226792e974 ">The maximum time, in hours, that the item will likely be shipped after the order has been placed.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d226792e977 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d226792e980 "><span class="ph">Type: xs:short</span></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d226792e971 "><var class="keyword varname">availableDate</var></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d226792e974 ">The date when the item will be available for shipping. Only displayed for items that are not currently available for shipping.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d226792e977 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d226792e980 "><span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d226792e971 "><var class="keyword varname">availabilityType</var></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d226792e974 "><span id="DetailedShippingTimeType__d51034e1505" class="ph">Indicates whether the item is available for shipping now, or on a known or an unknown date in the future.</span> If known, the <var class="keyword varname">availableDate</var> attribute indicates the date that the item will be available for shipping.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d226792e977 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d226792e980 ">Type: <a href="Products_Datatypes.md#AvailabilityType" class="xref" title="Indicates whether the item is available for shipping now, or on a known or an unknown date in the future.">AvailabilityType</a></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="FeeDetail" class="topic reference nested1">

## FeeDetail

<div class="body refbody">

<span class="ph">The type of fee, fee amount, and other details.</span>

<div class="section">

### FeeDetail Elements

<span class="ph">For more information on fees, see
<a href="https://sellercentral.amazon.co.uk/gp/help/200336920" class="xref">Selling on Amazon Fee Schedule</a>
and
<a href="https://sellercentral-europe.amazon.com/gp/help/201074400" class="xref">FBA features and fees</a>
on Seller Central.</span>

<div class="tablenoborder">

| Name                                                        | Description                                                                              | Required | Values                                                                                                                                       |
|-------------------------------------------------------------|------------------------------------------------------------------------------------------|----------|----------------------------------------------------------------------------------------------------------------------------------------------|
| <span class="keyword parmname">FeeType</span>               | <span id="FeeDetail__d51034e1762" class="ph">The type of fee charged to a seller.</span> | Yes      | Type: <a href="Products_Datatypes.md#FeeType" class="xref" title="The type of fee charged to a seller.">FeeType</a>                        |
| <span class="keyword parmname">FeeAmount</span>             | The amount charged for a given fee.                                                      | Yes      | Type: <a href="Products_Datatypes.md#MoneyType" class="xref" title="An amount of money in a specified currency.">MoneyType</a>             |
| <span class="keyword parmname">FeePromotion</span>          | The promotion amount for a given fee.                                                    | No       | Type: <a href="Products_Datatypes.md#MoneyType" class="xref" title="An amount of money in a specified currency.">MoneyType</a>             |
| <span class="keyword parmname">TaxAmount</span>             | The tax amount for a given fee. This is only shown for the India marketplace.            | No       | Type: <a href="Products_Datatypes.md#MoneyType" class="xref" title="An amount of money in a specified currency.">MoneyType</a>             |
| <span class="keyword parmname">FinalFee</span>              | The final fee amount for a given fee.                                                    | Yes      | Type: <a href="Products_Datatypes.md#MoneyType" class="xref" title="An amount of money in a specified currency.">MoneyType</a>             |
| <span class="keyword parmname">IncludedFeeDetailList</span> | A list of other fees that contributes to a given fee.                                    | No       | Type: List of <a href="Products_Datatypes.md#FeeDetail" class="xref" title="The type of fee, fee amount, and other details.">FeeDetail</a> |

</div>

</div>

</div>

</div>

<div id="FeesEstimate" class="topic reference nested1">

## FeesEstimate

<div class="body refbody">

<span class="ph">The total estimated fees for a product and a list of
details.</span>

<div class="section">

### FeesEstimate Elements

<div class="tablenoborder">

| Name                                                       | Description                                                                                | Required | Values                                                                                                                                       |
|------------------------------------------------------------|--------------------------------------------------------------------------------------------|----------|----------------------------------------------------------------------------------------------------------------------------------------------|
| <span class="keyword parmname">TimeOfFeesEstimation</span> | The time for which the fees were estimated. This defaults to the time the request is made. | Yes      | <span class="ph">Type: xs:dateTime</span>                                                                                                    |
| <span class="keyword parmname">TotalFeesEstimate</span>    | Total estimated fees for a given product, price, and fulfillment channel.                  | Yes      | Type: <a href="Products_Datatypes.md#MoneyType" class="xref" title="An amount of money in a specified currency.">MoneyType</a>             |
| <span class="keyword parmname">FeeDetailList</span>        | A list of other fees that contributes to a given fee.                                      | Yes      | Type: List of <a href="Products_Datatypes.md#FeeDetail" class="xref" title="The type of fee, fee amount, and other details.">FeeDetail</a> |

</div>

</div>

</div>

</div>

<div id="FeesEstimateIdentifier" class="topic reference nested1">

## FeesEstimateIdentifier

<div class="body refbody">

<span class="ph">A product identifier, marketplace, time of request, and
other details that identify an estimate.</span>

<div class="section">

### FeesEstimateIdentifier Elements

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
<th id="d226792e1557" class="entry" data-valign="top" width="34.18367346938776%">Name</th>
<th id="d226792e1560" class="entry" data-valign="top" width="25.510204081632654%">Description</th>
<th id="d226792e1563" class="entry" data-valign="top" width="12.755102040816327%">Required</th>
<th id="d226792e1566" class="entry" data-valign="top" width="27.551020408163268%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d226792e1557 "><span class="keyword parmname">MarketplaceId</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d226792e1560 "><span class="ph">An encrypted, Amazon-defined marketplace identifier.</span></td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d226792e1563 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d226792e1566 ">Type: <a href="Products_Datatypes.md#MarketplaceType" class="xref" title="An encrypted, Amazon-defined marketplace identifier.">MarketplaceType</a></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d226792e1557 "><span class="keyword parmname">IdType</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d226792e1560 ">The type of product identifier used by <span class="keyword parmname">IdValue</span>.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d226792e1563 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d226792e1566 "><span class="keyword parmname">IdType</span> values: <var class="keyword varname">ASIN</var>, <var class="keyword varname">SellerSKU</var>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d226792e1557 "><span class="keyword parmname">IdValue</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d226792e1560 ">The product identifier.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d226792e1563 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d226792e1566 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d226792e1557 "><span class="keyword parmname">PriceToEstimateFees</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d226792e1560 ">The product price that the fee estimate is based on.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d226792e1563 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d226792e1566 ">Type: <a href="Products_Datatypes.md#PriceToEstimateFees" class="xref" title="Price information for a product, used to estimate fees.">PriceToEstimateFees</a></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d226792e1557 "><span class="keyword parmname">IsAmazonFulfilled</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d226792e1560 "><var class="keyword varname">true</var> if the offer is fulfilled by Amazon.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d226792e1563 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d226792e1566 "><span class="ph">Type: xs:boolean</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d226792e1557 "><span class="keyword parmname">SellerInputIdentifier</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d226792e1560 ">A unique identifier provided by the caller to track this request.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d226792e1563 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d226792e1566 "><span class="ph">Type: xs:string</span></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="FeesEstimateRequest" class="topic reference nested1">

## FeesEstimateRequest

<div class="body refbody">

<span class="ph">A product, marketplace, and proposed price used to
request estimated fees.</span>

<div class="section">

### FeesEstimateRequest Elements

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
<th id="d226792e1779" class="entry" data-valign="top" width="34.18367346938776%">Name</th>
<th id="d226792e1782" class="entry" data-valign="top" width="25.510204081632654%">Description</th>
<th id="d226792e1785" class="entry" data-valign="top" width="12.755102040816327%">Required</th>
<th id="d226792e1788" class="entry" data-valign="top" width="27.551020408163268%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d226792e1779 "><span class="keyword parmname">MarketplaceId</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d226792e1782 "><span class="ph">An encrypted, Amazon-defined marketplace identifier.</span></td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d226792e1785 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d226792e1788 ">Type: <a href="Products_Datatypes.md#MarketplaceType" class="xref" title="An encrypted, Amazon-defined marketplace identifier.">MarketplaceType</a></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d226792e1779 "><span class="keyword parmname">IdType</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d226792e1782 ">The type of product identifier used by <span class="keyword parmname">IdValue</span>.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d226792e1785 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d226792e1788 "><span class="keyword parmname">IdType</span> values: <var class="keyword varname">ASIN</var>, <var class="keyword varname">SellerSKU</var>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d226792e1779 "><span class="keyword parmname">IdValue</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d226792e1782 ">The product identifier.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d226792e1785 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d226792e1788 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d226792e1779 "><span class="keyword parmname">PriceToEstimateFees</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d226792e1782 ">The product price that the fee estimate is based on.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d226792e1785 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d226792e1788 ">Type: <a href="Products_Datatypes.md#PriceToEstimateFees" class="xref" title="Price information for a product, used to estimate fees.">PriceToEstimateFees</a></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d226792e1779 "><span class="keyword parmname">Identifier</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d226792e1782 ">A unique value that will identify this request.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d226792e1785 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d226792e1788 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d226792e1779 "><span class="keyword parmname">IsAmazonFulfilled</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d226792e1782 "><var class="keyword varname">true</var> if the offer is fulfilled by Amazon.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d226792e1785 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d226792e1788 "><span class="ph">Type: xs:boolean</span></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="FeesEstimateResult" class="topic reference nested1">

## FeesEstimateResult

<div class="body refbody">

<span class="ph">A product identifier and the estimated fees for that
product.</span>

<div class="section">

### FeesEstimateResult Elements

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
<th id="d226792e2001" class="entry" data-valign="top" width="34.18367346938776%">Name</th>
<th id="d226792e2004" class="entry" data-valign="top" width="25.510204081632654%">Description</th>
<th id="d226792e2007" class="entry" data-valign="top" width="12.755102040816327%">Required</th>
<th id="d226792e2010" class="entry" data-valign="top" width="27.551020408163268%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d226792e2001 "><span class="keyword parmname">FeesEstimateIdentifier</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d226792e2004 ">Information used to identify a product fee request.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d226792e2007 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d226792e2010 ">Type: <a href="Products_Datatypes.md#FeesEstimateIdentifier" class="xref" title="A product identifier, marketplace, time of request, and other details that identify an estimate.">FeesEstimateIdentifier</a></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d226792e2001 "><span class="keyword parmname">FeesEstimate</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d226792e2004 "><span class="ph">The total estimated fees for a product and a list of details.</span></td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d226792e2007 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d226792e2010 ">Type: <a href="Products_Datatypes.md#FeesEstimate" class="xref" title="The total estimated fees for a product and a list of details.">FeesEstimate</a></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d226792e2001 "><span class="keyword parmname">Status</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d226792e2004 ">The status of the fee request.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d226792e2007 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d226792e2010 "><span class="keyword parmname">Status</span> values: <var class="keyword varname">Success</var>, <var class="keyword varname">ClientError</var>, <var class="keyword varname">ServiceError</var>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d226792e2001 "><span class="keyword parmname">Error</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d226792e2004 ">An Error object with a Type, Code, and Message.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d226792e2007 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d226792e2010 ">Type: Error</td>
</tr>
</tbody>
</table>

</div>

For information on handling the `Status` or `Error` elements, see
<a href="Products_ProcessingBulkOperationRequests.md" class="xref" title="Describes how to process operations in bulk by using the ASINList, SellerSKUList, and IdList request parameters.">Processing bulk operation requests</a>.

</div>

</div>

</div>

<div id="FeeType" class="topic reference nested1">

## FeeType

<div class="body refbody">

<span class="ph">The type of fee charged to a seller.</span>

<div class="section">

**Type:** xs:string

**Values:**

-   <span class="keyword parmname">ReferralFee</span>
-   <span class="keyword parmname">VariableClosingFee</span>
-   <span class="keyword parmname">PerItemFee</span>
-   <span class="keyword parmname">FBAFees</span>
-   <span class="keyword parmname">FBAPickAndPack</span>
-   <span class="keyword parmname">FBAWeightHandling</span>
-   <span class="keyword parmname">FBAOrderHandling</span>
-   <span class="keyword parmname">FBADeliveryServicesFee</span>

</div>

</div>

</div>

<div id="FulfillmentChannelType" class="topic reference nested1">

## FulfillmentChannelType

<div class="body refbody">

<span class="ph">Indicates whether the item is fulfilled by Amazon or by
the seller.</span>

<div class="section">

**Type:** xs:string

**Values:**

-   `Amazon`
-   `Merchant`

</div>

</div>

</div>

<div id="LowestPrice" class="topic reference nested1">

## LowestPrice

<div class="body refbody">

<span class="ph">The lowest price of an item.</span>

<div class="section">

### LowestPrice Attributes

<div class="tablenoborder">

| Name                 | Description                                                                                                                       | Required | Values                                                                                                                                                                             |
|----------------------|-----------------------------------------------------------------------------------------------------------------------------------|----------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `condition`          | Indicates the condition of the item. For example: <span class="ph">`New`, `Used`, `Collectible`, `Refurbished`, or `Club`</span>. | Yes      | <span class="ph">Type: xs:string</span>                                                                                                                                            |
| `fulfillmentChannel` | <span id="LowestPrice__d51034e1487" class="ph">Indicates whether the item is fulfilled by Amazon or by the seller.</span>         | Yes      | Type: <a href="Products_Datatypes.md#FulfillmentChannelType" class="xref" title="Indicates whether the item is fulfilled by Amazon or by the seller.">FulfillmentChannelType</a> |

</div>

</div>

<div class="section">

### LowestPrice Elements

<div class="tablenoborder">

| Name                                               | Description                                                                                                                                        | Required | Values                                                                                                                                                                                                 |
|----------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------|----------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| <span class="keyword parmname">LandedPrice</span>  | <span class="keyword parmname">ListingPrice</span> + <span class="keyword parmname">Shipping</span> - <span class="keyword parmname">Points</span> | Yes      | Type: <a href="Products_Datatypes.md#MoneyType" class="xref" title="An amount of money in a specified currency.">MoneyType</a>                                                                       |
| <span class="keyword parmname">ListingPrice</span> | The price of the item.                                                                                                                             | Yes      | Type: <a href="Products_Datatypes.md#MoneyType" class="xref" title="An amount of money in a specified currency.">MoneyType</a>                                                                       |
| <span class="keyword parmname">Shipping</span>     | The shipping cost.                                                                                                                                 | Yes      | Type: <a href="Products_Datatypes.md#MoneyType" class="xref" title="An amount of money in a specified currency.">MoneyType</a>                                                                       |
| <span class="keyword parmname">Points</span>       | <span class="ph">The number of <span class="ph">Amazon Points</span> offered with the purchase of an item.</span>                                  | No       | Type: <a href="Products_Datatypes.md#Points" class="xref" title="The number of Amazon Points offered with the purchase of an item. The Amazon Points program is only available in Japan.">Points</a> |

</div>

</div>

</div>

</div>

<div id="MarketplaceType" class="topic reference nested1">

## MarketplaceType

<div class="body refbody">

<span class="ph">An encrypted, Amazon-defined marketplace
identifier.</span>

<div class="section">

**Type:** xs:string

**Restriction:** \[A-Z0-9\]+

<span class="ph">For a list of <span
class="keyword parmname">MarketplaceId</span> values, see
<a href="../dev_guide/DG_Endpoints.md" class="xref">Amazon MWS endpoints and MarketplaceId values</a>
in the <span class="ph">Amazon MWS Developer Guide</span>.</span>

</div>

</div>

</div>

<div id="MoneyType" class="topic reference nested1">

## MoneyType

<div class="body refbody">

<span class="ph">An amount of money in a specified currency.</span>

<div class="section">

### MoneyType Elements

<div class="tablenoborder">

<table id="MoneyType__MoneyType" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d226792e2770" class="entry" data-valign="top" width="34.18367346938776%">Name</th>
<th id="d226792e2773" class="entry" data-valign="top" width="25.510204081632654%">Description</th>
<th id="d226792e2776" class="entry" data-valign="top" width="12.755102040816327%">Required</th>
<th id="d226792e2779" class="entry" data-valign="top" width="27.551020408163268%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d226792e2770 "><span class="keyword parmname">Amount</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d226792e2773 ">The currency amount.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d226792e2776 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d226792e2779 "><span class="ph">Type: xs:decimal</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d226792e2770 "><span class="keyword parmname">CurrencyCode</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d226792e2773 ">Three-digit currency code.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d226792e2776 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d226792e2779 ">In <span class="ph"> <a href="../dev_guide/DG_ISO4217.md" class="xref">ISO 4217 format</a> </span>.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="OfferCount" class="topic reference nested1">

## OfferCount

<div class="body refbody">

<span class="ph">The number of offers in a fulfillment channel that meet
a specific condition.</span>

<div class="section">

### OfferCount Attributes

<div class="tablenoborder">

| Name                 | Description                                                                                                                       | Required | Values                                                                                                                                                                             |
|----------------------|-----------------------------------------------------------------------------------------------------------------------------------|----------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `condition`          | Indicates the condition of the item. For example: <span class="ph">`New`, `Used`, `Collectible`, `Refurbished`, or `Club`</span>. | Yes      | <span class="ph">Type: xs:string</span>                                                                                                                                            |
| `fulfillmentChannel` | <span id="OfferCount__d51034e1487" class="ph">Indicates whether the item is fulfilled by Amazon or by the seller.</span>          | Yes      | Type: <a href="Products_Datatypes.md#FulfillmentChannelType" class="xref" title="Indicates whether the item is fulfilled by Amazon or by the seller.">FulfillmentChannelType</a> |

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

<div id="OfferCountType" class="topic reference nested1">

## OfferCountType

<div class="body refbody">

<span class="ph">The total number of offers for the specified condition
and fulfillment channel.</span>

<div class="section">

### OfferCountType Elements

<div class="tablenoborder">

| Name                                             | Description                                                                                           | Required | Values                                                                                                                                                               |
|--------------------------------------------------|-------------------------------------------------------------------------------------------------------|----------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| <span class="keyword parmname">OfferCount</span> | <span class="ph">The number of offers in a fulfillment channel that meet a specific condition.</span> | No       | Type: <a href="Products_Datatypes.md#OfferCount" class="xref" title="The number of offers in a fulfillment channel that meet a specific condition.">OfferCount</a> |

</div>

</div>

</div>

</div>

<div id="Points" class="topic reference nested1">

## Points

<div class="body refbody">

<span class="ph">The number of <span class="ph">Amazon Points</span>
offered with the purchase of an item.</span> The <span class="ph">Amazon
Points</span> program is only available in Japan.

<div class="section">

### Points Elements

<div class="tablenoborder">

| Name                                                      | Description                                          | Required | Values                                                                                                                           |
|-----------------------------------------------------------|------------------------------------------------------|----------|----------------------------------------------------------------------------------------------------------------------------------|
| <span class="keyword parmname">PointsNumber</span>        | The number of <span class="ph">Amazon Points</span>. | Yes      | <span class="ph">Type: xs:int</span>                                                                                             |
| <span class="keyword parmname">PointsMonetaryValue</span> | The monetary value of the points.                    | Yes      | Type: <a href="Products_Datatypes.md#MoneyType" class="xref" title="An amount of money in a specified currency.">MoneyType</a> |

</div>

</div>

</div>

</div>

<div id="PriceToEstimateFees" class="topic reference nested1">

## PriceToEstimateFees

<div class="body refbody">

<span class="ph">Price information for a product, used to estimate
fees.</span>

<div class="section">

### PriceToEstimateFees Elements

<div class="tablenoborder">

| Name                                               | Description                                                                                                       | Required | Values                                                                                                                                                                                                 |
|----------------------------------------------------|-------------------------------------------------------------------------------------------------------------------|----------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| <span class="keyword parmname">ListingPrice</span> | The price of the item.                                                                                            | Yes      | Type: <a href="Products_Datatypes.md#MoneyType" class="xref" title="An amount of money in a specified currency.">MoneyType</a>                                                                       |
| <span class="keyword parmname">Shipping</span>     | The shipping cost.                                                                                                | No       | Type: <a href="Products_Datatypes.md#MoneyType" class="xref" title="An amount of money in a specified currency.">MoneyType</a>                                                                       |
| <span class="keyword parmname">Points</span>       | <span class="ph">The number of <span class="ph">Amazon Points</span> offered with the purchase of an item.</span> | No       | Type: <a href="Products_Datatypes.md#Points" class="xref" title="The number of Amazon Points offered with the purchase of an item. The Amazon Points program is only available in Japan.">Points</a> |

</div>

</div>

</div>

</div>

<div id="PrimeInformation" class="topic reference nested1">

## PrimeInformation

<div class="body refbody">

<span class="ph">Amazon Prime information.</span>

<div class="section">

### PrimeInformation Elements

<div class="tablenoborder">

<table id="PrimeInformation__table_ev4_ckp_kq" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d226792e3481" class="entry" data-valign="top" width="50%">Name</th>
<th id="d226792e3484" class="entry" data-valign="top" width="50%">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="50%" headers="d226792e3481 "><span class="keyword parmname">IsNationalPrime</span></td>
<td class="entry" data-valign="top" width="50%" headers="d226792e3484 ">Indicates whether the offer is an Amazon Prime offer throughout the entire marketplace where it is listed.
<p>Required.</p>
<p><span class="ph">Type: xs:boolean</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="50%" headers="d226792e3481 "><span class="keyword parmname">IsPrime</span></td>
<td class="entry" data-valign="top" width="50%" headers="d226792e3484 ">Indicates whether the offer is an Amazon Prime offer.
<p>Required.</p>
<p><span class="ph">Type: xs:boolean</span></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="SalesRank" class="topic reference nested1">

## SalesRank

<div class="body refbody">

<span class="ph">The sales rank of the item in the given product
category.</span>

<div class="section">

### SalesRank Elements

<div class="tablenoborder">

<table id="SalesRank__table_ev4_ckp_kq" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d226792e3592" class="entry" data-valign="top" width="50%">Name</th>
<th id="d226792e3595" class="entry" data-valign="top" width="50%">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="50%" headers="d226792e3592 "><span class="keyword parmname">ProductCategoryId</span></td>
<td class="entry" data-valign="top" width="50%" headers="d226792e3595 ">The product category identifier of the item.
<p>Required.</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="50%" headers="d226792e3592 "><span class="keyword parmname">Rank</span></td>
<td class="entry" data-valign="top" width="50%" headers="d226792e3595 ">The sales rank of the item in the given product category.
<p>Required.</p>
<p><span class="ph">Type: xs:int</span></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="SellerFeedbackRating" class="topic reference nested1">

## SellerFeedbackRating

<div class="body refbody">

<span class="ph">Information about the seller's feedback, including the
percentage of positive feedback, and the total count of feedback
received.</span>

<div class="section">

### SellerFeedbackRating Elements

<div class="tablenoborder">

| Name                                                               | Description                                                              | Required | Values                                  |
|--------------------------------------------------------------------|--------------------------------------------------------------------------|----------|-----------------------------------------|
| <span class="keyword parmname">SellerPositiveFeedbackRating</span> | The percentage of positive feedback for the seller in the past 365 days. | No       | <span class="ph">Type: xs:double</span> |
| <span class="keyword parmname">FeedbackCount</span>                | The count of feedback received about the seller.                         | Yes      | <span class="ph">Type: xs:long</span>   |

</div>

</div>

</div>

</div>

<div id="ShipsFrom" class="topic reference nested1">

## ShipsFrom

<div class="body refbody">

<span class="ph">The state and country from where the item is
shipped.</span>

<div class="section">

### ShipsFrom Elements

<div class="tablenoborder">

| Name                                          | Description                                 | Required | Values                                  |
|-----------------------------------------------|---------------------------------------------|----------|-----------------------------------------|
| <span class="keyword parmname">State</span>   | The state from where the item is shipped.   | No       | <span class="ph">Type: xs:string</span> |
| <span class="keyword parmname">Country</span> | The country from where the item is shipped. | No       | <span class="ph">Type: xs:string</span> |

</div>

</div>

</div>

</div>

</div>

<div id="RelatedTopics" class="topic nested0">

# Related topics

<div class="body">

<a href="../products/Products_Overview.md" class="xref">Products API</a>

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
