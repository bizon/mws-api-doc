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

<div id="Products_GetCompetitivePricingForASIN" class="nested0">

# GetCompetitivePricingForASIN

<div class="body">

<span class="ph">Returns the current competitive price of a product,
based on <span class="keyword parmname">ASIN</span>.</span>

</div>

<div id="Description" class="topic concept nested1">

## Description

<div class="body conbody">

The <span class="keyword apiname">GetCompetitivePricingForASIN</span>
operation is the same as the
[GetCompetitivePricingForSKU](Products_GetCompetitivePricingForSKU.html "Returns the current competitive price of a product, based on SellerSKU.")
operation, except that it uses a
<span class="keyword parmname">MarketplaceId</span> and an
<span class="keyword parmname">ASIN</span> to uniquely identify a
product, and it does not return the
<span class="keyword parmname">SKUIdentifier</span> element. If you do
not have the ASIN for a product, you will first have to submit the
[ListMatchingProducts](Products_ListMatchingProducts.html "Returns a list of products and their attributes, based on a search query.")
operation for disambiguation.

<div class="section">

### Availability

This operation is available in all
marketplaces.

</div>

<div class="section">

### Throttling

<div class="p">

<div class="tablenoborder">

| Maximum request quota | Restore rate          | Hourly request quota    |
| --------------------- | --------------------- | ----------------------- |
| 20 requests           | 10 items every second | 36000 requests per hour |

</div>

This quota and restore rate is shared with
[GetCompetitivePricingForSKU](Products_GetCompetitivePricingForSKU.html "Returns the current competitive price of a product, based on SellerSKU.").
<span class="ph">Operations in the <span class="ph">Products API
section</span> that send lists of items as input parameters have restore
rates that are measured by item. For information on per-item throttling,
see [Throttling in the Products
API](Products_Throttling.html "Describes the throttling policy for the Products API section.").
For definitions of throttling terminology and for a complete explanation
of throttling, see [Throttling: Limits to how often you can submit
requests](../dev_guide/DG_Throttling.md) in the
<span class="ph">Amazon MWS Developer Guide</span>. </span>

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
[Required request
parameters](../dev_guide/DG_RequiredRequestParameters.md) in the
<span class="ph">Amazon MWS Developer Guide</span>.</span>

</div>

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
<td><span class="keyword parmname">MarketplaceId</span></td>
<td>A marketplace identifier. Specifies the marketplace from which prices are returned.
<p><span class="ph">Type: xs:string</span></p></td>
<td>Yes</td>
<td><span class="ph">For a list of <span class="keyword parmname">MarketplaceId</span> values, see <a href="../dev_guide/DG_Endpoints.html" class="xref">Amazon MWS endpoints and MarketplaceId values</a> in the <span class="ph">Amazon MWS Developer Guide</span>.</span></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">ASINList</span></td>
<td>A structured list of <span class="keyword parmname">ASIN</span> values. Used to identify products in the given marketplace.
<p>Type: List of xs:string</p></td>
<td>Yes</td>
<td>Maximum: 20 <span class="keyword parmname">ASIN</span> values</td>
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

