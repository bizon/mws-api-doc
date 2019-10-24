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

<div id="Products_GetMyPriceForASIN" class="nested0">

# GetMyPriceForASIN

<div class="body">

<span class="ph">Returns pricing information for your own active offer
listings, based on <span class="keyword parmname">ASIN</span>.</span>

</div>

<div id="Description" class="topic concept nested1">

## Description

<div class="body conbody">

The <span class="keyword apiname">GetMyPriceForASIN</span> operation is
the same as the
[GetMyPriceForSKU](Products_GetMyPriceForSKU.md "Returns pricing information for your own active offer listings, based on SellerSKU.")
operation except that it uses a
<span class="keyword parmname">MarketplaceId</span> and an
<span class="keyword parmname">ASIN</span> to uniquely identify a
product, and it does not return the
<span class="keyword parmname">SKUIdentifier</span> element.

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
[GetMyPriceForSKU](Products_GetMyPriceForSKU.md "Returns pricing information for your own active offer listings, based on SellerSKU.").
<span class="ph">Operations in the <span class="ph">Products API
section</span> that send lists of items as input parameters have restore
rates that are measured by item. For information on per-item throttling,
see [Throttling in the Products
API](Products_Throttling.md "Describes the throttling policy for the Products API section.").
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
<td><span class="ph">For a list of <span class="keyword parmname">MarketplaceId</span> values, see <a href="../dev_guide/DG_Endpoints.md" class="xref">Amazon MWS endpoints and MarketplaceId values</a> in the <span class="ph">Amazon MWS Developer Guide</span>.</span></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">ASINList</span></td>
<td>A structured list of <span class="keyword parmname">ASIN</span> values. Used to identify products in the given marketplace.
<p>Type: List of xs:string</p></td>
<td>Yes</td>
<td>Maximum: 20 <span class="keyword parmname">ASIN</span> values.</td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">ItemCondition</span></td>
<td>Filters the offer listings to be considered based on item condition.
<p><span class="ph">Type: xs:string</span></p></td>
<td>No</td>
<td><span class="keyword parmname">ItemCondition</span> values:
<ul>
<li>New</li>
<li>Used</li>
<li>Collectible</li>
<li>Refurbished</li>
<li>Club</li>
</ul>
<p>Default: All</p></td>
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
<span class="keyword apiname">GetMyPriceForASIN</span> operation returns
are described by the following publicly available XSD:
[ProductsAPI\_Response.xsd](http://g-ecx.images-amazon.com/images/G/01/mwsportal/doc/en_US/products/ProductsAPI_Response.xsd).
The following table provides additional information about some of the
key elements that are returned by the
<span class="keyword apiname">GetMyPriceForASIN</span> operation.

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
<td><span class="keyword parmname">Identifiers</span></td>
<td>Contains the following identifiers that uniquely identify a product:
<ul>
<li><span class="keyword parmname">MarketplaceASIN</span>. <span class="keyword parmname">MarketplaceId</span> and <span class="keyword parmname">ASIN</span> combination.</li>
<li><span class="keyword parmname">SKUIdentifier</span>. <span class="keyword parmname">MarketplaceId</span>, <span class="keyword parmname">SellerSKU</span>, and <span class="keyword parmname">SellerId</span> combination. Only returned if <span class="keyword parmname">SellerSKU</span> was specified in the request.</li>
</ul></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">BuyingPrice</span></td>
<td>Contains pricing information that includes promotions and contains the shipping cost.
<p>Contains the following elements:</p>
<ul>
<li><span class="keyword parmname">ListingPrice</span>. The current price including any promotions that apply to the product.</li>
<li><span class="keyword parmname">Shipping</span>. The shipping cost of the product.</li>
<li><span class="keyword parmname">LandedPrice</span>. <span class="keyword parmname">ListingPrice</span> + <span class="keyword parmname">Shipping</span> - <span class="keyword parmname">Points</span>. Note that if the landed price is not returned, the listing price represents the product with the lowest landed price.</li>
<li><span class="keyword parmname">Points</span>. The number of <span class="ph">Amazon Points</span> offered with the purchase of an item, and their monetary value. Note that the <span class="keyword parmname">Points</span> element is only returned in Japan (JP).</li>
</ul></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">RegularPrice</span></td>
<td>The current price excluding any promotions that apply to the product. Excludes the shipping cost.</td>
</tr>
<tr class="even">
<td><span class="keyword parmname">FulfillmentChannel</span></td>
<td>The fulfillment channel for the offer listing.
<p>Valid values:</p>
<ul>
<li>Amazon - Fulfilled by Amazon.</li>
<li>Merchant - Fulfilled by the seller.</li>
</ul></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">ItemCondition</span></td>
<td>The item condition for the offer listing. Valid values: <span class="ph">New, Used, Collectible, Refurbished, or Club</span>.</td>
</tr>
<tr class="even">
<td><span class="keyword parmname">ItemSubCondition</span></td>
<td>The item subcondition for the offer listing. Valid values: <span class="ph">New, Mint, Very Good, Good, Acceptable, Poor, Club, OEM, Warranty, Refurbished Warranty, Refurbished, Open Box, or Other</span>.</td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">SellerId</span></td>
<td>The <span class="keyword parmname">SellerId</span> submitted with the operation.</td>
</tr>
<tr class="even">
<td><span class="keyword parmname">SellerSKU</span></td>
<td>The <span class="keyword parmname">SellerSKU</span> for the offer listing.</td>
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

ASINList.ASIN.1=1933890517
&AWSAccessKeyId=AKIAEXAMPLEFWR4TJ7ZQ
&Action=GetMyPriceForASIN
&MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
&MarketplaceId=ATVPDKIKX0DER
&SellerId=A1IMEXAMPLEWRC
&SignatureMethod=HmacSHA256
&SignatureVersion=2
&Timestamp=2012-12-04T22%3A40%3A47Z
&Version=2011-10-01
&Signature=x%2FEXAMPLEFSPqX7tAN83%2FROsuHWc04SEaepLkEXAMPLEo%3D
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
<GetMyPriceForASINResponse
    xmlns="http://mws.amazonservices.com/schema/Products/2011-10-01">
    <GetMyPriceForASINResult ASIN="1933890517" status="Success">
        <Product xmlns="http://mws.amazonservices.com/schema/Products/2011-10-01"
            xmlns:ns2="http://mws.amazonservices.com/schema/Products/2011-10-01/default.xsd">
            <Identifiers>
                <MarketplaceASIN>
                    <MarketplaceId>ATVPDKIKX0DER</MarketplaceId>
                    <ASIN>1933890517</ASIN>
                </MarketplaceASIN>
            </Identifiers>
            <Offers>
                <Offer>
                    <BuyingPrice>
                        <LandedPrice>
                            <CurrencyCode>USD</CurrencyCode>
                            <Amount>303.99</Amount>
                        </LandedPrice>
                        <ListingPrice>
                            <CurrencyCode>USD</CurrencyCode>
                            <Amount>300.00</Amount>
                        </ListingPrice>
                        <Shipping>
                            <CurrencyCode>USD</CurrencyCode>
                            <Amount>3.99</Amount>
                        </Shipping>
                    </BuyingPrice>
                    <RegularPrice>
                        <CurrencyCode>USD</CurrencyCode>
                        <Amount>300.00</Amount>
                    </RegularPrice>
                    <FulfillmentChannel>MERCHANT</FulfillmentChannel>
                    <ItemCondition>Used</ItemCondition>
                    <ItemSubCondition>Acceptable</ItemSubCondition>
                    <SellerId>A1IMEXAMPLEWRC</SellerId>
                    <SellerSKU>SKU2468</SellerSKU>
                </Offer>
            </Offers>
        </Product>
    </GetMyPriceForASINResult>
    <ResponseMetadata>
        <RequestId>a3381684-87bd-416e-9b95-EXAMPLE9c236</RequestId>
    </ResponseMetadata>
</GetMyPriceForASINResponse>
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

[GetMyPriceForSKU](Products_GetMyPriceForSKU.md "Returns pricing information for your own active offer listings, based on SellerSKU.")

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
