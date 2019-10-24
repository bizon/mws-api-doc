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

<div id="Products_GetLowestPricedOffersForASIN" class="nested0">

# GetLowestPricedOffersForASIN

<div class="body">

<span class="ph">Returns lowest priced offers for a single product,
based on <span class="keyword parmname">ASIN</span>.</span>

</div>

<div id="Description" class="topic concept nested1">

## Description

<div class="body conbody">

The <span class="keyword apiname">GetLowestPricedOffersForASIN</span>
operation is the same as the
<span class="keyword apiname">GetLowestPricedOffersForSKU</span>
operation, except that it uses a
<span class="keyword parmname">MarketplaceId</span> and an
<span class="keyword parmname">ASIN</span> to uniquely identify a
product, and it does not return the
<span class="keyword parmname">MyOffer</span> element. If you do not
have the ASIN for a product, you can use the
<span class="keyword apiname">ListMatchingProducts</span> operation to
search for the ASIN.

<div class="section">

### Availability

This operation is available in all
marketplaces.

</div>

<div class="section">

### Throttling

<div class="p">

<div class="tablenoborder">

| Maximum request quota | Restore rate            | Hourly request quota  |
| --------------------- | ----------------------- | --------------------- |
| 10 requests           | Five items every second | 200 requests per hour |

</div>

This quota and restore rate is shared with
[GetLowestPricedOffersForSKU](Products_GetLowestPricedOffersForSKU.html "Returns lowest priced offers for a single product, based on SellerSKU.").
<span class="ph">Operations in the <span class="ph">Products API
section</span> that send lists of items as input parameters have restore
rates that are measured by item. For information on per-item throttling,
see [Throttling in the Products
API](Products_Throttling.html "Describes the throttling policy for the Products API section.").
For definitions of throttling terminology and for a complete explanation
of throttling, see [Throttling: Limits to how often you can submit
requests](../dev_guide/DG_Throttling.html) in the
<span class="ph">Amazon MWS Developer Guide</span>. </span>

</div>

Because you can only query 200 SKUs or ASINs per hour, after you call
<span class="keyword apiname">GetLowestPricedOffersForASIN</span> to get
the top 20 offers for an ASIN you sell, you should call
<span class="keyword apiname">CreateSubscription</span> and subscribe to
an <span class="keyword parmname">AnyOfferChanged</span> notification.
That will inform you if the top 20 offers change for any ASIN you sell
without using any of your
<span class="keyword apiname">GetLowestPricedOffersForASIN</span> quota.

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
parameters](../dev_guide/DG_RequiredRequestParameters.html) in the
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
<th>Values</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><span class="keyword parmname">MarketplaceId</span></td>
<td><span class="ph">An encrypted, Amazon-defined marketplace identifier.</span></td>
<td>Yes</td>
<td>Type: <a href="Products_Datatypes.html#MarketplaceType" class="xref" title="An encrypted, Amazon-defined marketplace identifier.">MarketplaceType</a></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">ASIN</span></td>
<td><span class="ph">The Amazon Standard Identification Number (ASIN) of the item.</span></td>
<td>Yes</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">ItemCondition</span></td>
<td>Filters the results based on item condition.</td>
<td>Yes</td>
<td><span class="keyword parmname">ItemCondition</span> values: New, Used, Collectible, Refurbished, Club.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
</tbody>
</table>

</div>

<div class="section">

### Notes

1.  If you specify an <span class="keyword parmname">ASIN</span> that
    identifies a variation parent ASIN, this operation returns
    NoBuyableOffers. A variation parent ASIN represents a generic
    product that cannot be sold. Variation child ASINs represent
    products that have specific characteristics (such as size and color)
    and can be sold.

</div>

</div>

</div>

<div id="ResponseElements" class="topic reference nested1">

## Response elements

<div class="body refbody">

<div class="section">

