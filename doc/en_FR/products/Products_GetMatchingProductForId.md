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

<div id="Products_GetMatchingProductForId" class="nested0">

# GetMatchingProductForId

<div class="body">

<span class="ph">Returns a list of products and their attributes, based
on a list of ASIN, GCID, SellerSKU, UPC, EAN, ISBN, and JAN
values.</span>

</div>

<div id="Description" class="topic concept nested1">

## Description

<div class="body conbody">

The <span class="keyword apiname">GetMatchingProductForId</span>
operation returns a list of products and their attributes, based on a
list of product identifier values that you specify. Possible product
identifiers are <span class="keyword">ASIN, GCID, SellerSKU, UPC, EAN,
ISBN,</span> and <span class="keyword">JAN</span>.

<div id="Description__Restrictions" class="section">

### Restrictions

-   The operation only returns product information if an active offer
    exists when <span class="keyword parmname">IdType</span> input is
    <span class="keyword">GCID</span>, <span class="keyword">UPC</span>,
    <span class="keyword">EAN</span>, <span class="keyword">ISBN</span>,
    or <span class="keyword">JAN</span>.
-   The operation always returns product information if <span
    class="keyword parmname">IdType</span> input is <span
    class="keyword">ASIN</span>.
-   The operation always returns product information when <span
    class="keyword parmname">IdType</span> input is <span
    class="keyword">SellerSKU</span> and the seller has not deleted the
    offer. The offer can be *inactive* or *active*, but must exist.

</div>

<div class="section">

### Availability

This operation is available in all marketplaces.

</div>

<div class="section">

### Throttling

<div class="p">

<div class="tablenoborder">

| Maximum request quota | Restore rate            | Hourly request quota    |
|-----------------------|-------------------------|-------------------------|
| 20 requests           | Five items every second | 18000 requests per hour |

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

<table class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d251604e248" class="entry" data-valign="top" width="22.22222222222222%">Name</th>
<th id="d251604e251" class="entry" data-valign="top" width="29.629629629629626%">Description</th>
<th id="d251604e254" class="entry" data-valign="top" width="11.11111111111111%">Required</th>
<th id="d251604e257" class="entry" data-valign="top" width="37.03703703703704%">Valid values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="22.22222222222222%" headers="d251604e248 "><span class="keyword parmname">MarketplaceId</span></td>
<td class="entry" data-valign="top" width="29.629629629629626%" headers="d251604e251 "><span class="ph">An encrypted, Amazon-defined marketplace identifier.</span></td>
<td class="entry" data-valign="top" width="11.11111111111111%" headers="d251604e254 ">Yes</td>
<td class="entry" data-valign="top" width="37.03703703703704%" headers="d251604e257 ">Type: <a href="Products_Datatypes.md#MarketplaceType" class="xref" title="An encrypted, Amazon-defined marketplace identifier.">MarketplaceType</a></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="22.22222222222222%" headers="d251604e248 "><span class="keyword parmname">IdType</span></td>
<td class="entry" data-valign="top" width="29.629629629629626%" headers="d251604e251 ">The type of product identifier that <span class="keyword parmname">Id</span> values refer to.</td>
<td class="entry" data-valign="top" width="11.11111111111111%" headers="d251604e254 ">Yes</td>
<td class="entry" data-valign="top" width="37.03703703703704%" headers="d251604e257 "><span class="keyword parmname">IdType</span> values: <var class="keyword varname">ASIN</var>, <var class="keyword varname">GCID</var>, <var class="keyword varname">SellerSKU</var>, <var class="keyword varname">UPC</var>, <var class="keyword varname">EAN</var>, <var class="keyword varname">ISBN</var>, <var class="keyword varname">JAN</var>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="22.22222222222222%" headers="d251604e248 "><span class="keyword parmname">IdList</span></td>
<td class="entry" data-valign="top" width="29.629629629629626%" headers="d251604e251 ">A structured list of <span class="keyword parmname">Id</span> values. Used to identify products in the given marketplace.</td>
<td class="entry center" data-valign="top" width="11.11111111111111%" headers="d251604e254 ">Yes</td>
<td class="entry" data-valign="top" width="37.03703703703704%" headers="d251604e257 ">Maximum: Five <span class="keyword parmname">Id</span> values
<p>Type: List of xs:string</p></td>
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
class="keyword apiname">GetMatchingProductForId</span> operation returns
are described by the following publicly available XSDs:

-   ProductsAPI_Response.xsd:
    <a href="http://g-ecx.images-amazon.com/images/G/01/mwsportal/doc/en_US/products/ProductsAPI_Response.xsd" class="xref">http://g-ecx.images-amazon.com/images/G/01/mwsportal/doc/en_US/products/ProductsAPI_Response.xsd</a>
-   default.xsd:
    <a href="http://g-ecx.images-amazon.com/images/G/01/mwsportal/doc/en_US/products/default.xsd" class="xref">http://g-ecx.images-amazon.com/images/G/01/mwsportal/doc/en_US/products/default.xsd</a>

<span class="keyword apiname">GetMatchingProductForId</span> returns
`Invalid UPC               identifier` when an external identifier is
given (UPC, ISBN, etc.) and *no* offers/listings are active on <span
class="ph">Amazon MWS</span>. See
<a href="#Products_GetMatchingProductForId" class="xref" title="Returns a list of products and their attributes, based on a list of ASIN, GCID, SellerSKU, UPC, EAN, ISBN, and JAN values.">Restrictions</a>
for additional information.

The following table provides additional information about some of the
key elements that are returned by the <span
class="keyword apiname">GetMatchingProductForId</span> operation.

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
<th id="d251604e452" class="entry" data-valign="top" width="26.666666666666668%">Name</th>
<th id="d251604e455" class="entry" data-valign="top" width="73.33333333333333%">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="26.666666666666668%" headers="d251604e452 "><span class="keyword parmname">Product</span></td>
<td class="entry" data-valign="top" width="73.33333333333333%" headers="d251604e455 ">Contains four of the sub-elements of the <span class="keyword parmname">Product</span> element from ProductsAPI_Response.xsd. These sub-elements are: <span class="keyword parmname">Identifiers</span>, <span class="keyword parmname">AttributeSets</span>, <span class="keyword parmname">Relationships</span>, and <span class="keyword parmname">SalesRankings</span>.</td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="26.666666666666668%" headers="d251604e452 "><span class="keyword parmname">Identifiers</span></td>
<td class="entry" data-valign="top" width="73.33333333333333%" headers="d251604e455 ">Contains the <span class="keyword parmname">MarketplaceASIN</span> combination that uniquely identifies a product.</td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="26.666666666666668%" headers="d251604e452 "><span class="keyword parmname">AttributeSets</span></td>
<td class="entry" data-valign="top" width="73.33333333333333%" headers="d251604e455 ">Contains product attributes, from the <span class="keyword parmname">ItemAttributes</span> element of default.xsd, if they are applicable to the product that is returned. Note that a <span class="keyword parmname">Product</span> response element will have multiple attribute sets if it has attributes in more than one language. All of the attributes, even ones that are not translated, are repeated in each attribute set. The language used by each attribute set is denoted by a <span class="keyword parmname">lang</span> attribute.
<div class="note note">
<span class="notetitle">Note:</span> If a single product has more than one image, then only the URL for the main image is returned.
</div></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="26.666666666666668%" headers="d251604e452 "><span class="keyword parmname">Relationships</span></td>
<td class="entry" data-valign="top" width="73.33333333333333%" headers="d251604e455 ">Contains product variation information, if applicable. If your search criteria match a product that is identified by a variation parent ASIN, the related <span class="keyword parmname">VariationChild</span> elements are contained in the <span class="keyword parmname">Relationships</span> element. If your search criteria match a specific variation child ASIN, the related <span class="keyword parmname">VariationParent</span> element is contained in the <span class="keyword parmname">Relationships</span> element.
<div class="note note">
<span class="notetitle">Note:</span> Because this operation does not return all product attributes, it is possible to get <span class="keyword parmname">VariationChild</span> elements with different <span class="keyword parmname">ASIN</span> values but the same variation element values. These are distinct variation child ASINs even though product attributes that differentiate them from each other are not returned.
</div>
<p>Variation attributes can be found in the <span class="keyword parmname">VariationChild</span> element of default.xsd.</p>
<div class="note note">
<span class="notetitle">Note:</span> Variation attributes are not included in the <span class="keyword parmname">VariationChild</span> element if the input <span class="keyword parmname">ASIN</span> values have more than 2000 combined <span class="keyword parmname">VariationChild</span> elements.
</div></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="26.666666666666668%" headers="d251604e452 "><span class="keyword parmname">SalesRankings</span></td>
<td class="entry" data-valign="top" width="73.33333333333333%" headers="d251604e455 ">Sales rank information for the product by product category.
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

