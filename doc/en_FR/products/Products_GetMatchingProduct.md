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

<div id="Products_GetProductMatchingAttributes" class="nested0">

# GetMatchingProduct

<div class="body">

<span class="ph">Returns a list of products and their attributes, based
on a list of <span class="keyword parmname">ASIN</span> values.</span>

</div>

<div id="Description" class="topic concept nested1">

## Description

<div class="body conbody">

The <span class="keyword apiname">GetMatchingProduct</span> operation
returns a list of products and their attributes, based on a list of
<span class="keyword parmname">ASIN</span> values that you specify. This
operation returns a maximum of ten products.

**Important**. All of the functionality of the <span
class="keyword apiname">GetMatchingProduct</span> operation can be found
in the new
<a href="Products_GetMatchingProductForId.md" class="xref" title="Returns a list of products and their attributes, based on a list of ASIN, GCID, SellerSKU, UPC, EAN, ISBN, and JAN values.">GetMatchingProductForId</a>
operation. The <span class="keyword apiname">GetMatchingProduct</span>
operation is included in the Products API section for backward
compatibility, but you should use the <span
class="keyword apiname">GetMatchingProductForId</span> operation in
favor of the <span class="keyword apiname">GetMatchingProduct</span>
operation whenever possible. For more information, see
<a href="Products_GetMatchingProductForId.md" class="xref" title="Returns a list of products and their attributes, based on a list of ASIN, GCID, SellerSKU, UPC, EAN, ISBN, and JAN values.">GetMatchingProductForId</a>.

<div class="section">

### Availability

This operation is available in all marketplaces.

</div>

<div class="section">

### Throttling

<div class="p">

<div class="tablenoborder">

| Maximum request quota | Restore rate           | Hourly request quota   |
|-----------------------|------------------------|------------------------|
| 20 requests           | Two items every second | 7200 requests per hour |

</div>

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
<th id="d249859e228" class="entry" data-valign="top" width="28.57142857142857%">Name</th>
<th id="d249859e231" class="entry" data-valign="top" width="28.57142857142857%">Description</th>
<th id="d249859e234" class="entry" data-valign="top" width="14.285714285714285%">Required</th>
<th id="d249859e237" class="entry" data-valign="top" width="28.57142857142857%">Valid values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d249859e228 "><span class="keyword parmname">MarketplaceId</span></td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d249859e231 ">A marketplace identifier. Specifies the marketplace from which products are returned.
<p><span class="ph">Type: xs:string</span></p></td>
<td class="entry" data-valign="top" width="14.285714285714285%" headers="d249859e234 ">Yes</td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d249859e237 "><span class="ph">For a list of <span class="keyword parmname">MarketplaceId</span> values, see <a href="../dev_guide/DG_Endpoints.md" class="xref">Amazon MWS endpoints and MarketplaceId values</a> in the <span class="ph">Amazon MWS Developer Guide</span>.</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d249859e228 "><span class="keyword parmname">ASINList</span></td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d249859e231 ">A structured list of <span class="keyword parmname">ASIN</span> values. Used to identify products in the given marketplace.
<p>Type: List of xs:string</p></td>
<td class="entry" data-valign="top" width="14.285714285714285%" headers="d249859e234 ">Yes</td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d249859e237 ">Maximum: 10 <span class="keyword parmname">ASIN</span> values</td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div id="ResponseElements" class="topic reference nested1">

## Response elements

<div class="body refbody">

<div class="section">

The response elements that the <span
class="keyword apiname">GetMatchingProduct</span> operation returns are
described by the following publicly available XSDs:

-   ProductsAPI_Response.xsd:
    <a href="http://g-ecx.images-amazon.com/images/G/01/mwsportal/doc/en_US/products/ProductsAPI_Response.xsd" class="xref">http://g-ecx.images-amazon.com/images/G/01/mwsportal/doc/en_US/products/ProductsAPI_Response.xsd</a>
