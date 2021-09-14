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

<div id="Orders_Datatypes" class="nested0">

# Orders Datatypes

<div class="body">

The following datatypes are used in the response elements of the <span
class="ph">Amazon Marketplace Web Service (Amazon MWS)</span> <span
class="ph">Orders API section</span>:

<div class="tablenoborder">

| Datatype                                                                                                                                                                                                                   | Description                                                                                                                                                                                              |
|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| <a href="Orders_Datatypes.md#Address" class="xref" title="The shipping address for the order.">Address</a>                                                                                                               | <span class="ph">The shipping address for the order.</span>                                                                                                                                              |
| <a href="Orders_Datatypes.md#AutomatedShippingSettings" class="xref" title="The automated shipping settings details, including shipping settings and promises provided by Amazon.">AutomatedShippingSettings</a>         | <span class="ph">The automated shipping settings details, including shipping settings and promises provided by Amazon.</span>                                                                            |
| <a href="Orders_Datatypes.md#BuyerCustomizedInfo" class="xref" title="Buyer information for custom orders from the Amazon Custom program.">BuyerCustomizedInfo</a>                                                       | <span class="ph">Buyer information for custom orders from the <span class="ph">Amazon Custom</span> program.</span>                                                                                      |
| <a href="Orders_Datatypes.md#BuyerTaxInfo" class="xref" title="Tax information about the buyer.">BuyerTaxInfo</a>                                                                                                        | <span class="ph">Tax information about the buyer.</span>                                                                                                                                                 |
| <a href="Orders_Datatypes.md#Money" class="xref" title="Currency type and amount.">Money</a>                                                                                                                             | <span class="ph">Currency type and amount.</span>                                                                                                                                                        |
| <a href="Orders_Datatypes.md#Order" class="xref" title="Order information.">Order</a>                                                                                                                                    | <span class="ph">Order information.</span>                                                                                                                                                               |
| <a href="Orders_Datatypes.md#OrderItem" class="xref" title="OrderItem information.">OrderItem</a>                                                                                                                        | <span class="ph">OrderItem information.</span>                                                                                                                                                           |
| <a href="Orders_Datatypes.md#PaymentExecutionDetailItem" class="xref" title="Information about a sub-payment method used to pay for a COD order.">PaymentExecutionDetailItem</a>                                         | <span class="ph">Information about a sub-payment method used to pay for a COD order.</span>                                                                                                              |
| <a href="Orders_Datatypes.md#PaymentMethodDetails" class="xref" title="A list of payment methods for the order.">PaymentMethodDetails</a>                                                                                | <span class="ph">A list of payment methods for the order.</span>                                                                                                                                         |
| <a href="Orders_Datatypes.md#PointsGranted" class="xref" title="The number and value of Amazon Points granted with the purchase of an item. This datatype is used only in the Japan marketplace.">PointsGranted</a>      | <span class="ph">The number and value of <span class="ph">Amazon Points</span> granted with the purchase of an item.</span> <span class="ph">This datatype is used only in the Japan marketplace.</span> |
| <a href="Orders_Datatypes.md#ProductInfo" class="xref" title="Product information for the item. This datatype is used only in the US, Spain, UK, France, Germany, Italy, India, and Japan marketplaces.">ProductInfo</a> | <span class="ph">Product information for the item.</span> <span class="ph">This datatype is used only in the US, UK, Germany, and Japan marketplaces.</span>                                             |
| <a href="Orders_Datatypes.md#TaxClassification" class="xref" title="A tax type and identifier.">TaxClassification</a>                                                                                                    | <span class="ph">A tax type and identifier.</span>                                                                                                                                                       |
| <a href="Orders_Datatypes.md#TaxCollection" class="xref" title="Information about withheld taxes.">TaxCollection</a>                                                                                                     | <span class="ph">Information about withheld taxes.</span>                                                                                                                                                |

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
response element of the following operations:

-   <a href="../orders-2013-09-01/Orders_ListOrders.md" class="xref">ListOrders</a>
-   <a href="Orders_ListOrdersByNextToken.md" class="xref" title="Returns the next page of orders using the NextToken parameter.">ListOrdersByNextToken</a>
-   <a href="Orders_GetOrder.md" class="xref" title="Returns orders based on the AmazonOrderId values that you specify.">GetOrder</a>

</div>

</div>

<div class="section">

### Datatype content

The following table shows the elements of the <span
class="keyword cmdname">Address</span> datatype:

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d205761e428" class="entry" data-valign="top" width="34.18367346938776%">Name</th>
<th id="d205761e431" class="entry" data-valign="top" width="25.510204081632654%">Description</th>
<th id="d205761e434" class="entry" data-valign="top" width="12.755102040816327%">Required</th>
<th id="d205761e437" class="entry" data-valign="top" width="27.551020408163268%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e428 "><span class="keyword parmname">Name</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e431 ">The name.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e434 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e437 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e428 "><span class="keyword parmname">AddressLine1</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e431 ">The street address.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e434 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e437 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e428 "><span class="keyword parmname">AddressLine2</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e431 ">Additional street address information, if required.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e434 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e437 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e428 "><span class="keyword parmname">AddressLine3</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e431 ">Additional street address information, if required.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e434 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e437 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e428 "><span class="keyword parmname">City</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e431 ">The city.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e434 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e437 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e428 "><span class="keyword parmname">Municipality</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e431 ">The municipality.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e434 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e437 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e428 "><span class="keyword parmname">County</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e431 ">The county.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e434 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e437 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e428 "><span class="keyword parmname">District</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e431 ">The district.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e434 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e437 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e428 "><span class="keyword parmname">StateOrRegion</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e431 ">The state or region.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e434 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e437 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e428 "><span class="keyword parmname">PostalCode</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e431 ">The postal code.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e434 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e437 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e428 "><span class="keyword parmname">CountryCode</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e431 ">The country code.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e434 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e437 "><span class="ph">A two-character country code, in ISO 3166-1 alpha-2 format.</span>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e428 "><span class="keyword parmname">Phone</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e431 ">The phone number.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e434 ">No. Not returned for <span class="ph">Fulfillment by Amazon (FBA)</span> orders.</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e437 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e428 "><span class="keyword parmname">AddressType</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e431 ">Indicates whether the address is commercial or residential.
<p><span class="ph">This element is used only in the US marketplace.</span></p></td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e434 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e437 "><span class="keyword parmname">AddressType</span> values: <var class="keyword varname">Commercial</var>, <var class="keyword varname">Residential</var>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="AutomatedShippingSettings" class="topic reference nested1">

