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

<div id="Products_GetCompetitivePricingForSKU" class="nested0">

# GetCompetitivePricingForSKU

<div class="body">

<span class="ph">Returns the current competitive price of a product,
based on <span class="keyword parmname">SellerSKU</span>.</span>

</div>

<div id="Description" class="topic concept nested1">

## Description

<div class="body conbody">

The <span class="keyword apiname">GetCompetitivePricingForSKU</span>
operation returns the current competitive pricing of a product, based on
the <span class="keyword parmname">SellerSKU</span> and <span
class="keyword parmname">MarketplaceId</span> that you specify. Note
that <span class="keyword parmname">SellerSKU</span> is qualified by
your <span class="keyword parmname">SellerId</span>, which is included
with every <span class="ph">Amazon Marketplace Web Service (Amazon
MWS)</span> operation that you submit. This operation returns pricing
for active offer listings based on two pricing models: New Buy Box Price
and Used Buy Box Price. These pricing models are equivalent to the main
Buy Box Price and the subordinate Buy Box Price, respectively, on a
detail page from an Amazon marketplace website. Note that products with
active offer listings might not return either of these prices. This
could happen, for example, if none of the sellers with offer listings
for a product are qualified for the New Buy Box or the Used Buy Box.
Also note that your own price for the <span
class="keyword parmname">SellerSKU</span> that you specify is not
excluded from the response, so your price will be returned if it is the
lowest listed price. The number of offer listings, the trade-in value,
and the sales rankings for the <span
class="keyword parmname">SellerSKU</span> that you specify are also
returned.

<div class="note note">

<span class="notetitle">Note:</span> If you specify a <span
class="keyword parmname">SellerSKU</span> that identifies a variation
parent ASIN, this operation returns an error. A variation parent ASIN
represents a generic product that cannot be sold. Variation child ASINs
represent products that have specific characteristics (such as size and
color) and can be sold.

</div>

<div class="section">

### Availability

This operation is available in all marketplaces.

</div>

<div class="section">

### Throttling

<div class="p">

<div class="tablenoborder">

| Maximum request quota | Restore rate          | Hourly request quota    |
|-----------------------|-----------------------|-------------------------|
| 20 requests           | 10 items every second | 36000 requests per hour |

</div>

This quota and restore rate is shared with
<a href="Products_GetCompetitivePricingForASIN.md" class="xref" title="Returns the current competitive price of a product, based on ASIN.">GetCompetitivePricingForASIN</a>.
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
<th id="d234957e229" class="entry" data-valign="top" width="28.57142857142857%">Name</th>
<th id="d234957e232" class="entry" data-valign="top" width="28.57142857142857%">Description</th>
<th id="d234957e235" class="entry" data-valign="top" width="14.285714285714285%">Required</th>
<th id="d234957e238" class="entry" data-valign="top" width="28.57142857142857%">Valid values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d234957e229 "><span class="keyword parmname">MarketplaceId</span></td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d234957e232 ">A marketplace identifier. Specifies the marketplace from which prices are returned.
<p><span class="ph">Type: xs:string</span></p></td>
<td class="entry" data-valign="top" width="14.285714285714285%" headers="d234957e235 ">Yes</td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d234957e238 "><span class="ph">For a list of <span class="keyword parmname">MarketplaceId</span> values, see <a href="../dev_guide/DG_Endpoints.md" class="xref">Amazon MWS endpoints and MarketplaceId values</a> in the <span class="ph">Amazon MWS Developer Guide</span>.</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d234957e229 "><span class="keyword parmname">SellerSKUList</span></td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d234957e232 ">A structured list of <span class="keyword parmname">SellerSKU</span> values. Used to identify products in the given marketplace. <span class="keyword parmname">SellerSKU</span> is qualified by your <span class="keyword parmname">SellerId</span>, which is included with every <span class="ph">Amazon Marketplace Web Service (Amazon MWS)</span> operation that you submit.
<p>Type: List of xs:string</p></td>
<td class="entry" data-valign="top" width="14.285714285714285%" headers="d234957e235 ">Yes</td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d234957e238 ">Maximum: 20 <span class="keyword parmname">SellerSKU</span> values</td>
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
class="keyword apiname">GetCompetitivePricingForSKU</span> operation
returns are described by the following publicly available XSD:
<a href="http://g-ecx.images-amazon.com/images/G/01/mwsportal/doc/en_US/products/ProductsAPI_Response.xsd" class="xref">ProductsAPI_Response.xsd</a>.
The following table provides additional information about some of the
key elements that are returned by the <span
class="keyword apiname">GetCompetitivePricingForSKU</span> operation.

</div>

<div class="tablenoborder">

