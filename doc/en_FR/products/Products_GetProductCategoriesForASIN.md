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

<div id="Products_GetProductCategoriesForASIN" class="nested0">

# GetProductCategoriesForASIN

<div class="body">

<span class="ph">Returns the parent product categories that a product
belongs to, based on <span class="keyword parmname">ASIN</span>.</span>

</div>

<div id="Description" class="topic concept nested1">

## Description

<div class="body conbody">

The <span class="keyword apiname">GetProductCategoriesForASIN</span>
operation is the same as the
<a href="Products_GetProductCategoriesForSKU.md" class="xref" title="Returns the parent product categories that a product belongs to, based on SellerSKU.">GetProductCategoriesForSKU</a>
operation except that it uses a <span
class="keyword parmname">MarketplaceId</span> and an <span
class="keyword parmname">ASIN</span> to uniquely identify a product.

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
<a href="Products_GetProductCategoriesForSKU.md" class="xref" title="Returns the parent product categories that a product belongs to, based on SellerSKU.">GetProductCategoriesForSKU</a>.
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
<th id="d255572e219" class="entry" data-valign="top" width="28.57142857142857%">Name</th>
<th id="d255572e222" class="entry" data-valign="top" width="28.57142857142857%">Description</th>
<th id="d255572e225" class="entry" data-valign="top" width="14.285714285714285%">Required</th>
<th id="d255572e228" class="entry" data-valign="top" width="28.57142857142857%">Valid values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d255572e219 "><span class="keyword parmname">MarketplaceId</span></td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d255572e222 ">A marketplace identifier. Specifies the marketplace whose category structure should be returned.
<p><span class="ph">Type: xs:string</span></p></td>
<td class="entry" data-valign="top" width="14.285714285714285%" headers="d255572e225 ">Yes</td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d255572e228 "><span class="ph">For a list of <span class="keyword parmname">MarketplaceId</span> values, see <a href="../dev_guide/DG_Endpoints.md" class="xref">Amazon MWS endpoints and MarketplaceId values</a> in the <span class="ph">Amazon MWS Developer Guide</span>.</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d255572e219 "><span class="keyword parmname">ASIN</span></td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d255572e222 ">Identifies the product in given the Marketplace.
<p><span class="ph">Type: xs:string</span></p></td>
<td class="entry" data-valign="top" width="14.285714285714285%" headers="d255572e225 ">Yes</td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d255572e228 "> </td>
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

ASIN=B002KT3XQM
&AWSAccessKeyId=AKIAEXAMPLEFWR4TJ7ZQ
&Action=GetProductCategoriesForASIN
&MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
&MarketplaceId=ATVPDKIKX0DER
&SellerId=A1IMEXAMPLEWRC
&SignatureMethod=HmacSHA256
&SignatureVersion=2
&Timestamp=2012-12-04T22%3A51%3A51Z
&Version=2011-10-01
&Signature=%2BIEXAMPLE%2FvjuBYraHxZawj6F63rOVHx4PNEXAMPLEs%3D
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
<GetProductCategoriesForASINResponse
  xmlns="http://mws.amazonservices.com/schema/Products/2011-10-01">
<GetProductCategoriesForASINResult>
  <Self>
    <ProductCategoryId>2420095011</ProductCategoryId>
    <ProductCategoryName>Compression Shorts</ProductCategoryName>
    <Parent>
      <ProductCategoryId>2419332011</ProductCategoryId>
      <ProductCategoryName>Men</ProductCategoryName>
      <Parent>
        <ProductCategoryId>2371051011</ProductCategoryId>
        <ProductCategoryName>Clothing</ProductCategoryName>
        <Parent>
          <ProductCategoryId>3403201</ProductCategoryId>
            <ProductCategoryName>Bikes &#x26; Accessories</ProductCategoryName>
          <Parent>
            <ProductCategoryId>2232464011</ProductCategoryId>
              <ProductCategoryName>Bikes &#x26; Scooters</ProductCategoryName>
            <Parent>
              <ProductCategoryId>3375301</ProductCategoryId>
              <ProductCategoryName>Categories</ProductCategoryName>
              <Parent>
                <ProductCategoryId>3375251</ProductCategoryId>
                <ProductCategoryName>Categories</ProductCategoryName>
              </Parent>
            </Parent>
          </Parent>
        </Parent>
      </Parent>
    </Parent>
  </Self>
</GetProductCategoriesForASINResult>
<ResponseMetadata>
  <RequestId>fbce5b62-67cc-4ab8-86f3-EXAMPLE22e4e</RequestId>
</ResponseMetadata>
</GetProductCategoriesForASINResponse>
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

<a href="Products_GetProductCategoriesForSKU.md" class="xref" title="Returns the parent product categories that a product belongs to, based on SellerSKU.">GetProductCategoriesForSKU</a>

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
