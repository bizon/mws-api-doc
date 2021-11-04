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

<div id="Products_GetProductCategoriesForSKU" class="nested0">

# GetProductCategoriesForSKU

<div class="body">

<span class="ph">Returns the parent product categories that a product
belongs to, based on <span
class="keyword parmname">SellerSKU</span>.</span>

</div>

<div id="Description" class="topic concept nested1">

## Description

<div class="body conbody">

The <span class="keyword apiname">GetProductCategoriesForSKU</span>
operation returns the product category name and identifier that a
product belongs to, including parent categories back to the root for the
marketplace.

<div class="section">

### Availability

This operation is available in all marketplaces.

</div>

<div class="section">

### Throttling

<div class="p">

<div class="tablenoborder">

| Maximum request quota | Restore rate                   | Hourly request quota  |
|-----------------------|--------------------------------|-----------------------|
| 20 requests           | One request every five seconds | 720 requests per hour |

</div>

This quota and restore rate is shared with
<a href="Products_GetProductCategoriesForASIN.md" class="xref" title="Returns the parent product categories that a product belongs to, based on ASIN.">GetProductCategoriesForASIN</a>.
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
<th id="d256300e201" class="entry" data-valign="top" width="28.57142857142857%">Name</th>
<th id="d256300e204" class="entry" data-valign="top" width="28.57142857142857%">Description</th>
<th id="d256300e207" class="entry" data-valign="top" width="14.285714285714285%">Required</th>
<th id="d256300e210" class="entry" data-valign="top" width="28.57142857142857%">Valid values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d256300e201 "><span class="keyword parmname">MarketplaceId</span></td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d256300e204 ">A marketplace identifier. Specifies the marketplace from which category structures are returned.
<p><span class="ph">Type: xs:string</span></p></td>
<td class="entry" data-valign="top" width="14.285714285714285%" headers="d256300e207 ">Yes</td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d256300e210 "><span class="ph">For a list of <span class="keyword parmname">MarketplaceId</span> values, see <a href="../dev_guide/DG_Endpoints.md" class="xref">Amazon MWS endpoints and MarketplaceId values</a> in the <span class="ph">Amazon MWS Developer Guide</span>.</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d256300e201 "><span class="keyword parmname">SellerSKU</span></td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d256300e204 ">Used to identify products in the given marketplace. <span class="keyword parmname">SellerSKU</span> is qualified by your <span class="keyword parmname">SellerId</span>, which is included with every <span class="ph">Amazon Marketplace Web Service (Amazon MWS)</span> operation that you submit.
<p><span class="ph">Type: xs:string</span></p></td>
<td class="entry" data-valign="top" width="14.285714285714285%" headers="d256300e207 ">Yes</td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d256300e210 "> </td>
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

| Name                                                      | Description                                                                                                                                                                                                                                                            |
|-----------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| <span class="keyword parmname">Self</span>                | Contains the <span class="keyword parmname">ProductCategoryId</span> for the product that you submitted. Also contains a <span class="keyword parmname">ProductCategoryId</span> for each of the parent categories of the product, up to the root for the Marketplace. |
| <span class="keyword parmname">ProductCategoryId</span>   | Identifier for a product category (or browse node).                                                                                                                                                                                                                    |
| <span class="keyword parmname">ProductCategoryName</span> | Name of a product category (or browse node).                                                                                                                                                                                                                           |

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

AWSAccessKeyId=AKIAEXAMPLEFWR4TJ7ZQ
&Action=GetProductCategoriesForSKU
&MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
&MarketplaceId=ATVPDKIKX0DER
&SellerId=A1IMEXAMPLEWRC
&SellerSKU=SKU2468
&SignatureMethod=HmacSHA256
&SignatureVersion=2
&Timestamp=2012-12-04T22%3A48%3A25Z
&Version=2011-10-01
&Signature=nLBMEXAMPLE6ASMKD1YTcNk7E8vW6Qzha8cEXAMPLEY%3D
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
<GetProductCategoriesForSKUResponse
    xmlns="http://mws.amazonservices.com/schema/Products/2011-10-01">
    <GetProductCategoriesForSKUResult>
        <Self>
            <ProductCategoryId>271578011</ProductCategoryId>
            <ProductCategoryName>Project Management</ProductCategoryName>
            <Parent>
                <ProductCategoryId>2675</ProductCategoryId>
                <ProductCategoryName>Management &#x26; Leadership</ProductCategoryName>
                <Parent>
                    <ProductCategoryId>3</ProductCategoryId>
                    <ProductCategoryName>Business &#x26; Investing</ProductCategoryName>
                    <Parent>
                        <ProductCategoryId>1000</ProductCategoryId>
                        <ProductCategoryName>Subjects</ProductCategoryName>
                        <Parent>
                            <ProductCategoryId>283155</ProductCategoryId>
                            <ProductCategoryName>Subjects</ProductCategoryName>
                        </Parent>
                    </Parent>
                </Parent>
            </Parent>
        </Self>
        <Self>
            <ProductCategoryId>684248011</ProductCategoryId>
            <ProductCategoryName>Management</ProductCategoryName>
            <Parent>
                <ProductCategoryId>468220</ProductCategoryId>
                <ProductCategoryName>Business &#x26; Finance</ProductCategoryName>
                <Parent>
                    <ProductCategoryId>465600</ProductCategoryId>
                    <ProductCategoryName>New, Used &#x26; Rental Textbooks</ProductCategoryName>
                    <Parent>
                        <ProductCategoryId>2349030011</ProductCategoryId>
                        <ProductCategoryName>Specialty Boutique</ProductCategoryName>
                        <Parent>
                            <ProductCategoryId>283155</ProductCategoryId>
                            <ProductCategoryName>Specialty Boutique</ProductCategoryName>
                        </Parent>
                    </Parent>
                </Parent>
            </Parent>
        </Self>
    </GetProductCategoriesForSKUResult>
    <ResponseMetadata>
        <RequestId>e058aabd-b4c3-48ba-9bfa-EXAMPLE9a267</RequestId>
    </ResponseMetadata>
</GetProductCategoriesForSKUResponse>
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

<a href="Products_GetProductCategoriesForASIN.md" class="xref" title="Returns the parent product categories that a product belongs to, based on ASIN.">GetProductCategoriesForASIN</a>

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