AWSAccessKeyId=AKIAEXAMPLEFWR4TJ7ZQ
&Action=GetMatchingProductForId
&IdList.Id.1=9781933988665
&IdList.Id.2=0439708184
&IdType=ISBN
&MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
&MarketplaceId=ATVPDKIKX0DER
&SellerId=A1IMEXAMPLEWRC
&SignatureMethod=HmacSHA256
&SignatureVersion=2
&Timestamp=2012-12-04T21%3A09%3A02Z
&Version=2011-10-01
&Signature=ZhhdEXAMPLEiTy6k5etzw%2BIOCvbDrGop5u9EXAMPLE8%3D
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
<GetMatchingProductForIdResponse
    xmlns="http://mws.amazonservices.com/schema/Products/2011-10-01">
    <GetMatchingProductForIdResult Id="9781933988665"
        IdType="ISBN"
        status="Success">
        <Products xmlns="http://mws.amazonservices.com/schema/Products/2011-10-01"
            xmlns:ns2="http://mws.amazonservices.com/schema/Products/2011-10-01/default.xsd">
            <Product>
                <Identifiers>
                    <MarketplaceASIN>
                        <MarketplaceId>ATVPDKIKX0DER</MarketplaceId>
                        <ASIN>1933988665</ASIN>
                    </MarketplaceASIN>
                </Identifiers>
                <AttributeSets>
                    <ns2:ItemAttributes xml:lang="en-US">
                        <ns2:Author>Marmanis, Haralambos</ns2:Author>
                        <ns2:Author>Babenko, Dmitry</ns2:Author>
                        <ns2:Binding>Paperback</ns2:Binding>
                        <ns2:Edition>1</ns2:Edition>
                        <ns2:ItemDimensions>
                            <ns2:Height Units="inches">9.17</ns2:Height>
                            <ns2:Length Units="inches">7.36</ns2:Length>
                            <ns2:Width Units="inches">0.75</ns2:Width>
                            <ns2:Weight Units="pounds">1.40</ns2:Weight>
                        </ns2:ItemDimensions>
                        <ns2:IsEligibleForTradeIn>true</ns2:IsEligibleForTradeIn>
                        <ns2:Label>Manning Publications</ns2:Label>
                        <ns2:Languages>
                            <ns2:Language>
                                <ns2:Name>english</ns2:Name>
                                <ns2:Type>Unknown</ns2:Type>
                            </ns2:Language>
                            <ns2:Language>
                                <ns2:Name>english</ns2:Name>
                                <ns2:Type>Original Language</ns2:Type>
                            </ns2:Language>
                            <ns2:Language>
                                <ns2:Name>english</ns2:Name>
                                <ns2:Type>Published</ns2:Type>
                            </ns2:Language>
                        </ns2:Languages>
                        <ns2:ListPrice>
                            <ns2:Amount>44.99</ns2:Amount>
                            <ns2:CurrencyCode>USD</ns2:CurrencyCode>
                        </ns2:ListPrice>
                        <ns2:Manufacturer>Manning Publications</ns2:Manufacturer>
                        <ns2:NumberOfItems>1</ns2:NumberOfItems>
                        <ns2:NumberOfPages>368</ns2:NumberOfPages>
                        <ns2:PackageDimensions>
                            <ns2:Height Units="inches">0.80</ns2:Height>
                            <ns2:Length Units="inches">9.10</ns2:Length>
                            <ns2:Width Units="inches">7.30</ns2:Width>
                            <ns2:Weight Units="pounds">1.35</ns2:Weight>
                        </ns2:PackageDimensions>
                        <ns2:ProductGroup>Book</ns2:ProductGroup>
                        <ns2:ProductTypeName>ABIS_BOOK</ns2:ProductTypeName>
                        <ns2:PublicationDate>2009-07-05</ns2:PublicationDate>
                        <ns2:Publisher>Manning Publications</ns2:Publisher>
                        <ns2:SmallImage>
                            <ns2:URL>
                                http://ecx.images-amazon.com/images/I/51EEz05N2HL._SL75_.jpg
                            </ns2:URL>
                            <ns2:Height Units="pixels">75</ns2:Height>
                            <ns2:Width Units="pixels">60</ns2:Width>
                        </ns2:SmallImage>
                        <ns2:Studio>Manning Publications</ns2:Studio>
                        <ns2:Title>Algorithms of the Intelligent Web</ns2:Title>
                    </ns2:ItemAttributes>
                </AttributeSets>
                <Relationships/>
                <SalesRankings>
                    <SalesRank>
                        <ProductCategoryId>book_display_on_website</ProductCategoryId>
                        <Rank>59485</Rank>
                    </SalesRank>
                    <SalesRank>
                        <ProductCategoryId>377886011</ProductCategoryId>
                        <Rank>32</Rank>
                    </SalesRank>
                    <SalesRank>
                        <ProductCategoryId>3887</ProductCategoryId>
                        <Rank>66</Rank>
                    </SalesRank>
                    <SalesRank>
                        <ProductCategoryId>3870</ProductCategoryId>
                        <Rank>82</Rank>
                    </SalesRank>
                </SalesRankings>
            </Product>
        </Products>
    </GetMatchingProductForIdResult>
    <GetMatchingProductForIdResult Id="0439708184" IdType="ISBN" status="Success">
        <Products xmlns="http://mws.amazonservices.com/schema/Products/2011-10-01"
            xmlns:ns2="http://mws.amazonservices.com/schema/Products/2011-10-01/default.xsd">
            <Product>
                <Identifiers>
                    <MarketplaceASIN>
                        <MarketplaceId>ATVPDKIKX0DER</MarketplaceId>
                        <ASIN>059035342X</ASIN>
                    </MarketplaceASIN>
                </Identifiers>
                <AttributeSets>
                    <ns2:ItemAttributes xml:lang="en-US">
                        <ns2:Author>Rowling, J.K.</ns2:Author>
                        <ns2:Binding>Paperback</ns2:Binding>
                        <ns2:Brand>Scholastic Press</ns2:Brand>
                        <ns2:Creator Role="Illustrator">GrandPrÃ©, Mary</ns2:Creator>
                        <ns2:Edition>1st</ns2:Edition>
                        <ns2:Feature>Recommended Age: 9 years and up</ns2:Feature>
                        <ns2:ItemDimensions>
                            <ns2:Height Units="inches">0.80</ns2:Height>
                            <ns2:Length Units="inches">7.50</ns2:Length>
                            <ns2:Width Units="inches">5.20</ns2:Width>
                            <ns2:Weight Units="pounds">0.50</ns2:Weight>
                        </ns2:ItemDimensions>
                        <ns2:IsAutographed>false</ns2:IsAutographed>
                        <ns2:IsMemorabilia>false</ns2:IsMemorabilia>
                        <ns2:Label>Scholastic Paperbacks</ns2:Label>
                        <ns2:Languages>
                            <ns2:Language>
                                <ns2:Name>english</ns2:Name>
                                <ns2:Type>Unknown</ns2:Type>
                            </ns2:Language>
                            <ns2:Language>
                                <ns2:Name>english</ns2:Name>
                                <ns2:Type>Original Language</ns2:Type>
                            </ns2:Language>
                            <ns2:Language>
                                <ns2:Name>english</ns2:Name>
                                <ns2:Type>Published</ns2:Type>
                            </ns2:Language>
                        </ns2:Languages>
                        <ns2:ListPrice>
                            <ns2:Amount>10.99</ns2:Amount>
                            <ns2:CurrencyCode>USD</ns2:CurrencyCode>
                        </ns2:ListPrice>
                        <ns2:Manufacturer>Scholastic Paperbacks</ns2:Manufacturer>
                        <ns2:NumberOfItems>1</ns2:NumberOfItems>
                        <ns2:NumberOfPages>320</ns2:NumberOfPages>
                        <ns2:PackageDimensions>
                            <ns2:Height Units="inches">1.00</ns2:Height>
                            <ns2:Length Units="inches">7.50</ns2:Length>
                            <ns2:Width Units="inches">5.20</ns2:Width>
                            <ns2:Weight Units="pounds">0.50</ns2:Weight>
                        </ns2:PackageDimensions>
                        <ns2:PackageQuantity>1</ns2:PackageQuantity>
                        <ns2:PartNumber>9780590353427</ns2:PartNumber>
                        <ns2:ProductGroup>Book</ns2:ProductGroup>
                        <ns2:ProductTypeName>ABIS_BOOK</ns2:ProductTypeName>
                        <ns2:PublicationDate>1999-10-01</ns2:PublicationDate>
                        <ns2:Publisher>Scholastic Paperbacks</ns2:Publisher>
                        <ns2:ReleaseDate>1999-09-08</ns2:ReleaseDate>
                        <ns2:SmallImage>
                            <ns2:URL>
                                http://ecx.images-amazon.com/images/I/51MU5VilKpL._SL75_.jpg
                            </ns2:URL>
                            <ns2:Height Units="pixels">75</ns2:Height>
                            <ns2:Width Units="pixels">51</ns2:Width>
                        </ns2:SmallImage>
                        <ns2:Studio>Scholastic Paperbacks</ns2:Studio>
                        <ns2:Title>Harry Potter and the Sorcerer's Stone (Book 1)</ns2:Title>
                    </ns2:ItemAttributes>
                </AttributeSets>
                <Relationships/>
                <SalesRankings>
                    <SalesRank>
                        <ProductCategoryId>book_display_on_website</ProductCategoryId>
                        <Rank>362</Rank>
                    </SalesRank>
                    <SalesRank>
                        <ProductCategoryId>15356791</ProductCategoryId>
                        <Rank>6</Rank>
                    </SalesRank>
                    <SalesRank>
                        <ProductCategoryId>3153</ProductCategoryId>
                        <Rank>9</Rank>
                    </SalesRank>
                    <SalesRank>
                        <ProductCategoryId>3045</ProductCategoryId>
                        <Rank>14</Rank>
                    </SalesRank>
                </SalesRankings>
            </Product>
            <Product>
                <Identifiers>
                    <MarketplaceASIN>
                        <MarketplaceId>ATVPDKIKX0DER</MarketplaceId>
                        <ASIN>0439708184</ASIN>
                    </MarketplaceASIN>
                </Identifiers>
                <AttributeSets>
                    <ns2:ItemAttributes xml:lang="en-US">
                        <ns2:Author>J.K. Rowling, Mary GrandPrÃƒÂ©</ns2:Author>
                        <ns2:Binding>Paperback</ns2:Binding>
                        <ns2:Label>Scholastic Paperbacks</ns2:Label>
                        <ns2:Languages>
                            <ns2:Language>
                                <ns2:Name>english</ns2:Name>
                                <ns2:Type>Unknown</ns2:Type>
                            </ns2:Language>
                            <ns2:Language>
                                <ns2:Name>english</ns2:Name>
                                <ns2:Type>Published</ns2:Type>
                            </ns2:Language>
                        </ns2:Languages>
                        <ns2:Manufacturer>Scholastic Paperbacks</ns2:Manufacturer>
                        <ns2:NumberOfItems>1</ns2:NumberOfItems>
                        <ns2:NumberOfPages>784</ns2:NumberOfPages>
                        <ns2:PackageDimensions>
                            <ns2:Height Units="inches">0.73</ns2:Height>
                            <ns2:Length Units="inches">8.43</ns2:Length>
                            <ns2:Width Units="inches">5.85</ns2:Width>
                            <ns2:Weight Units="pounds">0.79</ns2:Weight>
                        </ns2:PackageDimensions>
                        <ns2:ProductGroup>Book</ns2:ProductGroup>
                        <ns2:ProductTypeName>BOOKS_1973_AND_LATER</ns2:ProductTypeName>
                        <ns2:PublicationDate>1999-09-08</ns2:PublicationDate>
                        <ns2:Publisher>Scholastic Paperbacks</ns2:Publisher>
                        <ns2:SmallImage>
                            <ns2:URL>
                                http://ecx.images-amazon.com/images/I/51STfI7UiCL._SL75_.jpg
                            </ns2:URL>
                            <ns2:Height Units="pixels">75</ns2:Height>
                            <ns2:Width Units="pixels">52</ns2:Width>
                        </ns2:SmallImage>
                        <ns2:Studio>Scholastic Paperbacks</ns2:Studio>
                        <ns2:Title>Harry Potter and the Sorcerer's Stone</ns2:Title>
                    </ns2:ItemAttributes>
                </AttributeSets>
                <Relationships/>
                <SalesRankings>
                    <SalesRank>
                        <ProductCategoryId>book_display_on_website</ProductCategoryId>
                        <Rank>2091024</Rank>
                    </SalesRank>
                </SalesRankings>
            </Product>
        </Products>
    </GetMatchingProductForIdResult>
    <ResponseMetadata>
        <RequestId>7ba3245e-a213-430a-bea9-EXAMPLE38d76</RequestId>
    </ResponseMetadata>
