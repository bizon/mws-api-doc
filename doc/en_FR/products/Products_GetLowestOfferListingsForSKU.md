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

<div id="Products_GetLowestOfferListingsForSKU" class="nested0">

# GetLowestOfferListingsForSKU

<div class="body">

<span class="ph">Returns pricing information for the lowest-price active
offer listings for up to 20 products, based on <span
class="keyword parmname">SellerSKU</span>.</span>

</div>

<div id="Description" class="topic concept nested1">

## Description

<div class="body conbody">

The <span class="keyword apiname">GetLowestOfferListingsForSKU</span>
operation returns the lowest price offer listings for a specific product
by item condition. The listings for the specified product and <span
class="keyword parmname">ItemCondition</span> are placed in offer
listing groups, each group representing a different combination of the
following six qualifiers:

-   <span class="keyword parmname">ItemCondition</span> (<span
    class="ph">`New`, `Used`, `Collectible`, `Refurbished`, or
    `Club`</span>)
-   <span class="keyword parmname">ItemSubcondition</span> (<span
    class="ph">`New`, `Mint`, `Very Good`, `Good`, `Acceptable`, `Poor`,
    `Club`, `OEM`, `Warranty`,
    `Refurbished                     Warranty`, `Refurbished`,
    `Open Box`, or `Other`</span>)
-   <span class="keyword parmname">FulfillmentChannel</span> (`Amazon`
    or `Merchant`)
-   <span class="keyword parmname">ShipsDomestically</span> (`True`,
    `False`, or `Unknown`) – Indicates whether the marketplace specified
    in the request and the location that the item ships from are in the
    same country.
-   <span class="keyword parmname">ShippingTime</span> (`0-2 days`,
    `3-7                             days`, `8-13 days`, or
    `14 or more                             days`) – Indicates the
    maximum time within which the item will likely be shipped once an
    order has been placed
-   <span class="keyword parmname">SellerPositiveFeedbackRating</span>
    (`98-100%`, `95-97%`, `90-94%`, `80-89%`, `70-79%`, `Less than 70%`,
    or `Just launched` ) – Indicates the percentage of feedback ratings
    that were positive over the past 12 months.

Some (but not necessarily all) of the active offer listings for the
specified product and <span
class="keyword parmname">ItemCondition</span>, initially sorted by the
lowest landed price, are placed into their corresponding offer listing
groups, and the listing with the lowest landed price from each group is
returned. If multiple sellers have listings that share the lowest landed
price for a group, the listing from the seller with the highest feedback
count is returned. Groups without any listings are not returned.

This operation returns the <span
class="keyword parmname">AllOfferListingsConsidered</span> response
element, which indicates whether or not all of the active offer listings
for the specified product and <span
class="keyword parmname">ItemCondition</span> were considered when the
listings were placed into their corresponding offer listing groups. Note
that even if not all the listings were considered, you can still expect
the following:

-   The lowest landed prices that are returned will be the lowest landed
    prices from their respective offer listing groups.
-   The lowest landed prices that are returned will be lower than the
    landed prices for any listings that were not considered.

<div class="note note">

<span class="notetitle">Note:</span> When you submit the <span
class="keyword apiname">GetLowestOfferListingsForSKU</span> operation,
your own offer listings are included in the response unless you use the
<span class="keyword parmname">ExcludeMe</span> request parameter with a
value of `True`.

</div>

<div class="note note">

<span class="notetitle">Note:</span> Instead of calling the <span
class="keyword apiname">GetLowestOfferListingsForSKU</span> operation to
obtain the lowest price offer listings for a specific product by item
condition, consider calling the
<a href="Products_GetLowestPricedOffersForSKU.md" class="xref" title="Returns lowest priced offers for a single product, based on SellerSKU.">GetLowestPricedOffersForSKU</a>
operation.