The response elements that the
<span class="keyword apiname">GetCompetitivePricingForASIN</span>
operation returns are described by the following publicly available XSD:
[ProductsAPI\_Response.xsd](http://g-ecx.images-amazon.com/images/G/01/mwsportal/doc/en_US/products/ProductsAPI_Response.xsd).
The following table provides additional information about some of the
key elements that are returned by the
<span class="keyword apiname">GetCompetitivePricingForASIN</span>
operation.

</div>

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
<td><span class="keyword parmname">Product</span></td>
<td>Contains three of the sub-elements of the <span class="keyword parmname">Product</span> element from ProductsAPI_Response.xsd. These sub-elements are: <span class="keyword parmname">Identifiers</span>, <span class="keyword parmname">CompetitivePricing</span>, and <span class="keyword parmname">SalesRankings.</span></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Identifiers</span></td>
<td>Contains the following identifiers that uniquely identify a product:
<ul>
<li><span class="keyword parmname">MarketplaceASIN</span>. <span class="keyword parmname">MarketplaceId</span> and <span class="keyword parmname">ASIN</span> combination.</li>
<li><span class="keyword parmname">SKUIdentifier</span>. <span class="keyword parmname">MarketplaceId</span>, <span class="keyword parmname">SellerSKU</span>, and <span class="keyword parmname">SellerId</span> combination. Only returned if <span class="keyword parmname">SellerSKU</span> was specified in the request.</li>
</ul></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">CompetitivePricing</span></td>
<td>Contains pricing information for the product that is returned.
<p>Some key sub-elements are:</p>
<ul>
<li><span class="keyword parmname">CompetitivePrice</span>. Contains pricing information. The <span class="keyword parmname">CompetitivePrice</span> element contains the following attributes:
<ul>
<li><span class="keyword parmname">condition</span>. Indicates the condition of the item whose pricing information is returned. Possible values are: <span class="ph">New, Used, Collectible, Refurbished, or Club</span>.</li>
<li><span class="keyword parmname">subcondition</span>. Indicates the subcondition of the item whose pricing information is returned. Possible values are: <span class="ph">New, Mint, Very Good, Good, Acceptable, Poor, Club, OEM, Warranty, Refurbished Warranty, Refurbished, Open Box, or Other</span>.</li>
<li><span class="keyword parmname">belongsToRequester</span>. Indicates whether or not the pricing information is for an offer listing that belongs to the requester. The requester is the seller associated with the <span class="keyword parmname">SellerId</span> that was submitted with the request. Possible values are: true and false.</li>
</ul></li>
<li><span class="keyword parmname">CompetitivePriceId</span>. The pricing model for each price that is returned. Valid values: 1, 2. Value definitions: 1 = New Buy Box Price, 2 = Used Buy Box Price.</li>
<li><span class="keyword parmname">Price</span>. Pricing information for a given <span class="keyword parmname">CompetitivePriceId</span> value. Contains the following elements:
<ul>
<li><span class="keyword parmname">ListingPrice</span>. The listing price of the item.</li>
<li><span class="keyword parmname">Shipping</span>. The shipping cost of the product. Note that the shipping cost is not always available.</li>
<li><span class="keyword parmname">LandedPrice</span>. <span class="keyword parmname">ListingPrice</span> + <span class="keyword parmname">Shipping</span> - <span class="keyword parmname">Points</span>. Note that if the landed price is not returned, the listing price represents the product with the lowest landed price.</li>
<li><span class="keyword parmname">Points</span>. The number of <span class="ph">Amazon Points</span> offered with the purchase of an item, and their monetary value. Note that the <span class="keyword parmname">Points</span> element is only returned in Japan (JP).</li>
</ul></li>
<li><span class="keyword parmname">NumberOfOfferListings</span>. The number of active offer listings for the product that was submitted. The listing count is returned by condition, in <span class="keyword parmname">OfferListingCount</span> sub-elements, one for each listing condition value that is returned. Possible listing condition values are: Any, <span class="ph">New, Used, Collectible, Refurbished, or Club</span>.</li>
<li><span class="keyword parmname">TradeInValue</span>. The trade-in value of the product in Amazon’s Trade-In program. For more information about Amazon’s Trade-In program, see the “Amazon Trade-In program” section of the Help pages for the Amazon website in your marketplace.</li>
</ul></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">SalesRankings</span></td>
<td>Sales rank information for the product by product category.
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
see [Required request
parameters](../dev_guide/DG_RequiredRequestParameters.md).</span>

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre codeblock
POST /Products/2011-10-01 HTTP/1.1
Content-Type: x-www-form-urlencoded
Host: mws.amazonservices.com
User-Agent: <Your User Agent Header>

ASINList.ASIN.1=B002KT3XQM
&AWSAccessKeyId=AKIAEXAMPLEFWR4TJ7ZQ
&Action=GetCompetitivePricingForASIN
&MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
&MarketplaceId=ATVPDKIKX0DER
&SellerId=A1IMEXAMPLEWRC
&SignatureMethod=HmacSHA256
&SignatureVersion=2
&Timestamp=2012-12-04T21%3A23%3A31Z
&Version=2011-10-01
&Signature=V1uTEXAMPLE8HVCfobAqQDKzylYyTRWfv3X4SEXAMPLEY%3D
```

[↑ Top](#Examples)

</div>

</div>

<div class="section">

### Example response

<span class="ph">For information about standard response formatting, see
[Response format](../dev_guide/DG_ResponseFormat.md).</span>

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre codeblock
<?xml version="1.0"?>
<GetCompetitivePricingForASINResponse
    xmlns="http://mws.amazonservices.com/schema/Products/2011-10-01">
    <GetCompetitivePricingForASINResult ASIN="B002KT3XQM" status="Success">
        <Product xmlns="http://mws.amazonservices.com/schema/Products/2011-10-01"
            xmlns:ns2="http://mws.amazonservices.com/schema/Products/2011-10-01/default.xsd">
            <Identifiers>
                <MarketplaceASIN>
                    <MarketplaceId>ATVPDKIKX0DER</MarketplaceId>
                    <ASIN>B002KT3XQM</ASIN>
                </MarketplaceASIN>
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
                                <Amount>34.27</Amount>
                            </LandedPrice>
                            <ListingPrice>
                                <CurrencyCode>USD</CurrencyCode>
                                <Amount>34.27</Amount>
                            </ListingPrice>
                            <Shipping>
                                <CurrencyCode>USD</CurrencyCode>
                                <Amount>0.00</Amount>
                            </Shipping>
                        </Price>
                    </CompetitivePrice>
                </CompetitivePrices>
                <NumberOfOfferListings>
                    <OfferListingCount condition="Any">11</OfferListingCount>
                    <OfferListingCount condition="Used">1</OfferListingCount>
                    <OfferListingCount condition="New">10</OfferListingCount>
                </NumberOfOfferListings>
            </CompetitivePricing>
            <SalesRankings/>
        </Product>
    </GetCompetitivePricingForASINResult>
    <ResponseMetadata>
        <RequestId>a8ec20c3-fc88-46e3-a128-EXAMPLE3fcdf</RequestId>
    </ResponseMetadata>
</GetCompetitivePricingForASINResponse>
```

[↑ Top](#Examples)

</div>

</div>

</div>

</div>

<div id="RelatedTopics" class="topic nested1">

## Related topics

<div class="body">

[Products
API](../products/Products_Overview.md)

[GetCompetitivePricingForSKU](Products_GetCompetitivePricingForSKU.html "Returns the current competitive price of a product, based on SellerSKU.")

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
