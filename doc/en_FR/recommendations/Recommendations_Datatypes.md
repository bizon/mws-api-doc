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

<div id="Recommendations_Datatypes" class="nested0">

# Recommendations Datatypes

<div class="body">

The following datatypes are used in the request parameters and response
elements of the <span class="ph">Amazon Marketplace Web Service (Amazon
MWS)</span> <span class="ph">Recommendations API section</span>:

<div class="tablenoborder">

| Datatype                                                                                                                                                                                                                                      | Description                                                                                                                                     |
|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------|
| <a href="#AdvertisingRecommendation" class="xref" title="A recommendation for advertising your products and for using the sponsored products program. This datatype is used in all marketplaces except Brazil.">AdvertisingRecommendation</a> | <span class="ph">A recommendation for advertising your products and for using the sponsored products program.</span>                            |
| <a href="#CategoryQuery" class="xref" title="A category-specific filter that you can specify to narrow down the types of recommendations returned for each category.">CategoryQuery</a>                                                       | <span class="ph">A category-specific filter that you can specify to narrow down the types of recommendations returned for each category.</span> |
| <a href="#DimensionMeasure" class="xref">DimensionMeasure</a>                                                                                                                                                                                 | <span class="ph">Dimension unit and amount</span>                                                                                               |
| <a href="#FulfillmentRecommendation" class="xref" title="A recommendation for the top products to fulfill through Fulfillment by Amazon (FBA). This datatype is used in all marketplaces except Brazil.">FulfillmentRecommendation</a>        | <span class="ph">A recommendation for the top products to fulfill through Fulfillment by Amazon (FBA).</span>                                   |
| <a href="#GlobalSellingRecommendation" class="xref" title="A recommendation for expanding your products to more regions and marketplaces.">GlobalSellingRecommendation</a>                                                                    | <span class="ph">A recommendation for expanding your products to more regions and marketplaces.</span>                                          |
| <a href="#InventoryRecommendation" class="xref" title="A recommendation for restocking low or out-of-stock items in your inventory.">InventoryRecommendation</a>                                                                              | <span class="ph">A recommendation for restocking low or out-of-stock items in your inventory.</span>                                            |
| <a href="#ItemDimensions" class="xref" title="The dimensions of an item.">ItemDimensions</a>                                                                                                                                                  | <span class="ph">The dimensions of an item.</span>                                                                                              |
| <a href="#Price" class="xref" title="Currency type and amount.">Price</a>                                                                                                                                                                     | <span class="ph">Currency type and amount.</span>                                                                                               |
| <a href="#PricingRecommendation" class="xref" title="A recommendation to review pricing on items in your inventory where your offer is not the lowest price.">PricingRecommendation</a>                                                       | <span class="ph">A recommendation to review pricing on items in your inventory where your offer is not the lowest price.</span>                 |
| <a href="#ProductIdentifier" class="xref" title="The ASIN, SKU, and UPC of the item.">ProductIdentifier</a>                                                                                                                                   | <span class="ph">The ASIN, SKU, and UPC of the item.</span>                                                                                     |
| <a href="#WeightMeasure" class="xref" title="Weight unit and amount.">WeightMeasure</a>                                                                                                                                                       | <span class="ph">Weight unit and amount.</span>                                                                                                 |

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
datatype is used in a response element of the following operations:

-   <a href="Recommendations_ListRecommendations.md" class="xref" title="Returns your active recommendations for a specific category or for all categories for a specific marketplace.">ListRecommendations</a>
-   <a href="Recommendations_ListRecommendationsByNextToken.md" class="xref" title="Returns the next page of recommendations using the NextToken parameter.">ListRecommendationsByNextToken</a>

</div>

<div class="section">

### Datatype content