<table id="ResponseElements__table_xxg_c2w_km" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d234957e352" class="entry" data-valign="top" width="NaN%">Name</th>
<th id="d234957e355" class="entry" data-valign="top" width="NaN%">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="NaN%" headers="d234957e352 "><span class="keyword parmname">Product</span></td>
<td class="entry" data-valign="top" width="NaN%" headers="d234957e355 ">Contains three of the sub-elements of the <span class="keyword parmname">Product</span> element from ProductsAPI_Response.xsd. These sub-elements are: <span class="keyword parmname">Identifiers</span>, <span class="keyword parmname">CompetitivePricing</span>, and <span class="keyword parmname">SalesRankings.</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="NaN%" headers="d234957e352 "><span class="keyword parmname">Identifiers</span></td>
<td class="entry" data-valign="top" width="NaN%" headers="d234957e355 ">Contains the following identifiers that uniquely identify a product:
<ul>
<li><span class="keyword parmname">MarketplaceASIN</span>. <span class="keyword parmname">MarketplaceId</span> and <span class="keyword parmname">ASIN</span> combination.</li>
<li><span class="keyword parmname">SKUIdentifier</span>. <span class="keyword parmname">MarketplaceId</span>, <span class="keyword parmname">SellerSKU</span>, and <span class="keyword parmname">SellerId</span> combination. Only returned if <span class="keyword parmname">SellerSKU</span> was specified in the request.</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="NaN%" headers="d234957e352 "><span class="keyword parmname">CompetitivePricing</span></td>
<td class="entry" data-valign="top" width="NaN%" headers="d234957e355 ">Contains pricing information for the product that is returned.
<p>Some key sub-elements are:</p>
<ul>
<li><span class="keyword parmname">CompetitivePrice</span>. Contains pricing information. The <span class="keyword parmname">CompetitivePrice</span> element contains the following attributes:
<ul>
<li><span class="keyword parmname">condition</span>. Indicates the condition of the item whose pricing information is returned. Possible values are: <span class="ph"><var class="keyword varname">New</var>, <var class="keyword varname">Used</var>, <var class="keyword varname">Collectible</var>, <var class="keyword varname">Refurbished</var>, or <var class="keyword varname">Club</var></span>.</li>
<li><span class="keyword parmname">subcondition</span>. Indicates the subcondition of the item whose pricing information is returned. Possible values are: <span class="ph"><var class="keyword varname">New</var>, <var class="keyword varname">Mint</var>, <var class="keyword varname">Very Good</var>, <var class="keyword varname">Good</var>, <var class="keyword varname">Acceptable</var>, <var class="keyword varname">Poor</var>, <var class="keyword varname">Club</var>, <var class="keyword varname">OEM</var>, <var class="keyword varname">Warranty</var>, <var class="keyword varname">Refurbished                     Warranty</var>, <var class="keyword varname">Refurbished</var>, <var class="keyword varname">Open Box</var>, or <var class="keyword varname">Other</var></span>.</li>
<li><span class="keyword parmname">belongsToRequester</span>. Indicates whether or not the pricing information is for an offer listing that belongs to the requester. The requester is the seller associated with the <span class="keyword parmname">SellerId</span> that was submitted with the request. Possible values are: <var class="keyword varname">true</var> and <var class="keyword varname">false</var>.</li>
</ul></li>
<li><span class="keyword parmname">CompetitivePriceId</span>. The pricing model for each price that is returned. Valid values: <var class="keyword varname">1</var>, <var class="keyword varname">2</var>. Value definitions: 1 = New Buy Box Price, 2 = Used Buy Box Price.</li>
<li><span class="keyword parmname">Price</span>. Pricing information for a given <span class="keyword parmname">CompetitivePriceId</span> value. Contains the following elements:
<ul>
<li><span class="keyword parmname">ListingPrice</span>. The listing price of the item.</li>
<li><span class="keyword parmname">Shipping</span>. The shipping cost of the product. Note that the shipping cost is not always available.</li>
<li><span class="keyword parmname">LandedPrice</span>. <span class="keyword parmname">ListingPrice</span> + <span class="keyword parmname">Shipping</span> - <span class="keyword parmname">Points</span>. Note that if the landed price is not returned, the listing price represents the product with the lowest landed price.</li>
<li><span class="keyword parmname">Points</span>. The number of <span class="ph">Amazon Points</span> offered with the purchase of an item, and their monetary value. Note that the <span class="keyword parmname">Points</span> element is only returned in Japan (JP).</li>
</ul></li>
<li><span class="keyword parmname">NumberOfOfferListings</span>. The number of active offer listings for the product that was submitted. The listing count is returned by condition, in <span class="keyword parmname">OfferListingCount</span> sub-elements, one for each listing condition value that is returned. Possible listing condition values are: <var class="keyword varname">Any</var>, <span class="ph"><var class="keyword varname">New</var>, <var class="keyword varname">Used</var>, <var class="keyword varname">Collectible</var>, <var class="keyword varname">Refurbished</var>, or <var class="keyword varname">Club</var></span>.</li>
<li><span class="keyword parmname">TradeInValue</span>. The trade-in value of the product in Amazon’s Trade-In program. For more information about Amazon’s Trade-In program, see the “Amazon Trade-In program” section of the Help pages for the Amazon website in your marketplace.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="NaN%" headers="d234957e352 "><span class="keyword parmname">SalesRankings</span></td>
<td class="entry" data-valign="top" width="NaN%" headers="d234957e355 ">Sales rank information for the product by product category.
<p>Key sub-elements are:</p>
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
&Action=GetCompetitivePricingForSKU
&MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
&MarketplaceId=ATVPDKIKX0DER
&SellerId=A1IMEXAMPLEWRC
&SellerSKUList.SellerSKU.1=SKU2468
&SignatureMethod=HmacSHA256
&SignatureVersion=2
&Timestamp=2012-12-04T21%3A14%3A27Z
&Version=2011-10-01
&Signature=wJI6EXAMPLE2Bfa46Ej%2BD1NwsIG%2Bjdyp828HHEXAMPLEY%3D
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
<GetCompetitivePricingForSKUResponse
    xmlns="http://mws.amazonservices.com/schema/Products/2011-10-01">
    <GetCompetitivePricingForSKUResult SellerSKU="SKU2468" status="Success">
        <Product xmlns="http://mws.amazonservices.com/schema/Products/2011-10-01"
            xmlns:ns2="http://mws.amazonservices.com/schema/Products/2011-10-01/default.xsd">
            <Identifiers>
                <MarketplaceASIN>
                    <MarketplaceId>ATVPDKIKX0DER</MarketplaceId>
                    <ASIN>1933890517</ASIN>
                </MarketplaceASIN>
                <SKUIdentifier>
                    <MarketplaceId>ATVPDKIKX0DER</MarketplaceId>
                    <SellerId>A1IMEXAMPLEWRC</SellerId>
                    <SellerSKU>SKU2468</SellerSKU>
                </SKUIdentifier>
            </Identifiers>
            <CompetitivePricing>
                <CompetitivePrices>
                    <CompetitivePrice belongsToRequester="false"
                        condition="New"
                        subcondition="New">
                        <CompetitivePriceId>1</CompetitivePriceId>
                        <Price>
                            <LandedPrice>
                                <CurrencyCode>USD</CurrencyCode>
                                <Amount>40.03</Amount>
                            </LandedPrice>
                            <ListingPrice>
                                <CurrencyCode>USD</CurrencyCode>
                                <Amount>40.03</Amount>
                            </ListingPrice>
                            <Shipping>
                                <CurrencyCode>USD</CurrencyCode>
                                <Amount>0.00</Amount>
                            </Shipping>
                        </Price>
                    </CompetitivePrice>
                    <CompetitivePrice belongsToRequester="false"
                        condition="Used"
                        subcondition="Good">
                        <CompetitivePriceId>2</CompetitivePriceId>
                        <Price>
                            <LandedPrice>
                                <CurrencyCode>USD</CurrencyCode>
                                <Amount>30.50</Amount>
                            </LandedPrice>
                            <ListingPrice>
                                <CurrencyCode>USD</CurrencyCode>
                                <Amount>30.50</Amount>
                            </ListingPrice>
                            <Shipping>
                                <CurrencyCode>USD</CurrencyCode>
                                <Amount>0.00</Amount>
                            </Shipping>
                        </Price>
                    </CompetitivePrice>
                </CompetitivePrices>
                <NumberOfOfferListings>
                    <OfferListingCount condition="Any">296</OfferListingCount>
                    <OfferListingCount condition="Used">145</OfferListingCount>
                    <OfferListingCount condition="New">151</OfferListingCount>
                </NumberOfOfferListings>
                <TradeInValue>
                    <CurrencyCode>USD</CurrencyCode>
                    <Amount>17.05</Amount>
                </TradeInValue>
            </CompetitivePricing>
            <SalesRankings>
                <SalesRank>
                    <ProductCategoryId>book_display_on_website</ProductCategoryId>
                    <Rank>900</Rank>
                </SalesRank>
                <SalesRank>
                    <ProductCategoryId>271578011</ProductCategoryId>
                    <Rank>1</Rank>
                </SalesRank>
                <SalesRank>
                    <ProductCategoryId>355562011</ProductCategoryId>
                    <Rank>8</Rank>
                </SalesRank>
                <SalesRank>
                    <ProductCategoryId>173516</ProductCategoryId>
                    <Rank>25</Rank>
                </SalesRank>
            </SalesRankings>
        </Product>
    </GetCompetitivePricingForSKUResult>
    <ResponseMetadata>
        <RequestId>003fc73e-bf70-4e55-8db8-EXAMPLEce417</RequestId>
    </ResponseMetadata>
</GetCompetitivePricingForSKUResponse>
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

<a href="Products_GetCompetitivePricingForASIN.md" class="xref" title="Returns the current competitive price of a product, based on ASIN.">GetCompetitivePricingForASIN</a>

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
