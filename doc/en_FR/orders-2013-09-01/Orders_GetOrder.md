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

<div id="Orders_GetOrder" class="nested0">

# GetOrder

<div class="body">

<span class="ph">Returns orders based on the
<span class="keyword parmname">AmazonOrderId</span> values that you
specify.</span>

</div>

<div id="Description" class="topic concept nested1">

## Description

<div class="body conbody">

<div class="section">

The <span class="keyword apiname">GetOrder</span> operation returns an
order for each <span class="keyword parmname">AmazonOrderId</span> that
you specify, up to a maximum of 50. The
<span class="keyword apiname">GetOrder</span> operation includes order
information for each order returned, including
<span class="keyword parmname">PurchaseDate</span>,
<span class="keyword parmname">OrderStatus</span>,
<span class="keyword parmname">FulfillmentChannel</span>, and
<span class="keyword parmname">LastUpdateDate</span>.

</div>

<div class="section">

### Availability of buyer contact and charge information

The following tables show when the
<span class="keyword apiname">GetOrder</span> operation returns buyer
contact information (<span class="keyword parmname">BuyerEmail</span>,
<span class="keyword parmname">BuyerName</span>,
<span class="keyword parmname">ShippingAddress</span>) and charge
information
(<span class="keyword parmname">OrderTotal</span>).

<div class="tablenoborder">

| For a standard order with this order status:                                                                                                           | …the GetOrder operation returns these buyer contact and charge information response elements:                                                                                                                          |
| ------------------------------------------------------------------------------------------------------------------------------------------------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| <span class="keyword parmname">Pending</span>                                                                                                          | None                                                                                                                                                                                                                   |
| <span class="keyword parmname">Unshipped</span>, <span class="keyword parmname">PartiallyShipped</span>, <span class="keyword parmname">Shipped</span> | <span class="keyword parmname">BuyerEmail</span><sup>1</sup>, <span class="keyword parmname">BuyerName</span>, <span class="keyword parmname">ShippingAddress</span>, <span class="keyword parmname">OrderTotal</span> |

<span class="tablecap">Table 1. Standard
orders</span>

</div>

<div class="tablenoborder">

| For a pre-order with this order status:                                                                                                                | …the GetOrder operation returns these buyer contact and charge information response elements:                                                                                                                          |
| ------------------------------------------------------------------------------------------------------------------------------------------------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| <span class="keyword parmname">PendingAvailability</span><sup>2</sup>, <span class="keyword parmname">Pending</span>                                   | <span class="keyword parmname">BuyerEmail</span><sup>1</sup>, <span class="keyword parmname">BuyerName</span>                                                                                                          |
| <span class="keyword parmname">Unshipped</span>, <span class="keyword parmname">PartiallyShipped</span>, <span class="keyword parmname">Shipped</span> | <span class="keyword parmname">BuyerEmail</span><sup>1</sup>, <span class="keyword parmname">BuyerName</span>, <span class="keyword parmname">ShippingAddress</span>, <span class="keyword parmname">OrderTotal</span> |

<span class="tablecap">Table 2. Pre-orders</span>

</div>

1.  <span class="keyword parmname">BuyerEmail</span> is not returned for
    <span class="ph">Fulfillment by Amazon</span> gift orders.
2.  The <span class="keyword parmname">PendingAvailability</span> status
    is available only for pre-orders in Japan.

</div>

<div class="section">

### Availability

This operation is available in all marketplaces.

</div>

<div class="section">

### Throttling

The <span class="keyword apiname">GetOrder</span> operation has a
**maximum request quota** of six and a **restore rate** of one request
every minute. For definitions of throttling terminology, see [Orders
API](../orders-2013-09-01/Orders_Overview.html).

</div>

</div>

</div>

<div id="RequestParameters" class="topic reference nested1">

## Request parameters

<div class="body refbody">

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
<td><span class="keyword parmname">AmazonOrderId</span></td>
<td>A list of <span class="keyword parmname">AmazonOrderId</span> values. An <span class="keyword parmname">AmazonOrderId</span> is an Amazon-defined order identifier, in 3-7-7 format.</td>
<td>Yes</td>
<td>Maximum: 50
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div id="ResponseElements" class="topic reference nested1">

## Response elements

<div class="body refbody">

<div class="tablenoborder">

| Name                                         | Description       | Required | Values                                                                  |
| -------------------------------------------- | ----------------- | -------- | ----------------------------------------------------------------------- |
| <span class="keyword parmname">Orders</span> | A list of orders. | Yes      | Type: List of [Order](Orders_Datatypes.html#Order "Order information.") |

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
https://mws.amazonservices.jp/Orders/2013-09-01
  ?AWSAccessKeyId=0PB842EXAMPLE7N4ZTR2
  &Action=GetOrder
  &AmazonOrderId.Id.1=902-3159896-1390916
  &MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
  &SellerId=A2986ZQ066CH2F
  &Signature=ZQLpf8vEXAMPLE0iC265pf18n0%3D
  &SignatureVersion=2
  &SignatureMethod=HmacSHA256
  &LastUpdatedAfter=2017-02-01T18%3A12%3A21
  &Timestamp=2017-02-05T18%3A12%3A21.687Z
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
<GetOrderResponse xmlns="https://mws.amazonservices.com/
    Orders/2013-09-01">
    <GetOrderResult>
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
                <MarketplaceId>ATVPDKIKX0DER</MarketplaceId>>
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
    </GetOrderResult>
    <ResponseMetadata>
        <RequestId>88faca76-b600-46d2-b53c-0c8c4533e43a</RequestId>
    </ResponseMetadata>
</GetOrderResponse>
```

[↑ Top](#Examples)

</div>

</div>

</div>

</div>

<div id="RelatedActions" class="topic nested1">

## Related topics

<div class="body">

[Orders API](../orders-2013-09-01/Orders_Overview.html)

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