-   default.xsd:
    <a href="http://g-ecx.images-amazon.com/images/G/01/mwsportal/doc/en_US/products/default.xsd" class="xref">http://g-ecx.images-amazon.com/images/G/01/mwsportal/doc/en_US/products/default.xsd</a>

The following table provides additional information about some of the
key elements that are returned by the <span
class="keyword apiname">GetMatchingProduct</span> operation.

<div class="note note">

<span class="notetitle">Note:</span> As Amazon updates the <span
class="ph">Amazon MWS</span> <span class="ph">Products API
section</span> to include new response elements, we may update the
ProductsAPI_Response.xsd and default.xsd schemas. Keep this in mind if
you choose to use these schemas for validation.

</div>

</div>

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d249859e367" class="entry" data-valign="top" width="26.666666666666668%">Name</th>
<th id="d249859e370" class="entry" data-valign="top" width="73.33333333333333%">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="26.666666666666668%" headers="d249859e367 "><span class="keyword parmname">Product</span></td>
<td class="entry" data-valign="top" width="73.33333333333333%" headers="d249859e370 ">Contains four of the sub-elements of the <span class="keyword parmname">Product</span> element from ProductsAPI_Response.xsd. These sub-elements are: <span class="keyword parmname">Identifiers</span>, <span class="keyword parmname">AttributeSets</span>, <span class="keyword parmname">Relationships</span>, and <span class="keyword parmname">SalesRankings</span>.</td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="26.666666666666668%" headers="d249859e367 "><span class="keyword parmname">Identifiers</span></td>
<td class="entry" data-valign="top" width="73.33333333333333%" headers="d249859e370 ">Contains the <span class="keyword parmname">MarketplaceASIN</span> combination that uniquely identifies a product.</td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="26.666666666666668%" headers="d249859e367 "><span class="keyword parmname">AttributeSets</span></td>
<td class="entry" data-valign="top" width="73.33333333333333%" headers="d249859e370 ">Contains product attributes, from the <span class="keyword parmname">ItemAttributes</span> element of default.xsd, if they are applicable to the product that is returned. Note that a <span class="keyword parmname">Product</span> response element will have multiple attribute sets if it has attributes in more than one language. All of the attributes, even ones that are not translated, are repeated in each attribute set. The language used by each attribute set is denoted by a <span class="keyword parmname">lang</span> attribute.
<div class="note note">
<span class="notetitle">Note:</span> If a single product has more than one image, then only the URL for the main image is returned.
</div></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="26.666666666666668%" headers="d249859e367 "><span class="keyword parmname">Relationships</span></td>
<td class="entry" data-valign="top" width="73.33333333333333%" headers="d249859e370 ">Contains product variation information, if applicable. If your search criteria match a product that is identified by a variation parent ASIN, the related <span class="keyword parmname">VariationChild</span> elements are contained in the <span class="keyword parmname">Relationships</span> element. If your search criteria match a specific variation child ASIN, the related <span class="keyword parmname">VariationParent</span> element is contained in the <span class="keyword parmname">Relationships</span> element.
<div class="note note">
<span class="notetitle">Note:</span> Because this operation does not return all product attributes, it is possible to get <span class="keyword parmname">VariationChild</span> elements with different <span class="keyword parmname">ASIN</span> values but the same variation element values. These are distinct variation child ASINs even though product attributes that differentiate them from each other are not returned.
</div>
<p>Variation attributes can be found in the <span class="keyword parmname">VariationChild</span> element of default.xsd.</p>
<div class="note note">
<span class="notetitle">Note:</span> Variation attributes are not included in the <span class="keyword parmname">VariationChild</span> element if the input <span class="keyword parmname">ASIN</span> values have more than 2000 combined <span class="keyword parmname">VariationChild</span> elements.
</div></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="26.666666666666668%" headers="d249859e367 "><span class="keyword parmname">SalesRankings</span></td>
<td class="entry" data-valign="top" width="73.33333333333333%" headers="d249859e370 ">Sales rank information for the product by product category.
<p>Sub-elements are:</p>
<ul>
<li><span class="keyword parmname">ProductCategoryId</span>. Identifies the product category that the sales rank is taken from.</li>
<li><span class="keyword parmname">Rank</span>. The sales rank of the product within the product category.</li>
</ul></td>
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
POST /Products/2011-10-01 HTTP/1.1
Content-Type: x-www-form-urlencoded
Host: mws.amazonservices.com
User-Agent: <Your User Agent Header>

