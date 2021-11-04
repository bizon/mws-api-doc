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

<div id="Products_GetLowestOfferListingsForASIN" class="nested0">

# GetLowestOfferListingsForASIN

<div class="body">

<span class="ph">Returns pricing information for the lowest-price active
offer listings for up to 20 products, based on <span
class="keyword parmname">ASIN</span>.</span>

</div>

<div id="Description" class="topic concept nested1">

## Description

<div class="body conbody">

The <span class="keyword apiname">GetLowestOfferListingsForASIN</span>
operation is the same as the
<a href="Products_GetLowestOfferListingsForSKU.md" class="xref" title="Returns pricing information for the lowest-price active offer listings for up to 20 products, based on SellerSKU.">GetLowestOfferListingsForSKU</a>
operation except that it uses a <span
class="keyword parmname">MarketplaceId</span> and an <span
class="keyword parmname">ASIN</span> to uniquely identify a product, and
it does not return the <span
class="keyword parmname">SKUIdentifier</span> element.

<div class="note note">

<span class="notetitle">Note:</span>

Instead of calling the <span
class="keyword apiname">GetLowestOfferListingsForASIN</span> operation
to obtain the lowest price offer listings for a specific product by item
condition, consider calling the
<a href="Products_GetLowestPricedOffersForASIN.md" class="xref" title="Returns lowest priced offers for a single product, based on ASIN.">GetLowestPricedOffersForASIN</a>
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
<a href="Products_GetLowestOfferListingsForSKU.md" class="xref" title="Returns pricing information for the lowest-price active offer listings for up to 20 products, based on SellerSKU.">GetLowestOfferListingsForSKU</a>.
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
<th id="d236346e253" class="entry" data-valign="top" width="28.57142857142857%">Name</th>
<th id="d236346e256" class="entry" data-valign="top" width="28.57142857142857%">Description</th>
<th id="d236346e259" class="entry" data-valign="top" width="14.285714285714285%">Required</th>
<th id="d236346e262" class="entry" data-valign="top" width="28.57142857142857%">Valid values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d236346e253 "><span class="keyword parmname">MarketplaceId</span></td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d236346e256 ">A marketplace identifier. Specifies the marketplace from which prices are returned.
<p><span class="ph">Type: xs:string</span></p></td>
<td class="entry" data-valign="top" width="14.285714285714285%" headers="d236346e259 ">Yes</td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d236346e262 "><span class="ph">For a list of <span class="keyword parmname">MarketplaceId</span> values, see <a href="../dev_guide/DG_Endpoints.md" class="xref">Amazon MWS endpoints and MarketplaceId values</a> in the <span class="ph">Amazon MWS Developer Guide</span>.</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d236346e253 "><span class="keyword parmname">ASINList</span></td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d236346e256 ">A structured list of <span class="keyword parmname">ASIN</span> values. Used to identify products in the given marketplace.
<p>Type: List of xs:string</p></td>
<td class="entry" data-valign="top" width="14.285714285714285%" headers="d236346e259 ">Yes</td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d236346e262 ">Maximum: 20 <span class="keyword parmname">ASIN</span> values.</td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d236346e253 "><span class="keyword parmname">ItemCondition</span></td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d236346e256 ">Filters the offer listings to be considered based on item condition.
<p><span class="ph">Type: xs:string</span></p></td>
<td class="entry" data-valign="top" width="14.285714285714285%" headers="d236346e259 ">No</td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d236346e262 "><span class="keyword parmname">ItemCondition</span> values:
<ul>
<li><var class="keyword varname">New</var></li>
<li><var class="keyword varname">Used</var></li>
<li><var class="keyword varname">Collectible</var></li>
<li><var class="keyword varname">Refurbished</var></li>
<li><var class="keyword varname">Club</var></li>
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

