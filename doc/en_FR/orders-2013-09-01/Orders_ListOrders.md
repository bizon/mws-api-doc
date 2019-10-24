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

<div id="Orders_ListOrders" class="nested0">

# ListOrders

<div class="body">

<span class="ph">Returns orders created or updated during a time frame
that you specify.</span>

</div>

<div id="Description" class="topic concept nested1">

## Description

<div class="body conbody">

<div class="section">

The <span class="keyword apiname">ListOrders</span> operation returns a
list of orders created or updated during a time frame that you specify.
You define that time frame using the
<span class="keyword parmname">CreatedAfter</span> parameter or the
<span class="keyword parmname">LastUpdatedAfter</span> parameter. You
must use one of these parameters, but not both. You can also apply a
range of filtering criteria to narrow the list of orders that is
returned. The <span class="keyword apiname">ListOrders</span> operation
includes order information for each order returned, including
<span class="keyword parmname">AmazonOrderId</span>,
<span class="keyword parmname">OrderStatus</span>,
<span class="keyword parmname">FulfillmentChannel</span>, and
<span class="keyword parmname">LastUpdateDate</span>.

</div>

<div class="section">

### Availability of buyer contact and charge information

The following tables show when the
<span class="keyword apiname">ListOrders</span> operation returns buyer
contact information (<span class="keyword parmname">BuyerEmail</span>,
<span class="keyword parmname">BuyerName</span>,
<span class="keyword parmname">ShippingAddress</span>) and charge
information
(<span class="keyword parmname">OrderTotal</span>).

<div class="tablenoborder">

| For a standard order with this order status:                                                                                                           | …the ListOrders operation returns these buyer contact and charge information response elements:                                                                                                                        |
| ------------------------------------------------------------------------------------------------------------------------------------------------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| <span class="keyword parmname">Pending</span>                                                                                                          | None                                                                                                                                                                                                                   |
| <span class="keyword parmname">Unshipped</span>, <span class="keyword parmname">PartiallyShipped</span>, <span class="keyword parmname">Shipped</span> | <span class="keyword parmname">BuyerEmail</span><sup>1</sup>, <span class="keyword parmname">BuyerName</span>, <span class="keyword parmname">ShippingAddress</span>, <span class="keyword parmname">OrderTotal</span> |

<span class="tablecap">Table 1. Standard
orders</span>

</div>

<div class="tablenoborder">

| For a pre-order with this order status:                                                                                                                | …the ListOrders operation returns these buyer contact and charge information response elements:                                                                                                                        |
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

