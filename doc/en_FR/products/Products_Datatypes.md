<div id="MWSDX_noscript">

JavaScript is currently disabled in your browser.  
To use the Amazon MWS documentation, you must enable JavaScript in your
browser.

</div>

<div id="MWSDX_divtop">

[![Amazon
Services](https://images-na.ssl-images-amazon.com/images/G/08/mwsportal/fr_FR/amazonservices.gif
"Amazon Services")](http://services.amazon.fr)  
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

The following datatypes are used in the response elements of the
<span class="ph">Amazon Marketplace Web Service (Amazon MWS)</span>
<span class="ph">Products API
section</span>:

<div class="tablenoborder">

| Datatype                                                                                                                                                                          | Description                                                                                                                                               |
| --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [AvailabilityType](#AvailabilityType "Indicates whether the item is available for shipping now, or on a known or an unknown date in the future.")                                 | <span class="ph">Indicates whether the item is available for shipping now, or on a known or an unknown date in the future.</span>                         |
| [BuyBoxPrice](#BuyBoxPrice "The price of an item that is displayed in the Buy Box.")                                                                                              | <span class="ph">The price of an item that is displayed in the Buy Box.</span>                                                                            |
| [DetailedShippingTimeType](#DetailedShippingTimeType "The time range in which an item will likely be shipped once an order has been placed.")                                     | <span class="ph">The maximum time within which the item will likely be shipped once an order has been placed.</span>                                      |
| [FeeDetail](#FeeDetail "The type of fee, fee amount, and other details.")                                                                                                         | <span class="ph">The type of fee, fee amount, and other details.</span>                                                                                   |
| [FeesEstimate](#FeesEstimate "The total estimated fees for a product and a list of details.")                                                                                     | <span class="ph">The total estimated fees for a product and a list of details.</span>                                                                     |
| [FeesEstimateIdentifier](#FeesEstimateIdentifier "A product identifier, marketplace, time of request, and other details that identify an estimate.")                              | <span class="ph">A product identifier, marketplace, time of request, and other details that identify an estimate.</span>                                  |
| [FeesEstimateRequest](#FeesEstimateRequest "A product, marketplace, and proposed price used to request estimated fees.")                                                          | <span class="ph">A product, marketplace, and proposed price used to request estimated fees.</span>                                                        |
| [FeesEstimateResult](#FeesEstimateResult "A product identifier and the estimated fees for that product.")                                                                         | <span class="ph">A product identifier and the estimated fees for that product.</span>                                                                     |
| [FeeType](#FeeType "The type of fee charged to a seller.")                                                                                                                        | <span class="ph">The type of fee charged to a seller.</span>                                                                                              |
| [FulfillmentChannelType](#FulfillmentChannelType "Indicates whether the item is fulfilled by Amazon or by the seller.")                                                           | <span class="ph">Indicates whether the item is fulfilled by Amazon or by the seller.</span>                                                               |
| [LowestPrice](#LowestPrice "The lowest price of an item.")                                                                                                                        | <span class="ph">The lowest price of an item.</span>                                                                                                      |
| [MarketplaceType](#MarketplaceType "An encrypted, Amazon-defined marketplace identifier.")                                                                                        | <span class="ph">An encrypted, Amazon-defined marketplace identifier.</span>                                                                              |
| [MoneyType](#MoneyType "An amount of money in a specified currency.")                                                                                                             | <span class="ph">An amount of money in a specified currency.</span>                                                                                       |
| [OfferCount](#OfferCount "The number of offers in a fulfillment channel that meet a specific condition.")                                                                         | <span class="ph">The number of offers in a fulfillment channel that meet a specific condition.</span>                                                     |
| [OfferCountType](#OfferCountType "The total number of offers for the specified condition and fulfillment channel.")                                                               | <span class="ph">The total number of offers for the specified condition and fulfillment channel.</span>                                                   |
| [Points](#Points "The number of Amazon Points offered with the purchase of an item. The Amazon Points program is only available in Japan.")                                       | <span class="ph">The number of <span class="ph">Amazon Points</span> offered with the purchase of an item.</span>                                         |
| [PriceToEstimateFees](#PriceToEstimateFees "Price information for a product, used to estimate fees.")                                                                             | <span class="ph">Price information for a product, used to estimate fees.</span>                                                                           |
| [SellerFeedbackRating](#SellerFeedbackRating "Information about the seller's feedback, including the percentage of positive feedback, and the total count of feedback received.") | <span class="ph">Information about the seller's feedback, including the percentage of positive feedback, and the total count of feedback received.</span> |
| [ShipsFrom](#ShipsFrom "The state and country from where the item is shipped.")                                                                                                   | <span class="ph">The state and country from where the item is shipped.</span>                                                                             |

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

  - <span class="keyword parmname">NOW</span> - The item is available
    for shipping now.
  - <span class="keyword parmname">FUTURE\_WITHOUT\_DATE</span> - The
    item will be available for shipping on an unknown date in the
    future.
  - <span class="keyword parmname">FUTURE\_WITH\_DATE</span> - The item
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

| Name      | Description                                                                                                             | Required | Values                                  |
| --------- | ----------------------------------------------------------------------------------------------------------------------- | -------- | --------------------------------------- |
| condition | Indicates the condition of the item. For example: <span class="ph">New, Used, Collectible, Refurbished, or Club</span>. | Yes      | <span class="ph">Type: xs:string</span> |

</div>

</div>

<div class="section">

### BuyBoxPrice Elements

<div class="tablenoborder">

| Name                                               | Description                                                                                                                                        | Required | Values                                                                                                                                                                   |
| -------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------- | -------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| <span class="keyword parmname">LandedPrice</span>  | <span class="keyword parmname">ListingPrice</span> + <span class="keyword parmname">Shipping</span> - <span class="keyword parmname">Points</span> | Yes      | Type: [MoneyType](Products_Datatypes.md#MoneyType "An amount of money in a specified currency.")                                                                       |
| <span class="keyword parmname">ListingPrice</span> | The price of the item.                                                                                                                             | Yes      | Type: [MoneyType](Products_Datatypes.md#MoneyType "An amount of money in a specified currency.")                                                                       |
| <span class="keyword parmname">Shipping</span>     | The shipping cost.                                                                                                                                 | Yes      | Type: [MoneyType](Products_Datatypes.md#MoneyType "An amount of money in a specified currency.")                                                                       |
| <span class="keyword parmname">Points</span>       | <span class="ph">The number of <span class="ph">Amazon Points</span> offered with the purchase of an item.</span>                                  | No       | Type: [Points](Products_Datatypes.md#Points "The number of Amazon Points offered with the purchase of an item. The Amazon Points program is only available in Japan.") |

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

<table>
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Description</th>
<th>Required</th>
<th>Values</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>minimumHours</td>
<td>The minimum time, in hours, that the item will likely be shipped after the order has been placed.</td>
<td>No</td>
<td><span class="ph">Type: xs:short</span></td>
</tr>
<tr class="even">
<td>maximumHours</td>
<td>The maximum time, in hours, that the item will likely be shipped after the order has been placed.</td>
<td>No</td>
<td><span class="ph">Type: xs:short</span></td>
</tr>
<tr class="odd">
<td>availableDate</td>
<td>The date when the item will be available for shipping. Only displayed for items that are not currently available for shipping.</td>
<td>No</td>
<td><span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
<tr class="even">
<td>availabilityType</td>
<td><span id="DetailedShippingTimeType__d50806e1493" class="ph">Indicates whether the item is available for shipping now, or on a known or an unknown date in the future.</span> If known, the availableDate attribute indicates the date that the item will be available for shipping.</td>
<td>No</td>
<td>Type: <a href="Products_Datatypes.md#AvailabilityType" class="xref" title="Indicates whether the item is available for shipping now, or on a known or an unknown date in the future.">AvailabilityType</a></td>
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

<span class="ph">For more information on fees, see [Selling on Amazon
Fee Schedule](https://sellercentral.amazon.co.uk/gp/help/200336920) and
[FBA features and
fees](https://sellercentral-europe.amazon.com/gp/help/201074400) on
Seller
Central.</span>

<div class="tablenoborder">

| Name                                                        | Description                                                                              | Required | Values                                                                                                         |
| ----------------------------------------------------------- | ---------------------------------------------------------------------------------------- | -------- | -------------------------------------------------------------------------------------------------------------- |
| <span class="keyword parmname">FeeType</span>               | <span id="FeeDetail__d50806e1750" class="ph">The type of fee charged to a seller.</span> | Yes      | Type: [FeeType](Products_Datatypes.md#FeeType "The type of fee charged to a seller.")                        |
| <span class="keyword parmname">FeeAmount</span>             | The amount charged for a given fee.                                                      | Yes      | Type: [MoneyType](Products_Datatypes.md#MoneyType "An amount of money in a specified currency.")             |
| <span class="keyword parmname">FeePromotion</span>          | The promotion amount for a given fee.                                                    | No       | Type: [MoneyType](Products_Datatypes.md#MoneyType "An amount of money in a specified currency.")             |
| <span class="keyword parmname">TaxAmount</span>             | The tax amount for a given fee. This is only shown for the India marketplace.            | No       | Type: [MoneyType](Products_Datatypes.md#MoneyType "An amount of money in a specified currency.")             |
| <span class="keyword parmname">FinalFee</span>              | The final fee amount for a given fee.                                                    | Yes      | Type: [MoneyType](Products_Datatypes.md#MoneyType "An amount of money in a specified currency.")             |
| <span class="keyword parmname">IncludedFeeDetailList</span> | A list of other fees that contributes to a given fee.                                    | No       | Type: List of [FeeDetail](Products_Datatypes.md#FeeDetail "The type of fee, fee amount, and other details.") |

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

| Name                                                    | Description                                                               | Required | Values                                                                                                         |
| ------------------------------------------------------- | ------------------------------------------------------------------------- | -------- | -------------------------------------------------------------------------------------------------------------- |
| <span class="keyword parmname">TotalFeesEstimate</span> | Total estimated fees for a given product, price, and fulfillment channel. | Yes      | Type: [MoneyType](Products_Datatypes.md#MoneyType "An amount of money in a specified currency.")             |
| <span class="keyword parmname">FeeDetailList</span>     | A list of other fees that contributes to a given fee.                     | Yes      | Type: List of [FeeDetail](Products_Datatypes.md#FeeDetail "The type of fee, fee amount, and other details.") |

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

<table>
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Description</th>
<th>Required</th>
<th>Values</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><span class="keyword parmname">MarketplaceId</span></td>
<td><span class="ph">An encrypted, Amazon-defined marketplace identifier.</span></td>
<td>Yes</td>
<td>Type: <a href="Products_Datatypes.md#MarketplaceType" class="xref" title="An encrypted, Amazon-defined marketplace identifier.">MarketplaceType</a></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">IdType</span></td>
<td>The type of product identifier used by <span class="keyword parmname">IdValue</span>.</td>
<td>Yes</td>
<td><span class="keyword parmname">IdType</span> values: ASIN, SellerSKU
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">IdValue</span></td>
<td>The product identifier.</td>
<td>Yes</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">PriceToEstimateFees</span></td>
<td>The product price that the fee estimate is based on.</td>
<td>Yes</td>
<td>Type: <a href="Products_Datatypes.md#PriceToEstimateFees" class="xref" title="Price information for a product, used to estimate fees.">PriceToEstimateFees</a></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">IsAmazonFulfilled</span></td>
<td>true if the offer is fulfilled by Amazon.</td>
<td>Yes</td>
<td><span class="ph">Type: xs:boolean</span></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">SellerInputIdentifier</span></td>
<td>A unique identifier provided by the caller to track this request.</td>
<td>Yes</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">TimeOfFeesEstimation</span></td>
<td>The time for which the fees were estimated. This defaults to the time the request is made.</td>
<td>Yes</td>
<td><span class="ph">Type: xs:dateTime</span></td>
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

<table>
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Description</th>
<th>Required</th>
<th>Values</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><span class="keyword parmname">MarketplaceId</span></td>
<td><span class="ph">An encrypted, Amazon-defined marketplace identifier.</span></td>
<td>Yes</td>
<td>Type: <a href="Products_Datatypes.md#MarketplaceType" class="xref" title="An encrypted, Amazon-defined marketplace identifier.">MarketplaceType</a></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">IdType</span></td>
<td>The type of product identifier used by <span class="keyword parmname">IdValue</span>.</td>
<td>Yes</td>
<td><span class="keyword parmname">IdType</span> values: ASIN, SellerSKU
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">IdValue</span></td>
<td>The product identifier.</td>
<td>Yes</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">PriceToEstimateFees</span></td>
<td>The product price that the fee estimate is based on.</td>
<td>Yes</td>
<td>Type: <a href="Products_Datatypes.md#PriceToEstimateFees" class="xref" title="Price information for a product, used to estimate fees.">PriceToEstimateFees</a></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">Identifier</span></td>
<td>A unique value that will identify this request.</td>
<td>Yes</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">IsAmazonFulfilled</span></td>
<td>true if the offer is fulfilled by Amazon.</td>
<td>Yes</td>
<td><span class="ph">Type: xs:boolean</span></td>
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

<table>
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Description</th>
<th>Required</th>
<th>Values</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><span class="keyword parmname">FeesEstimateIdentifier</span></td>
<td>Information used to identify a product fee request.</td>
<td>Yes</td>
<td>Type: <a href="Products_Datatypes.md#FeesEstimateIdentifier" class="xref" title="A product identifier, marketplace, time of request, and other details that identify an estimate.">FeesEstimateIdentifier</a></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">FeesEstimate</span></td>
<td><span class="ph">The total estimated fees for a product and a list of details.</span></td>
<td>No</td>
<td>Type: <a href="Products_Datatypes.md#FeesEstimate" class="xref" title="The total estimated fees for a product and a list of details.">FeesEstimate</a></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">Status</span></td>
<td>The status of the fee request.</td>
<td>Yes</td>
<td><span class="keyword parmname">Status</span> values: Success, ClientError, ServiceError
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Error</span></td>
<td>An Error object with a Type, Code, and Message.</td>
<td>No</td>
<td>Type: Error</td>
</tr>
</tbody>
</table>

</div>

For information on handling the Status or Error elements, see
[Processing bulk operation
requests](Products_ProcessingBulkOperationRequests.md "Describes how to process operations in bulk by using the ASINList, SellerSKUList, and IdList request parameters.").

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

  - <span class="keyword parmname">ReferralFee</span>
  - <span class="keyword parmname">VariableClosingFee</span>
  - <span class="keyword parmname">PerItemFee</span>
  - <span class="keyword parmname">FBAFees</span>
  - <span class="keyword parmname">FBAPickAndPack</span>
  - <span class="keyword parmname">FBAWeightHandling</span>
  - <span class="keyword parmname">FBAOrderHandling</span>
  - <span class="keyword parmname">FBADeliveryServicesFee</span>

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

  - Amazon
  - Merchant

</div>

</div>

</div>

<div id="LowestPrice" class="topic reference nested1">

## LowestPrice

<div class="body refbody">

<span class="ph">The lowest price of an
item.</span>

<div class="section">

### LowestPrice Attributes

<div class="tablenoborder">

| Name               | Description                                                                                                               | Required | Values                                                                                                                                               |
| ------------------ | ------------------------------------------------------------------------------------------------------------------------- | -------- | ---------------------------------------------------------------------------------------------------------------------------------------------------- |
| condition          | Indicates the condition of the item. For example: <span class="ph">New, Used, Collectible, Refurbished, or Club</span>.   | Yes      | <span class="ph">Type: xs:string</span>                                                                                                              |
| fulfillmentChannel | <span id="LowestPrice__d50806e1475" class="ph">Indicates whether the item is fulfilled by Amazon or by the seller.</span> | Yes      | Type: [FulfillmentChannelType](Products_Datatypes.md#FulfillmentChannelType "Indicates whether the item is fulfilled by Amazon or by the seller.") |

</div>

</div>

<div class="section">

### LowestPrice Elements

<div class="tablenoborder">

| Name                                               | Description                                                                                                                                        | Required | Values                                                                                                                                                                   |
| -------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------- | -------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| <span class="keyword parmname">LandedPrice</span>  | <span class="keyword parmname">ListingPrice</span> + <span class="keyword parmname">Shipping</span> - <span class="keyword parmname">Points</span> | Yes      | Type: [MoneyType](Products_Datatypes.md#MoneyType "An amount of money in a specified currency.")                                                                       |
| <span class="keyword parmname">ListingPrice</span> | The price of the item.                                                                                                                             | Yes      | Type: [MoneyType](Products_Datatypes.md#MoneyType "An amount of money in a specified currency.")                                                                       |
| <span class="keyword parmname">Shipping</span>     | The shipping cost.                                                                                                                                 | Yes      | Type: [MoneyType](Products_Datatypes.md#MoneyType "An amount of money in a specified currency.")                                                                       |
| <span class="keyword parmname">Points</span>       | <span class="ph">The number of <span class="ph">Amazon Points</span> offered with the purchase of an item.</span>                                  | No       | Type: [Points](Products_Datatypes.md#Points "The number of Amazon Points offered with the purchase of an item. The Amazon Points program is only available in Japan.") |

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

<span class="ph">For a list of
<span class="keyword parmname">MarketplaceId</span> values, see [Amazon
MWS endpoints and MarketplaceId values](../dev_guide/DG_Endpoints.md)
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

<table>
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Description</th>
<th>Required</th>
<th>Values</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><span class="keyword parmname">Amount</span></td>
<td>The total value.</td>
<td>No</td>
<td><span class="ph">Type: xs:decimal</span>
<p>A decimal greater than zero.</p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">CurrencyCode</span></td>
<td>The currency code in <span class="ph"> <a href="../dev_guide/DG_ISO4217.md" class="xref">ISO 4217 format</a> </span>.</td>
<td>No</td>
<td><span class="ph">Type: xs:string</span>
<div class="p">
One of the following:
<ul>
<li><code class="ph tt">USD</code> (United States dollar)</li>
<li><code class="ph tt">EUR</code> (European euro)</li>
<li><code class="ph tt">GBP</code> (Great Britain pounds)</li>
<li><code class="ph tt">RMB</code> (Chinese yuan)</li>
<li><code class="ph tt">INR</code> (Indian rupee)</li>
<li><code class="ph tt">JPY</code> (Japanese yen)</li>
<li><code class="ph tt">CAD</code> (Canadian dollar)</li>
<li><code class="ph tt">MXN</code> (Mexican peso)</li>
</ul>
</div></td>
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
a specific
condition.</span>

<div class="section">

### OfferCount Attributes

<div class="tablenoborder">

| Name               | Description                                                                                                              | Required | Values                                                                                                                                               |
| ------------------ | ------------------------------------------------------------------------------------------------------------------------ | -------- | ---------------------------------------------------------------------------------------------------------------------------------------------------- |
| condition          | Indicates the condition of the item. For example: <span class="ph">New, Used, Collectible, Refurbished, or Club</span>.  | Yes      | <span class="ph">Type: xs:string</span>                                                                                                              |
| fulfillmentChannel | <span id="OfferCount__d50806e1475" class="ph">Indicates whether the item is fulfilled by Amazon or by the seller.</span> | Yes      | Type: [FulfillmentChannelType](Products_Datatypes.md#FulfillmentChannelType "Indicates whether the item is fulfilled by Amazon or by the seller.") |

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
and fulfillment
channel.</span>

<div class="section">

### OfferCountType Elements

<div class="tablenoborder">

| Name                                             | Description                                                                                           | Required | Values                                                                                                                                 |
| ------------------------------------------------ | ----------------------------------------------------------------------------------------------------- | -------- | -------------------------------------------------------------------------------------------------------------------------------------- |
| <span class="keyword parmname">OfferCount</span> | <span class="ph">The number of offers in a fulfillment channel that meet a specific condition.</span> | No       | Type: [OfferCount](Products_Datatypes.md#OfferCount "The number of offers in a fulfillment channel that meet a specific condition.") |

</div>

</div>

</div>

</div>

<div id="Points" class="topic reference nested1">

## Points

<div class="body refbody">

<span class="ph">The number of <span class="ph">Amazon Points</span>
offered with the purchase of an item.</span> The <span class="ph">Amazon
Points</span> program is only available in
Japan.

<div class="section">

### Points Elements

<div class="tablenoborder">

| Name                                               | Description                                          | Required | Values                               |
| -------------------------------------------------- | ---------------------------------------------------- | -------- | ------------------------------------ |
| <span class="keyword parmname">PointsNumber</span> | The number of <span class="ph">Amazon Points</span>. | Yes      | <span class="ph">Type: xs:int</span> |

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

| Name                                               | Description                                                                                                       | Required | Values                                                                                                                                                                   |
| -------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | -------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| <span class="keyword parmname">ListingPrice</span> | The price of the item.                                                                                            | Yes      | Type: [MoneyType](Products_Datatypes.md#MoneyType "An amount of money in a specified currency.")                                                                       |
| <span class="keyword parmname">Shipping</span>     | The shipping cost.                                                                                                | No       | Type: [MoneyType](Products_Datatypes.md#MoneyType "An amount of money in a specified currency.")                                                                       |
| <span class="keyword parmname">Points</span>       | <span class="ph">The number of <span class="ph">Amazon Points</span> offered with the purchase of an item.</span> | No       | Type: [Points](Products_Datatypes.md#Points "The number of Amazon Points offered with the purchase of an item. The Amazon Points program is only available in Japan.") |

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
| ------------------------------------------------------------------ | ------------------------------------------------------------------------ | -------- | --------------------------------------- |
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
| --------------------------------------------- | ------------------------------------------- | -------- | --------------------------------------- |
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

[Products API](../products/Products_Overview.md)

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
