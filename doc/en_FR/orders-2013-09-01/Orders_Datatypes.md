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

<div id="Orders_Datatypes" class="nested0">

# Orders Datatypes

<div class="body">

The following datatypes are used in the response elements of the
<span class="ph">Amazon Marketplace Web Service (Amazon MWS)</span>
<span class="ph">Orders API
section</span>:

<div class="tablenoborder">

| Datatype                                                                                                                                                                                     | Description                                                                                                                                                                                              |
| -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Address](Orders_Datatypes.md#Address "The shipping address for the order.")                                                                                                               | <span class="ph">The shipping address for the order.</span>                                                                                                                                              |
| [BuyerCustomizedInfo](Orders_Datatypes.md#BuyerCustomizedInfo "Buyer information for custom orders from the Amazon Custom program.")                                                       | <span class="ph">Buyer information for custom orders from the <span class="ph">Amazon Custom</span> program.</span>                                                                                      |
| [BuyerTaxInfo](Orders_Datatypes.md#BuyerTaxInfo "Tax information about the buyer.")                                                                                                        | <span class="ph">Tax information about the buyer.</span>                                                                                                                                                 |
| [Money](Orders_Datatypes.md#Money "Currency type and amount.")                                                                                                                             | <span class="ph">Currency type and amount.</span>                                                                                                                                                        |
| [Order](Orders_Datatypes.md#Order "Order information.")                                                                                                                                    | <span class="ph">Order information.</span>                                                                                                                                                               |
| [OrderItem](Orders_Datatypes.md#OrderItem "OrderItem information.")                                                                                                                        | <span class="ph">OrderItem information.</span>                                                                                                                                                           |
| [PaymentExecutionDetailItem](Orders_Datatypes.md#PaymentExecutionDetailItem "Information about a sub-payment method used to pay for a COD order.")                                         | <span class="ph">Information about a sub-payment method used to pay for a COD order.</span>                                                                                                              |
| [PaymentMethodDetails](Orders_Datatypes.md#PaymentMethodDetails "A list of payment methods for the order.")                                                                                | <span class="ph">A list of payment methods for the order.</span>                                                                                                                                         |
| [PointsGranted](Orders_Datatypes.md#PointsGranted "The number and value of Amazon Points granted with the purchase of an item. This datatype is used only in the Japan marketplace.")      | <span class="ph">The number and value of <span class="ph">Amazon Points</span> granted with the purchase of an item.</span> <span class="ph">This datatype is used only in the Japan marketplace.</span> |
| [ProductInfo](Orders_Datatypes.md#ProductInfo "Product information for the item. This datatype is used only in the US, Spain, UK, France, Germany, Italy, India, and Japan marketplaces.") | <span class="ph">Product information for the item.</span> <span class="ph">This datatype is used only in the US, UK, Germany, and Japan marketplaces.</span>                                             |
| [TaxClassification](Orders_Datatypes.md#TaxClassification "A tax type and identifier.")                                                                                                    | <span class="ph">A tax type and identifier.</span>                                                                                                                                                       |
| [TaxCollection](Orders_Datatypes.md#TaxCollection "Information about withheld taxes.")                                                                                                     | <span class="ph">Information about withheld taxes.</span>                                                                                                                                                |

</div>

</div>

<div id="Address" class="topic reference nested1">

## Address

<div class="body refbody">

<span class="ph">The shipping address for the order.</span>

<div class="section">

### Operations

<div class="p">

The <span class="keyword cmdname">Address</span> datatype is used in a
response element of the following
    operations:

  - [ListOrders](../orders-2013-09-01/Orders_ListOrders.md)
  - [ListOrdersByNextToken](Orders_ListOrdersByNextToken.md "Returns the next page of orders using the NextToken parameter.")
  - [GetOrder](Orders_GetOrder.md "Returns orders based on the AmazonOrderId values that you specify.")

</div>

</div>

<div class="section">

### Datatype content

The following table shows the elements of the
<span class="keyword cmdname">Address</span> datatype:

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
<td><span class="keyword parmname">Name</span></td>
<td>The name.</td>
<td>Yes</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">AddressLine1</span></td>
<td>The street address.</td>
<td>No</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">AddressLine2</span></td>
<td>Additional street address information, if required.</td>
<td>No</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">AddressLine3</span></td>
<td>Additional street address information, if required.</td>
<td>No</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">City</span></td>
<td>The city.</td>
<td>No</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Municipality</span></td>
<td>The municipality.</td>
<td>No</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">County</span></td>
<td>The county.</td>
<td>No</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">District</span></td>
<td>The district.</td>
<td>No</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">StateOrRegion</span></td>
<td>The state or region.</td>
<td>No</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">PostalCode</span></td>
<td>The postal code.</td>
<td>No</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">CountryCode</span></td>
<td>The country code.</td>
<td>No</td>
<td><span class="ph">A two-character country code, in ISO 3166-1 alpha-2 format.</span>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Phone</span></td>
<td>The phone number.</td>
<td>No. Not returned for <span class="ph">Fulfillment by Amazon (FBA)</span> orders.</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">AddressType</span></td>
<td>Indicates whether the address is commercial or residential.
<p><span class="ph">This element is used only in the US marketplace.</span></p></td>
<td>No</td>
<td><span class="keyword parmname">AddressType</span> values: Commercial, Residential
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="BuyerCustomizedInfo" class="topic reference nested1">

## BuyerCustomizedInfo

<div class="body refbody">

<span class="ph">Buyer information for custom orders from the
<span class="ph">Amazon Custom</span> program.</span>

<div class="section">

### Operations

<div class="p">

The <span class="keyword cmdname">BuyerCustomizedInfo</span> datatype is
used in a response element of the following
    operations:

  - [ListOrderItems](../orders-2013-09-01/Orders_ListOrderItems.md)
  - [ListOrderItemsByNextToken](Orders_ListOrderItemsByNextToken.md "Returns the next page of order items using the NextToken parameter.")

</div>

</div>

<div class="section">

### Datatype content

The following table shows the elements of the
<span class="keyword cmdname">BuyerCustomizedInfo</span>
datatype:

<div class="tablenoborder">

| Name                                                | Description                                                                       | Required | Values                                  |
| --------------------------------------------------- | --------------------------------------------------------------------------------- | -------- | --------------------------------------- |
| <span class="keyword parmname">CustomizedURL</span> | The location of a zip file containing <span class="ph">Amazon Custom</span> data. | Yes      | <span class="ph">Type: xs:string</span> |

</div>

</div>

</div>

</div>

<div id="BuyerTaxInfo" class="topic reference nested1">

## BuyerTaxInfo

<div class="body refbody">

<span class="ph">Tax information about the buyer.</span>

<div class="section">

### Operations

<div class="p">

The <span class="keyword cmdname">BuyerTaxInfo</span> datatype is used
in a response element of the following
    operations:

  - [ListOrders](../orders-2013-09-01/Orders_ListOrders.md)
  - [ListOrdersByNextToken](Orders_ListOrdersByNextToken.md "Returns the next page of orders using the NextToken parameter.")
  - [GetOrder](Orders_GetOrder.md "Returns orders based on the AmazonOrderId values that you specify.")

</div>

</div>

<div class="section">

### Datatype content

The following table shows the elements of the
<span class="keyword cmdname">BuyerTaxInfo</span> datatype:

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
<td><span class="keyword parmname">CompanyLegalName</span></td>
<td>The legal name of the company.</td>
<td>No</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">TaxingRegion</span></td>
<td>The country or region imposing the tax.</td>
<td>No</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">TaxClassifications</span></td>
<td>A list of tax classifications.</td>
<td>No</td>
<td>Type: List of <a href="Orders_Datatypes.md#TaxClassification" class="xref" title="A tax type and identifier.">TaxClassification</a>.
<p>At least one <span class="keyword parmname">TaxClassification</span> response element is required.</p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="Money" class="topic reference nested1">

## Money

<div class="body refbody">

<span class="ph">Currency type and amount.</span>

<div id="Money__Operations" class="section">

### Operations

<div class="p">

The <span class="keyword cmdname">Money</span> datatype is used in a
response element of the following
    operations:

  - [ListOrders](../orders-2013-09-01/Orders_ListOrders.md)
  - [ListOrdersByNextToken](Orders_ListOrdersByNextToken.md "Returns the next page of orders using the NextToken parameter.")
  - [GetOrder](Orders_GetOrder.md "Returns orders based on the AmazonOrderId values that you specify.")
  - [ListOrderItems](../orders-2013-09-01/Orders_ListOrderItems.md)
  - [ListOrderItemsByNextToken](Orders_ListOrderItemsByNextToken.md "Returns the next page of order items using the NextToken parameter.")

</div>

</div>

<div id="Money__DatatypeContent" class="section">

### Datatype content

The following table shows the elements of the
<span class="keyword cmdname">Money</span>
datatype:

<div class="tablenoborder">

| Name                                               | Description                                                                                              | Required | Values                                  |
| -------------------------------------------------- | -------------------------------------------------------------------------------------------------------- | -------- | --------------------------------------- |
| <span class="keyword parmname">CurrencyCode</span> | Three-digit currency code. In <span class="ph"> [ISO 4217 format](../dev_guide/DG_ISO4217.md) </span>. | No       | <span class="ph">Type: xs:string</span> |
| <span class="keyword parmname">Amount</span>       | The currency amount.                                                                                     | No       | <span class="ph">Type: xs:string</span> |

</div>

</div>

</div>

</div>

<div id="Order" class="topic reference nested1">

## Order

<div class="body refbody">

<span class="ph">Order information.</span>

<div id="Order__Operations" class="section">

### Operations

<div class="p">

The <span class="keyword cmdname">Order</span> datatype is used in a
response element of the following
    operations:

  - [ListOrders](../orders-2013-09-01/Orders_ListOrders.md)
  - [ListOrdersByNextToken](Orders_ListOrdersByNextToken.md "Returns the next page of orders using the NextToken parameter.")
  - [GetOrder](Orders_GetOrder.md "Returns orders based on the AmazonOrderId values that you specify.")

</div>

</div>

<div id="Order__DatatypeContent" class="section">

### Datatype content

The following table shows the elements of the
<span class="keyword cmdname">Order</span> datatype:

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
<td>An Amazon-defined order identifier, in 3-7-7 format.</td>
<td>Yes</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">SellerOrderId</span></td>
<td>A seller-defined order identifier.</td>
<td>No</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">PurchaseDate</span></td>
<td>The date when the order was created.</td>
<td>Yes</td>
<td><span class="ph">Type: xs:dateTime</span></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">LastUpdateDate</span></td>
<td>The date when the order was last updated.
<div class="note note">
<span class="notetitle">Note:</span> <span class="keyword parmname">LastUpdateDate</span> is returned with an incorrect date for orders that were last updated before 2009-04-01.
</div></td>
<td>Yes</td>
<td>Date values in <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">OrderStatus</span></td>
<td>The current order status.</td>
<td>Yes</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">FulfillmentChannel</span></td>
<td>How the order was fulfilled: by Amazon (AFN) or by the seller (MFN).</td>
<td>No</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">SalesChannel</span></td>
<td>The sales channel of the first item in the order.</td>
<td>No</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">OrderChannel</span></td>
<td>The order channel of the first item in the order.</td>
<td>No</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">ShipServiceLevel</span></td>
<td>The shipment service level of the order.</td>
<td>No</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">ShippingAddress</span></td>
<td><span class="ph">The shipping address for the order.</span></td>
<td>No</td>
<td>Type: <a href="#Address" class="xref" title="The shipping address for the order.">Address</a></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">OrderTotal</span></td>
<td>The total charge for the order.</td>
<td>No</td>
<td>Type: <a href="#Money" class="xref" title="Currency type and amount.">Money</a></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">NumberOfItemsShipped</span></td>
<td>The number of items shipped.</td>
<td>No</td>
<td><span class="ph">Type: xs:int</span></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">NumberOfItemsUnshipped</span></td>
<td>The number of items unshipped.</td>
<td>No</td>
<td><span class="ph">Type: xs:int</span></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">PaymentExecutionDetail</span></td>
<td>Information about sub-payment methods for a Cash On Delivery (COD) order. A COD order is an order with <span class="keyword parmname">PaymentMethod</span> = COD. Contains one or more <span class="keyword parmname">PaymentExecutionDetailItem</span> response elements.
<div id="Order__PaymentExecutionDetail_Note" class="note note">
<span class="notetitle">Note:</span> For a COD order that is paid for using one sub-payment method, one <span class="keyword parmname">PaymentExecutionDetailItem</span> response element is returned, with <span class="keyword parmname">PaymentExecutionDetailItem/PaymentMethod</span> = COD. For a COD order that is paid for using multiple sub-payment methods, two or more <span class="keyword parmname">PaymentExecutionDetailItem</span> response elements are returned.
</div></td>
<td>No. Returned only for COD orders. Available only in Japan (JP).</td>
<td>Type: List of <a href="#PaymentExecutionDetailItem" class="xref" title="Information about a sub-payment method used to pay for a COD order.">PaymentExecutionDetailItem</a></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">PaymentMethod</span></td>
<td>The payment method for the order. This response element is limited to Cash On Delivery (COD) and Convenience Store (CVS) payment methods. Unless you need the specific COD payment information provided by the <span class="keyword parmname">PaymentExecutionDetailItem</span> element, we recommend using the <span class="keyword parmname">PaymentMethodDetails</span> response element to get payment method information.</td>
<td>No</td>
<td><span class="keyword parmname">PaymentMethod</span> values:
<ul>
<li>COD - Cash On Delivery. Available only in Japan (JP).</li>
<li>CVS - Convenience Store. Available only in JP.</li>
<li>Other - A payment method other than COD and CVS.</li>
</ul>
<div id="Order__PaymentMethod_Note" class="note note">
<span class="notetitle">Note:</span> Orders with <span class="keyword parmname">PaymentMethod</span> = COD can be paid for using multiple sub-payment methods. Each sub-payment method is represented by a <span class="keyword parmname">PaymentExecutionDetailItem</span> object.
</div>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">PaymentMethodDetails</span></td>
<td><span id="Order__sd_datatype_PaymentMethodDetails" class="ph">A list of payment methods for the order.</span></td>
<td>No</td>
<td>Type: <a href="Orders_Datatypes.md#PaymentMethodDetails" class="xref" title="A list of payment methods for the order.">PaymentMethodDetails</a></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">IsReplacementOrder</span></td>
<td><span class="ph">true if this is a replacement order.</span></td>
<td>No</td>
<td><span class="ph">Type: xs:boolean</span></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">ReplacedOrderId</span></td>
<td>The <span class="keyword parmname">AmazonOrderId</span> value for the order that is being replaced.</td>
<td>No. Returned only if <span class="keyword parmname">IsReplacementOrder</span> = true</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">MarketplaceId</span></td>
<td><span id="Order__MarketplaceId" class="ph">The anonymized identifier for the Marketplace where the order was placed.</span></td>
<td>No</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">BuyerEmail</span></td>
<td><span id="Order__BuyerEmail" class="ph">The anonymized e-mail address of the buyer.</span></td>
<td>No</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">BuyerName</span></td>
<td><span id="Order__BuyerName" class="ph">The name of the buyer.</span></td>
<td>No</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">BuyerCounty</span></td>
<td>The county of the buyer.</td>
<td>No. <span class="ph">This element is used only in the Brazil marketplace.</span></td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">BuyerTaxInfo</span></td>
<td><span class="ph">Tax information about the buyer.</span></td>
<td>No</td>
<td>Type: <a href="Orders_Datatypes.md#BuyerTaxInfo" class="xref" title="Tax information about the buyer.">BuyerTaxInfo</a></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">ShipmentServiceLevelCategory</span></td>
<td>The shipment service level category of the order.
<p><span class="keyword parmname">ShipmentServiceLevelCategory</span> values: Expedited, FreeEconomy, NextDay, SameDay, SecondDay, Scheduled, Standard</p></td>
<td>No</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">EasyShipShipmentStatus</span></td>
<td>The status of the <span class="ph">Amazon Easy Ship</span> order. This element is included only for <span class="ph">Amazon Easy Ship</span> orders.
<p><span class="keyword parmname">EasyShipShipmentStatus</span> values: PendingPickUp, LabelCanceled, PickedUp, OutForDelivery, Damaged, Delivered, RejectedByBuyer, Undeliverable, ReturnedToSeller, ReturningToSeller</p>
<p><span class="ph"><span class="ph">Amazon Easy Ship</span> is available only in the India marketplace.</span></p></td>
<td>No</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">OrderType</span></td>
<td>The type of the order.
<p><span class="keyword parmname">OrderType</span> values:</p>
<ul>
<li>StandardOrder - An order that contains items for which you currently have inventory in stock.</li>
<li>Preorder - An order that contains items with a release date that is in the future.</li>
<li>SourcingOnDemandOrder - A Sourcing On Demand order.</li>
</ul>
<div class="note note">
<span class="notetitle">Note:</span> Preorder and SourcingOnDemandOrder are possible <span class="keyword parmname">OrderType</span> values only in the Japan marketplace.
</div></td>
<td>No</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">EarliestShipDate</span></td>
<td>The start of the time period that you have committed to ship the order. In <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.
<div class="p">
<div class="note note">
<span class="notetitle">Note:</span> <span class="keyword parmname">EarliestShipDate</span> might not be returned for orders placed before February 1, 2013.
</div>
</div></td>
<td>No. Returned only for seller-fulfilled orders.</td>
<td><span class="ph">Type: xs:dateTime</span></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">LatestShipDate</span></td>
<td>The end of the time period that you have committed to ship the order. In <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.
<div class="note note">
<span class="notetitle">Note:</span> <span class="keyword parmname">LatestShipDate</span> might not be returned for orders placed before February 1, 2013.
</div></td>
<td>No. Returned only for seller-fulfilled orders.</td>
<td><span class="ph">Type: xs:dateTime</span></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">EarliestDeliveryDate</span></td>
<td>The start of the time period that you have commited to fulfill the order. In <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.</td>
<td>No. Returned only for seller-fulfilled orders that do not have a PendingAvailability, Pending, or Canceled status.</td>
<td><span class="ph">Type: xs:dateTime</span></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">LatestDeliveryDate</span></td>
<td>The end of the time period that you have commited to fulfill the order. In <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.</td>
<td>No. Returned only for seller-fulfilled orders that do not have a PendingAvailability, Pending, or Canceled status.</td>
<td><span class="ph">Type: xs:dateTime</span></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">IsBusinessOrder</span></td>
<td>true if the order is an Amazon Business order. An Amazon Business order is an order where the buyer is a Verified Business Buyer.
<p><span class="keyword parmname">IsBusinessOrder</span> values:</p>
<ul>
<li>true - The order is an Amazon Business order.</li>
<li>false - The order is not an Amazon Business order.</li>
</ul></td>
<td>No</td>
<td><span class="ph">Type: xs:boolean</span></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">PurchaseOrderNumber</span></td>
<td>The purchase order (PO) number entered by the buyer at checkout.</td>
<td>No. Returned only for orders where the buyer entered a PO number at checkout.</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">IsPrime</span></td>
<td>true if the order is a seller-fulfilled Amazon Prime order.</td>
<td>No</td>
<td><span class="ph">Type: xs:boolean</span></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">IsPremiumOrder</span></td>
<td>true if the order has a Premium Shipping Service Level Agreement. For more information about Premium Shipping orders, see &quot;Premium Shipping Options&quot; in the Seller Central Help for your marketplace.</td>
<td>No</td>
<td><span class="ph">Type: xs:boolean</span></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">PromiseResponseDueDate</span></td>
<td>Indicates the date by which the seller must respond to the buyer with an Estimated Ship Date.</td>
<td>No. Returned only for Sourcing on Demand orders.</td>
<td><span class="ph">Type: xs:dateTime</span></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">IsEstimatedShipDateSet</span></td>
<td>true if the Estimated Ship Date is set for the order.</td>
<td>No. Returned only for Sourcing on Demand orders.</td>
<td><span class="ph">Type: xs:boolean</span></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="OrderItem" class="topic reference nested1">

## OrderItem

<div class="body refbody">

<span class="ph">OrderItem information.</span>

<div class="section">

### Operations

<div class="p">

The <span class="keyword cmdname">OrderItem</span> datatype is used in a
response element of the following
    operations:

  - [ListOrderItems](../orders-2013-09-01/Orders_ListOrderItems.md)
  - [ListOrderItemsByNextToken](Orders_ListOrderItemsByNextToken.md "Returns the next page of order items using the NextToken parameter.")

</div>

</div>

<div class="section">

### Datatype content

The following table shows the elements of the
<span class="keyword cmdname">OrderItem</span> datatype:

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
<td><span class="keyword parmname">ASIN</span></td>
<td>The Amazon Standard Identification Number (ASIN) of the item.</td>
<td>Yes</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">OrderItemId</span></td>
<td>An Amazon-defined order item identifier.</td>
<td>Yes</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">SellerSKU</span></td>
<td>The seller SKU of the item.</td>
<td>No</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">BuyerCustomizedInfo</span></td>
<td><span class="ph">Buyer information for custom orders from the <span class="ph">Amazon Custom</span> program.</span></td>
<td>No</td>
<td>Type: <a href="#BuyerCustomizedInfo" class="xref" title="Buyer information for custom orders from the Amazon Custom program.">BuyerCustomizedInfo</a></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">Title</span></td>
<td>The name of the item.</td>
<td>No</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">QuantityOrdered</span></td>
<td>The number of items in the order.</td>
<td>Yes</td>
<td><span class="ph">Type: xs:int</span></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">QuantityShipped</span></td>
<td>The number of items shipped.</td>
<td>No</td>
<td><span class="ph">Type: xs:int</span></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">PointsGranted</span></td>
<td><span class="ph">The number and value of <span class="ph">Amazon Points</span> granted with the purchase of an item.</span>
<div class="note note">
<span class="notetitle">Note:</span> <span class="keyword parmname">PointsGranted</span> is a response element only in Japan (JP).
</div></td>
<td>No. Returned only if <span class="ph">Amazon Points</span> were granted with the purchase of an item. For more information about the Amazon Points program in Japan, see the <a href="https://sellercentral.amazon.co.jp/gp/help/69065" class="xref">Seller Central Help (JP)</a>.</td>
<td>Type: <a href="#PointsGranted" class="xref" title="The number and value of Amazon Points granted with the purchase of an item. This datatype is used only in the Japan marketplace.">PointsGranted</a></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">ProductInfo</span></td>
<td><span class="ph">Product information for the item.</span></td>
<td>No</td>
<td>Type: <a href="Orders_Datatypes.md#ProductInfo" class="xref" title="Product information for the item. This datatype is used only in the US, Spain, UK, France, Germany, Italy, India, and Japan marketplaces.">ProductInfo</a></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">ItemPrice</span></td>
<td>The selling price of the order item. Note that an order item is an item and a quantity. This means that the value of <span class="keyword parmname">ItemPrice</span> is equal to the selling price of the item multiplied by the quantity ordered. Note that <span class="keyword parmname">ItemPrice</span> excludes <span class="keyword parmname">ShippingPrice</span> and <span class="keyword parmname">GiftWrapPrice</span>. For a more detailed explanation of an order item, see <a href="../orders-2013-09-01/Orders_Overview.md" class="xref">Orders API</a>.</td>
<td>No</td>
<td>Type: <a href="#Money" class="xref" title="Currency type and amount.">Money</a></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">ShippingPrice</span></td>
<td>The shipping price of the item.</td>
<td>No</td>
<td>Type: <a href="#Money" class="xref" title="Currency type and amount.">Money</a></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">GiftWrapPrice</span></td>
<td>The gift wrap price of the item.</td>
<td>No</td>
<td>Type: <a href="#Money" class="xref" title="Currency type and amount.">Money</a></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">TaxCollection</span></td>
<td><span class="ph">Information about withheld taxes.</span></td>
<td>No</td>
<td>Type: <a href="Orders_Datatypes.md#TaxCollection" class="xref" title="Information about withheld taxes.">TaxCollection</a></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">ItemTax</span></td>
<td>The tax on the item price.</td>
<td>No</td>
<td>Type: <a href="#Money" class="xref" title="Currency type and amount.">Money</a></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">ShippingTax</span></td>
<td>The tax on the shipping price.</td>
<td>No</td>
<td>Type: <a href="#Money" class="xref" title="Currency type and amount.">Money</a></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">GiftWrapTax</span></td>
<td>The tax on the gift wrap price.</td>
<td>No</td>
<td>Type: <a href="#Money" class="xref" title="Currency type and amount.">Money</a></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">ShippingDiscount</span></td>
<td>The discount on the shipping price.</td>
<td>No</td>
<td>Type: <a href="#Money" class="xref" title="Currency type and amount.">Money</a></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">ShippingDiscountTax</span></td>
<td>The tax on the discount on the shipping price.</td>
<td>No</td>
<td>Type: <a href="#Money" class="xref" title="Currency type and amount.">Money</a></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">PromotionDiscount</span></td>
<td>The total of all promotional discounts in the offer.</td>
<td>No</td>
<td>Type: <a href="#Money" class="xref" title="Currency type and amount.">Money</a></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">PromotionDiscountTax</span></td>
<td>The tax on the total of all promotional discounts in the offer.</td>
<td>No</td>
<td>Type: <a href="#Money" class="xref" title="Currency type and amount.">Money</a></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">PromotionIds</span></td>
<td>A list of <span class="keyword parmname">PromotionId</span> elements.</td>
<td>No</td>
<td><span class="ph">Type: List of xs:string</span></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">CODFee</span></td>
<td>The fee charged for COD service.
<div class="note note">
<span class="notetitle">Note:</span> <span class="keyword parmname">CODFee</span> is a response element only in Japan (JP).
</div></td>
<td>No</td>
<td>Type: <a href="#Money" class="xref" title="Currency type and amount.">Money</a></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">CODFeeDiscount</span></td>
<td>The discount on the COD fee.
<div class="note note">
<span class="notetitle">Note:</span> <span class="keyword parmname">CODFeeDiscount</span> is a response element only in Japan (JP).
</div></td>
<td>No</td>
<td>Type: <a href="#Money" class="xref" title="Currency type and amount.">Money</a></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">IsGift</span></td>
<td>true if the item is a gift.</td>
<td>No</td>
<td><span class="ph">Type: xs:boolean</span></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">GiftMessageText</span></td>
<td>A gift message provided by the buyer.</td>
<td>No</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">GiftWrapLevel</span></td>
<td>The gift wrap level specified by the buyer.</td>
<td>No</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">ConditionNote</span></td>
<td>The condition of the item as described by the seller.</td>
<td>No</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">ConditionId</span></td>
<td>The condition of the item.
<p><span class="keyword parmname">ConditionId</span> values: New, Used, Collectible, Refurbished, Preorder, Club.</p></td>
<td>No</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">ConditionSubtypeId</span></td>
<td>The subcondition of the item.
<p><span class="keyword parmname">ConditionSubtypeId</span> values: New, Mint, Very Good, Good, Acceptable, Poor, Club, OEM, Warranty, Refurbished Warranty, Refurbished, Open Box, Any, Other</p></td>
<td>No</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">ScheduledDeliveryStartDate</span></td>
<td>The start date of the scheduled delivery window in the time zone of the order destination. In <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.
<div class="note note">
<span class="notetitle">Note:</span> Scheduled delivery is available only in Japan (JP).
</div></td>
<td>No. Only returned if the order is a scheduled delivery.</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">ScheduledDeliveryEndDate</span></td>
<td>The end date of the scheduled delivery window in the time zone of the order destination. In <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.
<div class="note note">
<span class="notetitle">Note:</span> Scheduled delivery is available only in Japan (JP).
</div></td>
<td>No. Only returned if the order is a scheduled delivery.</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">PriceDesignation</span></td>
<td>Indicates that the selling price is a special price that is available only for Amazon Business orders. For more information about the Amazon Business Seller Program, see the <a href="https://www.amazon.com/b2b/info/amazon-business" class="xref">Amazon Business website</a>.
<p><span class="keyword parmname">PriceDesignation</span> values:</p>
<ul>
<li>BusinessPrice - A special price that is available only for Amazon Business orders.</li>
</ul></td>
<td>No. Returned only for order items from orders with <span class="keyword parmname">IsBusinessOrder</span> = true.</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">IsTransparency</span></td>
<td>true if Transparency codes are required.</td>
<td>No</td>
<td><span class="ph">Type: xs:boolean</span></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">SerialNumberRequired</span></td>
<td>true if the product type for this item has a serial number.</td>
<td>No. Returned only for <span class="ph">Amazon Easy Ship</span> orders.</td>
<td><span class="ph">Type: xs:boolean</span></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="PaymentExecutionDetailItem" class="topic reference nested1">

## PaymentExecutionDetailItem

<div class="body refbody">

<span class="ph">Information about a sub-payment method used to pay for
a COD order.</span>

<div class="section">

### Operations

<div class="p">

The <span class="keyword cmdname">PaymentExecutionDetailItem</span>
datatype is used in a response element of the following
    operations:

  - [ListOrders](../orders-2013-09-01/Orders_ListOrders.md)
  - [ListOrdersByNextToken](Orders_ListOrdersByNextToken.md "Returns the next page of orders using the NextToken parameter.")
  - [GetOrder](Orders_GetOrder.md "Returns orders based on the AmazonOrderId values that you specify.")

</div>

</div>

<div class="section">

### Datatype content

The following table shows the elements of the
<span class="keyword cmdname">PaymentExecutionDetailItem</span>
datatype:

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
<td><span class="keyword parmname">Payment</span></td>
<td>The amount paid using the sub-payment method indicated by the sibling <span class="keyword parmname">PaymentMethod</span> response element.</td>
<td>Yes</td>
<td>Type: <a href="#Money" class="xref" title="Currency type and amount.">Money</a></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">PaymentMethod</span></td>
<td>A sub-payment method for a COD order.
<p><span class="keyword parmname">PaymentMethod</span> values:</p>
<ul>
<li>COD - Cash On Delivery. Available only in Japan (JP).</li>
<li>GC - Gift Card. Available only in JP.</li>
<li>PointsAccount - Amazon Points. Available only in JP.</li>
</ul></td>
<td>Yes</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="PaymentMethodDetails" class="topic reference nested1">

## PaymentMethodDetails

<div class="body refbody">

<span class="ph">A list of payment methods for the order.</span>

<div class="section">

### Operations

<div class="p">

The <span class="keyword cmdname">PaymentMethodDetails</span> datatype
is used in a response element of the following
    operations:

  - [ListOrders](../orders-2013-09-01/Orders_ListOrders.md)
  - [ListOrdersByNextToken](Orders_ListOrdersByNextToken.md "Returns the next page of orders using the NextToken parameter.")
  - [GetOrder](Orders_GetOrder.md "Returns orders based on the AmazonOrderId values that you specify.")

</div>

</div>

<div class="section">

### Datatype content

The following table shows the elements of the
<span class="keyword cmdname">PaymentMethodDetails</span>
datatype:

<div class="tablenoborder">

| Name                                                      | Description                                                                 | Required | Values                                  |
| --------------------------------------------------------- | --------------------------------------------------------------------------- | -------- | --------------------------------------- |
| <span class="keyword parmname">PaymentMethodDetail</span> | A payment method for the order. For example, GiftCertificate or CreditCard. | No       | <span class="ph">Type: xs:string</span> |

</div>

</div>

</div>

</div>

<div id="ProductInfo" class="topic reference nested1">

## ProductInfo

<div class="body refbody">

<span class="ph">Product information for the item.</span>
<span class="ph">This datatype is used only in the US, Spain, UK,
France, Germany, Italy, India, and Japan marketplaces.</span>

<div class="section">

### Operations

<div class="p">

The <span class="keyword cmdname">ProductInfo</span> datatype is used in
a response element of the following
    operations:

  - [ListOrderItems](../orders-2013-09-01/Orders_ListOrderItems.md)
  - [ListOrderItemsByNextToken](Orders_ListOrderItemsByNextToken.md "Returns the next page of order items using the NextToken parameter.")

</div>

</div>

<div class="section">

### Datatype content

The following table shows the elements of the
<span class="keyword cmdname">ProductInfo</span>
datatype:

<div class="tablenoborder">

| Name                                                | Description                                              | Required | Values                               |
| --------------------------------------------------- | -------------------------------------------------------- | -------- | ------------------------------------ |
| <span class="keyword parmname">NumberOfItems</span> | The total number of items that are included in the ASIN. | No       | <span class="ph">Type: xs:int</span> |

</div>

</div>

</div>

</div>

<div id="PointsGranted" class="topic reference nested1">

## PointsGranted

<div class="body refbody">

<span class="ph">The number and value of <span class="ph">Amazon
Points</span> granted with the purchase of an item.</span>
<span class="ph">This datatype is used only in the Japan
marketplace.</span>

<div class="section">

### Operations

<div class="p">

The <span class="keyword cmdname">PointsGranted</span> datatype is used
in a response element of the following
    operations:

  - [ListOrderItems](../orders-2013-09-01/Orders_ListOrderItems.md)
  - [ListOrderItemsByNextToken](Orders_ListOrderItemsByNextToken.md "Returns the next page of order items using the NextToken parameter.")

</div>

</div>

<div class="section">

### Datatype content

The following table shows the elements of the
<span class="keyword cmdname">PointsGranted</span>
datatype:

<div class="tablenoborder">

| Name                                                      | Description                                                                               | Required | Values                                            |
| --------------------------------------------------------- | ----------------------------------------------------------------------------------------- | -------- | ------------------------------------------------- |
| <span class="keyword parmname">PointsNumber</span>        | The number of <span class="ph">Amazon Points</span> granted with the purchase of an item. | No       | <span class="ph">Type: xs:int</span>              |
| <span class="keyword parmname">PointsMonetaryValue</span> | The monetary value of the <span class="ph">Amazon Points</span> granted.                  | No       | Type: [Money](#Money "Currency type and amount.") |

</div>

</div>

</div>

</div>

<div id="TaxClassification" class="topic reference nested1">

## TaxClassification

<div class="body refbody">

<span class="ph">A tax type and identifier.</span>

<div class="section">

### Operations

<div class="p">

The <span class="keyword cmdname">TaxClassification</span> datatype is
used in a response element of the following
    operations:

  - [ListOrderItems](../orders-2013-09-01/Orders_ListOrderItems.md)
  - [ListOrderItemsByNextToken](Orders_ListOrderItemsByNextToken.md "Returns the next page of order items using the NextToken parameter.")

</div>

</div>

<div class="section">

### Datatype content

The following table shows the elements of the
<span class="keyword cmdname">TaxClassification</span>
datatype:

<div class="tablenoborder">

| Name                                        | Description                 | Required | Values                                  |
| ------------------------------------------- | --------------------------- | -------- | --------------------------------------- |
| <span class="keyword parmname">Name</span>  | The type of tax.            | Yes      | <span class="ph">Type: xs:string</span> |
| <span class="keyword parmname">Value</span> | The buyer's tax identifier. | Yes      | <span class="ph">Type: xs:string</span> |

</div>

</div>

</div>

</div>

<div id="TaxCollection" class="topic reference nested1">

## TaxCollection

<div class="body refbody">

<span class="ph">Information about withheld taxes.</span>

<div class="section">

### Operations

<div class="p">

The <span class="keyword cmdname">TaxCollection</span> datatype is used
in a response element of the following
    operations:

  - [ListOrderItems](../orders-2013-09-01/Orders_ListOrderItems.md)
  - [ListOrderItemsByNextToken](Orders_ListOrderItemsByNextToken.md "Returns the next page of order items using the NextToken parameter.")

</div>

</div>

<div class="section">

### Datatype content

The following table shows the elements of the
<span class="keyword cmdname">TaxCollection</span> datatype:

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
<td><span class="keyword parmname">Model</span></td>
<td>The tax collection model applied to the item.</td>
<td>Yes</td>
<td><span class="keyword parmname">Model</span> value: MarketplaceFacilitator - Tax is withheld and remitted to the taxing authority by Amazon on behalf of the seller.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">ResponsibleParty</span></td>
<td>The party responsible for withholding the taxes and remitting them to the taxing authority.</td>
<td>Yes</td>
<td><span class="keyword parmname">ResponsibleParty</span> value: Amazon Services, Inc.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

</div>

<div id="RelatedTopics" class="topic nested0">

# Related topics

<div class="body">

[Orders API](../orders-2013-09-01/Orders_Overview.md)

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