ASINList.ASIN.1=B002KT3XRQ
&AWSAccessKeyId=AKIAEXAMPLEFWR4TJ7ZQ
&Action=GetMatchingProduct
&MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
&MarketplaceId=ATVPDKIKX0DER
&SellerId=A1IMEXAMPLEWRC
&SignatureMethod=HmacSHA256
&SignatureVersion=2
&Timestamp=2012-12-04T21%3A01%3A53Z
&Version=2011-10-01
&Signature=5O%2EXAMPLEtpSD0NbC%2FltDxXuLe2TXAd%2B48AEXAMPLE0%3D
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
<GetMatchingProductResponse
    xmlns="http://mws.amazonservices.com/schema/Products/2011-10-01">
    <GetMatchingProductResult ASIN="B002KT3XRQ" status="Success">
        <Product xmlns="http://mws.amazonservices.com/schema/Products/2011-10-01"
            xmlns:ns2="http://mws.amazonservices.com/schema/Products/2011-10-01/default.xsd">
            <Identifiers>
                <MarketplaceASIN>
                    <MarketplaceId>ATVPDKIKX0DER</MarketplaceId>
                    <ASIN>B002KT3XRQ</ASIN>
                </MarketplaceASIN>
            </Identifiers>
            <AttributeSets>
                <ns2:ItemAttributes xml:lang="en-US">
                    <ns2:Binding>Apparel</ns2:Binding>
                    <ns2:Brand>Pearl iZUMi</ns2:Brand>
                    <ns2:Department>mens</ns2:Department>
                    <ns2:Feature>
                        Select transfer fabric sets the benchmark for moisture transfer and
                        four-way performance stretch
                    </ns2:Feature>
                    <ns2:Feature>
                        6-Panel anatomic design for superior, chafe-free comfort, UPF 50+ sun
                        protection
                    </ns2:Feature>
                    <ns2:Feature>
                        Comfortable silicone leg grippers keep shorts in place,
                        moisture-wicking, antimicrobial properties
                    </ns2:Feature>
                    <ns2:Feature>
                        Tour 3D Chamois is male-specific and non-chafing with padding in
                        key areas
                    </ns2:Feature>
                    <ns2:Feature>86 percent nylon, 14% spandex, 9-Inch inseam</ns2:Feature>
                    <ns2:ItemDimensions>
                        <ns2:Height Units="inches">2.00</ns2:Height>
                        <ns2:Length Units="inches">9.00</ns2:Length>
                        <ns2:Width Units="inches">9.00</ns2:Width>
                    </ns2:ItemDimensions>
                    <ns2:Label>Pearl iZUMi</ns2:Label>
                    <ns2:ListPrice>
                        <ns2:Amount>50.00</ns2:Amount>
                        <ns2:CurrencyCode>USD</ns2:CurrencyCode>
                    </ns2:ListPrice>
                    <ns2:Manufacturer>Pearl iZUMi</ns2:Manufacturer>
                    <ns2:Model>0275</ns2:Model>
                    <ns2:PackageDimensions>
                        <ns2:Height Units="inches">2.80</ns2:Height>
                        <ns2:Length Units="inches">9.75</ns2:Length>
                        <ns2:Width Units="inches">8.40</ns2:Width>
                        <ns2:Weight Units="pounds">0.40</ns2:Weight>
                    </ns2:PackageDimensions>
                    <ns2:PackageQuantity>1</ns2:PackageQuantity>
                    <ns2:PartNumber>0275</ns2:PartNumber>
                    <ns2:ProductGroup>Apparel</ns2:ProductGroup>
                    <ns2:ProductTypeName>SHORTS</ns2:ProductTypeName>
                    <ns2:Publisher>Pearl iZUMi</ns2:Publisher>
                    <ns2:SmallImage>
                        <ns2:URL>
                            http://ecx.images-amazon.com/images/I/41ty3Sn%2BU8L._SL75_.jpg
                        </ns2:URL>
                        <ns2:Height Units="pixels">75</ns2:Height>
                        <ns2:Width Units="pixels">58</ns2:Width>
                    </ns2:SmallImage>
                    <ns2:Studio>Pearl iZUMi</ns2:Studio>
                    <ns2:Title>Pearl iZUMi Men's Quest Cycling Short</ns2:Title>
                </ns2:ItemAttributes>
            </AttributeSets>
            <Relationships>
                <ns2:VariationChild>
                    <Identifiers>
                        <MarketplaceASIN>
                            <MarketplaceId>ATVPDKIKX0DER</MarketplaceId>
                            <ASIN>B002KT3XQC</ASIN>
                        </MarketplaceASIN>
                    </Identifiers>
                    <ns2:Color>Black</ns2:Color>
                    <ns2:Size>Small</ns2:Size>
                </ns2:VariationChild>
                <ns2:VariationChild>
                    <Identifiers>
                        <MarketplaceASIN>
                            <MarketplaceId>ATVPDKIKX0DER</MarketplaceId>
                            <ASIN>B002KT3XQW</ASIN>
                        </MarketplaceASIN>
                    </Identifiers>
                    <ns2:Color>Black</ns2:Color>
                    <ns2:Size>Medium</ns2:Size>
                </ns2:VariationChild>
                <ns2:VariationChild>
                    <Identifiers>
                        <MarketplaceASIN>
                            <MarketplaceId>ATVPDKIKX0DER</MarketplaceId>
                            <ASIN>B002KT3XQM</ASIN>
                        </MarketplaceASIN>
                    </Identifiers>
                    <ns2:Color>Black</ns2:Color>
                    <ns2:Size>Large</ns2:Size>
                </ns2:VariationChild>
                <ns2:VariationChild>
                    <Identifiers>
                        <MarketplaceASIN>
                            <MarketplaceId>ATVPDKIKX0DER</MarketplaceId>
                            <ASIN>B002KT3XR6</ASIN>
                        </MarketplaceASIN>
                    </Identifiers>
                    <ns2:Color>Black</ns2:Color>
                    <ns2:Size>X-Large</ns2:Size>
                </ns2:VariationChild>
                <ns2:VariationChild>
                    <Identifiers>
                        <MarketplaceASIN>
                            <MarketplaceId>ATVPDKIKX0DER</MarketplaceId>
                            <ASIN>B002KT3XRG</ASIN>
                        </MarketplaceASIN>
                    </Identifiers>
                    <ns2:Color>Black</ns2:Color>
                    <ns2:Size>XX-Large</ns2:Size>
                </ns2:VariationChild>
            </Relationships>
            <SalesRankings>
                <SalesRank>
                    <ProductCategoryId>apparel_display_on_website</ProductCategoryId>
                    <Rank>159</Rank>
                </SalesRank>
                <SalesRank>
                    <ProductCategoryId>2420095011</ProductCategoryId>
                    <Rank>1</Rank>
                </SalesRank>
                <SalesRank>
                    <ProductCategoryId>2611189011</ProductCategoryId>
                    <Rank>4</Rank>
                </SalesRank>
            </SalesRankings>
        </Product>
    </GetMatchingProductResult>
    <ResponseMetadata>
        <RequestId>b12caada-d330-4d87-a789-EXAMPLE35872</RequestId>
    </ResponseMetadata>
</GetMatchingProductResponse>
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

<a href="Products_GetMatchingProductForId.md" class="xref" title="Returns a list of products and their attributes, based on a list of ASIN, GCID, SellerSKU, UPC, EAN, ISBN, and JAN values.">GetMatchingProductForId</a>

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