The following table shows the elements of the <span
class="keyword parmname">AdvertisingRecommendation</span> datatype:

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d264622e393" class="entry" data-valign="top" width="33.33333333333333%">Name</th>
<th id="d264622e396" class="entry" data-valign="top" width="66.66666666666666%">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e393 "><span class="keyword parmname">RecommendationId</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e396 ">A unique recommendation identifier, in the format of {<var class="keyword varname">Category</var>}-{<var class="keyword varname">RecommendationReason</var>}-{<var class="keyword varname">ASIN</var>}-{<var class="keyword varname">SKU</var>}-{<var class="keyword varname">UPC</var>}-{<var class="keyword varname">ItemName</var>}. If any of these values are null, the value will be empty.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e393 "><span class="keyword parmname">RecommendationReason</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e396 ">A detailed description of the recommendation.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e393 "><span class="keyword parmname">LastUpdated</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e396 ">The date and time when the recommendation was generated or last updated. In <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e393 "><span class="keyword parmname">ItemIdentifier</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e396 ">The ASIN, SKU, and UPC of the item.
<p>Type: <a href="#ProductIdentifier" class="xref" title="The ASIN, SKU, and UPC of the item.">ProductIdentifier</a></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e393 "><span class="keyword parmname">ItemName</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e396 ">The name of the item.
<p>Optional</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e393 "><span class="keyword parmname">BrandName</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e396 ">The brand name of the item.
<p>Optional</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e393 "><span class="keyword parmname">ProductCategory</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e396 ">The product category of the item.
<p>Optional</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e393 "><span class="keyword parmname">SalesRank</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e396 ">The sales rank of the item in the given product category.
<p>Optional</p>
<p><span class="ph">Type: xs:int</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e393 "><span class="keyword parmname">YourPricePlusShipping</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e396 ">The price that you have set for the item, including shipping.
<p>Optional</p>
<p>Type: <a href="#Price" class="xref" title="Currency type and amount.">Price</a></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e393 "><span class="keyword parmname">LowestPricePlusShipping</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e396 ">The lowest price for the item in the same <span class="keyword parmname">Condition</span> and <span class="keyword parmname">SubCondition</span>, including shipping.
<p>Optional</p>
<p>Type: <a href="#Price" class="xref" title="Currency type and amount.">Price</a></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e393 "><span class="keyword parmname">AvailableQuantity</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e396 ">The total number of the items in your inventory.
<p>Optional</p>
<p><span class="ph">Type: xs:int</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e393 "><span class="keyword parmname">SalesForTheLast30Days</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e396 ">The number of your sales of the item in the last 30 days.
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
in a request parameter of the following operations:

-   <a href="Recommendations_ListRecommendations.md" class="xref" title="Returns your active recommendations for a specific category or for all categories for a specific marketplace.">ListRecommendations</a>

</div>

<div class="section">

### Datatype content

The following table shows the elements of the <span
class="keyword parmname">CategoryQuery</span> datatype:

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
<th id="d264622e775" class="entry" data-valign="top" width="22.22222222222222%">Name</th>
<th id="d264622e778" class="entry" data-valign="top" width="33.33333333333333%">Description</th>
<th id="d264622e781" class="entry" data-valign="top" width="11.11111111111111%">Required</th>
<th id="d264622e784" class="entry" data-valign="top" width="33.33333333333333%">Valid values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="22.22222222222222%" headers="d264622e775 "><span class="keyword parmname">RecommendationCategory</span></td>
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e778 ">Specifies a category for the recommendations to retrieve.
<p><span class="ph">Type: xs:string</span></p></td>
<td class="entry" data-valign="top" width="11.11111111111111%" headers="d264622e781 ">Yes</td>
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e784 "><span class="keyword parmname">RecommendationCategory</span> values:
<ul>
<li><var class="keyword varname">Selection</var></li>
<li><var class="keyword varname">Fulfillment</var></li>
<li><var class="keyword varname">ListingQuality</var></li>
<li><var class="keyword varname">GlobalSelling</var></li>
<li><var class="keyword varname">Advertising</var></li>
</ul>
<div class="note note">
<span class="notetitle">Note:</span> If you specify a <span class="keyword parmname">RecommendationCategory</span> value here that was not specified in the <span class="keyword parmname">RecommendationCategory</span> request parameter to the <span class="keyword apiname">ListRecommendations</span> operation, then this value is ignored.
</div></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="22.22222222222222%" headers="d264622e775 "><span class="keyword parmname">FilterOptions</span></td>
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e778 ">Specifies the filters to apply to narrow down the recommendations to return for the given recommendation category.
<p>Filters are specified as a list of <var class="keyword varname">FilterName=FilterValue</var> pairs. For more information, see the <a href="Recommendations_ListRecommendations.md#Examples" class="xref">examples</a> for the <span class="keyword apiname">ListRecommendations</span> operation.</p></td>
<td class="entry" data-valign="top" width="11.11111111111111%" headers="d264622e781 ">Yes</td>
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e784 "><span class="keyword parmname">FilterOptions</span> values for <var class="keyword varname">ListingQuality</var> recommendations:
<ul>
<li><var class="keyword varname">QualitySet=Defect</var> Filter for listings that have a defect, but the listing is still valid. For example, this query will return listings where there is no detailed description.</li>
<li><var class="keyword varname">QualitySet=Quarantine</var> Filter for listings that are being suppressed from the catalog because they do not meet Amazon's standards. For example, this query will return listings where there is no main image.</li>
<li><var class="keyword varname">ListingStatus=Active</var> Filter for active inventory items only. Returns items within inventory that are set to active status.</li>
<li><var class="keyword varname">ListingStatus=Inactive</var> Filter for inactive inventory items only. Returns items within inventory that are set to inactive status.</li>
</ul>
<p><span class="keyword parmname">FilterOptions</span> values for <var class="keyword varname">Selection</var>, <var class="keyword varname">Fulfillment</var>, <var class="keyword varname">GlobalSelling</var>, and <var class="keyword varname">Advertising</var> recommendations:</p>
<ul>
<li><var class="keyword varname">BrandName=&lt;BrandName&gt;</var> - Filter for recommendations that apply to the specified brand name.</li>
<li><var class="keyword varname">ProductCategory=&lt;ProductCategory&gt;</var> - Filter for recommendations that apply to the specified product category.</li>
</ul>
<p><span class="keyword parmname">FilterOptions</span> values for <var class="keyword varname">Selection</var> recommendations:</p>
<ul>
<li><var class="keyword varname">IncludeCommonRecommendations=true</var> - Include <var class="keyword varname">Selection</var> recommendations common to all sellers in addition to seller-specific recommendations.</li>
<li><var class="keyword varname">IncludeCommonRecommendations=false</var> - Do not include <var class="keyword varname">Selection</var> recommendations common to all sellers. Only include seller-specific recommendations.</li>
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
used in a response element of the following operations:

-   <a href="Recommendations_ListRecommendations.md" class="xref" title="Returns your active recommendations for a specific category or for all categories for a specific marketplace.">ListRecommendations</a>
-   <a href="Recommendations_ListRecommendationsByNextToken.md" class="xref" title="Returns the next page of recommendations using the NextToken parameter.">ListRecommendationsByNextToken</a>

</div>

<div class="section">

### Datatype content

The following table shows the elements of the <span
class="keyword parmname">DimensionMeasure</span> datatype:

<div class="tablenoborder">

<table id="DimensionMeasure__table_o4g_glf_hk" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d264622e1074" class="entry" data-valign="top" width="33.33333333333333%">Name</th>
<th id="d264622e1077" class="entry" data-valign="top" width="66.66666666666666%">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e1074 "><span class="keyword parmname">Value</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e1077 ">The value of the measurement.
<p><span class="ph">Type: xs:decimal</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e1074 "><span class="keyword parmname">Unit</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e1077 ">The unit of the measurement.
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
datatype is used in a response element of the following operations:

-   <a href="Recommendations_ListRecommendations.md" class="xref" title="Returns your active recommendations for a specific category or for all categories for a specific marketplace.">ListRecommendations</a>
-   <a href="Recommendations_ListRecommendationsByNextToken.md" class="xref" title="Returns the next page of recommendations using the NextToken parameter.">ListRecommendationsByNextToken</a>

</div>

<div class="section">

### Datatype content