</GetMatchingProductForIdResponse>
```

<a href="#Examples" class="xref">↑ Top</a>

</div>

</div>

<div class="section">

### Example response with error

<span class="ph">For information about standard response formatting, see
<a href="../dev_guide/DG_ResponseFormat.md" class="xref">Response format</a>.</span>

When you include multiple <span class="keyword parmname">Id</span>
values in one request, it is possible to have a successful response
(HTTP status code 200) that may contain errors for individual <span
class="keyword parmname">Id</span> values.

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre
<?xml version="1.0"?>
<GetMatchingProductForIdResponse xmlns="http://mws.amazonservices.com/schema/Products/2011-10-01">
    <GetMatchingProductForIdResult Id="0439708623" IdType="ISBN" status="ClientError">
        <Error>
            <Type>Sender</Type>
            <Code>InvalidParameterValue</Code>
            <Message>Invalid ISBN identifier 0439708623 for marketplace ATVPDKIKX0DER</Message>
        </Error>
    </GetMatchingProductForIdResult>
    <GetMatchingProductForIdResult Id="9781933988665" IdType="ISBN" status="Success">
        <Products xmlns="http://mws.amazonservices.com/schema/Products/2011-10-01" xmlns:ns2="http://mws.amazonservices.com/schema/Products/2011-10-01/default.xsd">
            <Product>
                <Identifiers>
                    <MarketplaceASIN>
                        <MarketplaceId>ATVPDKIKX0DER</MarketplaceId>
                        <ASIN>1933988665</ASIN>
                    </MarketplaceASIN>
                </Identifiers>
                <AttributeSets>
                    <ns2:ItemAttributes xml:lang="en-US">
                        <ns2:Author>Marmanis, Haralambos</ns2:Author>
                        <ns2:Author>Babenko, Dmitry</ns2:Author>
                        <ns2:Binding>Paperback</ns2:Binding>
                        <ns2:Brand>Marmanis, Haralambos/ Babenko, Dmitry</ns2:Brand>
                        <ns2:Edition>1</ns2:Edition>
                        <ns2:ItemDimensions>
                            <ns2:Height Units="inches">9.25</ns2:Height>
                            <ns2:Length Units="inches">7.38</ns2:Length>
                            <ns2:Width Units="inches">0.73</ns2:Width>
                            <ns2:Weight Units="pounds">1.38</ns2:Weight>
                        </ns2:ItemDimensions>
                        <ns2:Label>Manning Publications</ns2:Label>
                        <ns2:Languages>
                            <ns2:Language>
                                <ns2:Name>english</ns2:Name>
                                <ns2:Type>Published</ns2:Type>
                            </ns2:Language>
                            <ns2:Language>
                                <ns2:Name>english</ns2:Name>
                                <ns2:Type>Original Language</ns2:Type>
                            </ns2:Language>
                            <ns2:Language>
                                <ns2:Name>english</ns2:Name>
                                <ns2:Type>Unknown</ns2:Type>
                            </ns2:Language>
                        </ns2:Languages>
                        <ns2:ListPrice>
                            <ns2:Amount>44.99</ns2:Amount>
                            <ns2:CurrencyCode>USD</ns2:CurrencyCode>
                        </ns2:ListPrice>
                        <ns2:Manufacturer>Manning Publications</ns2:Manufacturer>
                        <ns2:NumberOfItems>1</ns2:NumberOfItems>
                        <ns2:NumberOfPages>368</ns2:NumberOfPages>
                        <ns2:PackageDimensions>
                            <ns2:Height Units="inches">0.80</ns2:Height>
                            <ns2:Length Units="inches">9.10</ns2:Length>
                            <ns2:Width Units="inches">7.30</ns2:Width>
                            <ns2:Weight Units="pounds">1.35</ns2:Weight>
                        </ns2:PackageDimensions>
                        <ns2:PackageQuantity>1</ns2:PackageQuantity>
                        <ns2:PartNumber>9781933988665</ns2:PartNumber>
                        <ns2:ProductGroup>Book</ns2:ProductGroup>
                        <ns2:ProductTypeName>ABIS_BOOK</ns2:ProductTypeName>
                        <ns2:PublicationDate>2009-07-08</ns2:PublicationDate>
                        <ns2:Publisher>Manning Publications</ns2:Publisher>
                        <ns2:SmallImage>
                            <ns2:URL>http://ecx.images-amazon.com/images/I/51EEz05N2HL._SL75_.jpg</ns2:URL>
                            <ns2:Height Units="pixels">75</ns2:Height>
                            <ns2:Width Units="pixels">60</ns2:Width>
                        </ns2:SmallImage>
                        <ns2:Studio>Manning Publications</ns2:Studio>
                        <ns2:Title>Algorithms of the Intelligent Web</ns2:Title>
                    </ns2:ItemAttributes>
                </AttributeSets>
                <Relationships/>
                <SalesRankings>
                    <SalesRank>
                        <ProductCategoryId>book_display_on_website</ProductCategoryId>
                        <Rank>689405</Rank>
                    </SalesRank>
                    <SalesRank>
                        <ProductCategoryId>491298</ProductCategoryId>
                        <Rank>150</Rank>
                    </SalesRank>
                    <SalesRank>
                        <ProductCategoryId>3870</ProductCategoryId>
                        <Rank>375</Rank>
                    </SalesRank>
                    <SalesRank>
                        <ProductCategoryId>3887</ProductCategoryId>
                        <Rank>836</Rank>
                    </SalesRank>
                </SalesRankings>
            </Product>
        </Products>
    </GetMatchingProductForIdResult>
    <ResponseMetadata>
        <RequestId>a34b6cca-d7dc-4939-b226-b13ea3ac1d88</RequestId>
    </ResponseMetadata>
</GetMatchingProductForIdResponse>
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
