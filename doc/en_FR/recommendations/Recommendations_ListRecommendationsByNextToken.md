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

<div id="Recommendations_ListRecommendationsByNextToken"
class="nested0">

# ListRecommendationsByNextToken

<span class="ph">Returns the next page of recommendations using the
<span class="keyword parmname">NextToken</span> parameter.</span>

<div id="Description" class="topic concept nested1">

## Description

<div class="body conbody">

The <span class="keyword apiname">ListRecommendationsByNextToken</span>
operation returns the next page of recommendations using the <span
class="keyword parmname">NextToken</span> value that was returned by
your previous request to either <span
class="keyword apiname">ListRecommendations</span> or <span
class="keyword apiname">ListRecommendationsByNextToken</span>. If <span
class="keyword parmname">NextToken</span> is not returned, there are no
more pages to return.

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

| Name                                            | Description                                                                                                                                                                                                 | Required | Valid values                            |
|-------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------|-----------------------------------------|
| <span class="keyword parmname">NextToken</span> | A string token returned in the response of your previous request to either <span class="keyword apiname">ListRecommendations</span> or <span class="keyword apiname">ListRecommendationsByNextToken</span>. | Yes      | <span class="ph">Type: xs:string</span> |

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
<th id="d276636e219" class="entry" data-valign="top" width="33.33333333333333%">Name</th>
<th id="d276636e222" class="entry" data-valign="top" width="66.66666666666666%">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d276636e219 "><span class="keyword parmname">NextToken</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d276636e222 ">A generated string used to pass information to your next request. If <span class="keyword parmname">NextToken</span> is returned, pass the value of <span class="keyword parmname">NextToken</span> to <span class="keyword apiname">ListRecommendationsByNextToken</span>. If <span class="keyword parmname">NextToken</span> is not returned, there are no more recommendations to return.
<p>Optional</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d276636e219 "><span class="keyword parmname">FulfillmentRecommendations</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d276636e222 ">A list of current fulfillment recommendations.
<p>The list is empty if there are no current fulfillment recommendations or if fulfillment recommendations were not requested in the <span class="keyword parmname">RecommendationCategory</span>. <span class="ph">This element is used in all marketplaces except Brazil.</span></p>
<p>Optional</p>
<p>Type: List of <a href="Recommendations_Datatypes.md#FulfillmentRecommendation" class="xref" title="A recommendation for the top products to fulfill through Fulfillment by Amazon (FBA). This datatype is used in all marketplaces except Brazil.">FulfillmentRecommendation</a></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d276636e219 "><span class="keyword parmname">InventoryRecommendations</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d276636e222 ">A list of current inventory recommendations.
<p>The list is empty if there are no current inventory recommendations or if inventory recommendations were not requested in the <span class="keyword parmname">RecommendationCategory</span>.</p>
<p>Optional</p>
<p>Type: List of <a href="Recommendations_Datatypes.md#InventoryRecommendation" class="xref" title="A recommendation for restocking low or out-of-stock items in your inventory.">InventoryRecommendation</a></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d276636e219 "><span class="keyword parmname">PricingRecommendations</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d276636e222 ">A list of current pricing recommendations.
<p>The list is empty if there are no current pricing recommendations or if pricing recommendations were not requested in the <span class="keyword parmname">RecommendationCategory</span>.</p>
<p>Optional</p>
<p>Type: List of <a href="Recommendations_Datatypes.md#PricingRecommendation" class="xref" title="A recommendation to review pricing on items in your inventory where your offer is not the lowest price.">PricingRecommendation</a></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d276636e219 "><span class="keyword parmname">GlobalSellingRecommendations</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d276636e222 ">A list of current global selling recommendations.
<p>The list is empty if there are no current global selling recommendations or if global selling recommendations were not requested in the <span class="keyword parmname">RecommendationCategory</span>.</p>
<p>Optional</p>
<p>Type: List of <a href="Recommendations_Datatypes.md#GlobalSellingRecommendation" class="xref" title="A recommendation for expanding your products to more regions and marketplaces.">GlobalSellingRecommendation</a></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d276636e219 "><span class="keyword parmname">AdvertisingRecommendations</span></td>
<td class="entry" data-valign="top" width="66.66666666666666%" headers="d276636e222 ">A list of current advertising recommendations.
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
POST /Recommendations/2013-04-01 HTTP/1.1
Content-Type: x-www-form-urlencoded
Host: mws.amazonservices.com
User-Agent: <Your User Agent Header>

AWSAccessKeyId=0PB842EXAMPLESDX
&Action= ListRecommendationsByNextToken
&MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
&NextToken=88faca76-b600-46d2-b53c-0c8c4533e43a
&SellerId=0PB842EXAMPLESDX
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
<ListRecommendationsByNextTokenResponse
    xmlns="https://mws.amazonservices.com/Recommendations/2013-04-01">
    <ListRecommendationsByNextTokenResult>
        <NextToken>AAAAAAAAEXAMPLE+13sB+==</NextToken>
    </ListRecommendationsByNextTokenResult>
    <ResponseMetadata>
        <RequestId>b106b175-85ca-11e2-8826-c31d9EXAMPLE</RequestId>
    </ResponseMetadata>
</ListRecommendationsByNextTokenResponse>
```

<a href="#Examples" class="xref">↑ Top</a>

</div>

</div>

</div>

</div>

<div id="RelatedTopics" class="topic nested1">

## Related topics

<div class="body">

<a href="../dev_guide/DG_NextToken.md" class="xref">Using NextToken to request additional pages</a>

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