The following table shows the elements of the <span
class="keyword parmname">FulfillmentRecommendation</span> datatype:

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d264622e1232" class="entry" data-valign="top" width="33.33333333333333%">Name</th>
<th id="d264622e1235" class="entry" data-valign="top" width="66.66666666666666%">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e1232 "><span class="keyword parmname">RecommendationId</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e1235 ">A unique recommendation identifier, in the format of {<var class="keyword varname">Category</var>}-{<var class="keyword varname">RecommendationReason</var>}-{<var class="keyword varname">ASIN</var>}-{<var class="keyword varname">SKU</var>}-{<var class="keyword varname">UPC</var>}-{<var class="keyword varname">ItemName</var>}. If any of these values are null, the value will be empty.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e1232 "><span class="keyword parmname">RecommendationReason</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e1235 ">A detailed description of the recommendation.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e1232 "><span class="keyword parmname">LastUpdated</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e1235 ">The date and time when the recommendation was generated or last updated. In <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e1232 "><span class="keyword parmname">ItemIdentifier</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e1235 ">The ASIN, SKU, and UPC of the item.
<p>Type: <a href="#ProductIdentifier" class="xref" title="The ASIN, SKU, and UPC of the item.">ProductIdentifier</a></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e1232 "><span class="keyword parmname">ItemName</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e1235 ">The name of the item.
<p>Optional</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e1232 "><span class="keyword parmname">BrandName</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e1235 ">The brand name of the item.
<p>Optional</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e1232 "><span class="keyword parmname">ProductCategory</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e1235 ">The product category of the item.
<p>Optional</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e1232 "><span class="keyword parmname">SalesRank</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e1235 ">The sales rank of the item in the given product category.
<p>Optional</p>
<p><span class="ph">Type: xs:int</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e1232 "><span class="keyword parmname">BuyboxPrice</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e1235 ">The price of the item that is displayed in the Buy Box.
<p>Optional</p>
<p>Type: <a href="#Price" class="xref" title="Currency type and amount.">Price</a></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e1232 "><span class="keyword parmname">NumberOfOffers</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e1235 ">The number of current offers for the item.
<p>Optional</p>
<p><span class="ph">Type: xs:int</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e1232 "><span class="keyword parmname">NumberOfOffersFulfilledByAmazon</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e1235 ">The number of current offers for the item that are fulfilled by Amazon.
<p>Optional</p>
<p><span class="ph">Type: xs:int</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e1232 "><span class="keyword parmname">AverageCustomerReview</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e1235 ">The average customer review of the item.
<p>Optional</p>
<p><span class="ph">Type: xs:decimal</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e1232 "><span class="keyword parmname">NumberOfCustomerReviews</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e1235 ">The number of customer reviews for the item.
<p>Optional</p>
<p><span class="ph">Type: xs:int</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e1232 "><span class="keyword parmname">ItemDimensions</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e1235 ">The dimensions of the item.
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
datatype is used in a response element of the following operations:

-   <a href="Recommendations_ListRecommendations.md" class="xref" title="Returns your active recommendations for a specific category or for all categories for a specific marketplace.">ListRecommendations</a>
-   <a href="Recommendations_ListRecommendationsByNextToken.md" class="xref" title="Returns the next page of recommendations using the NextToken parameter.">ListRecommendationsByNextToken</a>

</div>

<div class="section">

### Datatype content

The following table shows the elements of the <span
class="keyword parmname">GlobalSellingRecommendation</span> datatype:

<div class="tablenoborder">

<table id="GlobalSellingRecommendation__table_xjs_clb_3p" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d264622e1654" class="entry" data-valign="top" width="33.33333333333333%">Name</th>
<th id="d264622e1657" class="entry" data-valign="top" width="66.66666666666666%">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e1654 "><span class="keyword parmname">RecommendationId</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e1657 ">A unique recommendation identifier, in the format of {<var class="keyword varname">Category</var>}-{<var class="keyword varname">RecommendationReason</var>}-{<var class="keyword varname">ASIN</var>}-{<var class="keyword varname">SKU</var>}-{<var class="keyword varname">UPC</var>}-{<var class="keyword varname">ItemName</var>}. If any of these values are null, the value will be empty.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e1654 "><span class="keyword parmname">RecommendationReason</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e1657 ">A detailed description of the recommendation.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e1654 "><span class="keyword parmname">LastUpdated</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e1657 ">The date and time when the recommendation was generated or last updated. In <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e1654 "><span class="keyword parmname">ItemIdentifier</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e1657 ">The ASIN, SKU, and UPC of the item.
<p>Type: <a href="#ProductIdentifier" class="xref" title="The ASIN, SKU, and UPC of the item.">ProductIdentifier</a></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e1654 "><span class="keyword parmname">ItemName</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e1657 ">The name of the item.
<p>Optional</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e1654 "><span class="keyword parmname">BrandName</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e1657 ">The brand name of the item.
<p>Optional</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e1654 "><span class="keyword parmname">ProductCategory</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e1657 ">The product category of the item.
<p>Optional</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e1654 "><span class="keyword parmname">SalesRank</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e1657 ">The sales rank of the item in the given product category.
<p>Optional</p>
<p><span class="ph">Type: xs:int</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e1654 "><span class="keyword parmname">BuyboxPrice</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e1657 ">The price of the item that is displayed in the Buy Box.
<p>Optional</p>
<p>Type: <a href="#Price" class="xref" title="Currency type and amount.">Price</a></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e1654 "><span class="keyword parmname">NumberOfOffers</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e1657 ">The number of current offers for the item.
<p>Optional</p>
<p><span class="ph">Type: xs:int</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e1654 "><span class="keyword parmname">NumberOfOffersFulfilledByAmazon</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e1657 ">The number of current offers for the item that are fulfilled by Amazon.
<p>Optional</p>
<p><span class="ph">Type: xs:int</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e1654 "><span class="keyword parmname">AverageCustomerReview</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e1657 ">The average customer review of the item.
<p>Optional</p>
<p><span class="ph">Type: xs:decimal</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e1654 "><span class="keyword parmname">NumberOfCustomerReviews</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e1657 ">The number of customer reviews for the item.
<p>Optional</p>
<p><span class="ph">Type: xs:int</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e1654 "><span class="keyword parmname">ItemDimensions</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e1657 ">The dimensions of the item.
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
datatype is used in a response element of the following operations:

-   <a href="Recommendations_ListRecommendations.md" class="xref" title="Returns your active recommendations for a specific category or for all categories for a specific marketplace.">ListRecommendations</a>
-   <a href="Recommendations_ListRecommendationsByNextToken.md" class="xref" title="Returns the next page of recommendations using the NextToken parameter.">ListRecommendationsByNextToken</a>

</div>

<div class="section">

### Datatype content

The following table shows the elements of the <span
class="keyword parmname">InventoryRecommendation</span> datatype:

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d264622e2078" class="entry" data-valign="top" width="33.33333333333333%">Name</th>
<th id="d264622e2081" class="entry" data-valign="top" width="66.66666666666666%">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e2078 "><span class="keyword parmname">RecommendationId</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e2081 ">A unique recommendation identifier, in the format of {<var class="keyword varname">Category</var>}-{<var class="keyword varname">RecommendationReason</var>}-{<var class="keyword varname">ASIN</var>}-{<var class="keyword varname">SKU</var>}-{<var class="keyword varname">UPC</var>}-{<var class="keyword varname">ItemName</var>}. If any of these values are null, the value will be empty.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e2078 "><span class="keyword parmname">RecommendationReason</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e2081 ">A detailed description of the recommendation.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e2078 "><span class="keyword parmname">LastUpdated</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e2081 ">The date and time when the recommendation was generated or last updated. In <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e2078 "><span class="keyword parmname">ItemIdentifier</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e2081 ">The ASIN, SKU, and UPC of the item.
<p>Type: <a href="#ProductIdentifier" class="xref" title="The ASIN, SKU, and UPC of the item.">ProductIdentifier</a></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e2078 "><span class="keyword parmname">ItemName</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e2081 ">The name of the item.
<p>Optional</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e2078 "><span class="keyword parmname">FulfillmentChannel</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e2081 "><span class="keyword parmname">FulfillmentChannel</span> values:
<ul>
<li><var class="keyword varname">MFN</var> Indicates that you are fulfilling the item.</li>
<li><var class="keyword varname">AFN</var> Indicates that Amazon is fulfilling the item.</li>
</ul>
<p>Optional</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e2078 "><span class="keyword parmname">AvailableQuantity</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e2081 ">The total number of the items in your inventory.
<p>Optional</p>
<p><span class="ph">Type: xs:int</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e2078 "><span class="keyword parmname">DaysUntilStockRunsOut</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e2081 ">The estimated number of days until you run out of inventory of the item based on current sales.
<p>Optional</p>
<p><span class="ph">Type: xs:int</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e2078 "><span class="keyword parmname">DaysOutOfStockLast30Days</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e2081 ">The number of days in the last 30 days when you were out of stock of the item.
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
used in a response element of the following operations:

-   <a href="Recommendations_ListRecommendations.md" class="xref" title="Returns your active recommendations for a specific category or for all categories for a specific marketplace.">ListRecommendations</a>
-   <a href="Recommendations_ListRecommendationsByNextToken.md" class="xref" title="Returns the next page of recommendations using the NextToken parameter.">ListRecommendationsByNextToken</a>

</div>

<div class="section">

### Datatype content

