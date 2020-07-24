<div id="MWSDX_noscript">

JavaScript is currently disabled in your browser.  
To use the Amazon MWS documentation, you must enable JavaScript in your
browser.

</div>

<div id="MWSDX_divtop">

[![Amazon
Services](https://images-na.ssl-images-amazon.com/images/G/08/mwsportal/fr_FR/amazonservices.gif "Amazon Services")](http://services.amazon.fr)  
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

<div id="FBAOutbound_CreateFulfillmentOrder" class="nested0">

CreateFulfillmentOrder
======================

<div class="body">

<span class="ph">Requests that Amazon ship items from the seller's
inventory in <span class="ph">Amazon's fulfillment network</span> to a
destination address.</span>

</div>

<div id="Description" class="topic concept nested1">

Description
-----------

<div class="body conbody">

<div class="p">

The <span class="keyword apiname">CreateFulfillmentOrder</span>
operation generates a request for Amazon to ship items from the seller's
inventory in <span class="ph">Amazon's fulfillment network</span> to a
destination address.

<div class="note note">

<span class="notetitle">Note:</span> If you attempt to create a
fulfillment order for which you do not have sufficient inventory in
<span class="ph">Amazon's fulfillment network</span>, the service
returns an error.

</div>

</div>

<div class="section">

### Putting an order hold on a fulfillment order

With the <span class="keyword apiname">CreateFulfillmentOrder</span>
operation, you can put an order hold on a fulfillment order when you
want to delay fulfillment for any reason, such as verifying payment. An
order hold not only prevents a fulfillment order from being shipped, it
also prevents the inventory items in the fulfillment order from being
used for <span class="ph">Fulfillment by Amazon (FBA)</span> orders on
Amazon’s retail website. This can help you avoid overselling your FBA
inventory that is available both on Amazon’s retail website and through
Multi-Channel Fulfillment.

To create a fulfillment order with an order hold on it, call the <span
class="keyword apiname">CreateFulfillmentOrder</span> operation and
specify <span class="keyword parmname">FulfillmentAction</span> =
`Hold`. For information about shipping or updating a fulfillment order
with an order hold on it, see
<a href="FBAOutbound_UpdateFulfillmentOrder.md" class="xref" title="Updates and/or requests shipment for a fulfillment order with an order hold on it.">UpdateFulfillmentOrder</a>.

<div class="note note">

<span class="notetitle">Note:</span> An order hold stays in effect for
two weeks. After two weeks, if you have not shipped or cancelled the
fulfillment order, it is automatically cancelled. At that point your
inventory items in the fulfillment order can be used for FBA orders on
Amazon’s retail website.

</div>

</div>

<div class="section">

### Availability

This operation is available in all marketplaces except Brazil.

</div>

<div class="section">

### Throttling

The <span class="keyword apiname">CreateFulfillmentOrder</span>
operation has a **maximum request quota** of 30 and a **restore rate**
of two requests every second. <span class="ph">For definitions of
throttling terminology and for a complete explanation of throttling, see
<a href="../dev_guide/DG_Throttling.md" class="xref">Throttling: Limits to how often you can submit requests</a>
in the <span class="ph">Amazon MWS Developer Guide</span>.</span>

</div>

</div>

</div>

<div id="RequestParameters" class="topic reference nested1">

Request parameters
------------------

<div class="body refbody">

<div class="tablenoborder">

<table id="RequestParameters__RequestParametersTable" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
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
<td>The marketplace the fulfillment order is placed against.</td>
<td>No</td>
<td><span class="keyword parmname">MarketplaceId</span> values: see <a href="../dev_guide/DG_Endpoints.md" class="xref">Amazon MWS endpoints and MarketplaceId values</a>.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">SellerFulfillmentOrderId</span></td>
<td>A fulfillment order identifier that you create to track your fulfillment order. The <span class="keyword parmname">SellerFulfillmentOrderId</span> must be unique for each fulfillment order that you create. If your system already creates unique order identifiers, then these might be good values to use for your <span class="keyword parmname">SellerFulfillmentOrderId</span> values.</td>
<td>Yes</td>
<td>Maximum: 40 characters
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">FulfillmentAction</span></td>
<td>Specifies whether the fulfillment order should ship now or have an order hold put on it.</td>
<td>No</td>
<td><span class="keyword parmname">FulfillmentAction</span> values:
<ul>
<li><var class="keyword varname">Ship</var> - The fulfillment order ships now.</li>
<li><var class="keyword varname">Hold</var> - An order hold is put on the fulfillment order.</li>
</ul>
<p>Default: <var class="keyword varname">Ship</var></p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">DisplayableOrderId</span></td>
<td>A fulfillment order identifier that you create. This value displays as the order identifier in recipient-facing materials such as the outbound shipment packing slip. The value of <span class="keyword parmname">DisplayableOrderId</span> should match the order identifier that you provide to your customer. You can use the <span class="keyword parmname">SellerFulfillmentOrderId</span> for this value or you can specify an alternate value if you want your customer to reference an alternate order identifier.</td>
<td>Yes</td>
<td>An alpha-numeric or <span class="ph"> <a href="../dev_guide/DG_ISO8859.md" class="xref">ISO 8859-1</a> </span> compliant string from one to 40 characters in length. Cannot contain two spaces in a row. Leading and trailing white space is removed.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">DisplayableOrderDateTime</span></td>
<td>The date of your fulfillment order. Displays as the order date in customer-facing materials such as the outbound shipment packing slip.</td>
<td>Yes</td>
<td>In <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">DisplayableOrderComment</span></td>
<td>Order-specific text that appears in customer-facing materials such as the outbound shipment packing slip.</td>
<td>Yes</td>
<td>Maximum: 1000 characters
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">ShippingSpeedCategory</span></td>
<td>The shipping method for your fulfillment order.</td>
<td>Yes</td>
<td><span class="keyword parmname">ShippingSpeedCategory</span> values:
<ul>
<li><var class="keyword varname">Standard</var> - Standard shipping method.</li>
<li><var class="keyword varname">Expedited</var> - Expedited shipping method.</li>
<li><var class="keyword varname">Priority</var> - Priority shipping method.</li>
<li><var class="keyword varname">ScheduledDelivery</var> - Scheduled Delivery shipping method. For more information, see <a href="../fba_guide/FBAGuide_ScheduledDelivery.md" class="xref">Scheduled Delivery</a>.</li>
</ul>
<div class="note note">
<span class="notetitle">Note:</span> Shipping method service level agreements vary by marketplace. See the Amazon Seller Central website in your marketplace for shipping method service level agreements and fulfillment fees.
</div>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">DestinationAddress</span></td>
<td>The destination address for the fulfillment order.</td>
<td>Yes</td>
<td>Type: <a href="FBAOutbound_Datatypes.md#Address" class="xref" title="Postal address information.">Address</a></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">FulfillmentPolicy</span></td>
<td>Indicates how unfulfillable items in a fulfillment order should be handled.</td>
<td>No</td>
<td><span class="keyword parmname">FulfillmentPolicy</span> values:
<ul>
<li><var class="keyword varname">FillOrKill</var> - If an item in a fulfillment order is determined to be unfulfillable before any shipment in the order moves to the <var class="keyword varname">Pending</var> status (the process of picking units from inventory has begun), then the entire order is considered unfulfillable. However, if an item in a fulfillment order is determined to be unfulfillable after a shipment in the order moves to the <var class="keyword varname">Pending</var> status, Amazon cancels as much of the fulfillment order as possible. See the <a href="FBAOutbound_Datatypes.md#FulfillmentShipment" class="xref" title="Delivery and item information for a shipment in a fulfillment order.">FulfillmentShipment</a> datatype for shipment status definitions.</li>
<li><var class="keyword varname">FillAll</var> - All fulfillable items in the fulfillment order are shipped. The fulfillment order remains in a processing state until all items are either shipped by Amazon or cancelled by the seller.</li>
<li><var class="keyword varname">FillAllAvailable</var> - All fulfillable items in the fulfillment order are shipped. All unfulfillable items in the order are cancelled by Amazon.</li>
</ul>
<p>Default: <var class="keyword varname">FillOrKill</var></p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">NotificationEmailList</span></td>
<td>A list of email addresses that you provide that are used by Amazon to send ship-complete notifications to your customers on your behalf.</td>
<td>No</td>
<td>Maximum: 64 characters per email address
<p>Type: List of type: xs:string</p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">CODSettings</span></td>
<td>The COD (Cash On Delivery) charges for a COD order.</td>
<td>No</td>
<td>The <span class="keyword parmname">CODSettings</span> request parameter is valid only in Japan (JP). Specifying <span class="keyword parmname">CODSettings</span> in marketplaces other than Japan returns an error.
<p>Type: <a href="FBAOutbound_Datatypes.md#CODSettings" class="xref" title="The COD (Cash On Delivery) charges that you associate with a COD fulfillment order. Note that COD fulfillment orders are available only in Japan (JP).">CODSettings</a></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Items</span></td>
<td>A list of items to include in the fulfillment order preview, including quantity.</td>
<td>Yes</td>
<td>Type: List of <a href="FBAOutbound_Datatypes.md#CreateFulfillmentOrderItem" class="xref" title="Item information for creating a fulfillment order.">CreateFulfillmentOrderItem</a></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">DeliveryWindow</span></td>
<td>Specifies the time range within which your Scheduled Delivery fulfillment order should be delivered.
<div class="note important">
<span class="importanttitle">Important:</span>
<ul>
<li>The <span class="keyword parmname">StartDateTime</span> and <span class="keyword parmname">EndDateTime</span> values of the <span class="keyword parmname">DeliveryWindow</span> request parameter must be specified exactly as they were returned by your previous call to the <span class="keyword apiname">GetFulfillmentPreview</span> operation. If you specify <span class="keyword parmname">StartDateTime</span> and <span class="keyword parmname">EndDateTime</span> values that were not returned by a previous call to the <span class="keyword apiname">GetFulfillmentPreview</span> operation, the service returns an error.</li>
<li>It is possible that delivery windows that were available when you called the <span class="keyword apiname">GetFulfillmentPreview</span> operation will not be available when call the <span class="keyword apiname">CreateFulfillmentOrder</span> operation. If this happens the service returns an error. In this case you need to call the <span class="keyword apiname">GetFulfillmentPreview</span> operation again to get the currently-available delivery windows.</li>
</ul>
</div>
<p>For more information, see <a href="../fba_guide/FBAGuide_ScheduledDelivery.md" class="xref">Scheduled Delivery</a>.</p></td>
<td>No. Required only if <span class="keyword parmname">ShippingSpeedCategory</span> = <var class="keyword varname">ScheduledDelivery</var>.</td>
<td>The <span class="keyword parmname">DeliveryWindow</span> request parameter is valid only in Japan (JP). Specifying <span class="keyword parmname">DeliveryWindow</span> in marketplaces other than JP returns an error.
<p>Type: <a href="FBAOutbound_Datatypes.md#DeliveryWindow" class="xref" title="The time range within which your Scheduled Delivery fulfillment order should be delivered.">DeliveryWindow</a></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div id="ResponseElements" class="topic reference nested1">

Response elements
-----------------

<div class="body refbody">

<div class="section">

<span class="ph">This operation only returns the standard response
elements.</span>

</div>

</div>

</div>

<div id="Examples" class="topic reference nested1">

Examples
--------

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

    http://mws.amazonservices.jp/FulfillmentOutboundShipment/2010-10-01/   
      ?Action=CreateFulfillmentOrder   
      &Version=2010-10-01   
      &AWSAccessKeyId=AKIAJGUEXAMPLEE2NVUA   
      &MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE   
      &SignatureVersion=2   
      &SignatureMethod=HmacSHA256
      &Signature=ZRA9DR5rveSuz%2F1D18AHvoipg2BAev8yblPQ1BbEbfU%3D   
      &Timestamp=2014-01-02T02:40:36Z   
      &SellerId=A2NKEXAMPLEF53   
      &MarketplaceId=ATVPDKIKX0DER
      &SellerFulfillmentOrderId=mws-test-query-20100713023203751   
      &DisplayableOrderId=mws-test-query-20100713023203751   
      &ShippingSpeedCategory=ScheduledDelivery   
      &DeliveryWindow.StartDateTime=2014-01-03T03:00:00Z   
      &DeliveryWindow.EndDateTime=2014-01-03T05:00:00Z   
      &DestinationAddress.Name=Amazon%20Taro   
      &DestinationAddress.Line1=Meguro-ku%20Shimomeguro%2012-34-56   
      &DestinationAddress.Line2=XXX%20building%20101   
      &DestinationAddress.CountryCode=JP   
      &DestinationAddress.StateOrProvinceCode=Tokyo   
      &DestinationAddress.PostalCode=1500002   
      &DisplayableOrderComment=Seller%20comment%20here   
      &DisplayableOrderDateTime=2013-12-29   
      &FulfillmentAction=Hold   
      &CODSettings.IsCODRequired=true   
      &CODSettings.CODCharge.CurrencyCode=JPY   
      &CODSettings.CODCharge.Value=10.00   
      &CODSettings.CODChargeTax.CurrencyCode=JPY   
      &CODSettings.CODChargeTax.Value=2.00   
      &CODSettings.ShippingCharge.CurrencyCode=JPY   
      &CODSettings.ShippingCharge.Value=5.00   
      &CODSettings.ShippingChargeTax.CurrencyCode=JPY   
      &CODSettings.ShippingChargeTax.Value=3.00   
      &Items.member.1.DisplayableComment=Seller%20comment%20here   
      &Items.member.1.GiftMessage=Gift%20comment%20here   
      &Items.member.1.PerUnitDeclaredValue.CurrencyCode=JPY   
      &Items.member.1.PerUnitDeclaredValue.Value=30   
      &Items.member.1.PerUnitPrice.CurrencyCode=JPY   
      &Items.member.1.PerUnitPrice.Value=40.00   
      &Items.member.1.PerUnitTax.CurrencyCode=JPY   
      &Items.member.1.PerUnitTax.Value=2.00   
      &Items.member.1.Quantity=1   
      &Items.member.1.SellerFulfillmentOrderItemId=mws-test-1   
      &Items.member.1.SellerSKU=Sample_SKU_1   
      &Items.member.2.DisplayableComment=Seller%20comment%20here   
      &Items.member.2.GiftMessage=Gift%20comment%20here   
      &Items.member.2.PerUnitDeclaredValue.CurrencyCode=JPY   
      &Items.member.2.PerUnitDeclaredValue.Value=20.00   
      &Items.member.2.PerUnitPrice.CurrencyCode=JPY   
      &Items.member.2.PerUnitPrice.Value=22.00   
      &Items.member.2.PerUnitTax.CurrencyCode=JPY   
      &Items.member.2.PerUnitTax.Value=6.00   
      &Items.member.2.Quantity=2   
      &Items.member.2.SellerFulfillmentOrderItemId=mws-test-2   
      &Items.member.2.SellerSKU=Sample_SKU_2   
      &NotificationEmailList.member.1=test1%40amazon.com   
      &NotificationEmailList.member.2=test2%40amazon.com

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

    <?xml version="1.0"?>
    <CreateFulfillmentOrderResponse xmlns="http://mws.amazonaws.com/FulfillmentOutboundShipment/2010-10-01/">
        <ResponseMetadata>
            <RequestId>d95be26c-16cf-4bbc-ab58-dce89fd4ac53</RequestId>
        </ResponseMetadata>
    </CreateFulfillmentOrderResponse>

<a href="#Examples" class="xref">↑ Top</a>

</div>

</div>

</div>

</div>

<div id="RelatedTopics" class="topic nested1">

Related topics
--------------

<div class="body">

<a href="FBAOutbound_Overview.md" class="xref">What you should know about the Fulfillment Outbound Shipment API section</a>

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