The <span class="keyword apiname">ListOrders</span> and
<span class="keyword apiname">ListOrdersByNextToken</span> operations
together share a **maximum request quota** of six and a **restore rate**
of one request every minute. For definitions of throttling terminology,
see [Orders API](../orders-2013-09-01/Orders_Overview.html).

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
<td><span class="keyword parmname">CreatedAfter</span></td>
<td>A date used for selecting orders created after (or at) a specified time.</td>
<td>Yes, if <span class="keyword parmname">LastUpdatedAfter</span> is not specified.
<p>Specifying both <span class="keyword parmname">CreatedAfter</span> and <span class="keyword parmname">LastUpdatedAfter</span> returns an error.</p></td>
<td><div class="note important">
<span class="importanttitle">Important:</span> Amazon does not guarantee that all orders created after the <span class="keyword parmname">CreatedAfter</span> date that you specify will be returned. Only orders created after (or on) the specified <span class="keyword parmname">CreatedAfter</span> date and before (or on) the <span class="keyword parmname">CreatedBefore</span> date in the response are returned. Always check the <span class="keyword parmname">CreatedBefore</span> response element to get the exact date range for the orders that are returned.
</div>
<p>Example:</p>
<p>You make a call at 2017-02-10T12:10:02, specifying a <span class="keyword parmname">CreatedAfter</span> date of 2017-02-01T18:12:02, and the <span class="keyword parmname">CreatedBefore</span> element in the response is 2017-02-10T12:05:02. This means that all of the orders created between 2017-02-01T18:12:02 and 2017-02-10T12:05:02 will be returned. An order that was created on 2017-02-10T12:08:02 will not be returned, even though it was created after 2017-02-01T18:12:02.</p>
<p>In <span class="ph"><a href="../dev_guide/DG_ISO8601.html" class="xref">ISO 8601 date time format</a></span>.</p>
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">CreatedBefore</span></td>
<td>A date used for selecting orders created before (or at) a specified time.</td>
<td>No</td>
<td><div class="note important">
<span class="importanttitle">Important:</span> Amazon does not guarantee that all orders created before the <span class="keyword parmname">CreatedBefore</span> date that you specify will be returned. Only orders created before (or on) the <span class="keyword parmname">CreatedBefore</span> date in the response are returned. Always check the <span class="keyword parmname">CreatedBefore</span> response element to get the exact date range for the orders that are returned.
</div>
<p>Example:</p>
<p>You make a call at 2017-02-10T12:10:02, specifying a <span class="keyword parmname">CreatedBefore</span> date of 2017-02-10T12:10:02, and the <span class="keyword parmname">CreatedBefore</span> element in the response is 2017-02-10T12:05:02. This means that orders created before (or on) 2017-02-10T12:05:02 will be returned. An order that was created on 2017-02-10T12:08:02 will not be returned, even though it was created before 2017-02-10T12:10:02.</p>
<p>Must be later than <span class="keyword parmname">CreatedAfter</span>.</p>
<p>In <span class="ph"><a href="../dev_guide/DG_ISO8601.html" class="xref">ISO 8601 date time format</a></span>.</p>
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">LastUpdatedAfter</span></td>
<td>A date used for selecting orders that were last updated after (or at) a specified time. An update is defined as any change in order status, including the creation of a new order. Includes updates made by Amazon and by the seller.</td>
<td>Yes, if <span class="keyword parmname">CreatedAfter</span> is not specified.
<p>Specifying both <span class="keyword parmname">CreatedAfter</span> and <span class="keyword parmname">LastUpdatedAfter</span> returns an error.</p>
<p>If <span class="keyword parmname">LastUpdatedAfter</span> is specified, then <span class="keyword parmname">BuyerEmail</span> and <span class="keyword parmname">SellerOrderId</span> cannot be specified.</p></td>
<td><div class="note important">
<span class="importanttitle">Important:</span> Amazon does not guarantee that all orders updated after the <span class="keyword parmname">LastUpdatedAfter</span> date that you specify will be returned. Only orders updated after (or on) the specified <span class="keyword parmname">LastUpdatedAfter</span> date and before (or on) the <span class="keyword parmname">LastUpdatedBefore</span> date in the response are returned. Always check the <span class="keyword parmname">LastUpdatedBefore</span> response element to get the exact date range for the orders that are returned.
</div>
<p>Example:</p>
<p>You make a call at 2017-02-10T12:10:02, specifying a <span class="keyword parmname">LastUpdatedAfter</span> date of 2017-02-01T12:10:02, and the <span class="keyword parmname">LastUpdatedBefore</span> element in the response is 2017-02-10T12:05:02. This means that all of the orders updated between 2017-02-01T12:10:02 and 2017-02-10T12:05:02 will be returned. An order that was updated on 2017-02-10T12:08:02 will not be returned, even though it was updated after 2017-02-01T12:10:02.</p>
<p>In <span class="ph"><a href="../dev_guide/DG_ISO8601.html" class="xref">ISO 8601 date time format</a></span>.</p>
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">LastUpdatedBefore</span></td>
<td>A date used for selecting orders that were last updated before (or at) a specified time. An update is defined as any change in order status, including the creation of a new order. Includes updates made by Amazon and by the seller.</td>
<td>No</td>
<td><div class="note important">
<span class="importanttitle">Important:</span> Amazon does not guarantee that all orders updated before the <span class="keyword parmname">LastUpdatedBefore</span> date that you specify will be returned. Only orders updated before (or on) the <span class="keyword parmname">LastUpdatedBefore</span> date in the response are returned. Always check the <span class="keyword parmname">LastUpdatedBefore</span> response element to get the exact date range for the orders that are returned.
</div>
<p>Example:</p>
<p>You make a call at 2017-02-10T12:10:02, specifying a <span class="keyword parmname">LastUpdatedBefore</span> date of 2017-02-10T12:10:02, and the <span class="keyword parmname">LastUpdatedBefore</span> element in the response is 2017-02-10T12:05:02. This means that orders updated before (or on) 2017-02-10T12:05:02 will be returned. An order that was updated on 2017-02-10T12:08:02 will not be returned, even though it was updated before 2017-02-10T12:10:02.</p>
<p>Must be later than <span class="keyword parmname">LastUpdatedAfter</span>.</p>
<p>In <span class="ph"><a href="../dev_guide/DG_ISO8601.html" class="xref">ISO 8601 date time format</a></span>.</p>
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">OrderStatus</span></td>
<td>A list of <span class="keyword parmname">OrderStatus</span> values. Used to select orders with a current status that matches one of the status values that you specify.</td>
<td>No</td>
<td><span class="keyword parmname">OrderStatus</span> values:
<dl>
<dt>PendingAvailability</dt>
<dd>This status is available for pre-orders only. The order has been placed, payment has not been authorized, and the release date of the item is in the future. The order is not ready for shipment. Note that Preorder is a possible <span class="keyword parmname">OrderType</span> value in Japan (JP) only.
</dd>
<dt>Pending</dt>
<dd>The order has been placed but payment has not been authorized. The order is not ready for shipment. Note that for orders with <span class="keyword parmname">OrderType</span> = Standard, the initial order status is Pending. For orders with <span class="keyword parmname">OrderType</span> = Preorder (available in JP only), the initial order status is PendingAvailability, and the order passes into the Pending status when the payment authorization process begins.
</dd>
<dt>Unshipped </dt>
<dd>Payment has been authorized and order is ready for shipment, but no items in the order have been shipped.
</dd>
<dt>PartiallyShipped </dt>
<dd>One or more (but not all) items in the order have been shipped.
</dd>
<dt>Shipped </dt>
<dd>All items in the order have been shipped.
</dd>
<dt>Canceled </dt>
<dd>The order was canceled.
</dd>
<dt>Unfulfillable </dt>
<dd>The order cannot be fulfilled. This state applies only to Amazon-fulfilled orders that were not placed on Amazon's retail web site.
</dd>
</dl>
<p><span class="keyword parmname">Unshipped</span> and <span class="keyword parmname">PartiallyShipped</span> must be used together in this version of the <span class="ph">Orders API section</span>. Using one and not the other returns an error.</p>
<p>Default: All</p>
<span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">MarketplaceId</span></td>
<td>A list of <span class="keyword parmname">MarketplaceId</span> values. Used to select orders that were placed in the Marketplaces that you specify.</td>
<td>Yes</td>
<td>Any Marketplace in which the seller is registered to sell.
<p>An error is returned if the value is not a Marketplace in which the seller is registered to sell.</p>
<p>Maximum: 50</p>
<span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">FulfillmentChannel</span></td>
<td>A list that indicates how an order was fulfilled.</td>
<td>No</td>
<td><span class="keyword parmname">FulfillmentChannel</span> values:
<dl>
<dt>AFN </dt>
<dd>Fulfilled by Amazon
</dd>
<dt>MFN </dt>
<dd>Fulfilled by the seller
</dd>
</dl>
<p>Default: All</p>
<span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">PaymentMethod</span></td>
<td>A list of <span class="keyword parmname">PaymentMethod</span> values. Used to select orders paid for with the payment methods that you specify.</td>
<td>No</td>
<td><span class="keyword parmname">PaymentMethod</span> values:
<dl>
<dt>COD </dt>
<dd>Cash on delivery
</dd>
<dt>CVS </dt>
<dd>Convenience store payment
</dd>
<dt>Other </dt>
<dd>Any payment method other than COD or CVS
</dd>
</dl>
<div class="note note">
<span class="notetitle">Note:</span> COD and CVS values are valid only in Japan (JP).
</div>
<p>Default: All</p>
<span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">BuyerEmail</span></td>
<td>The e-mail address of a buyer. Used to select only the orders that contain the specified e-mail address.</td>
<td>No.
<p>If <span class="keyword parmname">BuyerEmail</span> is specified, then <span class="keyword parmname">FulfillmentChannel</span>, <span class="keyword parmname">OrderStatus</span>, <span class="keyword parmname">PaymentMethod</span>, <span class="keyword parmname">LastUpdatedAfter</span>, <span class="keyword parmname">LastUpdatedBefore</span>, and <span class="keyword parmname">SellerOrderId</span> cannot be specified.</p></td>
<td>The e-mail address that you provide in your request can be anonymized (by Amazon), or non-anonymized.
<p>Default: All</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">SellerOrderId</span></td>
<td>An order identifier that is specified by the seller. Not an Amazon order identifier. Used to select only the orders that match a seller-specified order identifier.</td>
<td>No.
<p>If <span class="keyword parmname">SellerOrderId</span> is specified, then <span class="keyword parmname">FulfillmentChannel</span>, <span class="keyword parmname">OrderStatus</span>, <span class="keyword parmname">PaymentMethod</span>, <span class="keyword parmname">LastUpdatedAfter</span>, <span class="keyword parmname">LastUpdatedBefore</span>, and <span class="keyword parmname">BuyerEmail</span> cannot be specified.</p></td>
<td>Default: All
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">MaxResultsPerPage</span></td>
<td>A number that indicates the maximum number of orders that can be returned per page.</td>
<td>No</td>
<td>Value must be 1 - 100.
<p>Default: 100</p>
<p>Type: xs:positiveInteger</p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">EasyShipShipmentStatus</span></td>
<td>A list of <span class="keyword parmname">EasyShipShipmentStatus</span> values. Used to select Easy Ship orders with current statuses that match the status values that you specify. If <span class="keyword parmname">EasyShipShipmentStatus</span> is specified, only <span class="ph">Amazon Easy Ship</span> orders are returned.
<p><span class="ph">This parameter is valid only in the India marketplace.</span></p></td>
<td>No</td>
<td><span class="keyword parmname">EasyShipShipmentStatus</span> values:
<dl>
<dt>PendingPickUp </dt>
<dd>Amazon has not yet picked up the package from the seller.
</dd>
<dt>LabelCanceled </dt>
<dd>The seller canceled the pickup.
</dd>
<dt>PickedUp </dt>
<dd>Amazon has picked up the package from the seller.
</dd>
<dt>OutForDelivery </dt>
<dd>The package is out for delivery.
</dd>
<dt>Damaged </dt>
<dd>The package was damaged by the carrier.
</dd>
<dt>Delivered </dt>
<dd>Package has been delivered to the buyer.
</dd>
<dt>RejectedByBuyer </dt>
<dd>Package has been rejected by the buyer.
</dd>
<dt>Undeliverable </dt>
<dd>The package cannot be delivered.
</dd>
<dt>ReturnedToSeller </dt>
<dd>The package was not delivered to the customer and was returned to the seller.
</dd>
<dt>ReturningToSeller </dt>
<dd>The package was not delivered to the customer and is being returned to the seller.
</dd>
<dt>Lost </dt>
<dd>Package was lost by the carrier.
</dd>
</dl>
<span class="ph">Type: xs:string</span></td>
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
<td><span class="keyword parmname">NextToken</span></td>
<td>A generated string used to pass information to your next request. If <span class="keyword parmname">NextToken</span> is returned, pass the value of <span class="keyword parmname">NextToken</span> to <span class="keyword apiname">ListOrdersByNextToken</span>. If <span class="keyword parmname">NextToken</span> is not returned, there are no more orders to return.</td>
<td>No</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">LastUpdatedBefore</span></td>
<td>A date returned if you specified <span class="keyword parmname">LastUpdatedAfter</span> in the request. Only orders updated before (or on) this date are returned.</td>
<td>No</td>
<td>In <span class="ph"><a href="../dev_guide/DG_ISO8601.html" class="xref">ISO 8601 date time format</a></span>.
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">CreatedBefore</span></td>
<td>A date returned if you specified <span class="keyword parmname">CreatedAfter</span> in the request. Only orders created before (or on) this date are returned.</td>
<td>No</td>
<td>In <span class="ph"> <a href="../dev_guide/DG_ISO8601.html" class="xref">ISO 8601 date time format</a> </span>.
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Orders</span></td>
<td>A list of orders.</td>
<td>No</td>
<td>Type: List of <a href="Orders_Datatypes.html#Order" class="xref" title="Order information.">Order</a></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div id="Examples" class="topic reference nested1">