The following table shows the elements of the <span
class="keyword parmname">ItemDimensions</span> datatype:

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d264622e2409" class="entry" data-valign="top" width="33.33333333333333%">Name</th>
<th id="d264622e2412" class="entry" data-valign="top" width="66.66666666666666%">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e2409 "><span class="keyword parmname">Height</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e2412 ">The height of the unit.
<p>Type: <a href="#DimensionMeasure" class="xref">DimensionMeasure</a></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e2409 "><span class="keyword parmname">Width</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e2412 ">The width of the unit.
<p>Type: <a href="#DimensionMeasure" class="xref">DimensionMeasure</a></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e2409 "><span class="keyword parmname">Length</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e2412 ">The length of the unit.
<p>Type: <a href="#DimensionMeasure" class="xref">DimensionMeasure</a></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e2409 "><span class="keyword parmname">Weight</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e2412 ">The weight of the unit.
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
response element of the following operations:

-   <a href="Recommendations_ListRecommendations.md" class="xref" title="Returns your active recommendations for a specific category or for all categories for a specific marketplace.">ListRecommendations</a>
-   <a href="Recommendations_ListRecommendationsByNextToken.md" class="xref" title="Returns the next page of recommendations using the NextToken parameter.">ListRecommendationsByNextToken</a>

</div>

<div class="section">

### Datatype content

The following table shows the elements of the <span
class="keyword parmname">Price</span> datatype:

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d264622e2611" class="entry" data-valign="top" width="33.33333333333333%">Name</th>
<th id="d264622e2614" class="entry" data-valign="top" width="66.66666666666666%">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e2611 "><span class="keyword parmname">CurrencyCode</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e2614 ">Three-digit currency code. In <span class="ph"> <a href="../dev_guide/DG_ISO4217.md" class="xref">ISO 4217 format</a> </span>.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e2611 "><span class="keyword parmname">Amount</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e2614 ">The currency amount.
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
is used in a response element of the following operations:

-   <a href="Recommendations_ListRecommendations.md" class="xref" title="Returns your active recommendations for a specific category or for all categories for a specific marketplace.">ListRecommendations</a>
-   <a href="Recommendations_ListRecommendationsByNextToken.md" class="xref" title="Returns the next page of recommendations using the NextToken parameter.">ListRecommendationsByNextToken</a>

</div>

<div class="section">

### Datatype content

The following table shows the elements of the <span
class="keyword parmname">PricingRecommendation</span> datatype:

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d264622e2776" class="entry" data-valign="top" width="33.33333333333333%">Name</th>
<th id="d264622e2779" class="entry" data-valign="top" width="66.66666666666666%">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e2776 "><span class="keyword parmname">RecommendationId</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e2779 ">A unique recommendation identifier, in the format of {<var class="keyword varname">Category</var>}-{<var class="keyword varname">RecommendationReason</var>}-{<var class="keyword varname">ASIN</var>}-{<var class="keyword varname">SKU</var>}-{<var class="keyword varname">UPC</var>}-{<var class="keyword varname">ItemName</var>}. If any of these values are null, the value will be empty.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e2776 "><span class="keyword parmname">RecommendationReason</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e2779 ">A detailed description of the recommendation.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e2776 "><span class="keyword parmname">LastUpdated</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e2779 ">The date and time when the recommendation was generated or last updated. In <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e2776 "><span class="keyword parmname">ItemIdentifier</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e2779 ">The ASIN, SKU, and UPC of the item.
<p>Type: <a href="#ProductIdentifier" class="xref" title="The ASIN, SKU, and UPC of the item.">ProductIdentifier</a></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e2776 "><span class="keyword parmname">ItemName</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e2779 ">The name of the item.
<p>Optional</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e2776 "><span class="keyword parmname">Condition</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e2779 ">The condition of the item.
<p>Optional</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e2776 "><span class="keyword parmname">SubCondition</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e2779 ">The subcondition of the item.
<p>Optional</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e2776 "><span class="keyword parmname">FulfillmentChannel</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e2779 "><span class="keyword parmname">FulfillmentChannel</span> values:
<ul>
<li><var class="keyword varname">MFN</var> Indicates that you are fulfilling the item.</li>
<li><var class="keyword varname">AFN</var> Indicates that Amazon is fulfilling the item.</li>
</ul>
<p>Optional</p>
<span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e2776 "><span class="keyword parmname">YourPricePlusShipping</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e2779 ">The price that you have set for the item, including shipping.
<p>Optional</p>
<p>Type: <a href="#Price" class="xref" title="Currency type and amount.">Price</a></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e2776 "><span class="keyword parmname">LowestPricePlusShipping</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e2779 ">The lowest price for the item in the same <span class="keyword parmname">Condition</span> and <span class="keyword parmname">SubCondition</span>, including shipping.
<p>Optional</p>
<p>Type: <a href="#Price" class="xref" title="Currency type and amount.">Price</a></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e2776 "><span class="keyword parmname">PriceDifferenceToLowPrice</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e2779 ">The difference between what you are charging for the item and the lowest price for the item in the same <span class="keyword parmname">Condition</span> and <span class="keyword parmname">SubCondition</span>.
<p>Optional</p>
<p>Type: <a href="#Price" class="xref" title="Currency type and amount.">Price</a></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e2776 "><span class="keyword parmname">MedianPricePlusShipping</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e2779 ">The median price for the item in the same <span class="keyword parmname">Condition</span> and <span class="keyword parmname">SubCondition</span>, including shipping.
<p>Optional</p>
<p>Type: <a href="#Price" class="xref" title="Currency type and amount.">Price</a></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e2776 "><span class="keyword parmname">LowestMerchantFulfilledOfferPrice</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e2779 ">The lowest price for the item in the same <span class="keyword parmname">Condition</span> and <span class="keyword parmname">SubCondition</span> that is fulfilled by a seller.
<p>Optional</p>
<p>Type: <a href="#Price" class="xref" title="Currency type and amount.">Price</a></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e2776 "><span class="keyword parmname">LowestAmazonFulfilledOfferPrice</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e2779 ">The lowest price for the item in the same <span class="keyword parmname">Condition</span> and <span class="keyword parmname">SubCondition</span> that is fulfilled by Amazon.
<p>Optional</p>
<p>Type: <a href="#Price" class="xref" title="Currency type and amount.">Price</a></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e2776 "><span class="keyword parmname">NumberOfOffers</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e2779 ">The total number of offers for the item.
<p>Optional</p>
<p><span class="ph">Type: xs:int</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e2776 "><span class="keyword parmname">NumberOfMerchantFulfilledOffers</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e2779 ">The total number of offers for the item that are fulfilled by a seller.
<p>Optional</p>
<p><span class="ph">Type: xs:int</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e2776 "><span class="keyword parmname">NumberOfAmazonFulfilledOffers</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e2779 ">The total number of offers for the item that are fulfilled by Amazon.
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
used in a response element of the following operations:

-   <a href="Recommendations_ListRecommendations.md" class="xref" title="Returns your active recommendations for a specific category or for all categories for a specific marketplace.">ListRecommendations</a>
-   <a href="Recommendations_ListRecommendationsByNextToken.md" class="xref" title="Returns the next page of recommendations using the NextToken parameter.">ListRecommendationsByNextToken</a>

</div>

<div class="section">

### Datatype content

The following table shows the elements of the <span
class="keyword parmname">ProductIdentifier</span> datatype:

<div class="tablenoborder">

<table id="ProductIdentifier__table_ojw_njf_hk" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d264622e3328" class="entry" data-valign="top" width="33.33333333333333%">Name</th>
<th id="d264622e3331" class="entry" data-valign="top" width="66.66666666666666%">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e3328 "><span class="keyword parmname">Asin</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e3331 ">The ASIN of the item.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e3328 "><span class="keyword parmname">Sku</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e3331 ">The SKU of the item.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e3328 "><span class="keyword parmname">Upc</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e3331 ">The UPC of the item.
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
in a response element of the following operations:

-   <a href="Recommendations_ListRecommendations.md" class="xref" title="Returns your active recommendations for a specific category or for all categories for a specific marketplace.">ListRecommendations</a>
-   <a href="Recommendations_ListRecommendationsByNextToken.md" class="xref" title="Returns the next page of recommendations using the NextToken parameter.">ListRecommendationsByNextToken</a>

</div>

<div class="section">

### Datatype content

The following table shows the elements of the <span
class="keyword parmname">WeightMeasure</span> datatype:

<div class="tablenoborder">

<table id="WeightMeasure__table_frc_tlf_hk" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d264622e3496" class="entry" data-valign="top" width="33.33333333333333%">Name</th>
<th id="d264622e3499" class="entry" data-valign="top" width="66.66666666666666%">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e3496 "><span class="keyword parmname">Value</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e3499 ">The value of the measurement.
<p><span class="ph">Type: xs:decimal</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d264622e3496 "><span class="keyword parmname">Unit</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d264622e3499 ">The unit of the measurement.
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

<a href="Recommendations_Overview.md" class="xref">What you should know about the Amazon MWS Recommendations API section</a>

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
