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

<div id="Recommendations_ListRecommendations" class="nested0">

# ListRecommendations

<span class="ph">Returns your active recommendations for a specific
category or for all categories for a specific marketplace.</span>

<div id="Description" class="topic concept nested1">

## Description

<div class="body conbody">

The <span class="keyword apiname">ListRecommendations</span> operation
returns the most recent recommendations for you in a given category or
for all categories.

To determine whether you need to check for new recommendations for a
category, first call the <span
class="keyword apiname">GetLastUpdatedTimeForRecommendations</span>
operation. If the last updated timestamp returned for a category in the
<span
class="keyword apiname">GetLastUpdatedTimeForRecommendations</span>
operation is newer than the previous time you called that operation,
then you should call the <span
class="keyword apiname">ListRecommendations</span> operation to get your
latest recommendations. Otherwise, there is no need to call the <span
class="keyword apiname">ListRecommendations</span> operation because you
already have the most current set of recommendations.

<div class="note note">

<span class="notetitle">Note:</span> Currently the last updated
timestamp is not returned for listing quality recommendations.

</div>

<div class="section">

### Availability

This operation is available in all marketplaces.

The <span
class="keyword parmname">FulfillmentRecommendationsLastUpdated</span>
and <span
class="keyword parmname">AdvertisingRecommendationsLastUpdated</span>
elements are used in all marketplaces except Brazil.

</div>

<div class="section">

### Throttling

<span class="ph">This operation has a maximum request quota of 8 and a
restore rate of one request every two seconds. For definitions of
throttling terminology and for a complete explanation of throttling, see
<a href="../dev_guide/DG_Throttling.md" class="xref">Throttling: Limits to how often you can submit requests</a>
in the <span class="ph">Amazon MWS Developer Guide</span>.</span>

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

<table class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d274786e161" class="entry" data-valign="top" width="28.57142857142857%">Name</th>
<th id="d274786e164" class="entry" data-valign="top" width="28.57142857142857%">Description</th>
<th id="d274786e167" class="entry" data-valign="top" width="14.285714285714285%">Required</th>
<th id="d274786e170" class="entry" data-valign="top" width="28.57142857142857%">Valid values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d274786e161 "><span class="keyword parmname">MarketplaceId</span></td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d274786e164 ">The marketplace identifier for the marketplace from which you want to retrieve recommendations.</td>
<td class="entry" data-valign="top" width="14.285714285714285%" headers="d274786e167 ">Yes</td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d274786e170 ">Any valid <span class="keyword parmname">MarketplaceId</span> that the seller is registered in.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d274786e161 "><span class="keyword parmname">RecommendationCategory</span></td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d274786e164 ">Specifies a category for the recommendations to retrieve.
<p>To retrieve all recommendations, do not specify a value for this parameter.</p></td>
<td class="entry" data-valign="top" width="14.285714285714285%" headers="d274786e167 ">No</td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d274786e170 "><span class="keyword parmname">RecommendationCategory</span> values:
<ul>
<li><var class="keyword varname">Inventory</var></li>
<li><var class="keyword varname">Selection</var></li>
<li><var class="keyword varname">Pricing</var></li>
<li><var class="keyword varname">Fulfillment</var></li>
<li><var class="keyword varname">ListingQuality</var></li>
<li><var class="keyword varname">GlobalSelling</var></li>
<li><var class="keyword varname">Advertising</var></li>
</ul>
<p>To retrieve all recommendations, do not specify a value for this parameter.</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d274786e161 "><span class="keyword parmname">CategoryQueryList</span></td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d274786e164 ">A list of category-specific filters that you can specify to narrow down the types of recommendations returned for each category.</td>
<td class="entry" data-valign="top" width="14.285714285714285%" headers="d274786e167 ">No</td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d274786e170 ">Type: List of <a href="Recommendations_Datatypes.md#CategoryQuery" class="xref" title="A category-specific filter that you can specify to narrow down the types of recommendations returned for each category.">CategoryQuery</a></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div id="ResponseElements" class="topic reference nested1">

## Response elements