The <span class="keyword apiname">GetLowestOfferListingsForASIN</span>
operation returns the <span class="keyword parmname">Product</span>
response element that is described by the following publically available
XSDs:
<a href="http://g-ecx.images-amazon.com/images/G/01/mwsportal/doc/en_US/products/ProductsAPI_Response.xsd" class="xref">ProductsAPI_Response.xsd</a>
and
<a href="http://g-ecx.images-amazon.com/images/G/01/mwsportal/doc/en_US/products/default.xsd" class="xref">default.xsd</a>.
The <span class="keyword apiname">GetLowestOfferListingsForASIN</span>
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
<th id="d236346e430" class="entry" data-valign="top" width="NaN%">Name</th>
<th id="d236346e433" class="entry" data-valign="top" width="NaN%">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="NaN%" headers="d236346e430 "><span class="keyword parmname">AllOfferListingsConsidered</span></td>
<td class="entry" data-valign="top" width="NaN%" headers="d236346e433 ">Indicates whether or not all of the active offer listings for the specified product and <span class="keyword parmname">ItemCondition</span> were considered when the listings were placed into their corresponding offer listing groups. When there are a large number of active offer listings for the specified product and <span class="keyword parmname">ItemCondition</span>, only a certain number of offer listings are considered. The listings that are considered always have lower landed prices than the landed prices of listings that are not considered.</td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="NaN%" headers="d236346e430 "><span class="keyword parmname">Product</span></td>
<td class="entry" data-valign="top" width="NaN%" headers="d236346e433 ">Contains two of the sub-elements of the <span class="keyword parmname">Product</span> element from ProductsAPI_Response.xsd. These sub-elements are: <span class="keyword parmname">Identifiers</span> and <span class="keyword parmname">LowestOfferListings</span>.</td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="NaN%" headers="d236346e430 "><span class="keyword parmname">Identifiers</span></td>
<td class="entry" data-valign="top" width="NaN%" headers="d236346e433 ">Contains the following identifiers that uniquely identify a product:
<ul>
<li><span class="keyword parmname">MarketplaceASIN</span> – <span class="keyword parmname">MarketplaceId</span> and <span class="keyword parmname">ASIN</span> combination.</li>
<li><span class="keyword parmname">SKUIdentifier</span> – <span class="keyword parmname">MarketplaceId</span>, <span class="keyword parmname">SellerSKU</span>, and <span class="keyword parmname">SellerId</span> combination. Only returned if <span class="keyword parmname">SellerSKU</span> was specified in the request.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="NaN%" headers="d236346e430 "><span class="keyword parmname">LowestOfferListings</span></td>
<td class="entry" data-valign="top" width="NaN%" headers="d236346e433 ">Contains pricing information for the lowest offer listing for each offer listing group.
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

