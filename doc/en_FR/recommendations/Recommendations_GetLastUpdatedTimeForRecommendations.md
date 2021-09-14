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

<div id="Recommendations_GetLastUpdatedTimeForRecommendations"
class="nested0">

# GetLastUpdatedTimeForRecommendations

<span class="ph">Checks whether there are active recommendations for
each category for the given marketplace, and if there are, returns the
time when recommendations were last updated for each category.</span>

<div id="Description" class="topic concept nested1">

## Description

<div class="body conbody">

The <span
class="keyword apiname">GetLastUpdatedTimeForRecommendations</span>
operation enables you to check whether there are active recommendations
for you in a given recommendation category, and if there are, to check
when the recommendations for that category were last updated.

If the last updated timestamp returned for a category in this operation
is newer than the last updated timestamp returned for a category when
you last called this operation, then you should call the <span
class="keyword apiname">ListRecommendations</span> operation again to
get your latest recommendations for that category. Otherwise, there is
no need to call the <span
class="keyword apiname">ListRecommendations</span> operation because you
already have the most current set of recommendations.

<div class="note note">

<span class="notetitle">Note:</span> Currently the last updated
timestamp is not returned for listing quality recommendations.

</div>

If a null last updated timestamp is returned for a given category, then
there are no active recommendations for you in that category.

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
<th id="d271157e153" class="entry" data-valign="top" width="28.57142857142857%">Name</th>
<th id="d271157e156" class="entry" data-valign="top" width="28.57142857142857%">Description</th>
<th id="d271157e159" class="entry" data-valign="top" width="14.285714285714285%">Required</th>
<th id="d271157e162" class="entry" data-valign="top" width="28.57142857142857%">Valid values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d271157e153 "><span class="keyword parmname">MarketplaceId</span></td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d271157e156 ">The marketplace identifier for the marketplace from which you want to retrieve recommendations.</td>
<td class="entry" data-valign="top" width="14.285714285714285%" headers="d271157e159 ">Yes</td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d271157e162 ">Any valid marketplace identifier that you are registered in.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div id="ResponseElements" class="topic nested1">

## Response elements

<div class="body">

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d271157e215" class="entry" data-valign="top" width="NaN%">Name</th>
<th id="d271157e218" class="entry" data-valign="top" width="NaN%">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="NaN%" headers="d271157e215 "><span class="keyword parmname">InventoryRecommendationsLastUpdated</span></td>
<td class="entry" data-valign="top" width="NaN%" headers="d271157e218 ">The date and time when the inventory recommendations were last updated. In <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="NaN%" headers="d271157e215 "><span class="keyword parmname">PricingRecommendationsLastUpdated</span></td>
<td class="entry" data-valign="top" width="NaN%" headers="d271157e218 ">The date and time when the pricing recommendations were last updated. In <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="NaN%" headers="d271157e215 "><span class="keyword parmname">FulfillmentRecommendationsLastUpdated</span></td>
<td class="entry" data-valign="top" width="NaN%" headers="d271157e218 ">The date and time when the fulfillment recommendations were last updated. In <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>. <span class="ph">This element is used in all marketplaces except Brazil.</span>
<p>Optional</p>
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="NaN%" headers="d271157e215 "><span class="keyword parmname">GlobalSellingRecommendationsLastUpdated</span></td>
<td class="entry" data-valign="top" width="NaN%" headers="d271157e218 ">The date and time when the global selling recommendations were last updated. In <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="NaN%" headers="d271157e215 "><span class="keyword parmname">AdvertisingRecommendationsLastUpdated</span></td>
<td class="entry" data-valign="top" width="NaN%" headers="d271157e218 ">The date and time when the advertising recommendations were last updated. In <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>. <span class="ph">This element is used in all marketplaces except Brazil.</span>
<p>Optional</p>
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
</tbody>
</table>

</div>

<div class="note note">

<span class="notetitle">Note:</span> Last updated times are not returned
for `ListingQuality` recommendations.

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
&Action= GetLastUpdatedTimeForRecommendations
&MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
&MarketplaceId=ATVPDKIKX0DER
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
<GetLastUpdatedTimeForRecommendationsResponse
    xmlns="https://mws.amazonservices.com/Recommendations/2013-04-01/"/>
<InventoryRecommendationsLastUpdated>
    2013-03-04T02:10:32+00:00
</InventoryRecommendationsLastUpdated>  
<!--<SelectionRecommendationsLastUpdated>
    2013-03-03T03:11:34+00:00
</SelectionRecommendationsLastUpdated>-->  
<PricingRecommendationsLastUpdated>
    2013-03-05T03:11:33+00:00
</PricingRecommendationsLastUpdated>  
<FulfillmentRecommendationsLastUpdated>
    2013-03-02T03:11:32+00:00
</FulfillmentnRecommendationsLastUpdated>  
<GlobalSellingRecommendationsLastUpdated>
    2013-03-02T04:31:32+00:00
</GlobalSellingRecommendationsLastUpdated>  
<AdvertisingRecommendationsLastUpdated>
    2013-03-03T17:45:11+00:00
</AdvertisingRecommendationsLastUpdated>  
<ResponseMetadata>
    <RequestId>88faca76-b600-46d2-b53c-0c8c4EXAMPLE</RequestId>
</ResponseMetadata>
</GetLastUpdatedTimeForRecommendationsResponse>
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