<div class="body refbody">

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d274786e318" class="entry" data-valign="top" width="33.33333333333333%">Name</th>
<th id="d274786e321" class="entry" data-valign="top" width="66.66666666666666%">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d274786e318 "><span class="keyword parmname">NextToken</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d274786e321 ">A generated string used to pass information to your next request. If <span class="keyword parmname">NextToken</span> is returned, pass the value of <span class="keyword parmname">NextToken</span> to <span class="keyword apiname">ListRecommendationsByNextToken</span>. If <span class="keyword parmname">NextToken</span> is not returned, there are no more recommendations to return.
<p>Optional</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d274786e318 "><span class="keyword parmname">FulfillmentRecommendations</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d274786e321 ">A list of current fulfillment recommendations.
<p>The list is empty if there are no current fulfillment recommendations or if fulfillment recommendations were not requested in the <span class="keyword parmname">RecommendationCategory</span>. <span class="ph">This element is used in all marketplaces except Brazil.</span></p>
<p>Optional</p>
<p>Type: List of <a href="Recommendations_Datatypes.md#FulfillmentRecommendation" class="xref" title="A recommendation for the top products to fulfill through Fulfillment by Amazon (FBA). This datatype is used in all marketplaces except Brazil.">FulfillmentRecommendation</a></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d274786e318 "><span class="keyword parmname">InventoryRecommendations</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d274786e321 ">A list of current inventory recommendations.
<p>The list is empty if there are no current inventory recommendations or if inventory recommendations were not requested in the <span class="keyword parmname">RecommendationCategory</span>.</p>
<p>Optional</p>
<p>Type: List of <a href="Recommendations_Datatypes.md#InventoryRecommendation" class="xref" title="A recommendation for restocking low or out-of-stock items in your inventory.">InventoryRecommendation</a></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d274786e318 "><span class="keyword parmname">PricingRecommendations</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d274786e321 ">A list of current pricing recommendations.
<p>The list is empty if there are no current pricing recommendations or if pricing recommendations were not requested in the <span class="keyword parmname">RecommendationCategory</span>.</p>
<p>Optional</p>
<p>Type: List of <a href="Recommendations_Datatypes.md#PricingRecommendation" class="xref" title="A recommendation to review pricing on items in your inventory where your offer is not the lowest price.">PricingRecommendation</a></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d274786e318 "><span class="keyword parmname">GlobalSellingRecommendations</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d274786e321 ">A list of current global selling recommendations.
<p>The list is empty if there are no current global selling recommendations or if global selling recommendations were not requested in the <span class="keyword parmname">RecommendationCategory</span>.</p>
<p>Optional</p>
<p>Type: List of <a href="Recommendations_Datatypes.md#GlobalSellingRecommendation" class="xref" title="A recommendation for expanding your products to more regions and marketplaces.">GlobalSellingRecommendation</a></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d274786e318 "><span class="keyword parmname">AdvertisingRecommendations</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d274786e321 ">A list of current advertising recommendations.
<p>The list is empty if there are no current advertising recommendations or if advertising recommendations were not requested in the <span class="keyword parmname">RecommendationCategory</span>. <span class="ph">This element is used in all marketplaces except Brazil.</span></p>
<p>Optional</p>
<p>Type: List of <a href="Recommendations_Datatypes.md#AdvertisingRecommendation" class="xref" title="A recommendation for advertising your products and for using the sponsored products program. This datatype is used in all marketplaces except Brazil.">AdvertisingRecommendation</a></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div id="Examples" class="topic reference nested1">

## Example 1

<div class="body refbody">

<div class="section">

### Example query request

This example shows how to request your ListingQuality recommendations.

<span class="ph">For information about standard request requirements,
see
<a href="../dev_guide/DG_RequiredRequestParameters.md" class="xref">Required request parameters</a>.</span>

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre
POST /Recommendations/2013-04-01 HTTP/1.1
Content-Type: x-www-form-urlencoded
Host: mws.amazonservices.com
User-Agent: <Your User Agent Header>