## Examples

<div class="body refbody">

<div id="Examples__JP_Example_Request" class="section">

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
  &Action=ListOrders
  &MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
  &MarketplaceId.Id.1=ATVPDKIKX0DER
  &MarketplaceId.Id.2=A2Q3Y263D00KWC
  &MarketplaceId.Id.3=A1VC38T7YXB528  
  &FulfillmentChannel.Channel.1=MFN
  &PaymentMethod.Method.1=COD
  &PaymentMethod.Method.2=Other
  &OrderStatus.Status.1=Unshipped
  &OrderStatus.Status.2=PendingAvailability
  &SellerId=A2NEXAMPLETF53
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

<div id="Examples__JP_Example_Response" class="section">

### Example response

<span class="ph">For information about standard response formatting, see
[Response format](../dev_guide/DG_ResponseFormat.html).</span>

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre codeblock
<?xml version="1.0"?>
<ListOrdersResponse xmlns="https://mws.amazonservices.com/
    Orders/2013-09-01">
    <ListOrdersResult>
        <NextToken>2YgYW55IGNhcm5hbCBwbGVhc3VyZS4=</NextToken>
        <LastUpdatedBefore>2017-02-25T18%3A10%3A21.687Z</LastUpdatedBefore>
        <Orders>
            <Order>
                <AmazonOrderId>902-3159896-1390916</AmazonOrderId>
                <PurchaseDate>2017-02-20T19:49:35Z</PurchaseDate>
                <LastUpdateDate>2017-02-20T19:49:35Z</LastUpdateDate>
                <OrderStatus>Unshipped</OrderStatus>
                <FulfillmentChannel>MFN</FulfillmentChannel>
                <SalesChannel>Amazon.com</SalesChannel>
                <ShippingAddress>
                    <Name>Buyer name</Name>
                    <AddressLine1>1234 Any St.</AddressLine1>
                    <City>Seattle</City>
                    <PostalCode>98103</PostalCode>
                    <CountryCode>US</CountryCode>
                    <AddressType>Commercial</AddressType>
                </ShippingAddress>
                <OrderTotal>
                    <CurrencyCode>USD</CurrencyCode>
                    <Amount>25.00</Amount>
                </OrderTotal>
                <NumberOfItemsShipped>0</NumberOfItemsShipped>
                <NumberOfItemsUnshipped>1</NumberOfItemsUnshipped>
                <PaymentMethod>Other</PaymentMethod>
                <PaymentMethodDetails>
                    <PaymentMethodDetail>CreditCard</PaymentMethodDetail>
                </PaymentMethodDetails>
                <MarketplaceId>ATVPDKIKX0DER</MarketplaceId>
                <BuyerEmail>5vlhEXAMPLEh9h5@marketplace.amazon.com</BuyerEmail>
                <BuyerName>Buyer name</BuyerName>
                <BuyerTaxInfo>
                    <CompanyLegalName>Company Name</CompanyLegalName>
                    <TaxingRegion>US</TaxingRegion>
                    <TaxClassifications>
                        <TaxClassification>
                            <Name>VATNumber</Name>
                            <Value>XXX123</Value>
                        </TaxClassification>
                    </TaxClassifications>
                </BuyerTaxInfo>
                <OrderType>StandardOrder</OrderType>
                <EarliestShipDate>2017-02-20T19:51:16Z</EarliestShipDate>
                <LatestShipDate>2017-02-25T19:49:35Z</LatestShipDate>
                <IsBusinessOrder>true</IsBusinessOrder>
                <PurchaseOrderNumber>PO12345678</PurchaseOrderNumber>
                <IsPrime>false</IsPrime>
                <IsPremiumOrder>false</IsPremiumOrder>
            </Order>
            <Order>
                <AmazonOrderId>483-3488972-0896720</AmazonOrderId>
                <PurchaseDate>20178-02-20T19:49:35Z</PurchaseDate>
                <LastUpdateDate>2017-02-20T19:49:35Z</LastUpdateDate>
                <OrderStatus>Unshipped</OrderStatus>
                <FulfillmentChannel>MFN</FulfillmentChannel>
                <ShippingAddress>
                    <Name>Buyer name</Name>
                    <AddressLine1>1234 Avenida Qualquer</AddressLine1>
                    <City>Sao Paulo</City>
                    <PostalCode>08474-130</PostalCode>
                    <CountryCode>BR</CountryCode>
                    <AddressType>Residential</AddressType>
                </ShippingAddress>
                <OrderTotal>
                    <CurrencyCode>BRL</CurrencyCode>
                    <Amount>100.00</Amount>
                </OrderTotal>
                <NumberOfItemsShipped>0</NumberOfItemsShipped>
                <NumberOfItemsUnshipped>1</NumberOfItemsUnshipped>
                <PaymentMethod>Other</PaymentMethod>
                <PaymentMethodDetails>
                    <PaymentMethodDetail>CreditCard</PaymentMethodDetail>
                </PaymentMethodDetails>
                <MarketplaceId>A2Q3Y263D00KWC</MarketplaceId>
                <BuyerEmail>5vlhEXAMPLEh9h5@marketplace.amazon.com.br</BuyerEmail>
                <BuyerName>John Jones</BuyerName>
                <BuyerCounty>Vila Olimpia</BuyerCounty>
                <BuyerTaxInfo>
                    <TaxingRegion>BR</TaxingRegion>
                    <TaxClassifications>
                        <TaxClassification>
                            <Name>CSTNumber</Name>
                            <Value>XXX123</Value>
                        </TaxClassification>
                    </TaxClassifications>
                </BuyerTaxInfo>
                <EarliestShipDate>2017-02-20T19:51:16Z</EarliestShipDate>
                <LatestShipDate>2017-02-25T19:49:35Z</LatestShipDate>
                <IsBusinessOrder>false</IsBusinessOrder>
                <IsPrime>false</IsPrime>
                <IsPremiumOrder>false</IsPremiumOrder>
            </Order>
            <Order>
                <AmazonOrderId>058-1233752-8214740</AmazonOrderId>
                <PurchaseDate>2017-02-05T00%3A06%3A07.000Z</PurchaseDate>
                <LastUpdateDate>2017-02-07T12%3A43%3A16.000Z</LastUpdateDate>
                <OrderStatus>Unshipped</OrderStatus>
                <FulfillmentChannel>MFN</FulfillmentChannel>
                <ShipServiceLevel>Std JP Kanto8</ShipServiceLevel>
                <ShippingAddress>
                    <Name>Jane Smith</Name>
                    <AddressLine1>1-2-10 Akasaka</AddressLine1>
                    <City>Tokyo</City>
                    <PostalCode>107-0053</PostalCode>
                    <CountryCode>JP</CountryCode>                  
                </ShippingAddress>
                <OrderTotal>
                    <CurrencyCode>JPY</CurrencyCode>
                    <Amount>1507.00</Amount>
                </OrderTotal>
                <NumberOfItemsShipped>0</NumberOfItemsShipped>
                <NumberOfItemsUnshipped>1</NumberOfItemsUnshipped>
                <PaymentExecutionDetail>
                    <PaymentExecutionDetailItem>
                        <Payment>
                            <Amount>10.00</Amount>
                            <CurrencyCode>JPY</CurrencyCode>
                        </Payment>
                        <PaymentMethod>PointsAccount</PaymentMethod>
                    </PaymentExecutionDetailItem>
                    <PaymentExecutionDetailItem>
                        <Payment>
                            <Amount>317.00</Amount>
                            <CurrencyCode>JPY</CurrencyCode>
                        </Payment>
                        <PaymentMethod>GC</PaymentMethod>
                    </PaymentExecutionDetailItem>
                    <PaymentExecutionDetailItem>
                        <Payment>
                            <Amount>1180.00</Amount>
                            <CurrencyCode>JPY</CurrencyCode>
                        </Payment>
                        <PaymentMethod>COD</PaymentMethod>
                    </PaymentExecutionDetailItem>
                </PaymentExecutionDetail>
                <PaymentMethod>COD</PaymentMethod>
                <PaymentMethodDetails>
                    <PaymentMethodDetail>COD</PaymentMethodDetail>
                </PaymentMethodDetails>
                <MarketplaceId>A1VC38T7YXB528</MarketplaceId>
                <BuyerEmail>5vlhEXAMPLEh9h5@marketplace.amazon.co.jp</BuyerEmail>
                <BuyerName>Jane Smith</BuyerName>
                <ShipmentServiceLevelCategory>Standard </ShipmentServiceLevelCategory>
                <OrderType>SourcingOnDemandOrder</OrderType>
                <IsBusinessOrder>false</IsBusinessOrder>
                <IsPrime>false</IsPrime>
                <IsPremiumOrder>false</IsPremiumOrder>
                <PromiseResponseDueDate>2017-08-31T23:58:44Z</PromiseResponseDueDate>
                <IsEstimatedShipDateSet>true</IsEstimatedShipDateSet>
            </Order>
        </Orders>
    </ListOrdersResult>
    <ResponseMetadata>
        <RequestId>88faca76-b600-46d2-b53c-0c8c4533e43a</RequestId>
    </ResponseMetadata>
</ListOrdersResponse>
```

[↑ Top](#Examples)

</div>

</div>

</div>

</div>

<div id="RelatedTopics" class="topic nested1">

## Related topics

<div class="body">

[Orders
API](../orders-2013-09-01/Orders_Overview.html)

[ListOrdersByNextToken](Orders_ListOrdersByNextToken.html "Returns the next page of orders using the NextToken parameter.")

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