ASINList.ASIN.1=B002KT3XQM
&AWSAccessKeyId=AKIAEXAMPLEFWR4TJ7ZQ
&Action=GetLowestOfferListingsForASIN
&MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
&MarketplaceId=ATVPDKIKX0DER
&SellerId=A1IMEXAMPLEWRC
&SignatureMethod=HmacSHA256
&SignatureVersion=2
&Timestamp=2012-12-04T22%3A03%3A05Z
&Version=2011-10-01
&Signature=fJFzEXAMPLEEax1vAdKP7l3lwKQUH1r34lcEXAMPLEA%3D
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
<GetLowestOfferListingsForASINResponse
    xmlns="http://mws.amazonservices.com/schema/Products/2011-10-01">
    <GetLowestOfferListingsForASINResult ASIN="B002KT3XQM" status="Success">
        <AllOfferListingsConsidered>true</AllOfferListingsConsidered>
        <Product xmlns="http://mws.amazonservices.com/schema/Products/2011-10-01"
            xmlns:ns2="http://mws.amazonservices.com/schema/Products/2011-10-01/default.xsd">
            <Identifiers>
                <MarketplaceASIN>
                    <MarketplaceId>ATVPDKIKX0DER</MarketplaceId>
                    <ASIN>B002KT3XQM</ASIN>
                </MarketplaceASIN>
            </Identifiers>
            <LowestOfferListings>
                <LowestOfferListing>
                    <Qualifiers>
                        <ItemCondition>Used</ItemCondition>
                        <ItemSubcondition>VeryGood</ItemSubcondition>
                        <FulfillmentChannel>Merchant</FulfillmentChannel>
                        <ShipsDomestically>True</ShipsDomestically>
                        <ShippingTime>
                            <Max>0-2 days</Max>
                        </ShippingTime>
                        <SellerPositiveFeedbackRating>90-94%</SellerPositiveFeedbackRating>
                    </Qualifiers>
                    <NumberOfOfferListingsConsidered>1</NumberOfOfferListingsConsidered>
                    <SellerFeedbackCount>762</SellerFeedbackCount>
                    <Price>
                        <LandedPrice>
                            <CurrencyCode>USD</CurrencyCode>
                            <Amount>32.99</Amount>
                        </LandedPrice>
                        <ListingPrice>
                            <CurrencyCode>USD</CurrencyCode>
                            <Amount>28.00</Amount>
                        </ListingPrice>
                        <Shipping>
                            <CurrencyCode>USD</CurrencyCode>
                            <Amount>4.99</Amount>
                        </Shipping>
                    </Price>
                    <MultipleOffersAtLowestPrice>False</MultipleOffersAtLowestPrice>
                </LowestOfferListing>
                <LowestOfferListing>
                    <Qualifiers>
                        <ItemCondition>New</ItemCondition>
                        <ItemSubcondition>New</ItemSubcondition>
                        <FulfillmentChannel>Amazon</FulfillmentChannel>
                        <ShipsDomestically>True</ShipsDomestically>
                        <ShippingTime>
                            <Max>0-2 days</Max>
                        </ShippingTime>
                        <SellerPositiveFeedbackRating>98-100%</SellerPositiveFeedbackRating>
                    </Qualifiers>
                    <NumberOfOfferListingsConsidered>1</NumberOfOfferListingsConsidered>
                    <SellerFeedbackCount>181744</SellerFeedbackCount>
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
                    <MultipleOffersAtLowestPrice>False</MultipleOffersAtLowestPrice>
                </LowestOfferListing>
                <LowestOfferListing>
                    <Qualifiers>
                        <ItemCondition>New</ItemCondition>
                        <ItemSubcondition>New</ItemSubcondition>
                        <FulfillmentChannel>Amazon</FulfillmentChannel>
                        <ShipsDomestically>True</ShipsDomestically>
                        <ShippingTime>
                            <Max>0-2 days</Max>
                        </ShippingTime>
                        <SellerPositiveFeedbackRating>95-97%</SellerPositiveFeedbackRating>
                    </Qualifiers>
                    <NumberOfOfferListingsConsidered>1</NumberOfOfferListingsConsidered>
                    <SellerFeedbackCount>13213</SellerFeedbackCount>
                    <Price>
                        <LandedPrice>
                            <CurrencyCode>USD</CurrencyCode>
                            <Amount>41.18</Amount>
                        </LandedPrice>
                        <ListingPrice>
                            <CurrencyCode>USD</CurrencyCode>
                            <Amount>41.18</Amount>
                        </ListingPrice>
                        <Shipping>
                            <CurrencyCode>USD</CurrencyCode>
                            <Amount>0.00</Amount>
                        </Shipping>
                    </Price>
                    <MultipleOffersAtLowestPrice>False</MultipleOffersAtLowestPrice>
                </LowestOfferListing>
            </LowestOfferListings>
        </Product>
    </GetLowestOfferListingsForASINResult>
    <ResponseMetadata>
        <RequestId>60979901-82af-457b-8bdd-EXAMPLE28478</RequestId>
    </ResponseMetadata>
</GetLowestOfferListingsForASINResponse>
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

<a href="Products_GetLowestOfferListingsForSKU.md" class="xref" title="Returns pricing information for the lowest-price active offer listings for up to 20 products, based on SellerSKU.">GetLowestOfferListingsForSKU</a>

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
