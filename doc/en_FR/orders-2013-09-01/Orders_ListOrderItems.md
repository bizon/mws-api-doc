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

<div id="Orders_ListOrderItems" class="nested0">

# ListOrderItems

<div class="body">

<span class="ph">Returns order items based on the
<span class="keyword parmname">AmazonOrderId</span> that you
specify.</span>

</div>

<div id="Description" class="topic concept nested1">

## Description

<div class="body conbody">

The <span class="keyword apiname">ListOrderItems</span> operation
returns order item information for an
<span class="keyword parmname">AmazonOrderId</span> that you specify.
The order item information includes
<span class="keyword parmname">Title</span>,
<span class="keyword parmname">ASIN</span>,
<span class="keyword parmname">SellerSKU</span>,
<span class="keyword parmname">ItemPrice</span>,
<span class="keyword parmname">ShippingPrice</span>, as well as tax and
promotion information.

You can retrieve order item information by first using the
<span class="keyword apiname">ListOrders</span> operation to find orders
created or updated during a time frame that you specify. An
<span class="keyword parmname">AmazonOrderId</span> is included with
each order that is returned. You can then use these
<span class="keyword parmname">AmazonOrderId</span> values with the
<span class="keyword apiname">ListOrderItems</span> operation to get
detailed order item information for each order.

**Note:** When an order is in the Pending state (the order has been
placed but payment has not been authorized), the
<span class="keyword apiname">ListOrderItems</span> operation does not
return information about pricing, taxes, shipping charges, gift
wrapping, or promotions for the order items in the order. After an order
leaves the Pending state (this occurs when payment has been authorized)
and enters the Unshipped, Partially Shipped, or Shipped state, the
<span class="keyword apiname">ListOrderItems</span> operation returns
information about pricing, taxes, shipping charges, gift wrapping, and
promotions for the order items in the order.

The following response elements are not available for orders with an
OrderStatus of Pending but are available for orders with an OrderStatus
of Unshipped, Partially Shipped, or Shipped state:

  - <span class="keyword parmname">ItemTax</span>
  - <span class="keyword parmname">GiftWrapPrice</span>
  - <span class="keyword parmname">ItemPrice</span>
  - <span class="keyword parmname">PromotionDiscount</span>
  - <span class="keyword parmname">GiftWrapTax</span>
  - <span class="keyword parmname">ShippingTax</span>
  - <span class="keyword parmname">ShippingPrice</span>
  - <span class="keyword parmname">ShippingDiscount</span>

<div class="section">

### Availability

This operation is available in all marketplaces.

</div>

<div class="section">

### Throttling

The <span class="keyword apiname">ListOrderItems</span> and
<span class="keyword apiname">ListOrderItemsByNextToken</span>
operations together share a **maximum request quota** of 30 and a
**restore rate** of one request every two seconds. For definitions of
throttling terminology, see [Orders
API](../orders-2013-09-01/Orders_Overview.md).

</div>

</div>

</div>

<div id="RequestParameters" class="topic reference nested1">

## Request parameters

<div class="body refbody">

<div class="tablenoborder">

| Name                                                | Description                                                                  | Required | Values                                  |
| --------------------------------------------------- | ---------------------------------------------------------------------------- | -------- | --------------------------------------- |
| <span class="keyword parmname">AmazonOrderId</span> | <span class="ph">An Amazon-defined order identifier, in 3-7-7 format.</span> | Yes      | <span class="ph">Type: xs:string</span> |

</div>

</div>

</div>

<div id="ResponseElements" class="topic reference nested1">

## Response elements

<div class="body refbody">

<div class="tablenoborder">