AWSAccessKeyId=0PB842EXAMPLESDX
&Action=ListRecommendations
&CategoryQueryList.CategoryQuery.1.FilterOptions.FilterOption.1=
    QualitySet%3DDefect
&CategoryQueryList.CategoryQuery.1.FilterOptions.FilterOption.2=
    ListingStatus%3DActive
&CategoryQueryList.CategoryQuery.1.RecommendationCategory=ListingQuality
&MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
&MarketplaceId=ATVPDKIKX0DER
&RecommendationCategory=ListingQuality
&SellerId=A1XEXAMPLEDF
&SignatureMethod=HmacSHA256
&SignatureVersion=2
&Timestamp=2013-03-04T18%3A12%3A21.687Z
&Signature=ZQLpf8vEXAMPLE0iC265pf18n0%3D
```

<a href="#Examples" class="xref">↑ Top</a>

</div>

</div>

<div class="section">

### Example response

<span class="ph">For information about standard response formatting, see
<a href="../dev_guide/DG_ResponseFormat.md" class="xref">Response format</a>.</span>

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre
<?xml version="1.0"?>
<ListRecommendationsResponse xmlns="https://mws.amazonservices.com/Recommendations/2013-04-01">
    <ListRecommendationsResult> </ListRecommendationsResult>
    <ResponseMetadata>
        <RequestId>d0305dfc-b83e-11e2-8aeb-c93b3EXAMPLE</RequestId>
    </ResponseMetadata>
</ListRecommendationsResponse>
```

<a href="#Examples" class="xref">↑ Top</a>

</div>

</div>

</div>

</div>

<div id="reference_el5_zxr_lp" class="topic reference nested1">

## Example 2

<div class="body refbody">

<div class="section">

### Example query request

This example shows how to request your Selection recommendations.

<span class="ph">For information about standard request requirements,
see
<a href="../dev_guide/DG_RequiredRequestParameters.md" class="xref">Required request parameters</a>.</span>

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre
CDATA[POST /Recommendations/2013-04-01 HTTP/1.1
Content-Type: x-www-form-urlencoded
Host: mws.amazonservices.com
User-Agent: <Your User Agent Header>

AWSAccessKeyId=0PB842EXAMPLESDX
&Action=ListRecommendations
&CategoryQueryList.CategoryQuery.1.FilterOptions.FilterOption.1=
    BrandName%3DDEWALT
&CategoryQueryList.CategoryQuery.1.FilterOptions.FilterOption.2=
    ProductCategory%3DHome%20Improvement
&CategoryQueryList.CategoryQuery.1.FilterOptions.FilterOption.3=
    IncludeCommonRecommendations%3Dtrue
&CategoryQueryList.CategoryQuery.1.RecommendationCategory=Selection
&MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
&MarketplaceId=ATVPDKIKX0DER
&RecommendationCategory=Selection
&SellerId=A1XEXAMPLEDF
&SignatureMethod=HmacSHA256
&SignatureVersion=2
&Timestamp=2013-03-04T18%3A12%3A21.687Z
&Signature=ZQLpf8vEXAMPLE0iC265pf18n0%3D
```

<a href="#Examples" class="xref">↑ Top</a>

</div>

</div>

<div class="section">

### Example response

See also
<a href="../dev_guide/DG_ResponseFormat.md" class="xref">Response format</a>.

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre
<ListRecommendationsResponse xmlns="https://mws.amazonservices.com/Recommendations/2013-04-01">
    <ListRecommendationsResult>
        <NextToken>SAMPLE-TOKENE</NextToken>
    </ListRecommendationsResult>
    <ResponseMetadata>
        <RequestId>45f1ba88-862f-SAMPLE-ce318b534859</RequestId>
    </ResponseMetadata>
</ListRecommendationsResponse>
```

<a href="#Examples" class="xref">↑ Top</a>

</div>

</div>

</div>

</div>

<div id="RelatedTopics" class="topic nested1">

## Related topics

<div class="body">

<a href="Recommendations_Overview.md" class="xref">What you should know about the Amazon MWS Recommendations API section</a>

<a href="../dev_guide/DG_NextToken.md" class="xref">Using NextToken to request additional pages</a>

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
