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

<div id="Orders_ListOrdersByNextToken" class="nested0">

# ListOrdersByNextToken

<div class="body">

<span class="ph">Returns the next page of orders using the <span
class="keyword parmname">NextToken</span> parameter.</span>

</div>

<div id="Description" class="topic concept nested1">

## Description

<div class="body conbody">

The <span class="keyword apiname">ListOrdersByNextToken</span> operation
returns the next page of orders using the <span
class="keyword parmname">NextToken</span> value that was returned by
your previous request to either <span
class="keyword apiname">ListOrders</span> or <span
class="keyword apiname">ListOrdersByNextToken</span>. If <span
class="keyword parmname">NextToken</span> is not returned, there are no
more pages to return.

<div class="section">

### Availability

This operation is available in all marketplaces.

</div>

<div class="section">

### Throttling

The <span class="keyword apiname">ListOrders</span> and <span
class="keyword apiname">ListOrdersByNextToken</span> operations together
share a **maximum request quota** of six and a **restore rate** of one
request every minute. For definitions of throttling terminology, see
<a href="../orders-2013-09-01/Orders_Overview.md" class="xref">Orders API</a>.

</div>

</div>

</div>

<div id="RequestParameters" class="topic reference nested1">

## Request parameters

<div class="body refbody">

<div class="tablenoborder">

| Name                                            | Description                                                                                                                                                                               | Required | Values                                  |
|-------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------|-----------------------------------------|
| <span class="keyword parmname">NextToken</span> | A string token returned in the response of your previous request to either <span class="keyword apiname">ListOrders</span> or <span class="keyword apiname">ListOrdersByNextToken</span>. | Yes      | <span class="ph">Type: xs:string</span> |

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
see
<a href="../dev_guide/DG_RequiredRequestParameters.md" class="xref">Required request parameters</a>.</span>

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre
https://mws.amazonservices.jp/Orders/2013-09-01
  ?AWSAccessKeyId=0PB842EXAMPLE7N4ZTR2
  &Action=ListOrdersByNextToken
  &MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
  &SellerId=A2986ZQ066CH2F
  &Signature=ZQLpf8vEXAMPLE0iC265pf18n0%3D
  &SignatureVersion=2
  &SignatureMethod=HmacSHA256
  &NextToken=2YgYW55IGNhcm5hbCBwbGVhc3VyZS4%3D
  &Timestamp=2017-02-05T18%3A12%3A21.687Z
  &Version=2013-09-01
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
<ListOrdersByNextTokenResponse xmlns="https://mws.amazonservices.com/Orders/2013-09-01">
    <ListOrdersByNextTokenResult>
        <Orders>
            <Order>
                <AmazonOrderId>902-3159896-1390916</AmazonOrderId>
                <PurchaseDate>2017-01-20T19:49:35Z</PurchaseDate>
                <LastUpdateDate>2017-01-20T19:49:35Z</LastUpdateDate>
                <OrderStatus>Pending</OrderStatus>
                <FulfillmentChannel>MFN</FulfillmentChannel>
                <NumberOfItemsShipped>0</NumberOfItemsShipped>
                <NumberOfItemsUnshipped>0</NumberOfItemsUnshipped>
                <PaymentMethod>Other</PaymentMethod>
                <PaymentMethodDetails>
                    <PaymentMethodDetail>CreditCard</PaymentMethodDetail>
                    <PaymentMethodDetail>GiftCerificate</PaymentMethodDetail>
                </PaymentMethodDetails>
                <MarketplaceId>A21TJRUUN4KGV</MarketplaceId>
                <ShipmentServiceLevelCategory>Standard
                </ShipmentServiceLevelCategory>
                <OrderType>StandardOrder</OrderType>
                <EarliestShipDate>2017-01-20T19:51:16Z</EarliestShipDate>
                <LatestShipDate>2017-01-25T19:49:35Z</LatestShipDate>   
                <IsBusinessOrder>false</IsBusinessOrder>
                <IsPrime>false</IsPrime>
                <IsPremiumOrder>false</IsPremiumOrder>  
            </Order>
        </Orders>
    </ListOrdersByNextTokenResult>
    <ResponseMetadata>
        <RequestId>88faca76-b600-46d2-b53c-0c8c4533e43a</RequestId>
    </ResponseMetadata>
</ListOrdersByNextTokenResponse>
```

<a href="#Examples" class="xref">↑ Top</a>

</div>

</div>

</div>

</div>

<div id="RelatedActions" class="topic nested1">

## Related topics

<div class="body">

<a href="../dev_guide/DG_NextToken.md" class="xref">Using NextToken to request additional pages</a>

<a href="../orders-2013-09-01/Orders_Overview.md" class="xref">Orders API</a>

<a href="../orders-2013-09-01/Orders_ListOrders.md" class="xref">ListOrders</a>

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