| Name                                                | Description                                                                                                                                                                                                                                                                                                                                                                         | Required | Values                                                                              |
| --------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------- | ----------------------------------------------------------------------------------- |
| <span class="keyword parmname">NextToken</span>     | A generated string used to pass information to your next request. If <span class="keyword parmname">NextToken</span> is returned, pass the value of <span class="keyword parmname">NextToken</span> to <span class="keyword apiname">ListOrderItemsByNextToken</span>. If <span class="keyword parmname">NextToken</span> is not returned, there are no more order items to return. | No       | <span class="ph">Type: xs:string</span>                                             |
| <span class="keyword parmname">AmazonOrderId</span> | <span class="ph">An Amazon-defined order identifier, in 3-7-7 format.</span>                                                                                                                                                                                                                                                                                                        | Yes      | <span class="ph">Type: xs:string</span>                                             |
| <span class="keyword parmname">OrderItems</span>    | A list of order items.                                                                                                                                                                                                                                                                                                                                                              | Yes      | Type: List of [OrderItem](Orders_Datatypes.md#OrderItem "OrderItem information.") |

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
https://mws.amazonservices.jp/Orders/2013-09-01
  ?AWSAccessKeyId=0PB842EXAMPLE7N4ZTR2
  &Action=ListOrderItems
  &MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
  &SellerId=A1XEXAMPLE5E6
  &AmazonOrderId=058-1233752-8214740
  &Signature=ZQLpf8vEXAMPLE0iC265pf18n0%3D
  &SignatureVersion=2
  &SignatureMethod=HmacSHA256
  &Timestamp=2013-09-05T18%3A12%3A21.687Z
  &Version=2013-09-01 
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
code</span>
</span>

<div class="sectiondiv content">

``` pre codeblock
<ListOrderItemsResponse xmlns="https://mws.amazonservices.com/Orders/2013-09-01">
    <ListOrderItemsResult>
        <NextToken>MRgZW55IGNhcm5hbCBwbGVhc3VyZS6=</NextToken>
        <AmazonOrderId>058-1233752-8214740</AmazonOrderId>
        <OrderItems>
            <OrderItem>
                <ASIN>BT0093TELA</ASIN>
                <OrderItemId>68828574383266</OrderItemId>
                <BuyerCustomizedInfo>
                    <CustomizedURL>https://zme-caps.amazon.com/t/bR6qHkzSOxuB/J8nbWhze0Bd3DkajkOdY-XQbWkFralegp2sr_QZiKEE/1</CustomizedURL>
                </BuyerCustomizedInfo>
                <SellerSKU>CBA_OTF_1</SellerSKU>
                <Title>Example item name</Title>
                <QuantityOrdered>1</QuantityOrdered>
                <QuantityShipped>1</QuantityShipped>
                <ProductInfo>
                    <NumberOfItems>12</NumberOfItems>
                </ProductInfo>
                <PointsGranted>
                    <PointsNumber>10</PointsNumber>
                    <PointsMonetaryValue>
                        <CurrencyCode>JPY</CurrencyCode>
                        <Amount>10.00</Amount>
                    </PointsMonetaryValue>
                </PointsGranted>
                <ItemPrice>
                    <CurrencyCode>JPY</CurrencyCode>
                    <Amount>25.99</Amount>
                </ItemPrice>
                <ShippingPrice>
                    <CurrencyCode>JPY</CurrencyCode>
                    <Amount>1.26</Amount>
                </ShippingPrice>
                <ScheduledDeliveryEndDate>2013-09-09T01:30:00.000-06:00 </ScheduledDeliveryEndDate>
                <ScheduledDeliveryStartDate>2013-09-071T02:00:00.000-06:00 </ScheduledDeliveryStartDate>
                <CODFee>
                    <CurrencyCode>JPY</CurrencyCode>
                    <Amount>10.00</Amount>
                </CODFee>
                <CODFeeDiscount>
                    <CurrencyCode>JPY</CurrencyCode>
                    <Amount>1.00</Amount>
                </CODFeeDiscount>
                <IsGift>false</IsGift>
                <IsTransparency>true</IsTransparency>
                <GiftMessageText>For you!</GiftMessageText>
                <GiftWrapPrice>
                    <CurrencyCode>JPY</CurrencyCode>
                    <Amount>1.99</Amount>
                </GiftWrapPrice>
                <GiftWrapLevel>Classic</GiftWrapLevel>
                <PriceDesignation>BusinessPrice</PriceDesignation>
            </OrderItem>
            <OrderItem>
                <ASIN>BCTU1104UEFB</ASIN>
                <OrderItemId>79039765272157</OrderItemId>
                <SellerSKU>CBA_OTF_5</SellerSKU>
                <Title>Example item name</Title>
                <QuantityOrdered>2</QuantityOrdered>
                <ItemPrice>
                    <CurrencyCode>JPY</CurrencyCode>
                    <Amount>17.95</Amount>
                </ItemPrice>
                <PromotionIds>
                    <PromotionId>FREESHIP</PromotionId>
                </PromotionIds>
                <ConditionId>Used</ConditionId>
                <ConditionSubtypeId>Mint</ConditionSubtypeId>
                <ConditionNote>Example ConditionNote</ConditionNote>
                <IsGift>false</IsGift>
                <IsTransparency>false</IsTransparency>
                <PriceDesignation>BusinessPrice</PriceDesignation>
                <TaxCollection>
                    <Model>MarketplaceFacilitator</Model>
                    <ResponsibleParty>Amazon Services, Inc.</ResponsibleParty>
                </TaxCollection>
            </OrderItem>
        </OrderItems>
    </ListOrderItemsResult>
    <ResponseMetadata>
        <RequestId>88faca76-b600-46d2-b53c-0c8c4533e43a</RequestId>
    </ResponseMetadata>
</ListOrderItemsResponse>
```

[↑ Top](#Examples)

</div>

</div>

</div>

</div>

<div id="RelatedActions" class="topic nested1">

## Related topics

<div class="body">

[Orders
API](../orders-2013-09-01/Orders_Overview.md)

[ListOrderItemsByNextToken](Orders_ListOrderItemsByNextToken.md "Returns the next page of order items using the NextToken parameter.")

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