You can also subscribe to the
<a href="../notifications/Notifications_AnyOfferChangedNotification.md" class="xref">AnyOfferChanged</a>
notification by using the <span
class="keyword parmname">Subscriptions</span> API service. When you
subscribe to this notification, you will be notified whenever there is a
price change or offer listing change for any of the top 20 offers, by
condition (new or used), for an item that you sell.

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
<a href="Products_GetLowestOfferListingsForASIN.md" class="xref" title="Returns pricing information for the lowest-price active offer listings for up to 20 products, based on ASIN.">GetLowestOfferListingsForASIN</a>.
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
<th id="d239280e411" class="entry" data-valign="top" width="28.57142857142857%">Name</th>
<th id="d239280e414" class="entry" data-valign="top" width="28.57142857142857%">Description</th>
<th id="d239280e417" class="entry" data-valign="top" width="14.285714285714285%">Required</th>
<th id="d239280e420" class="entry" data-valign="top" width="28.57142857142857%">Valid values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d239280e411 "><span class="keyword parmname">MarketplaceId</span></td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d239280e414 ">A marketplace identifier. Specifies the marketplace from which prices are returned.
<p><span class="ph">Type: xs:string</span></p></td>
<td class="entry" data-valign="top" width="14.285714285714285%" headers="d239280e417 ">Yes</td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d239280e420 "><span class="ph">For a list of <span class="keyword parmname">MarketplaceId</span> values, see <a href="../dev_guide/DG_Endpoints.md" class="xref">Amazon MWS endpoints and MarketplaceId values</a> in the <span class="ph">Amazon MWS Developer Guide</span>.</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d239280e411 "><span class="keyword parmname">SellerSKUList</span></td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d239280e414 ">A structured list of <span class="keyword parmname">SellerSKU</span> values. Used to identify products in the given marketplace. <span class="keyword parmname">SellerSKU</span> is qualified by your <span class="keyword parmname">SellerId</span>, which is included with every <span class="ph">Amazon Marketplace Web Service (Amazon MWS)</span> operation that you submit.
<p>Type: List of xs:string</p></td>
<td class="entry" data-valign="top" width="14.285714285714285%" headers="d239280e417 ">Yes</td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d239280e420 ">Maximum: 20 <span class="keyword parmname">SellerSKU</span> values.</td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d239280e411 "><span class="keyword parmname">ItemCondition</span></td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d239280e414 ">Filters the offer listings to be considered based on item condition.
<p><span class="ph">Type: xs:string</span></p></td>
<td class="entry" data-valign="top" width="14.285714285714285%" headers="d239280e417 ">No</td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d239280e420 "><span class="keyword parmname">ItemCondition</span> values:
<ul>
<li><var class="keyword varname">Any</var></li>
<li><var class="keyword varname">New</var></li>
<li><var class="keyword varname">Used</var></li>
<li><var class="keyword varname">Collectible</var></li>
<li><var class="keyword varname">Refurbished</var></li>
<li><var class="keyword varname">Club</var></li>
</ul>
<p>Default: <var class="keyword varname">Any</var></p></td>
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

The <span class="keyword apiname">GetLowestOfferListingsForSKU</span>
operation returns the <span class="keyword parmname">Product</span>
response element that is described by the following publically available
XSDs:
<a href="http://g-ecx.images-amazon.com/images/G/01/mwsportal/doc/en_US/products/ProductsAPI_Response.xsd" class="xref">ProductsAPI_Response.xsd</a>
and
<a href="http://g-ecx.images-amazon.com/images/G/01/mwsportal/doc/en_US/products/default.xsd" class="xref">default.xsd</a>.
The <span class="keyword apiname">GetLowestOfferListingsForSKU</span>
operation returns the following two sub-elements of the <span
class="keyword parmname">Products</span> response element: <span
class="keyword parmname">Identifiers</span> and <span
class="keyword parmname">LowestOfferListings</span>.

</div>

<div class="tablenoborder">