The response elements that the
<span class="keyword apiname">GetLowestPricedOffersForASIN</span>
operation returns are described by the publicly available XSD
[ProductsAPI\_Response.xsd](http://g-ecx.images-amazon.com/images/G/01/mwsportal/doc/en_US/products/ProductsAPI_Response.xsd).
The top-level elements returned by the
<span class="keyword apiname">GetLowestPricedOffersForASIN</span>
operation
are:

</div>

<div class="section">

### GetLowestPricedOffersForASINResult Elements

<div class="tablenoborder">

| Name                                                                                                                                                                                                                      | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Identifier](#Identifier "Identifies a product by marketplace and ASIN.")                                                                                                                                                 | <span class="ph">Identifies a product by marketplace and ASIN.</span>                                                                                                                                                                                                                                                                                                                                                                                           |
| [Summary](#Summary "Contains price information about the product, including the LowestPrices and BuyBoxPrices, the ListPrice, the SuggestedLowerPricePlusShipping, and NumberOfOffers and NumberOfBuyBoxEligibleOffers.") | <span class="ph">Contains price information about the product, including the <span class="keyword parmname">LowestPrices</span> and <span class="keyword parmname">BuyBoxPrices</span>, the <span class="keyword parmname">ListPrice</span>, the <span class="keyword parmname">SuggestedLowerPricePlusShipping</span>, and <span class="keyword parmname">NumberOfOffers</span> and <span class="keyword parmname">NumberOfBuyBoxEligibleOffers</span>.</span> |
| [Offers](#Offers "A list of Offer elements, including Points, ShippingTime, Shipping, ShipsFrom, ListingPrice, SellerFeedbackRating, and more.")                                                                          | <span class="ph">A list of [Offer](#Offers__Offer) elements, including <span class="keyword parmname">Points</span>, <span class="keyword parmname">ShippingTime</span>, <span class="keyword parmname">Shipping</span>, <span class="keyword parmname">ShipsFrom</span>, <span class="keyword parmname">ListingPrice</span>, <span class="keyword parmname">SellerFeedbackRating</span>, and more.</span>                                                      |

</div>

</div>

<div class="section">

### GetLowestPricedOffersForASINResult Attributes

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
<th>Values</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><span class="keyword parmname">MarketplaceId</span></td>
<td><span class="ph">An encrypted, Amazon-defined marketplace identifier.</span></td>
<td>Yes</td>
<td>Type: <a href="Products_Datatypes.html#MarketplaceType" class="xref" title="An encrypted, Amazon-defined marketplace identifier.">MarketplaceType</a></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">ASIN</span></td>
<td><span class="ph">The Amazon Standard Identification Number (ASIN) of the item.</span></td>
<td>Yes</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">ItemCondition</span></td>
<td>The item condition.</td>
<td>Yes</td>
<td><span class="keyword parmname">ItemCondition</span> values: New, Used, Collectible, Refurbished, Club.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Status</span></td>
<td>The status of the operation.</td>
<td>Yes</td>
<td><span class="keyword parmname">Status</span> values: Success, ActiveButTooSoonForProcessing, NoBuyableOffers, or NoOfferDueToMissingShippingCharge.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
</tbody>
</table>

</div>

<div class="p">

Except for <span class="keyword parmname">Status</span>, each of these
attributes match the original request parameters for the call.
<span class="keyword parmname">Status</span> represents the overall
result of the operation with one of the following values:

  - Success
  - ActiveButTooSoonForProcessing - the item is active but no offers can
    be displayed until OffersAvailableTime
  - NoBuyableOffers - the item is not being offered for sale
  - NoOfferDueToMissingShippingCharge - the shipping charge is absent
    (for example, when the shipping charge varies by region)

</div>

</div>

</div>

</div>

<div id="Identifier" class="topic reference nested1">

## Identifier

<div class="body refbody">

<span id="sd_Identifier" class="ph">Identifies a product by marketplace
and ASIN.</span>

<div class="section">

### Identifier Elements

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
<th>Values</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><span class="keyword parmname">MarketplaceId</span></td>
<td><span class="ph">An encrypted, Amazon-defined marketplace identifier.</span></td>
<td>Yes</td>
<td>Type: <a href="Products_Datatypes.html#MarketplaceType" class="xref" title="An encrypted, Amazon-defined marketplace identifier.">MarketplaceType</a></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">ASIN</span></td>
<td><span class="ph">The Amazon Standard Identification Number (ASIN) of the item.</span></td>
<td>Yes</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">ItemCondition</span></td>
<td>The item condition.</td>
<td>Yes</td>
<td><span class="keyword parmname">ItemCondition</span> values: New, Used, Collectible, Refurbished, Club.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">TimeOfOfferChange</span></td>
<td>The update time for the offer.</td>
<td>No</td>
<td>In <span class="ph"><a href="../dev_guide/DG_ISO8601.html" class="xref">ISO 8601 date time format</a></span>.
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="Summary" class="topic reference nested1">

## Summary

<div class="body refbody">

<span class="ph">Contains price information about the product, including
the <span class="keyword parmname">LowestPrices</span> and
<span class="keyword parmname">BuyBoxPrices</span>, the
<span class="keyword parmname">ListPrice</span>, the
<span class="keyword parmname">SuggestedLowerPricePlusShipping</span>,
and <span class="keyword parmname">NumberOfOffers</span> and
<span class="keyword parmname">NumberOfBuyBoxEligibleOffers</span>.</span>

<div class="section">

### Summary Elements

<div class="tablenoborder">

| Name                                                                  | Description                                                                                                                                                                                                                                             | Required | Values                                                                                                                                           |
| --------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------- | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| <span class="keyword parmname">TotalOfferCount</span>                 | The number of unique offers contained in <span class="keyword parmname">NumberOfOffers</span>.                                                                                                                                                          | Yes      | <span class="ph">Type: xs:int</span>                                                                                                             |
| <span class="keyword parmname">NumberOfOffers</span>                  | A list that contains the total number of offers for the item for the given conditions and fulfillment channels.                                                                                                                                         | Yes      | Type: [OfferCountType](Products_Datatypes.html#OfferCountType "The total number of offers for the specified condition and fulfillment channel.") |
| <span class="keyword parmname">LowestPrices</span>                    | A list of the lowest prices for the item.                                                                                                                                                                                                               | No       | Type: List of [LowestPrice](Products_Datatypes.html#LowestPrice "The lowest price of an item.")                                                  |
| <span class="keyword parmname">BuyBoxPrices</span>                    | A list of item prices.                                                                                                                                                                                                                                  | No       | Type: List of [BuyBoxPrice](Products_Datatypes.html#BuyBoxPrice "The price of an item that is displayed in the Buy Box.")                        |
| <span class="keyword parmname">ListPrice</span>                       | The list price of the item as suggested by the manufacturer.                                                                                                                                                                                            | No       | Type: [MoneyType](Products_Datatypes.html#MoneyType "An amount of money in a specified currency.")                                               |
| <span class="keyword parmname">SuggestedLowerPricePlusShipping</span> | The suggested lower price of the item, including shipping and Amazon Points. The suggested lower price is based on a range of factors, including historical selling prices, recent Buy Box-eligible prices, and input from customers for your products. | No       | Type: [MoneyType](Products_Datatypes.html#MoneyType "An amount of money in a specified currency.")                                               |
| <span class="keyword parmname">BuyBoxEligibleOffers</span>            | A list that contains the total number of offers that are eligible for the Buy Box for the given conditions and fulfillment channels.                                                                                                                    | No       | Type: [OfferCountType](Products_Datatypes.html#OfferCountType "The total number of offers for the specified condition and fulfillment channel.") |
| <span class="keyword parmname">OffersAvailableTime</span>             | When the status is ActiveButTooSoonForProcessing, this is the time when the offers will be available for processing.                                                                                                                                    | No       | <span class="ph">Type: xs:dateTime</span>                                                                                                        |

</div>

</div>

</div>

</div>

<div id="Offers" class="topic reference nested1">

## Offers

<div class="body refbody">

<span id="sd_Offers" class="ph">A list of [Offer](#Offers__Offer)
elements, including <span class="keyword parmname">Points</span>,
<span class="keyword parmname">ShippingTime</span>,
<span class="keyword parmname">Shipping</span>,
<span class="keyword parmname">ShipsFrom</span>,
<span class="keyword parmname">ListingPrice</span>,
<span class="keyword parmname">SellerFeedbackRating</span>, and
more.</span>

<div class="section">

This list is the same length as the
<span class="keyword parmname">TotalOfferCount</span> provided in the
[Summary](#Summary "Contains price information about the product, including the LowestPrices and BuyBoxPrices, the ListPrice, the SuggestedLowerPricePlusShipping, and NumberOfOffers and NumberOfBuyBoxEligibleOffers.")
or 20, whichever is less.

</div>

<div id="Offers__Offer" class="section">

### Offer Element

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
<th>Values</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><span class="keyword parmname">Subcondition</span></td>
<td>The subcondition of the item.</td>
<td>Yes</td>
<td><span class="keyword parmname">Subcondition</span> values: <span class="ph">New, Mint, Very Good, Good, Acceptable, Poor, Club, OEM, Warranty, Refurbished Warranty, Refurbished, Open Box, or Other</span>.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">SellerFeedbackRating</span></td>
<td><span id="Offers__d50082e1440" class="ph">Information about the seller's feedback, including the percentage of positive feedback, and the total count of feedback received.</span></td>
<td>No</td>
<td>Type: <a href="Products_Datatypes.html#SellerFeedbackRating" class="xref" title="Information about the seller&#39;s feedback, including the percentage of positive feedback, and the total count of feedback received.">SellerFeedbackRating</a></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">ShippingTime</span></td>
<td><span id="Offers__d50082e1369" class="ph">The maximum time within which the item will likely be shipped once an order has been placed.</span></td>
<td>Yes</td>
<td>Type: <a href="Products_Datatypes.html#DetailedShippingTimeType" class="xref" title="The time range in which an item will likely be shipped once an order has been placed.">DetailedShippingTimeType</a></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">ListingPrice</span></td>
<td>The price of the item.</td>
<td>Yes</td>
<td>Type: <a href="Products_Datatypes.html#MoneyType" class="xref" title="An amount of money in a specified currency.">MoneyType</a></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">Points</span></td>
<td><span class="ph">The number of <span class="ph">Amazon Points</span> offered with the purchase of an item.</span></td>
<td>No</td>
<td>Type: <a href="Products_Datatypes.html#Points" class="xref" title="The number of Amazon Points offered with the purchase of an item. The Amazon Points program is only available in Japan.">Points</a></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Shipping</span></td>
<td>The shipping cost.</td>
<td>Yes</td>
<td>Type: <a href="Products_Datatypes.html#MoneyType" class="xref" title="An amount of money in a specified currency.">MoneyType</a></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">ShipsFrom</span></td>
<td><span id="Offers__d50082e1421" class="ph">The state and country from where the item is shipped.</span></td>
<td>No</td>
<td>Type: <a href="Products_Datatypes.html#ShipsFrom" class="xref" title="The state and country from where the item is shipped.">ShipsFrom</a></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">IsFulfilledByAmazon</span></td>
<td>true if the offer is fulfilled by Amazon.</td>
<td>Yes</td>
<td><span class="ph">Type: xs:boolean</span></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">IsBuyBoxWinner</span></td>
<td>true if the offer is currently in the Buy Box. There can be up to two Buy Box winners at any time per ASIN, one that is eligible for Prime and one that is not eligible for Prime.</td>
<td>No</td>
<td><span class="ph">Type: xs:boolean</span></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">IsFeaturedMerchant</span></td>
<td>true if the seller of the item is eligible to win the Buy Box.</td>
<td>No</td>
<td><span class="ph">Type: xs:boolean</span></td>
</tr>
</tbody>
</table>

</div>

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
parameters](../dev_guide/DG_RequiredRequestParameters.html).</span>

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre codeblock
POST /Products/2011-10-01 HTTP/1.1
Content-Type: x-www-form-urlencoded
Host: mws.amazonservices.com
User-Agent: <Your User Agent Header>

&ASIN=B00COK3FD8
&AWSAccessKeyId=AKIAEXAMPLEFWR4TJ7ZQ
&Action=GetLowestPricedOffersForASIN
&MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
&MarketplaceId=ATVPDKIKX0DER
&ItemCondition=New
&SellerId=A1IMEXAMPLEWRC
&SignatureMethod=HmacSHA256
&SignatureVersion=2
&Timestamp=2015-05-22T21%3A23%3A31Z
&Version=2011-10-01
&Signature=V1uTEXAMPLE8HVCfobAqQDKzylYyTRWfv3X4SEXAMPLEY%3D
```

[↑ Top](#Examples)

</div>

</div>

<div class="section">

### Example response (Success)

<span class="ph">For information about standard response formatting, see
[Response format](../dev_guide/DG_ResponseFormat.html).</span>

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre codeblock
<?xml version="1.0"?><GetLowestPricedOffersForASINResponse 
    xmlns="http://mws.amazonservices.com/schema/Products/2011-10-01">
    <GetLowestPricedOffersForASINResult MarketplaceID="ATVPDKIKX0DER" 
        ItemCondition="New" ASIN="B0002GTTRC" status="Success">
        <Identifier>
            <MarketplaceId>ATVPDKIKX0DER</MarketplaceId>
            <ASIN>B0002GTTRC</ASIN>
            <ItemCondition>New</ItemCondition>
            <TimeOfOfferChange>2015-07-19T23:15:11.859Z</TimeOfOfferChange>
        </Identifier>
        <Summary>
            <TotalOfferCount>0</TotalOfferCount>
            <NumberOfOffers>
                <OfferCount condition="new" 
                    fulfillmentChannel="Amazon">1</OfferCount>
            </NumberOfOffers>
            <LowestPrices>
                <LowestPrice condition="new" fulfillmentChannel="Amazon">
                    <LandedPrice>
                        <CurrencyCode>USD</CurrencyCode>
                        <Amount>32.99</Amount>
                    </LandedPrice>
                    <ListingPrice>
                        <CurrencyCode>USD</CurrencyCode>
                        <Amount>32.99</Amount>
                    </ListingPrice>
                    <Shipping>
                        <CurrencyCode>USD</CurrencyCode>
                        <Amount>0.00</Amount>
                    </Shipping>
                </LowestPrice>
            </LowestPrices>
            <BuyBoxPrices>
                <BuyBoxPrice condition="New">
                    <LandedPrice>
                        <CurrencyCode>USD</CurrencyCode>
                        <Amount>32.99</Amount>
                    </LandedPrice>
                    <ListingPrice>
                        <CurrencyCode>USD</CurrencyCode>
                        <Amount>32.99</Amount>
                    </ListingPrice>
                    <Shipping>
                        <CurrencyCode>USD</CurrencyCode>
                        <Amount>0.00</Amount>
                    </Shipping>
                </BuyBoxPrice>
            </BuyBoxPrices>
            <ListPrice>
                <CurrencyCode>USD</CurrencyCode>
                <Amount>58.34</Amount>
            </ListPrice>
            <SuggestedLowerPricePlusShipping>
                <CurrencyCode>USD</CurrencyCode>
                <Amount>32.99</Amount>
            </SuggestedLowerPricePlusShipping>
            <BuyBoxEligibleOffers>
                <OfferCount condition="new" 
                    fulfillmentChannel="Amazon">1</OfferCount>
            </BuyBoxEligibleOffers>
        </Summary>
        <Offers>
            <Offer>
                <SubCondition>new</SubCondition>
                <SellerFeedbackRating>
                    <SellerPositiveFeedbackRating>100.0</SellerPositiveFeedbackRating>
                    <FeedbackCount>1</FeedbackCount>
                </SellerFeedbackRating>
                <ShippingTime minimumHours="0" maximumHours="0" 
                    availabilityType="NOW"/>
                <ListingPrice>
                    <CurrencyCode>USD</CurrencyCode>
                    <Amount>32.99</Amount>
                </ListingPrice>
                <Shipping>
                    <CurrencyCode>USD</CurrencyCode>
                    <Amount>0.00</Amount>
                </Shipping>
                <IsFulfilledByAmazon>true</IsFulfilledByAmazon>
                <IsBuyBoxWinner>true</IsBuyBoxWinner>
                <IsFeaturedMerchant>true</IsFeaturedMerchant>
            </Offer>
        </Offers>
    </GetLowestPricedOffersForASINResult>
    <ResponseMetadata>
        <RequestId>21534f03-e7e3-4d9a-9bea-0e15add3326d</RequestId>
    </ResponseMetadata>
</GetLowestPricedOffersForASINResponse>
```

[↑ Top](#Examples)

</div>

</div>

<div class="section">

### Example response (Success with no offers)

<span class="ph">For information about standard response formatting, see
[Response format](../dev_guide/DG_ResponseFormat.html).</span>

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre codeblock
<?xml version="1.0"?>
<GetLowestPricedOffersForASINResponse
    xmlns="http://mws.amazonservices.com/schema/Products/2011-10-01">
    <GetLowestPricedOffersForASINResult MarketplaceID="ATVPDKIKX0DER" ItemCondition="New"
        ASIN="B000EVPGSQ" status="NoBuyableOffers">
        <Identifier>
            <MarketplaceId>ATVPDKIKX0DER</MarketplaceId>
            <ASIN>B000EVPGSQ</ASIN>
            <ItemCondition>New</ItemCondition>
        </Identifier>
        <Summary>
            <TotalOfferCount>0</TotalOfferCount>
        </Summary>
        <Offers/>
    </GetLowestPricedOffersForASINResult>
    <ResponseMetadata>
        <RequestId>2bb867cd-8fa3-406c-adba-eb84c1796d21</RequestId>
    </ResponseMetadata>
</GetLowestPricedOffersForASINResponse>
```

[↑ Top](#Examples)

</div>

</div>

<div class="section">

### Example response (Missing shipping charge)

<span class="ph">For information about standard response formatting, see
[Response format](../dev_guide/DG_ResponseFormat.html).</span>

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre codeblock
<?xml version="1.0" encoding="UTF-8"?>
<GetLowestPricedOffersForASINResponse
  xmlns="http://mws.amazonservices.com/schema/Products/2011-10-01">
  <GetLowestPricedOffersForASINResult MarketplaceID="ATVPDKIKX0DER" ItemCondition="New"
    ASIN="B000EVPGSQ" status="NoOfferDueToMissingShippingCharge">
    <Identifier>
      <MarketplaceId>ATVPDKIKX0DER</MarketplaceId>
      <ASIN>B000EVPGSQ</ASIN>
      <ItemCondition>New</ItemCondition>
    </Identifier>
    <Summary>
      <TotalOfferCount>0</TotalOfferCount>
    </Summary>
    <Offers/>
  </GetLowestPricedOffersForASINResult>
  <ResponseMetadata>
    <RequestId>2bb867cd-8fa3-406c-adba-eb84c1796d21</RequestId>
  </ResponseMetadata>
</GetLowestPricedOffersForASINResponse>
```

[↑ Top](#Examples)

</div>

</div>

<div class="section">

### Example response (Active but too soon for processing)

<span class="ph">For information about standard response formatting, see
[Response format](../dev_guide/DG_ResponseFormat.html).</span>

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre codeblock
<?xml version="1.0"?>
<GetLowestPricedOffersForASINResponse xmlns="http://mws.amazonservices.com/schema/Products/2011-10-01">
    <GetLowestPricedOffersForASINResult MarketplaceID="ATVPDKIKX0DER" ItemCondition="New" ASIN="B01DL3WCPI" status="ActiveButTooSoonForProcessing">
        <Identifier>
            <MarketplaceId>ATVPDKIKX0DER</MarketplaceId>
            <ASIN>B01DL3WCPI</ASIN>
            <ItemCondition>New</ItemCondition>
        </Identifier>
        <Summary>
            <TotalOfferCount>0</TotalOfferCount>
            <OffersAvailableTime>2017-03-08T06:21:05.330Z</OffersAvailableTime>
        </Summary>
        <Offers/>
    </GetLowestPricedOffersForASINResult>
    <ResponseMetadata>
        <RequestId>1212334</RequestId>
    </ResponseMetadata>
</GetLowestPricedOffersForASINResponse>
```

[↑ Top](#Examples)

</div>

</div>

<div class="section">

### Example response (Server error)

<span class="ph">For information about standard response formatting, see
[Response format](../dev_guide/DG_ResponseFormat.html).</span>

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre codeblock
<?xml version="1.0"?>
<ErrorResponse xmlns="http://mws.amazonservices.com/schema/Products/2011-10-01">
  <Error MarketplaceID="ATVPDKIKX0DER" ASIN="24478624" ItemCondition="New" 
    status="ServerError">
    <Type>Receiver</Type>
    <Message>Server Error. Try back later</Message>
    <Detail/>
  </Error>
  <ResponseMetadata>
    <RequestId>88faca76-b600-46d2-b53c-0c8c4533e43a</RequestId>
  </ResponseMetadata>
</ErrorResponse>

```

[↑ Top](#Examples)

</div>

</div>

<div class="section">

### Example response (Invalid ASIN)

<span class="ph">For information about standard response formatting, see
[Response format](../dev_guide/DG_ResponseFormat.html).</span>

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre codeblock
<?xml version="1.0"?>
<ErrorResponse 
    xmlns="http://mws.amazonservices.com/schema/Products/2011-10-01">
    <Error MarketplaceID="ATVPDKIKX0DER" ASIN="B0002GTTRD" ItemCondition="New" 
        status="ClientError">
        <Code>InvalidParameterValue</Code>
        <Type>Sender</Type>
        <Message>B0002GTTRD is an invalid ASIN for marketplace ATVPDKIKX0DER</Message>
    </Error>
    <ResponseMetadata>
        <RequestId>3e8e64e8-edd7-4b63-a855-fa44094951ff</RequestId>
    </ResponseMetadata>
</ErrorResponse>
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
API](../products/Products_Overview.html)

[GetLowestPricedOffersForSKU](Products_GetLowestPricedOffersForSKU.html "Returns lowest priced offers for a single product, based on SellerSKU.")

[ListMatchingProducts](Products_ListMatchingProducts.html "Returns a list of products and their attributes, based on a search query.")

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
