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

<div id="Orders_ListOrderItemsByNextToken" class="nested0">

# ListOrderItemsByNextToken

<div class="body">

<span class="ph">Returns the next page of order items using the
<span class="keyword parmname">NextToken</span> parameter.</span>

</div>

<div id="Description" class="topic concept nested1">

## Description

<div class="body conbody">

The <span class="keyword apiname">ListOrderItemsByNextToken</span>
operation returns the next page of order items using the
<span class="keyword parmname">NextToken</span> value that was returned
by your previous request to either
<span class="keyword apiname">ListOrderItems</span> or
<span class="keyword apiname">ListOrderItemsByNextToken</span>. If
<span class="keyword parmname">NextToken</span> is not returned, there
are no more pages to return.

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
API](../orders-2013-09-01/Orders_Overview.html).

</div>

</div>

</div>

<div id="RequestParameters" class="topic reference nested1">

## Request parameters

<div class="body refbody">

<div class="tablenoborder">

| Name                                            | Description                                                                                                                                                                                       | Required | Values                                  |
| ----------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------- | --------------------------------------- |
| <span class="keyword parmname">NextToken</span> | A string token returned in the response of your previous request to either <span class="keyword apiname">ListOrderItems</span> or <span class="keyword apiname">ListOrderItemsByNextToken</span>. | Yes      | <span class="ph">Type: xs:string</span> |

</div>

</div>

</div>

<div id="ResponseElements" class="topic reference nested1">

## Response elements

<div class="body refbody">

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
https://mws.amazonservices.com/Orders/2013-09-01
  ?AWSAccessKeyId=0PB842EXAMPLE7N4ZTR2
  &Action=ListOrderItemsByNextToken
  &MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
  &SellerId=A1XEXAMPLE5E6
  &NextToken=MRgZW55IGNhcm5hbCBwbGVhc3VyZS6%3D
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
[Response format](../dev_guide/DG_ResponseFormat.html).</span>

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre codeblock
<?xml version="1.0"?>
<ListOrderItemsByNextTokenResponse xmlns="https://mws.amazonservices.com/Orders/2013-09-01">
    <ListOrderItemsByNextTokenResult>
        <NextToken>MRgZW55IGNhcm5hbCBwbGVhc3VyZS6=</NextToken>
        <AmazonOrderId>058-1233752-8214740</AmazonOrderId>
        <OrderItems>
            <OrderItem>
                <ASIN>BT0093TELA</ASIN>
                <OrderItemId>68828574383266</OrderItemId>
                <SellerSKU>CBA_OTF_1</SellerSKU>
                <Title>Example item name</Title>
                <QuantityOrdered>1</QuantityOrdered>
                <QuantityShipped>1</QuantityShipped>
                <ItemPrice>
                    <CurrencyCode>USD</CurrencyCode>
                    <Amount>25.99</Amount>
                </ItemPrice>
                <ShippingPrice>
                    <CurrencyCode>USD</CurrencyCode>
                    <Amount>1.26</Amount>
                </ShippingPrice>
                <ScheduledDeliveryEndDate>2013-09-091T01:30:00.000-06:00
                </ScheduledDeliveryEndDate>
                <ScheduledDeliveryStartDate>2013-09-06T02:00:00.000-06:00
                </ScheduledDeliveryStartDate>
                <CODFee>
                    <CurrencyCode>USD</CurrencyCode>
                    <Amount>10.00</Amount>
                </CODFee>
                <CODFeeDiscount>
                    <CurrencyCode>USD</CurrencyCode>
                    <Amount>1.00</Amount>
                </CODFeeDiscount>
                <IsGift>false</IsGift>
                <GiftMessageText>For you!</GiftMessageText>
                <GiftWrapPrice>
                    <CurrencyCode>USD</CurrencyCode>
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
                    <CurrencyCode>USD</CurrencyCode>
                    <Amount>17.95</Amount>
                </ItemPrice>
                <PromotionIds>
                    <PromotionId>FREESHIP</PromotionId>
                </PromotionIds>
                <ConditionId>Used</ConditionId>
                <ConditionSubtypeId>Mint</ConditionSubtypeId>
                <ConditionNote>Example ConditionNote</ConditionNote>
                <IsGift>false</IsGift>
                <IsTransparency>true</IsTransparency>
                <PriceDesignation>BusinessPrice</PriceDesignation>
            </OrderItem>
        </OrderItems>
    </ListOrderItemsByNextTokenResult>
    <ResponseMetadata>
        <RequestId>88faca76-b600-46d2-b53c-0c8c4533e43a</RequestId>
    </ResponseMetadata>
</ListOrderItemsByNextTokenResponse>
```

[↑ Top](#Examples)

</div>

</div>

</div>

</div>

<div id="RelatedActions" class="topic nested1">

## Related topics

<div class="body">

[Using NextToken to request additional
pages](../dev_guide/DG_NextToken.html)

[Orders API](../orders-2013-09-01/Orders_Overview.html)

[ListOrderItems](../orders-2013-09-01/Orders_ListOrderItems.html)

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