## AutomatedShippingSettings

<div class="body refbody">

<span class="ph">The automated shipping settings details, including
shipping settings and promises provided by Amazon.</span>

<div class="section">

### Operations

<div class="p">

The <span class="keyword cmdname">AutomatedShippingSettings</span>
datatype is used in a response element of the following operations:

-   <a href="../orders-2013-09-01/Orders_ListOrders.md" class="xref">ListOrders</a>
-   <a href="Orders_GetOrder.md" class="xref" title="Returns orders based on the AmazonOrderId values that you specify.">GetOrder</a>

</div>

</div>

<div class="section">

### Datatype content

The following table shows the elements of the <span
class="keyword cmdname">AutomatedShippingSettings</span> datatype:

<div class="tablenoborder">

| Name                                                               | Description                                                                      | Required | Values                                   |
|--------------------------------------------------------------------|----------------------------------------------------------------------------------|----------|------------------------------------------|
| <span class="keyword parmname">hasAutomatedShippingSettings</span> | `true` if the order has automated shipping settings generated by Amazon.         | Yes      | <span class="ph">Type: xs:boolean</span> |
| <span class="keyword parmname">automatedCarrier</span>             | The auto-generated carrier for orders with automated shipping settings.          | No       | <span class="ph">Type: xs:string</span>  |
| <span class="keyword parmname">automatedShipMethod</span>          | The auto-generated shipping service for orders with automated shipping settings. | No       | <span class="ph">Type: xs:string</span>  |

</div>

</div>

</div>

</div>

<div id="BuyerCustomizedInfo" class="topic reference nested1">

## BuyerCustomizedInfo

<div class="body refbody">

<span class="ph">Buyer information for custom orders from the <span
class="ph">Amazon Custom</span> program.</span>

<div class="section">

### Operations

<div class="p">

The <span class="keyword cmdname">BuyerCustomizedInfo</span> datatype is
used in a response element of the following operations:

-   <a href="../orders-2013-09-01/Orders_ListOrderItems.md" class="xref">ListOrderItems</a>
-   <a href="Orders_ListOrderItemsByNextToken.md" class="xref" title="Returns the next page of order items using the NextToken parameter.">ListOrderItemsByNextToken</a>

</div>

</div>

<div class="section">

### Datatype content

The following table shows the elements of the <span
class="keyword cmdname">BuyerCustomizedInfo</span> datatype:

<div class="tablenoborder">

| Name                                                | Description                                                                       | Required | Values                                  |
|-----------------------------------------------------|-----------------------------------------------------------------------------------|----------|-----------------------------------------|
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
in a response element of the following operations:

-   <a href="../orders-2013-09-01/Orders_ListOrders.md" class="xref">ListOrders</a>
-   <a href="Orders_ListOrdersByNextToken.md" class="xref" title="Returns the next page of orders using the NextToken parameter.">ListOrdersByNextToken</a>
-   <a href="Orders_GetOrder.md" class="xref" title="Returns orders based on the AmazonOrderId values that you specify.">GetOrder</a>

</div>

</div>

<div class="section">

### Datatype content

The following table shows the elements of the <span
class="keyword cmdname">BuyerTaxInfo</span> datatype:

<div class="tablenoborder">

<table id="BuyerTaxInfo__table_r5c_3tj_hy" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d205761e1134" class="entry" data-valign="top" width="34.18367346938776%">Name</th>
<th id="d205761e1137" class="entry" data-valign="top" width="25.510204081632654%">Description</th>
<th id="d205761e1140" class="entry" data-valign="top" width="12.755102040816327%">Required</th>
<th id="d205761e1143" class="entry" data-valign="top" width="27.551020408163268%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e1134 "><span class="keyword parmname">CompanyLegalName</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e1137 ">The legal name of the company.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e1140 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e1143 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e1134 "><span class="keyword parmname">TaxingRegion</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e1137 ">The country or region imposing the tax.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e1140 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e1143 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e1134 "><span class="keyword parmname">TaxClassifications</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e1137 ">A list of tax classifications.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e1140 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e1143 ">Type: List of <a href="Orders_Datatypes.md#TaxClassification" class="xref" title="A tax type and identifier.">TaxClassification</a>.
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
response element of the following operations:

-   <a href="../orders-2013-09-01/Orders_ListOrders.md" class="xref">ListOrders</a>
-   <a href="Orders_ListOrdersByNextToken.md" class="xref" title="Returns the next page of orders using the NextToken parameter.">ListOrdersByNextToken</a>
-   <a href="Orders_GetOrder.md" class="xref" title="Returns orders based on the AmazonOrderId values that you specify.">GetOrder</a>
-   <a href="../orders-2013-09-01/Orders_ListOrderItems.md" class="xref">ListOrderItems</a>
-   <a href="Orders_ListOrderItemsByNextToken.md" class="xref" title="Returns the next page of order items using the NextToken parameter.">ListOrderItemsByNextToken</a>

</div>

</div>

<div id="Money__DatatypeContent" class="section">

### Datatype content

The following table shows the elements of the <span
class="keyword cmdname">Money</span> datatype:

<div class="tablenoborder">

