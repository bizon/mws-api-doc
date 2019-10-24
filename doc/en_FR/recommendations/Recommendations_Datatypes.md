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

<div id="Recommendations_Datatypes" class="nested0">

# Recommendations Datatypes

<div class="body">

The following datatypes are used in the request parameters and response
elements of the <span class="ph">Amazon Marketplace Web Service (Amazon
MWS)</span> <span class="ph">Recommendations API
section</span>:

<div class="tablenoborder">

| Datatype                                                                                                                                                                                                        | Description                                                                                                                                     |
| --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------- |
| [AdvertisingRecommendation](#AdvertisingRecommendation "A recommendation for advertising your products and for using the sponsored products program. This datatype is used in all marketplaces except Brazil.") | <span class="ph">A recommendation for advertising your products and for using the sponsored products program.</span>                            |
| [CategoryQuery](#CategoryQuery "A category-specific filter that you can specify to narrow down the types of recommendations returned for each category.")                                                       | <span class="ph">A category-specific filter that you can specify to narrow down the types of recommendations returned for each category.</span> |
| [DimensionMeasure](#DimensionMeasure)                                                                                                                                                                           | <span class="ph">Dimension unit and amount</span>                                                                                               |
| [FulfillmentRecommendation](#FulfillmentRecommendation "A recommendation for the top products to fulfill through Fulfillment by Amazon (FBA). This datatype is used in all marketplaces except Brazil.")        | <span class="ph">A recommendation for the top products to fulfill through Fulfillment by Amazon (FBA).</span>                                   |
| [GlobalSellingRecommendation](#GlobalSellingRecommendation "A recommendation for expanding your products to more regions and marketplaces.")                                                                    | <span class="ph">A recommendation for expanding your products to more regions and marketplaces.</span>                                          |
| [InventoryRecommendation](#InventoryRecommendation "A recommendation for restocking low or out-of-stock items in your inventory.")                                                                              | <span class="ph">A recommendation for restocking low or out-of-stock items in your inventory.</span>                                            |
| [ItemDimensions](#ItemDimensions "The dimensions of an item.")                                                                                                                                                  | <span class="ph">The dimensions of an item.</span>                                                                                              |
| [Price](#Price "Currency type and amount.")                                                                                                                                                                     | <span class="ph">Currency type and amount.</span>                                                                                               |
| [PricingRecommendation](#PricingRecommendation "A recommendation to review pricing on items in your inventory where your offer is not the lowest price.")                                                       | <span class="ph">A recommendation to review pricing on items in your inventory where your offer is not the lowest price.</span>                 |
| [ProductIdentifier](#ProductIdentifier "The ASIN, SKU, and UPC of the item.")                                                                                                                                   | <span class="ph">The ASIN, SKU, and UPC of the item.</span>                                                                                     |
| [WeightMeasure](#WeightMeasure "Weight unit and amount.")                                                                                                                                                       | <span class="ph">Weight unit and amount.</span>                                                                                                 |

</div>

</div>

<div id="AdvertisingRecommendation" class="topic nested1">

## AdvertisingRecommendation

<div class="body">

<span class="ph">A recommendation for advertising your products and for
using the sponsored products program.</span> <span class="ph">This
datatype is used in all marketplaces except Brazil.</span>

<div class="section">

### Operations

The <span class="keyword parmname">AdvertisingRecommendation</span>
datatype is used in a response element of the following
    operations:

  - [ListRecommendations](Recommendations_ListRecommendations.html "Returns your active recommendations for a specific category or for all categories for a specific marketplace.")
  - [ListRecommendationsByNextToken](Recommendations_ListRecommendationsByNextToken.html "Returns the next page of recommendations using the NextToken parameter.")

</div>

<div class="section">

### Datatype content

The following table shows the elements of the
<span class="keyword parmname">AdvertisingRecommendation</span>
datatype:

<div class="tablenoborder">

<table>
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
<td><span class="keyword parmname">RecommendationId</span></td>
<td>A unique recommendation identifier, in the format of {Category}-{RecommendationReason}-{ASIN}-{SKU}-{UPC}-{ItemName}. If any of these values are null, the value will be empty.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">RecommendationReason</span></td>
<td>A detailed description of the recommendation.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">LastUpdated</span></td>
<td>The date and time when the recommendation was generated or last updated. In <span class="ph"><a href="../dev_guide/DG_ISO8601.html" class="xref">ISO 8601 date time format</a></span>.
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">ItemIdentifier</span></td>
<td>The ASIN, SKU, and UPC of the item.
<p>Type: <a href="#ProductIdentifier" class="xref" title="The ASIN, SKU, and UPC of the item.">ProductIdentifier</a></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">ItemName</span></td>
<td>The name of the item.
<p>Optional</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">BrandName</span></td>
<td>The brand name of the item.
<p>Optional</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">ProductCategory</span></td>
<td>The product category of the item.
<p>Optional</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">SalesRank</span></td>
<td>The sales rank of the item in the given product category.
<p>Optional</p>
<p><span class="ph">Type: xs:int</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">YourPricePlusShipping</span></td>
<td>The price that you have set for the item, including shipping.
<p>Optional</p>
<p>Type: <a href="#Price" class="xref" title="Currency type and amount.">Price</a></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">LowestPricePlusShipping</span></td>
<td>The lowest price for the item in the same <span class="keyword parmname">Condition</span> and <span class="keyword parmname">SubCondition</span>, including shipping.
<p>Optional</p>
<p>Type: <a href="#Price" class="xref" title="Currency type and amount.">Price</a></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">AvailableQuantity</span></td>
<td>The total number of the items in your inventory.
<p>Optional</p>
<p><span class="ph">Type: xs:int</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">SalesForTheLast30Days</span></td>
<td>The number of your sales of the item in the last 30 days.
<p>Optional</p>
<p><span class="ph">Type: xs:int</span></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="CategoryQuery" class="topic nested1">

## CategoryQuery

<div class="body">

<span class="ph">A category-specific filter that you can specify to
narrow down the types of recommendations returned for each
category.</span>

<div class="section">

### Operations

The <span class="keyword parmname">CategoryQuery</span> datatype is used
in a request parameter of the following
    operations:

  - [ListRecommendations](Recommendations_ListRecommendations.html "Returns your active recommendations for a specific category or for all categories for a specific marketplace.")

</div>

<div class="section">

### Datatype content

The following table shows the elements of the
<span class="keyword parmname">CategoryQuery</span> datatype:

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
<th>Valid values</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><span class="keyword parmname">RecommendationCategory</span></td>
<td>Specifies a category for the recommendations to retrieve.
<p><span class="ph">Type: xs:string</span></p></td>
<td>Yes</td>
<td><span class="keyword parmname">RecommendationCategory</span> values:
<ul>
<li>Selection</li>
<li>Fulfillment</li>
<li>ListingQuality</li>
<li>GlobalSelling</li>
<li>Advertising</li>
</ul>
<div class="note note">
<span class="notetitle">Note:</span> If you specify a <span class="keyword parmname">RecommendationCategory</span> value here that was not specified in the <span class="keyword parmname">RecommendationCategory</span> request parameter to the <span class="keyword apiname">ListRecommendations</span> operation, then this value is ignored.
</div></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">FilterOptions</span></td>
<td>Specifies the filters to apply to narrow down the recommendations to return for the given recommendation category.
<p>Filters are specified as a list of FilterName=FilterValue pairs. For more information, see the <a href="Recommendations_ListRecommendations.html#Examples" class="xref">examples</a> for the <span class="keyword apiname">ListRecommendations</span> operation.</p></td>
<td>Yes</td>
<td><span class="keyword parmname">FilterOptions</span> values for ListingQuality recommendations:
<ul>
<li>QualitySet=Defect Filter for listings that have a defect, but the listing is still valid. For example, this query will return listings where there is no detailed description.</li>
<li>QualitySet=Quarantine Filter for listings that are being suppressed from the catalog because they do not meet Amazon's standards. For example, this query will return listings where there is no main image.</li>
<li>ListingStatus=Active Filter for active inventory items only. Returns items within inventory that are set to active status.</li>
<li>ListingStatus=Inactive Filter for inactive inventory items only. Returns items within inventory that are set to inactive status.</li>
</ul>
<p><span class="keyword parmname">FilterOptions</span> values for Selection, Fulfillment, GlobalSelling, and Advertising recommendations:</p>
<ul>
<li>BrandName=&lt;BrandName&gt; - Filter for recommendations that apply to the specified brand name.</li>
<li>ProductCategory=&lt;ProductCategory&gt; - Filter for recommendations that apply to the specified product category.</li>
</ul>
<p><span class="keyword parmname">FilterOptions</span> values for Selection recommendations:</p>
<ul>
<li>IncludeCommonRecommendations=true - Include Selection recommendations common to all sellers in addition to seller-specific recommendations.</li>
<li>IncludeCommonRecommendations=false - Do not include Selection recommendations common to all sellers. Only include seller-specific recommendations.</li>
</ul></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="DimensionMeasure" class="topic nested1">

## DimensionMeasure

<div class="body">

<div class="section">

### Operations

The <span class="keyword parmname">DimensionMeasure</span> datatype is
used in a response element of the following
    operations:

  - [ListRecommendations](Recommendations_ListRecommendations.html "Returns your active recommendations for a specific category or for all categories for a specific marketplace.")
  - [ListRecommendationsByNextToken](Recommendations_ListRecommendationsByNextToken.html "Returns the next page of recommendations using the NextToken parameter.")

</div>

<div class="section">

### Datatype content

The following table shows the elements of the
<span class="keyword parmname">DimensionMeasure</span> datatype:

<div class="tablenoborder">

<table>
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
<td><span class="keyword parmname">Value</span></td>
<td>The value of the measurement.
<p><span class="ph">Type: xs:decimal</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Unit</span></td>
<td>The unit of the measurement.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="FulfillmentRecommendation" class="topic nested1">

## FulfillmentRecommendation

<div class="body">

<span class="ph">A recommendation for the top products to fulfill
through Fulfillment by Amazon (FBA).</span> <span class="ph">This
datatype is used in all marketplaces except Brazil.</span>

<div class="section">

### Operations

The <span class="keyword parmname">FulfillmentRecommendation</span>
datatype is used in a response element of the following
    operations:

  - [ListRecommendations](Recommendations_ListRecommendations.html "Returns your active recommendations for a specific category or for all categories for a specific marketplace.")
  - [ListRecommendationsByNextToken](Recommendations_ListRecommendationsByNextToken.html "Returns the next page of recommendations using the NextToken parameter.")

</div>

<div class="section">

### Datatype content

The following table shows the elements of the
<span class="keyword parmname">FulfillmentRecommendation</span>
datatype:

<div class="tablenoborder">

<table>
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
<td><span class="keyword parmname">RecommendationId</span></td>
<td>A unique recommendation identifier, in the format of {Category}-{RecommendationReason}-{ASIN}-{SKU}-{UPC}-{ItemName}. If any of these values are null, the value will be empty.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">RecommendationReason</span></td>
<td>A detailed description of the recommendation.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">LastUpdated</span></td>
<td>The date and time when the recommendation was generated or last updated. In <span class="ph"><a href="../dev_guide/DG_ISO8601.html" class="xref">ISO 8601 date time format</a></span>.
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">ItemIdentifier</span></td>
<td>The ASIN, SKU, and UPC of the item.
<p>Type: <a href="#ProductIdentifier" class="xref" title="The ASIN, SKU, and UPC of the item.">ProductIdentifier</a></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">ItemName</span></td>
<td>The name of the item.
<p>Optional</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">BrandName</span></td>
<td>The brand name of the item.
<p>Optional</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">ProductCategory</span></td>
<td>The product category of the item.
<p>Optional</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">SalesRank</span></td>
<td>The sales rank of the item in the given product category.
<p>Optional</p>
<p><span class="ph">Type: xs:int</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">BuyboxPrice</span></td>
<td>The price of the item that is displayed in the Buy Box.
<p>Optional</p>
<p>Type: <a href="#Price" class="xref" title="Currency type and amount.">Price</a></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">NumberOfOffers</span></td>
<td>The number of current offers for the item.
<p>Optional</p>
<p><span class="ph">Type: xs:int</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">NumberOfOffersFulfilledByAmazon</span></td>
<td>The number of current offers for the item that are fulfilled by Amazon.
<p>Optional</p>
<p><span class="ph">Type: xs:int</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">AverageCustomerReview</span></td>
<td>The average customer review of the item.
<p>Optional</p>
<p><span class="ph">Type: xs:decimal</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">NumberOfCustomerReviews</span></td>
<td>The number of customer reviews for the item.
<p>Optional</p>
<p><span class="ph">Type: xs:int</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">ItemDimensions</span></td>
<td>The dimensions of the item.
<p>Optional</p>
<p>Type: <a href="#ItemDimensions" class="xref" title="The dimensions of an item.">ItemDimensions</a></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="GlobalSellingRecommendation" class="topic nested1">

## GlobalSellingRecommendation

<div class="body">

<span class="ph">A recommendation for expanding your products to more
regions and marketplaces.</span>

<div class="section">

### Operations

The <span class="keyword parmname">GlobalSellingRecommendation</span>
datatype is used in a response element of the following
    operations:

  - [ListRecommendations](Recommendations_ListRecommendations.html "Returns your active recommendations for a specific category or for all categories for a specific marketplace.")
  - [ListRecommendationsByNextToken](Recommendations_ListRecommendationsByNextToken.html "Returns the next page of recommendations using the NextToken parameter.")

</div>

<div class="section">

### Datatype content

The following table shows the elements of the
<span class="keyword parmname">GlobalSellingRecommendation</span>
datatype:

<div class="tablenoborder">

<table>
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
<td><span class="keyword parmname">RecommendationId</span></td>
<td>A unique recommendation identifier, in the format of {Category}-{RecommendationReason}-{ASIN}-{SKU}-{UPC}-{ItemName}. If any of these values are null, the value will be empty.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">RecommendationReason</span></td>
<td>A detailed description of the recommendation.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">LastUpdated</span></td>
<td>The date and time when the recommendation was generated or last updated. In <span class="ph"><a href="../dev_guide/DG_ISO8601.html" class="xref">ISO 8601 date time format</a></span>.
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">ItemIdentifier</span></td>
<td>The ASIN, SKU, and UPC of the item.
<p>Type: <a href="#ProductIdentifier" class="xref" title="The ASIN, SKU, and UPC of the item.">ProductIdentifier</a></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">ItemName</span></td>
<td>The name of the item.
<p>Optional</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">BrandName</span></td>
<td>The brand name of the item.
<p>Optional</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">ProductCategory</span></td>
<td>The product category of the item.
<p>Optional</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">SalesRank</span></td>
<td>The sales rank of the item in the given product category.
<p>Optional</p>
<p><span class="ph">Type: xs:int</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">BuyboxPrice</span></td>
<td>The price of the item that is displayed in the Buy Box.
<p>Optional</p>
<p>Type: <a href="#Price" class="xref" title="Currency type and amount.">Price</a></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">NumberOfOffers</span></td>
<td>The number of current offers for the item.
<p>Optional</p>
<p><span class="ph">Type: xs:int</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">NumberOfOffersFulfilledByAmazon</span></td>
<td>The number of current offers for the item that are fulfilled by Amazon.
<p>Optional</p>
<p><span class="ph">Type: xs:int</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">AverageCustomerReview</span></td>
<td>The average customer review of the item.
<p>Optional</p>
<p><span class="ph">Type: xs:decimal</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">NumberOfCustomerReviews</span></td>
<td>The number of customer reviews for the item.
<p>Optional</p>
<p><span class="ph">Type: xs:int</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">ItemDimensions</span></td>
<td>The dimensions of the item.
<p>Optional</p>
<p>Type: <a href="#ItemDimensions" class="xref" title="The dimensions of an item.">ItemDimensions</a></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="InventoryRecommendation" class="topic nested1">

## InventoryRecommendation

<div class="body">

<span class="ph">A recommendation for restocking low or out-of-stock
items in your inventory.</span>

<div class="section">

### Operations

The <span class="keyword parmname">InventoryRecommendation</span>
datatype is used in a response element of the following
    operations:

  - [ListRecommendations](Recommendations_ListRecommendations.html "Returns your active recommendations for a specific category or for all categories for a specific marketplace.")
  - [ListRecommendationsByNextToken](Recommendations_ListRecommendationsByNextToken.html "Returns the next page of recommendations using the NextToken parameter.")

</div>

<div class="section">

### Datatype content

The following table shows the elements of the
<span class="keyword parmname">InventoryRecommendation</span> datatype:

<div class="tablenoborder">

<table>
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
<td><span class="keyword parmname">RecommendationId</span></td>
<td>A unique recommendation identifier, in the format of {Category}-{RecommendationReason}-{ASIN}-{SKU}-{UPC}-{ItemName}. If any of these values are null, the value will be empty.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">RecommendationReason</span></td>
<td>A detailed description of the recommendation.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">LastUpdated</span></td>
<td>The date and time when the recommendation was generated or last updated. In <span class="ph"><a href="../dev_guide/DG_ISO8601.html" class="xref">ISO 8601 date time format</a></span>.
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">ItemIdentifier</span></td>
<td>The ASIN, SKU, and UPC of the item.
<p>Type: <a href="#ProductIdentifier" class="xref" title="The ASIN, SKU, and UPC of the item.">ProductIdentifier</a></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">ItemName</span></td>
<td>The name of the item.
<p>Optional</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">FulfillmentChannel</span></td>
<td><span class="keyword parmname">FulfillmentChannel</span> values:
<ul>
<li>MFN Indicates that you are fulfilling the item.</li>
<li>AFN Indicates that Amazon is fulfilling the item.</li>
</ul>
<p>Optional</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">AvailableQuantity</span></td>
<td>The total number of the items in your inventory.
<p>Optional</p>
<p><span class="ph">Type: xs:int</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">DaysUntilStockRunsOut</span></td>
<td>The estimated number of days until you run out of inventory of the item based on current sales.
<p>Optional</p>
<p><span class="ph">Type: xs:int</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">DaysOutOfStockLast30Days</span></td>
<td>The number of days in the last 30 days when you were out of stock of the item.
<p>Optional</p>
<p><span class="ph">Type: xs:int</span></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="ItemDimensions" class="topic nested1">

## ItemDimensions

<div class="body">

<span class="ph">The dimensions of an item.</span>

<div class="section">

### Operations

The <span class="keyword parmname">ItemDimensions</span> datatype is
used in a response element of the following
    operations:

  - [ListRecommendations](Recommendations_ListRecommendations.html "Returns your active recommendations for a specific category or for all categories for a specific marketplace.")
  - [ListRecommendationsByNextToken](Recommendations_ListRecommendationsByNextToken.html "Returns the next page of recommendations using the NextToken parameter.")

</div>

<div class="section">

### Datatype content

The following table shows the elements of the
<span class="keyword parmname">ItemDimensions</span> datatype:

<div class="tablenoborder">

<table>
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
<td><span class="keyword parmname">Height</span></td>
<td>The height of the unit.
<p>Type: <a href="#DimensionMeasure" class="xref">DimensionMeasure</a></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Width</span></td>
<td>The width of the unit.
<p>Type: <a href="#DimensionMeasure" class="xref">DimensionMeasure</a></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">Length</span></td>
<td>The length of the unit.
<p>Type: <a href="#DimensionMeasure" class="xref">DimensionMeasure</a></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Weight</span></td>
<td>The weight of the unit.
<p>Type: <a href="#WeightMeasure" class="xref" title="Weight unit and amount.">WeightMeasure</a></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="Price" class="topic nested1">

## Price

<div class="body">

<span class="ph">Currency type and amount.</span>

<div class="section">

### Operations

The <span class="keyword parmname">Price</span> datatype is used in a
response element of the following
    operations:

  - [ListRecommendations](Recommendations_ListRecommendations.html "Returns your active recommendations for a specific category or for all categories for a specific marketplace.")
  - [ListRecommendationsByNextToken](Recommendations_ListRecommendationsByNextToken.html "Returns the next page of recommendations using the NextToken parameter.")

</div>

<div class="section">

### Datatype content

The following table shows the elements of the
<span class="keyword parmname">Price</span> datatype:

<div class="tablenoborder">

<table>
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
<td><span class="keyword parmname">CurrencyCode</span></td>
<td>Three-digit currency code. In <span class="ph"> <a href="../dev_guide/DG_ISO4217.html" class="xref">ISO 4217 format</a> </span>.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Amount</span></td>
<td>The currency amount.
<p><span class="ph">Type: xs:decimal</span></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="PricingRecommendation" class="topic nested1">

## PricingRecommendation

<div class="body">

<span class="ph">A recommendation to review pricing on items in your
inventory where your offer is not the lowest price.</span>

<div class="section">

### Operations

The <span class="keyword parmname">PricingRecommendation</span> datatype
is used in a response element of the following
    operations:

  - [ListRecommendations](Recommendations_ListRecommendations.html "Returns your active recommendations for a specific category or for all categories for a specific marketplace.")
  - [ListRecommendationsByNextToken](Recommendations_ListRecommendationsByNextToken.html "Returns the next page of recommendations using the NextToken parameter.")

</div>

<div class="section">

### Datatype content

The following table shows the elements of the
<span class="keyword parmname">PricingRecommendation</span> datatype:

<div class="tablenoborder">

<table>
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
<td><span class="keyword parmname">RecommendationId</span></td>
<td>A unique recommendation identifier, in the format of {Category}-{RecommendationReason}-{ASIN}-{SKU}-{UPC}-{ItemName}. If any of these values are null, the value will be empty.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">RecommendationReason</span></td>
<td>A detailed description of the recommendation.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">LastUpdated</span></td>
<td>The date and time when the recommendation was generated or last updated. In <span class="ph"><a href="../dev_guide/DG_ISO8601.html" class="xref">ISO 8601 date time format</a></span>.
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">ItemIdentifier</span></td>
<td>The ASIN, SKU, and UPC of the item.
<p>Type: <a href="#ProductIdentifier" class="xref" title="The ASIN, SKU, and UPC of the item.">ProductIdentifier</a></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">ItemName</span></td>
<td>The name of the item.
<p>Optional</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Condition</span></td>
<td>The condition of the item.
<p>Optional</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">SubCondition</span></td>
<td>The subcondition of the item.
<p>Optional</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">FulfillmentChannel</span></td>
<td><span class="keyword parmname">FulfillmentChannel</span> values:
<ul>
<li>MFN Indicates that you are fulfilling the item.</li>
<li>AFN Indicates that Amazon is fulfilling the item.</li>
</ul>
<p>Optional</p>
<span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">YourPricePlusShipping</span></td>
<td>The price that you have set for the item, including shipping.
<p>Optional</p>
<p>Type: <a href="#Price" class="xref" title="Currency type and amount.">Price</a></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">LowestPricePlusShipping</span></td>
<td>The lowest price for the item in the same <span class="keyword parmname">Condition</span> and <span class="keyword parmname">SubCondition</span>, including shipping.
<p>Optional</p>
<p>Type: <a href="#Price" class="xref" title="Currency type and amount.">Price</a></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">PriceDifferenceToLowPrice</span></td>
<td>The difference between what you are charging for the item and the lowest price for the item in the same <span class="keyword parmname">Condition</span> and <span class="keyword parmname">SubCondition</span>.
<p>Optional</p>
<p>Type: <a href="#Price" class="xref" title="Currency type and amount.">Price</a></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">MedianPricePlusShipping</span></td>
<td>The median price for the item in the same <span class="keyword parmname">Condition</span> and <span class="keyword parmname">SubCondition</span>, including shipping.
<p>Optional</p>
<p>Type: <a href="#Price" class="xref" title="Currency type and amount.">Price</a></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">LowestMerchantFulfilledOfferPrice</span></td>
<td>The lowest price for the item in the same <span class="keyword parmname">Condition</span> and <span class="keyword parmname">SubCondition</span> that is fulfilled by a seller.
<p>Optional</p>
<p>Type: <a href="#Price" class="xref" title="Currency type and amount.">Price</a></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">LowestAmazonFulfilledOfferPrice</span></td>
<td>The lowest price for the item in the same <span class="keyword parmname">Condition</span> and <span class="keyword parmname">SubCondition</span> that is fulfilled by Amazon.
<p>Optional</p>
<p>Type: <a href="#Price" class="xref" title="Currency type and amount.">Price</a></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">NumberOfOffers</span></td>
<td>The total number of offers for the item.
<p>Optional</p>
<p><span class="ph">Type: xs:int</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">NumberOfMerchantFulfilledOffers</span></td>
<td>The total number of offers for the item that are fulfilled by a seller.
<p>Optional</p>
<p><span class="ph">Type: xs:int</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">NumberOfAmazonFulfilledOffers</span></td>
<td>The total number of offers for the item that are fulfilled by Amazon.
<p>Optional</p>
<p><span class="ph">Type: xs:int</span></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="ProductIdentifier" class="topic nested1">

## ProductIdentifier

<div class="body">

<span class="ph">The ASIN, SKU, and UPC of the item.</span>

<div class="section">

### Operations

The <span class="keyword parmname">ProductIdentifier</span> datatype is
used in a response element of the following
    operations:

  - [ListRecommendations](Recommendations_ListRecommendations.html "Returns your active recommendations for a specific category or for all categories for a specific marketplace.")
  - [ListRecommendationsByNextToken](Recommendations_ListRecommendationsByNextToken.html "Returns the next page of recommendations using the NextToken parameter.")

</div>

<div class="section">

### Datatype content

The following table shows the elements of the
<span class="keyword parmname">ProductIdentifier</span> datatype:

<div class="tablenoborder">

<table>
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
<td><span class="keyword parmname">Asin</span></td>
<td>The ASIN of the item.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Sku</span></td>
<td>The SKU of the item.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">Upc</span></td>
<td>The UPC of the item.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="WeightMeasure" class="topic nested1">

## WeightMeasure

<div class="body">

<span class="ph">Weight unit and amount.</span>

<div class="section">

### Operations

The <span class="keyword parmname">WeightMeasure</span> datatype is used
in a response element of the following
    operations:

  - [ListRecommendations](Recommendations_ListRecommendations.html "Returns your active recommendations for a specific category or for all categories for a specific marketplace.")
  - [ListRecommendationsByNextToken](Recommendations_ListRecommendationsByNextToken.html "Returns the next page of recommendations using the NextToken parameter.")

</div>

<div class="section">

### Datatype content

The following table shows the elements of the
<span class="keyword parmname">WeightMeasure</span> datatype:

<div class="tablenoborder">

<table>
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
<td><span class="keyword parmname">Value</span></td>
<td>The value of the measurement.
<p><span class="ph">Type: xs:decimal</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Unit</span></td>
<td>The unit of the measurement.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="RelatedTopics" class="topic nested1">

## Related topics

<div class="body">

[What you should know about the Amazon MWS Recommendations API
section](Recommendations_Overview.html)

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