<table id="ResponseElements__table_p1d_q2w_km" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d239280e605" class="entry" data-valign="top" width="NaN%">Name</th>
<th id="d239280e608" class="entry" data-valign="top" width="NaN%">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="NaN%" headers="d239280e605 "><span class="keyword parmname">AllOfferListingsConsidered</span></td>
<td class="entry" data-valign="top" width="NaN%" headers="d239280e608 ">Indicates whether or not all of the active offer listings for the specified product and <span class="keyword parmname">ItemCondition</span> were considered when the listings were placed into their corresponding offer listing groups. When there are a large number of active offer listings for the specified product and <span class="keyword parmname">ItemCondition</span>, only a certain number of offer listings are considered. The listings that are considered always have lower landed prices than the landed prices of listings that are not considered.</td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="NaN%" headers="d239280e605 "><span class="keyword parmname">Product</span></td>
<td class="entry" data-valign="top" width="NaN%" headers="d239280e608 ">Contains two of the sub-elements of the <span class="keyword parmname">Product</span> element from ProductsAPI_Response.xsd. These sub-elements are: <span class="keyword parmname">Identifiers</span> and <span class="keyword parmname">LowestOfferListings</span>.</td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="NaN%" headers="d239280e605 "><span class="keyword parmname">Identifiers</span></td>
<td class="entry" data-valign="top" width="NaN%" headers="d239280e608 ">Contains the following identifiers that uniquely identify a product:
<ul>
<li><span class="keyword parmname">MarketplaceASIN</span> – <span class="keyword parmname">MarketplaceId</span> and <span class="keyword parmname">ASIN</span> combination.</li>
<li><span class="keyword parmname">SKUIdentifier</span> – <span class="keyword parmname">MarketplaceId</span>, <span class="keyword parmname">SellerSKU</span>, and <span class="keyword parmname">SellerId</span> combination. Only returned if <span class="keyword parmname">SellerSKU</span> was specified in the request.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="NaN%" headers="d239280e605 "><span class="keyword parmname">LowestOfferListings</span></td>
<td class="entry" data-valign="top" width="NaN%" headers="d239280e608 ">Contains pricing information for the lowest offer listing for each offer listing group.
<p>Some key sub-elements are:</p>
<ul>
<li><span class="keyword parmname">Qualifiers</span>. Contains the following six qualifiers: <span class="keyword parmname">ItemCondition</span>, <span class="keyword parmname">ItemSubcondition</span>, <span class="keyword parmname">FulfillmentChannel</span>, <span class="keyword parmname">ShipsDomestically</span>, <span class="keyword parmname">ShippingTime</span>, and <span class="keyword parmname">SellerPositiveFeedbackRating</span>. These qualifiers identify the offer listing group from which the lowest offer listing was taken.</li>
<li><span class="keyword parmname">NumberOfOfferListingsConsidered</span>. Of the offer listings considered, this number indicates how many belonged to this offer listing group. Note that if <span class="keyword parmname">AllOfferListingsConsidered</span> is returned with a value of <var class="keyword varname">True</var>, then the value of <span class="keyword parmname">NumberOfOfferListingsConsidered</span> is the actual number of active offer listings that met the six qualifying criteria of the offer listing group. However if <span class="keyword parmname">AllOfferListingsConsidered</span> is returned with a value of <var class="keyword varname">False</var>, then the actual number might be higher.</li>
<li><span class="keyword parmname">SellerFeedbackCount</span>. The number of seller feedback ratings that have been submitted for the seller with the lowest-priced offer listing in the group.</li>
<li><span class="keyword parmname">Price</span>. Pricing information for the lowest offer listing in the group. Contains the following elements:
<ul>
<li><span class="keyword parmname">ListingPrice</span>. The listing price of the item.</li>
<li><span class="keyword parmname">Shipping</span>. The shipping cost of the product. Note that the shipping cost is not always available.</li>
<li><span class="keyword parmname">LandedPrice</span>. <span class="keyword parmname">ListingPrice</span> + <span class="keyword parmname">Shipping</span> - <span class="keyword parmname">Points</span>. Note that if the landed price is not returned, the listing price represents the product with the lowest landed price.</li>
<li><span class="keyword parmname">Points</span> - The number of <span class="ph">Amazon Points</span> offered with the purchase of an item, and their monetary value. Note that the <span class="keyword parmname">Points</span> element is only returned in Japan (JP).</li>
</ul></li>
<li><p><span class="keyword parmname">MultipleOfferListingsAtLowestPrice</span>. Indicates if there is more than one listing with the lowest landed price in the group.</p>
<p>Valid values:</p>
<ul>
<li><var class="keyword varname">True</var> – There is more than one listing with the lowest listing price in the group.</li>
<li><var class="keyword varname">False</var> – There is only one listing with the lowest listing price in the group.</li>
<li><var class="keyword varname">Unknown</var> – The service cannot determine if there is more than one listing with the lowest listing price in the group. This can happen in certain cases when not all active offer listings were considered when the offer listings were sorted into groups (when <span class="keyword parmname">AllOfferListingsConsidered</span> = <var class="keyword varname">False</var>).</li>
</ul></li>
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
&Action=GetLowestOfferListingsForSKU
&ExcludeMe=false
&MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
&MarketplaceId=ATVPDKIKX0DER
&SellerId=A1IMEXAMPLEWRC
&SellerSKUList.SellerSKU.1=SKU2468
&SignatureMethod=HmacSHA256
&SignatureVersion=2
&Timestamp=2012-12-04T21%3A53%3A02Z
&Version=2011-10-01
&Signature=FUcIEXAMPLETUGtTS6sqNDt3OuLH8tbhz5YEXAMPLEw%3D
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
<GetLowestOfferListingsForSKUResponse
    xmlns="http://mws.amazonservices.com/schema/Products/2011-10-01">
    <GetLowestOfferListingsForSKUResult SellerSKU="SKU2468" status="Success">
        <AllOfferListingsConsidered>false</AllOfferListingsConsidered>
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
            <LowestOfferListings>
                <LowestOfferListing>
                    <Qualifiers>
                        <ItemCondition>Used</ItemCondition>
                        <ItemSubcondition>Acceptable</ItemSubcondition>
                        <FulfillmentChannel>Merchant</FulfillmentChannel>
                        <ShipsDomestically>True</ShipsDomestically>
                        <ShippingTime>
                            <Max>0-2 days</Max>
                        </ShippingTime>
                        <SellerPositiveFeedbackRating>95-97%</SellerPositiveFeedbackRating>
                    </Qualifiers>
                    <NumberOfOfferListingsConsidered>3</NumberOfOfferListingsConsidered>
                    <SellerFeedbackCount>8900</SellerFeedbackCount>
                    <Price>
                        <LandedPrice>
                            <CurrencyCode>USD</CurrencyCode>
                            <Amount>28.68</Amount>
                        </LandedPrice>
                        <ListingPrice>
                            <CurrencyCode>USD</CurrencyCode>
                            <Amount>24.69</Amount>
                        </ListingPrice>
                        <Shipping>
                            <CurrencyCode>USD</CurrencyCode>
                            <Amount>3.99</Amount>
                        </Shipping>
                    </Price>
                    <MultipleOffersAtLowestPrice>True</MultipleOffersAtLowestPrice>
                </LowestOfferListing>
                <LowestOfferListing>
                    <Qualifiers>
                        <ItemCondition>Used</ItemCondition>
                        <ItemSubcondition>Good</ItemSubcondition>
                        <FulfillmentChannel>Amazon</FulfillmentChannel>
                        <ShipsDomestically>True</ShipsDomestically>
                        <ShippingTime>
                            <Max>0-2 days</Max>
                        </ShippingTime>
                        <SellerPositiveFeedbackRating>90-94%</SellerPositiveFeedbackRating>
                    </Qualifiers>
                    <NumberOfOfferListingsConsidered>1</NumberOfOfferListingsConsidered>
                    <SellerFeedbackCount>1569694</SellerFeedbackCount>
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
                    <MultipleOffersAtLowestPrice>False</MultipleOffersAtLowestPrice>
                </LowestOfferListing>
                <LowestOfferListing>
                    <Qualifiers>
                        <ItemCondition>Used</ItemCondition>
                        <ItemSubcondition>Good</ItemSubcondition>
                        <FulfillmentChannel>Merchant</FulfillmentChannel>
                        <ShipsDomestically>True</ShipsDomestically>
                        <ShippingTime>
                            <Max>0-2 days</Max>
                        </ShippingTime>
                        <SellerPositiveFeedbackRating>95-97%</SellerPositiveFeedbackRating>
                    </Qualifiers>
                    <NumberOfOfferListingsConsidered>3</NumberOfOfferListingsConsidered>
                    <SellerFeedbackCount>7732</SellerFeedbackCount>
                    <Price>
                        <LandedPrice>
                            <CurrencyCode>USD</CurrencyCode>
                            <Amount>30.99</Amount>
                        </LandedPrice>
                        <ListingPrice>
                            <CurrencyCode>USD</CurrencyCode>
                            <Amount>27.00</Amount>
                        </ListingPrice>
                        <Shipping>
                            <CurrencyCode>USD</CurrencyCode>
                            <Amount>3.99</Amount>
                        </Shipping>
                    </Price>
                    <MultipleOffersAtLowestPrice>False</MultipleOffersAtLowestPrice>
                </LowestOfferListing>
            </LowestOfferListings>
        </Product>
    </GetLowestOfferListingsForSKUResult>
    <ResponseMetadata>
        <RequestId>8106ed19-9a90-4820-881e-EXAMPLE0ab97</RequestId>
    </ResponseMetadata>
</GetLowestOfferListingsForSKUResponse>
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

<a href="Products_GetLowestOfferListingsForASIN.md" class="xref" title="Returns pricing information for the lowest-price active offer listings for up to 20 products, based on ASIN.">GetLowestOfferListingsForASIN</a>

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