| Name                                               | Description                                                                                                                      | Required | Values                                  |
|----------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------|----------|-----------------------------------------|
| <span class="keyword parmname">CurrencyCode</span> | Three-digit currency code. In <span class="ph"> <a href="../dev_guide/DG_ISO4217.md" class="xref">ISO 4217 format</a> </span>. | No       | <span class="ph">Type: xs:string</span> |
| <span class="keyword parmname">Amount</span>       | The currency amount.                                                                                                             | No       | <span class="ph">Type: xs:string</span> |

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
response element of the following operations:

-   <a href="../orders-2013-09-01/Orders_ListOrders.md" class="xref">ListOrders</a>
-   <a href="Orders_ListOrdersByNextToken.md" class="xref" title="Returns the next page of orders using the NextToken parameter.">ListOrdersByNextToken</a>
-   <a href="Orders_GetOrder.md" class="xref" title="Returns orders based on the AmazonOrderId values that you specify.">GetOrder</a>

</div>

</div>

<div id="Order__DatatypeContent" class="section">

### Datatype content

The following table shows the elements of the <span
class="keyword cmdname">Order</span> datatype:

<div class="tablenoborder">

<table id="Order__RequestParametersTable" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d205761e1526" class="entry" data-valign="top" width="34.18367346938776%">Name</th>
<th id="d205761e1529" class="entry" data-valign="top" width="25.510204081632654%">Description</th>
<th id="d205761e1532" class="entry" data-valign="top" width="12.755102040816327%">Required</th>
<th id="d205761e1535" class="entry" data-valign="top" width="27.551020408163268%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e1526 "><span class="keyword parmname">AmazonOrderId</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e1529 ">An Amazon-defined order identifier, in 3-7-7 format.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e1532 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e1535 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e1526 "><span class="keyword parmname">SellerOrderId</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e1529 ">A seller-defined order identifier.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e1532 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e1535 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e1526 "><span class="keyword parmname">PurchaseDate</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e1529 ">The date when the order was created.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e1532 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e1535 "><span class="ph">Type: xs:dateTime</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e1526 "><span class="keyword parmname">LastUpdateDate</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e1529 ">The date when the order was last updated.
<div class="note note">
<span class="notetitle">Note:</span> <span class="keyword parmname">LastUpdateDate</span> is returned with an incorrect date for orders that were last updated before 2009-04-01.
</div></td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e1532 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e1535 ">Date values in <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e1526 "><span class="keyword parmname">OrderStatus</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e1529 ">The current order status.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e1532 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e1535 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e1526 "><span class="keyword parmname">FulfillmentChannel</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e1529 ">How the order was fulfilled: by Amazon (AFN) or by the seller (MFN).</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e1532 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e1535 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e1526 "><span class="keyword parmname">SalesChannel</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e1529 ">The sales channel of the first item in the order.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e1532 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e1535 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e1526 "><span class="keyword parmname">OrderChannel</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e1529 ">The order channel of the first item in the order.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e1532 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e1535 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e1526 "><span class="keyword parmname">ShipServiceLevel</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e1529 ">The shipment service level of the order.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e1532 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e1535 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e1526 "><span class="keyword parmname">ShippingAddress</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e1529 "><span class="ph">The shipping address for the order.</span></td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e1532 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e1535 ">Type: <a href="#Address" class="xref" title="The shipping address for the order.">Address</a></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e1526 "><span class="keyword parmname">DefaultShipFromLocationAddress</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e1529 "><span class="ph">The seller's default shipping address in their Seller Central account. Amazon assigns this address to the order before shipment confirmation.</span></td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e1532 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e1535 ">Type: <a href="#Address" class="xref" title="The shipping address for the order.">Address</a></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e1526 "><span class="keyword parmname">OrderTotal</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e1529 ">The total charge for the order.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e1532 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e1535 ">Type: <a href="#Money" class="xref" title="Currency type and amount.">Money</a></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e1526 "><span class="keyword parmname">NumberOfItemsShipped</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e1529 ">The number of items shipped.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e1532 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e1535 "><span class="ph">Type: xs:int</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e1526 "><span class="keyword parmname">NumberOfItemsUnshipped</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e1529 ">The number of items unshipped.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e1532 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e1535 "><span class="ph">Type: xs:int</span></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e1526 "><span class="keyword parmname">PaymentExecutionDetail</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e1529 ">Information about sub-payment methods for a Cash On Delivery (COD) order. A COD order is an order with <span class="keyword parmname">PaymentMethod</span> = <var class="keyword varname">COD</var>. Contains one or more <span class="keyword parmname">PaymentExecutionDetailItem</span> response elements.
<div id="Order__PaymentExecutionDetail_Note" class="note note">
<span class="notetitle">Note:</span> For a COD order that is paid for using one sub-payment method, one <span class="keyword parmname">PaymentExecutionDetailItem</span> response element is returned, with <span class="keyword parmname">PaymentExecutionDetailItem/PaymentMethod</span> = <var class="keyword varname">COD</var>. For a COD order that is paid for using multiple sub-payment methods, two or more <span class="keyword parmname">PaymentExecutionDetailItem</span> response elements are returned.
</div></td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e1532 ">No. Returned only for COD orders. Available only in Japan (JP).</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e1535 ">Type: List of <a href="#PaymentExecutionDetailItem" class="xref" title="Information about a sub-payment method used to pay for a COD order.">PaymentExecutionDetailItem</a></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e1526 "><span class="keyword parmname">PaymentMethod</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e1529 ">The payment method for the order. This response element is limited to Cash On Delivery (COD) and Convenience Store (CVS) payment methods. Unless you need the specific COD payment information provided by the <span class="keyword parmname">PaymentExecutionDetailItem</span> element, we recommend using the <span class="keyword parmname">PaymentMethodDetails</span> response element to get payment method information.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e1532 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e1535 "><span class="keyword parmname">PaymentMethod</span> values:
<ul>
<li><var class="keyword varname">COD</var> - Cash On Delivery. Available only in Japan (JP).</li>
<li><var class="keyword varname">CVS</var> - Convenience Store. Available only in JP.</li>
<li><var class="keyword varname">Other</var> - A payment method other than COD and CVS.</li>
</ul>
<div id="Order__PaymentMethod_Note" class="note note">
<span class="notetitle">Note:</span> Orders with <span class="keyword parmname">PaymentMethod</span> = <var class="keyword varname">COD</var> can be paid for using multiple sub-payment methods. Each sub-payment method is represented by a <span class="keyword parmname">PaymentExecutionDetailItem</span> object.
</div>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e1526 "><span class="keyword parmname">PaymentMethodDetails</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e1529 "><span id="Order__sd_datatype_PaymentMethodDetails" class="ph">A list of payment methods for the order.</span></td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e1532 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e1535 ">Type: <a href="Orders_Datatypes.md#PaymentMethodDetails" class="xref" title="A list of payment methods for the order.">PaymentMethodDetails</a></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e1526 "><span class="keyword parmname">IsReplacementOrder</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e1529 "><span class="ph"><var class="keyword varname">true</var> if this is a replacement order.</span></td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e1532 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e1535 "><span class="ph">Type: xs:boolean</span></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e1526 "><span class="keyword parmname">ReplacedOrderId</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e1529 ">The <span class="keyword parmname">AmazonOrderId</span> value for the order that is being replaced.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e1532 ">No. Returned only if <span class="keyword parmname">IsReplacementOrder</span> = <var class="keyword varname">true</var></td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e1535 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e1526 "><span class="keyword parmname">MarketplaceId</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e1529 "><span id="Order__MarketplaceId" class="ph">The anonymized identifier for the Marketplace where the order was placed.</span></td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e1532 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e1535 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e1526 "><span class="keyword parmname">BuyerEmail</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e1529 "><span id="Order__BuyerEmail" class="ph">The anonymized e-mail address of the buyer.</span></td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e1532 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e1535 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e1526 "><span class="keyword parmname">BuyerName</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e1529 "><span id="Order__BuyerName" class="ph">The name of the buyer.</span></td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e1532 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e1535 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e1526 "><span class="keyword parmname">BuyerCounty</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e1529 ">The county of the buyer.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e1532 ">No. <span class="ph">This element is used only in the Brazil marketplace.</span></td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e1535 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e1526 "><span class="keyword parmname">BuyerTaxInfo</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e1529 "><span class="ph">Tax information about the buyer.</span></td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e1532 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e1535 ">Type: <a href="Orders_Datatypes.md#BuyerTaxInfo" class="xref" title="Tax information about the buyer.">BuyerTaxInfo</a></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e1526 "><span class="keyword parmname">ShipmentServiceLevelCategory</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e1529 ">The shipment service level category of the order.
<p><span class="keyword parmname">ShipmentServiceLevelCategory</span> values: <var class="keyword varname">Expedited</var>, <var class="keyword varname">FreeEconomy</var>, <var class="keyword varname">NextDay</var>, <var class="keyword varname">SameDay</var>, <var class="keyword varname">SecondDay</var>, <var class="keyword varname">Scheduled</var>, <var class="keyword varname">Standard</var></p></td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e1532 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e1535 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e1526 "><span class="keyword parmname">EasyShipShipmentStatus</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e1529 ">The status of the <span class="ph">Amazon Easy Ship</span> order. This element is included only for <span class="ph">Amazon Easy Ship</span> orders.
<p><span class="keyword parmname">EasyShipShipmentStatus</span> values: <var class="keyword varname">PendingPickUp</var>, <var class="keyword varname">LabelCanceled</var>, <var class="keyword varname">PickedUp</var>, <var class="keyword varname">OutForDelivery</var>, <var class="keyword varname">Damaged</var>, <var class="keyword varname">Delivered</var>, <var class="keyword varname">RejectedByBuyer</var>, <var class="keyword varname">Undeliverable</var>, <var class="keyword varname">ReturnedToSeller</var>, <var class="keyword varname">ReturningToSeller</var></p>
<p><span class="ph"><span class="ph">Amazon Easy Ship</span> is available only in the India marketplace.</span></p></td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e1532 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e1535 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e1526 "><span class="keyword parmname">OrderType</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e1529 ">The type of the order.
<p><span class="keyword parmname">OrderType</span> values:</p>
<ul>
<li><var class="keyword varname">StandardOrder</var> - An order that contains items for which you currently have inventory in stock.</li>
<li><var class="keyword varname">Preorder</var> - An order that contains items with a release date that is in the future.</li>
<li><var class="keyword varname">SourcingOnDemandOrder</var> - A Sourcing On Demand order.</li>
</ul>
<div class="note note">
<span class="notetitle">Note:</span> <var class="keyword varname">Preorder</var> and <var class="keyword varname">SourcingOnDemandOrder</var> are possible <span class="keyword parmname">OrderType</span> values only in the Japan marketplace.
</div></td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e1532 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e1535 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e1526 "><span class="keyword parmname">EarliestShipDate</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e1529 ">The start of the time period that you have committed to ship the order. In <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.
<div class="p">
<div class="note note">
<span class="notetitle">Note:</span> <span class="keyword parmname">EarliestShipDate</span> might not be returned for orders placed before February 1, 2013.
</div>
</div></td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e1532 ">No. Returned only for seller-fulfilled orders.</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e1535 "><span class="ph">Type: xs:dateTime</span></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e1526 "><span class="keyword parmname">LatestShipDate</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e1529 ">The end of the time period that you have committed to ship the order. In <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.
<div class="note note">
<span class="notetitle">Note:</span> <span class="keyword parmname">LatestShipDate</span> might not be returned for orders placed before February 1, 2013.
</div></td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e1532 ">No. Returned only for seller-fulfilled orders.</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e1535 "><span class="ph">Type: xs:dateTime</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e1526 "><span class="keyword parmname">EarliestDeliveryDate</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e1529 ">The start of the time period that you have commited to fulfill the order. In <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e1532 ">No. Returned only for seller-fulfilled orders that do not have a <var class="keyword varname">PendingAvailability</var>, <var class="keyword varname">Pending</var>, or <var class="keyword varname">Canceled</var> status.</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e1535 "><span class="ph">Type: xs:dateTime</span></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e1526 "><span class="keyword parmname">LatestDeliveryDate</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e1529 ">The end of the time period that you have commited to fulfill the order. In <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e1532 ">No. Returned only for seller-fulfilled orders that do not have a <var class="keyword varname">PendingAvailability</var>, <var class="keyword varname">Pending</var>, or <var class="keyword varname">Canceled</var> status.</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e1535 "><span class="ph">Type: xs:dateTime</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e1526 "><span class="keyword parmname">IsBusinessOrder</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e1529 "><var class="keyword varname">true</var> if the order is an Amazon Business order. An Amazon Business order is an order where the buyer is a Verified Business Buyer.
<p><span class="keyword parmname">IsBusinessOrder</span> values:</p>
<ul>
<li><var class="keyword varname">true</var> - The order is an Amazon Business order.</li>
<li><var class="keyword varname">false</var> - The order is not an Amazon Business order.</li>
</ul></td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e1532 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e1535 "><span class="ph">Type: xs:boolean</span></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e1526 "><span class="keyword parmname">IsSoldByAB</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e1529 "><var class="keyword varname">true</var> if the items in this order were bought and re-sold by Amazon Business EU SARL (ABEU).
<p><span class="keyword parmname">IsSoldByAB</span> values:</p>
<ul>
<li><var class="keyword varname">true</var> - The items in this order were bought and re-sold by ABEU.</li>
<li><var class="keyword varname">false</var> - The items in this order were not bought and re-sold by ABEU.</li>
</ul></td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e1532 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e1535 "><span class="ph">Type: xs:boolean</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e1526 "><span class="keyword parmname">PurchaseOrderNumber</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e1529 ">The purchase order (PO) number entered by the buyer at checkout.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e1532 ">No. Returned only for orders where the buyer entered a PO number at checkout.</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e1535 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e1526 "><span class="keyword parmname">IsPrime</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e1529 "><var class="keyword varname">true</var> if the order is a seller-fulfilled Amazon Prime order.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e1532 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e1535 "><span class="ph">Type: xs:boolean</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e1526 "><span class="keyword parmname">IsPremiumOrder</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e1529 "><var class="keyword varname">true</var> if the order has a Premium Shipping Service Level Agreement. For more information about Premium Shipping orders, see "Premium Shipping Options" in the Seller Central Help.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e1532 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e1535 "><span class="ph">Type: xs:boolean</span></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e1526 "><span class="keyword parmname">IsGlobalExpressEnabled</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e1529 "><var class="keyword varname">true</var> if the order is a Global Express order. For more information about the Global Express program, see "Global Express" in the Seller Central Help.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e1532 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e1535 "><span class="ph">Type: xs:boolean</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e1526 "><span class="keyword parmname">PromiseResponseDueDate</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e1529 ">Indicates the date by which the seller must respond to the buyer with an Estimated Ship Date.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e1532 ">No. Returned only for Sourcing on Demand orders.</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e1535 "><span class="ph">Type: xs:dateTime</span></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e1526 "><span class="keyword parmname">IsEstimatedShipDateSet</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e1529 "><var class="keyword varname">true</var> if the Estimated Ship Date is set for the order.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e1532 ">No. Returned only for Sourcing on Demand orders.</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e1535 "><span class="ph">Type: xs:boolean</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e1526 "><span class="keyword parmname">AutomatedShippingSettings</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e1529 "><span class="ph">The automated shipping settings details, including shipping settings and promises provided by Amazon.</span></td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e1532 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e1535 ">Type: <a href="Orders_Datatypes.md#AutomatedShippingSettings" class="xref" title="The automated shipping settings details, including shipping settings and promises provided by Amazon.">AutomatedShippingSettings</a></td>
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
response element of the following operations:

-   <a href="../orders-2013-09-01/Orders_ListOrderItems.md" class="xref">ListOrderItems</a>
-   <a href="Orders_ListOrderItemsByNextToken.md" class="xref" title="Returns the next page of order items using the NextToken parameter.">ListOrderItemsByNextToken</a>

</div>

</div>

<div class="section">

### Datatype content

The following table shows the elements of the <span
class="keyword cmdname">OrderItem</span> datatype:

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d205761e2699" class="entry" data-valign="top" width="34.18367346938776%">Name</th>
<th id="d205761e2702" class="entry" data-valign="top" width="25.510204081632654%">Description</th>
<th id="d205761e2705" class="entry" data-valign="top" width="12.755102040816327%">Required</th>
<th id="d205761e2708" class="entry" data-valign="top" width="27.551020408163268%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e2699 "><span class="keyword parmname">ASIN</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e2702 ">The Amazon Standard Identification Number (ASIN) of the item.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e2705 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e2708 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e2699 "><span class="keyword parmname">OrderItemId</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e2702 ">An Amazon-defined order item identifier.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e2705 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e2708 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e2699 "><span class="keyword parmname">SellerSKU</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e2702 ">The seller SKU of the item.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e2705 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e2708 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e2699 "><span class="keyword parmname">BuyerCustomizedInfo</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e2702 "><span class="ph">Buyer information for custom orders from the <span class="ph">Amazon Custom</span> program.</span></td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e2705 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e2708 ">Type: <a href="#BuyerCustomizedInfo" class="xref" title="Buyer information for custom orders from the Amazon Custom program.">BuyerCustomizedInfo</a></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e2699 "><span class="keyword parmname">Title</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e2702 ">The name of the item.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e2705 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e2708 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e2699 "><span class="keyword parmname">QuantityOrdered</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e2702 ">The number of items in the order.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e2705 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e2708 "><span class="ph">Type: xs:int</span></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e2699 "><span class="keyword parmname">QuantityShipped</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e2702 ">The number of items shipped.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e2705 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e2708 "><span class="ph">Type: xs:int</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e2699 "><span class="keyword parmname">PointsGranted</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e2702 "><span class="ph">The number and value of <span class="ph">Amazon Points</span> granted with the purchase of an item.</span>
<div class="note note">
<span class="notetitle">Note:</span> <span class="keyword parmname">PointsGranted</span> is a response element only in Japan (JP).
</div></td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e2705 ">No. Returned only if <span class="ph">Amazon Points</span> were granted with the purchase of an item. For more information about the Amazon Points program in Japan, see the <a href="https://sellercentral.amazon.co.jp/gp/help/69065" class="xref">Seller Central Help (JP)</a>.</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e2708 ">Type: <a href="#PointsGranted" class="xref" title="The number and value of Amazon Points granted with the purchase of an item. This datatype is used only in the Japan marketplace.">PointsGranted</a></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e2699 "><span class="keyword parmname">ProductInfo</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e2702 "><span class="ph">Product information for the item.</span></td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e2705 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e2708 ">Type: <a href="Orders_Datatypes.md#ProductInfo" class="xref" title="Product information for the item. This datatype is used only in the US, Spain, UK, France, Germany, Italy, India, and Japan marketplaces.">ProductInfo</a></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e2699 "><span class="keyword parmname">ItemPrice</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e2702 ">The selling price of the order item. Note that an order item is an item and a quantity. This means that the value of <span class="keyword parmname">ItemPrice</span> is equal to the selling price of the item multiplied by the quantity ordered. Note that <span class="keyword parmname">ItemPrice</span> excludes <span class="keyword parmname">ShippingPrice</span> and <span class="keyword parmname">GiftWrapPrice</span>. For a more detailed explanation of an order item, see <a href="../orders-2013-09-01/Orders_Overview.md" class="xref">Orders API</a>.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e2705 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e2708 ">Type: <a href="#Money" class="xref" title="Currency type and amount.">Money</a></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e2699 "><span class="keyword parmname">ShippingPrice</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e2702 ">The shipping price of the item.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e2705 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e2708 ">Type: <a href="#Money" class="xref" title="Currency type and amount.">Money</a></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e2699 "><span class="keyword parmname">GiftWrapPrice</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e2702 ">The gift wrap price of the item.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e2705 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e2708 ">Type: <a href="#Money" class="xref" title="Currency type and amount.">Money</a></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e2699 "><span class="keyword parmname">TaxCollection</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e2702 "><span class="ph">Information about withheld taxes.</span></td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e2705 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e2708 ">Type: <a href="Orders_Datatypes.md#TaxCollection" class="xref" title="Information about withheld taxes.">TaxCollection</a></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e2699 "><span class="keyword parmname">ItemTax</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e2702 ">The tax on the item price.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e2705 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e2708 ">Type: <a href="#Money" class="xref" title="Currency type and amount.">Money</a></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e2699 "><span class="keyword parmname">ShippingTax</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e2702 ">The tax on the shipping price.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e2705 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e2708 ">Type: <a href="#Money" class="xref" title="Currency type and amount.">Money</a></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e2699 "><span class="keyword parmname">GiftWrapTax</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e2702 ">The tax on the gift wrap price.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e2705 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e2708 ">Type: <a href="#Money" class="xref" title="Currency type and amount.">Money</a></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e2699 "><span class="keyword parmname">ShippingDiscount</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e2702 ">The discount on the shipping price.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e2705 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e2708 ">Type: <a href="#Money" class="xref" title="Currency type and amount.">Money</a></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e2699 "><span class="keyword parmname">ShippingDiscountTax</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e2702 ">The tax on the discount on the shipping price.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e2705 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e2708 ">Type: <a href="#Money" class="xref" title="Currency type and amount.">Money</a></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e2699 "><span class="keyword parmname">PromotionDiscount</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e2702 ">The total of all promotional discounts in the offer.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e2705 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e2708 ">Type: <a href="#Money" class="xref" title="Currency type and amount.">Money</a></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e2699 "><span class="keyword parmname">PromotionDiscountTax</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e2702 ">The tax on the total of all promotional discounts in the offer.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e2705 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e2708 ">Type: <a href="#Money" class="xref" title="Currency type and amount.">Money</a></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e2699 "><span class="keyword parmname">PromotionIds</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e2702 ">A list of <span class="keyword parmname">PromotionId</span> elements.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e2705 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e2708 "><span class="ph">Type: List of xs:string</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e2699 "><span class="keyword parmname">CODFee</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e2702 ">The fee charged for COD service.
<div class="note note">
<span class="notetitle">Note:</span> <span class="keyword parmname">CODFee</span> is a response element only in Japan (JP).
</div></td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e2705 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e2708 ">Type: <a href="#Money" class="xref" title="Currency type and amount.">Money</a></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e2699 "><span class="keyword parmname">CODFeeDiscount</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e2702 ">The discount on the COD fee.
<div class="note note">
<span class="notetitle">Note:</span> <span class="keyword parmname">CODFeeDiscount</span> is a response element only in Japan (JP).
</div></td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e2705 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e2708 ">Type: <a href="#Money" class="xref" title="Currency type and amount.">Money</a></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e2699 "><span class="keyword parmname">IsGift</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e2702 "><var class="keyword varname">true</var> if the item is a gift.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e2705 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e2708 "><span class="ph">Type: xs:boolean</span></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e2699 "><span class="keyword parmname">GiftMessageText</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e2702 ">A gift message provided by the buyer.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e2705 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e2708 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e2699 "><span class="keyword parmname">GiftWrapLevel</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e2702 ">The gift wrap level specified by the buyer.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e2705 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e2708 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e2699 "><span class="keyword parmname">ConditionNote</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e2702 ">The condition of the item as described by the seller.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e2705 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e2708 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e2699 "><span class="keyword parmname">ConditionId</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e2702 ">The condition of the item.
<p><span class="keyword parmname">ConditionId</span> values: <var class="keyword varname">New</var>, <var class="keyword varname">Used</var>, <var class="keyword varname">Collectible</var>, <var class="keyword varname">Refurbished</var>, <var class="keyword varname">Preorder</var>, <var class="keyword varname">Club</var>.</p></td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e2705 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e2708 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e2699 "><span class="keyword parmname">ConditionSubtypeId</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e2702 ">The subcondition of the item.
<p><span class="keyword parmname">ConditionSubtypeId</span> values: <var class="keyword varname">New</var>, <var class="keyword varname">Mint</var>, <var class="keyword varname">Very Good</var>, <var class="keyword varname">Good</var>, <var class="keyword varname">Acceptable</var>, <var class="keyword varname">Poor</var>, <var class="keyword varname">Club</var>, <var class="keyword varname">OEM</var>, <var class="keyword varname">Warranty</var>, <var class="keyword varname">Refurbished Warranty</var>, <var class="keyword varname">Refurbished</var>, <var class="keyword varname">Open                                                 Box</var>, <var class="keyword varname">Any</var>, <var class="keyword varname">Other</var></p></td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e2705 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e2708 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e2699 "><span class="keyword parmname">ScheduledDeliveryStartDate</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e2702 ">The start date of the scheduled delivery window in the time zone of the order destination. In <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.
<div class="note note">
<span class="notetitle">Note:</span> Scheduled delivery is available only in Japan (JP).
</div></td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e2705 ">No. Only returned if the order is a scheduled delivery.</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e2708 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e2699 "><span class="keyword parmname">ScheduledDeliveryEndDate</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e2702 ">The end date of the scheduled delivery window in the time zone of the order destination. In <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.
<div class="note note">
<span class="notetitle">Note:</span> Scheduled delivery is available only in Japan (JP).
</div></td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e2705 ">No. Only returned if the order is a scheduled delivery.</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e2708 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e2699 "><span class="keyword parmname">PriceDesignation</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e2702 ">Indicates that the selling price is a special price that is available only for Amazon Business orders. For more information about the Amazon Business Seller Program, see the <a href="https://www.amazon.com/b2b/info/amazon-business" class="xref">Amazon Business website</a>.
<p><span class="keyword parmname">PriceDesignation</span> values:</p>
<ul>
<li><var class="keyword varname">BusinessPrice</var> - A special price that is available only for Amazon Business orders.</li>
</ul></td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e2705 ">No. Returned only for order items from orders with <span class="keyword parmname">IsBusinessOrder</span> = <var class="keyword varname">true</var>.</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e2708 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e2699 "><span class="keyword parmname">IsTransparency</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e2702 "><var class="keyword varname">true</var> if Transparency codes are required.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e2705 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e2708 "><span class="ph">Type: xs:boolean</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e2699 "><span class="keyword parmname">SerialNumberRequired</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e2702 "><var class="keyword varname">true</var> if the product type for this item has a serial number.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e2705 ">No. Returned only for <span class="ph">Amazon Easy Ship</span> orders.</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e2708 "><span class="ph">Type: xs:boolean</span></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e2699 "><span class="keyword parmname">IossNumber</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e2702 ">The IOSS number for the marketplace. Sellers shipping to the European Union (EU) from outside of the EU must provide this IOSS number to their carrier when Amazon has collected the VAT on the sale.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e2705 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e2708 "><span class="ph">Type: xs:string</span></td>
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
datatype is used in a response element of the following operations:

-   <a href="../orders-2013-09-01/Orders_ListOrders.md" class="xref">ListOrders</a>
-   <a href="Orders_ListOrdersByNextToken.md" class="xref" title="Returns the next page of orders using the NextToken parameter.">ListOrdersByNextToken</a>
-   <a href="Orders_GetOrder.md" class="xref" title="Returns orders based on the AmazonOrderId values that you specify.">GetOrder</a>

</div>

</div>

<div class="section">

### Datatype content

The following table shows the elements of the <span
class="keyword cmdname">PaymentExecutionDetailItem</span> datatype:

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d205761e3736" class="entry" data-valign="top" width="34.18367346938776%">Name</th>
<th id="d205761e3739" class="entry" data-valign="top" width="25.510204081632654%">Description</th>
<th id="d205761e3742" class="entry" data-valign="top" width="12.755102040816327%">Required</th>
<th id="d205761e3745" class="entry" data-valign="top" width="27.551020408163268%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e3736 "><span class="keyword parmname">Payment</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e3739 ">The amount paid using the sub-payment method indicated by the sibling <span class="keyword parmname">PaymentMethod</span> response element.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e3742 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e3745 ">Type: <a href="#Money" class="xref" title="Currency type and amount.">Money</a></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e3736 "><span class="keyword parmname">PaymentMethod</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e3739 ">A sub-payment method for a COD order.
<p><span class="keyword parmname">PaymentMethod</span> values:</p>
<ul>
<li><var class="keyword varname">COD</var> - Cash On Delivery. Available only in Japan (JP).</li>
<li><var class="keyword varname">GC</var> - Gift Card. Available only in JP.</li>
<li><var class="keyword varname">PointsAccount</var> - Amazon Points. Available only in JP.</li>
</ul></td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e3742 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e3745 "><span class="ph">Type: xs:string</span></td>
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
is used in a response element of the following operations:

-   <a href="../orders-2013-09-01/Orders_ListOrders.md" class="xref">ListOrders</a>
-   <a href="Orders_ListOrdersByNextToken.md" class="xref" title="Returns the next page of orders using the NextToken parameter.">ListOrdersByNextToken</a>
-   <a href="Orders_GetOrder.md" class="xref" title="Returns orders based on the AmazonOrderId values that you specify.">GetOrder</a>

</div>

</div>

<div class="section">

### Datatype content

The following table shows the elements of the <span
class="keyword cmdname">PaymentMethodDetails</span> datatype:

<div class="tablenoborder">

| Name                                                      | Description                                                                     | Required | Values                                  |
|-----------------------------------------------------------|---------------------------------------------------------------------------------|----------|-----------------------------------------|
| <span class="keyword parmname">PaymentMethodDetail</span> | A payment method for the order. For example, `GiftCertificate` or `CreditCard`. | No       | <span class="ph">Type: xs:string</span> |

</div>

</div>

</div>

</div>

<div id="ProductInfo" class="topic reference nested1">

## ProductInfo

<div class="body refbody">

<span class="ph">Product information for the item.</span> <span
class="ph">This datatype is used only in the US, Spain, UK, France,
Germany, Italy, India, and Japan marketplaces.</span>

<div class="section">

### Operations

<div class="p">

The <span class="keyword cmdname">ProductInfo</span> datatype is used in
a response element of the following operations:

-   <a href="../orders-2013-09-01/Orders_ListOrderItems.md" class="xref">ListOrderItems</a>
-   <a href="Orders_ListOrderItemsByNextToken.md" class="xref" title="Returns the next page of order items using the NextToken parameter.">ListOrderItemsByNextToken</a>

</div>

</div>

<div class="section">

### Datatype content

The following table shows the elements of the <span
class="keyword cmdname">ProductInfo</span> datatype:

<div class="tablenoborder">

| Name                                                | Description                                              | Required | Values                               |
|-----------------------------------------------------|----------------------------------------------------------|----------|--------------------------------------|
| <span class="keyword parmname">NumberOfItems</span> | The total number of items that are included in the ASIN. | No       | <span class="ph">Type: xs:int</span> |

</div>

</div>

</div>

</div>

<div id="PointsGranted" class="topic reference nested1">

## PointsGranted

<div class="body refbody">

<span class="ph">The number and value of <span class="ph">Amazon
Points</span> granted with the purchase of an item.</span> <span
class="ph">This datatype is used only in the Japan marketplace.</span>

<div class="section">

### Operations

<div class="p">

The <span class="keyword cmdname">PointsGranted</span> datatype is used
in a response element of the following operations:

-   <a href="../orders-2013-09-01/Orders_ListOrderItems.md" class="xref">ListOrderItems</a>
-   <a href="Orders_ListOrderItemsByNextToken.md" class="xref" title="Returns the next page of order items using the NextToken parameter.">ListOrderItemsByNextToken</a>

</div>

</div>

<div class="section">

### Datatype content

The following table shows the elements of the <span
class="keyword cmdname">PointsGranted</span> datatype:

<div class="tablenoborder">

| Name                                                      | Description                                                                               | Required | Values                                                                          |
|-----------------------------------------------------------|-------------------------------------------------------------------------------------------|----------|---------------------------------------------------------------------------------|
| <span class="keyword parmname">PointsNumber</span>        | The number of <span class="ph">Amazon Points</span> granted with the purchase of an item. | No       | <span class="ph">Type: xs:int</span>                                            |
| <span class="keyword parmname">PointsMonetaryValue</span> | The monetary value of the <span class="ph">Amazon Points</span> granted.                  | No       | Type: <a href="#Money" class="xref" title="Currency type and amount.">Money</a> |

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
used in a response element of the following operations:

-   <a href="../orders-2013-09-01/Orders_ListOrderItems.md" class="xref">ListOrderItems</a>
-   <a href="Orders_ListOrderItemsByNextToken.md" class="xref" title="Returns the next page of order items using the NextToken parameter.">ListOrderItemsByNextToken</a>

</div>

</div>

<div class="section">

### Datatype content

The following table shows the elements of the <span
class="keyword cmdname">TaxClassification</span> datatype:

<div class="tablenoborder">

| Name                                        | Description                 | Required | Values                                  |
|---------------------------------------------|-----------------------------|----------|-----------------------------------------|
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
in a response element of the following operations:

-   <a href="../orders-2013-09-01/Orders_ListOrderItems.md" class="xref">ListOrderItems</a>
-   <a href="Orders_ListOrderItemsByNextToken.md" class="xref" title="Returns the next page of order items using the NextToken parameter.">ListOrderItemsByNextToken</a>

</div>

</div>

<div class="section">

### Datatype content

The following table shows the elements of the <span
class="keyword cmdname">TaxCollection</span> datatype:

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d205761e4556" class="entry" data-valign="top" width="34.18367346938776%">Name</th>
<th id="d205761e4559" class="entry" data-valign="top" width="25.510204081632654%">Description</th>
<th id="d205761e4562" class="entry" data-valign="top" width="12.755102040816327%">Required</th>
<th id="d205761e4565" class="entry" data-valign="top" width="27.551020408163268%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e4556 "><span class="keyword parmname">Model</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e4559 ">The tax collection model applied to the item.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e4562 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e4565 "><span class="keyword parmname">Model</span> value: <var class="keyword varname">MarketplaceFacilitator</var> - Tax is withheld and remitted to the taxing authority by Amazon on behalf of the seller.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d205761e4556 "><span class="keyword parmname">ResponsibleParty</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d205761e4559 ">The party responsible for withholding the taxes and remitting them to the taxing authority.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d205761e4562 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d205761e4565 "><span class="keyword parmname">ResponsibleParty</span> value: <var class="keyword varname">Amazon Services, Inc.</var>
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

<a href="../orders-2013-09-01/Orders_Overview.md" class="xref">Orders API</a>

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
