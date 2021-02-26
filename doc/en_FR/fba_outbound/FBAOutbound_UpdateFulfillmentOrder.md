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

<div id="FBAOutbound_UpdateFulfillmentOrder" class="nested0">

UpdateFulfillmentOrder
======================

<div class="body">

<span class="ph">Updates and/or requests shipment for a fulfillment
order with an order hold on it.</span>

</div>

<div id="Description" class="topic concept nested1">

Description
-----------

<div class="body conbody">

With the <span class="keyword apiname">UpdateFulfillmentOrder</span>
operation, you can update and/or ship a fulfillment order with an order
hold on it. For information about putting an order hold on a fulfillment
order, see
<a href="FBAOutbound_CreateFulfillmentOrder.md" class="xref" title="Requests that Amazon ship items from the seller&#39;s inventory in Amazon&#39;s fulfillment network to a destination address.">CreateFulfillmentOrder</a>.

<div class="section">

### Shipping a fulfillment order

<div class="p">

To ship a fulfillment order with an order hold on it, call the <span
class="keyword apiname">UpdateFulfillmentOrder</span> operation for the
order and specify <span
class="keyword parmname">FulfillmentAction</span> = `Ship`.

<div class="note note">

<span class="notetitle">Note:</span> After you ship a fulfillment order
you can no longer update the order using the <span
class="keyword apiname">UpdateFulfillmentOrder</span> operation.

</div>

</div>

</div>

<div class="section">

### Updating a fulfillment order

To update a fulfillment order with an order hold on it, call the <span
class="keyword apiname">UpdateFulfillmentOrder</span> operation for the
order and specify your updated information using the optional
parameters. Use the <span
class="keyword parmname">FulfillmentAction</span> parameter to specify
whether you want to ship your updated order.

</div>

<div class="section">

### Availability

This operation is available in all marketplaces except Brazil.

</div>

<div class="section">

### Throttling

The <span class="keyword apiname">UpdateFulfillmentOrder</span>
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
<td>Identifies the fulfillment order that you want to update. Created with a previous call to the <span class="keyword apiname">CreateFulfillmentOrder</span> operation.</td>
<td>Yes</td>
<td>Maximum: 40 characters
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">FulfillmentAction</span></td>
<td>Specifies whether the fulfillment order should ship now or should remain on hold.</td>
<td>No</td>
<td><span class="keyword parmname">FulfillmentAction</span> values:
<ul>
<li><var class="keyword varname">Ship</var> - The fulfillment order ships now.</li>
<li><var class="keyword varname">Hold</var> - The order hold remains on the fulfillment order.</li>
</ul>
<p>Default: <var class="keyword varname">Hold</var></p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">DisplayableOrderId</span></td>
<td>A fulfillment order identifier that you create. This value displays as the order identifier in recipient-facing materials such as the outbound shipment packing slip. The value of <span class="keyword parmname">DisplayableOrderId</span> should match the order identifier that you provide to your customer. You can use the <span class="keyword parmname">SellerFulfillmentOrderId</span> for this value or you can specify an alternate value if you want your customer to reference an alternate order identifier.</td>
<td>No</td>
<td>An alpha-numeric or <span class="ph"> <a href="../dev_guide/DG_ISO8859.md" class="xref">ISO 8859-1</a> </span> compliant string from one to 40 characters in length. Cannot contain two spaces in a row. Leading and trailing white space is removed.
<p>Default: The value that you specified with a previous call to the <span class="keyword apiname">CreateFulfillmentOrder</span> or <span class="keyword apiname">UpdateFulfillmentOrder</span> operation.</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">DisplayableOrderDateTime</span></td>
<td>The date of your fulfillment order. Displays as the order date in customer-facing materials such as the outbound shipment packing slip.</td>
<td>No</td>
<td>Default: The value that you specified with a previous call to the <span class="keyword apiname">CreateFulfillmentOrder</span> or <span class="keyword apiname">UpdateFulfillmentOrder</span> operation.
<p>In <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.</p>
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">DisplayableOrderComment</span></td>
<td>Order-specific text that appears in customer-facing materials such as the outbound shipment packing slip.</td>
<td>No</td>
<td>Maximum: 1000 characters
<p>Default: The value that you specified with a previous call to the <span class="keyword apiname">CreateFulfillmentOrder</span> or <span class="keyword apiname">UpdateFulfillmentOrder</span> operation.</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">ShippingSpeedCategory</span></td>
<td>The shipping method for your fulfillment order.</td>
<td>No</td>
<td><span class="keyword parmname">ShippingSpeedCategory</span> values:
<ul>
<li><var class="keyword varname">Standard</var> - Standard shipping method.</li>
<li><var class="keyword varname">Expedited</var> - Expedited shipping method.</li>
<li><var class="keyword varname">Priority</var> - Priority shipping method.</li>
</ul>
<div class="note note">
<span class="notetitle">Note:</span> Shipping method service level agreements vary by marketplace. See the Amazon Seller Central website in your marketplace for shipping method service level agreements and fulfillment fees.
</div>
<p>Default: The value that you specified with a previous call to the <span class="keyword apiname">CreateFulfillmentOrder</span> or <span class="keyword apiname">UpdateFulfillmentOrder</span> operation.</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">DestinationAddress</span></td>
<td>The destination address for the fulfillment order.</td>
<td>No</td>
<td>If you do not include the <span class="keyword parmname">DestinationAddress</span> parameter, then the <span class="keyword parmname">DestinationAddress</span> values from your previous call to <span class="keyword apiname">CreateFulfillmentOrder</span> are used. If you do include the <span class="keyword parmname">DestinationAddress</span> parameter, then <em>only</em> the values that you specify are used. None of the <span class="keyword parmname">DestinationAddress</span> values that you specified with your previous call to <span class="keyword apiname">CreateFulfillmentOrder</span> are used.
<p>Default: The value that you specified with a previous call to the <span class="keyword apiname">CreateFulfillmentOrder</span> or <span class="keyword apiname">UpdateFulfillmentOrder</span> operation.</p>
<p>Type: <a href="FBAOutbound_Datatypes.md#Address" class="xref" title="Postal address information.">Address</a></p></td>
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
<p>Default: If you specified a value with a previous call to the <span class="keyword apiname">CreateFulfillmentOrder</span> or <span class="keyword apiname">UpdateFulfillmentOrder</span> operation, then that value is the default. Otherwise the default is <span class="keyword parmname">FillOrKill</span>.</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">NotificationEmailList</span></td>
<td>A list of email addresses that you provide that are used by Amazon to send ship-complete notifications to your customers on your behalf.</td>
<td>No</td>
<td>Maximum: 64 characters per email address
<p>Default: If you specified a value with a previous call to the <span class="keyword apiname">CreateFulfillmentOrder</span> or <span class="keyword apiname">UpdateFulfillmentOrder</span> operation, then that value is the default. Otherwise the default is null.</p>
<p>Type: List of <span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">Items</span></td>
<td>A list of items to include in the fulfillment order preview, including quantity.</td>
<td>No</td>
<td>Updating an <span class="keyword parmname">Items</span> value for a fulfillment order item does not affect the <span class="keyword parmname">Items</span> values for other fulfillment order items that you specified with a previous call to the <span class="keyword apiname">CreateFulfillmentOrder</span> or <span class="keyword apiname">UpdateFulfillmentOrder</span>.
<p>Default: The values that you specified with a previous call to the <span class="keyword apiname">CreateFulfillmentOrder</span> or <span class="keyword apiname">UpdateFulfillmentOrder</span> operation.</p>
<p>Type: List of <a href="FBAOutbound_Datatypes.md#UpdateFulfillmentOrderItem" class="xref" title="Item information for updating a fulfillment order.">UpdateFulfillmentOrderItem</a></p></td>
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
      ?Action=UpdateFulfillmentOrder   
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
      &ShippingSpeedCategory=Standard   
      &DestinationAddress.Name=Amazon%20Taro   
      &DestinationAddress.Line1=Meguro-ku%20Shimomeguro%2012-34-56   
      &DestinationAddress.Line2=XXX%20building%20101   
      &DestinationAddress.CountryCode=JP   
      &DestinationAddress.StateOrProvinceCode=Tokyo   
      &DestinationAddress.PostalCode=1500002   
      &DisplayableOrderComment=Seller%20comment%20here   
      &DisplayableOrderDateTime=2014-01-02   
      &FulfillmentAction=Ship   
      &Items.member.1.DisplayableComment=Seller%20comment%20here   
      &Items.member.1.GiftMessage=Gift%20comment%20here   
      &Items.member.1.PerUnitDeclaredValue.CurrencyCode=JPY   
      &Items.member.1.PerUnitDeclaredValue.Value=30   
      &Items.member.1.Quantity=1   
      &Items.member.1.SellerFulfillmentOrderItemId=mws-test-1   
      &Items.member.2.DisplayableComment=Seller%20comment%20here   
      &Items.member.2.GiftMessage=Gift%20comment%20here   
      &Items.member.2.PerUnitDeclaredValue.CurrencyCode=JPY   
      &Items.member.2.PerUnitDeclaredValue.Value=20.00   
      &Items.member.2.Quantity=2   
      &Items.member.2.SellerFulfillmentOrderItemId=mws-test-2   
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
    <UpdateFulfillmentOrderResponse xmlns="http://mws.amazonaws.com/FulfillmentOutboundShipment/2010-10-01/">
        <ResponseMetadata>
            <RequestId>d95be26c-16cf-4bbc-ab58-dce89fd4ac53</RequestId>
        </ResponseMetadata>
    </UpdateFulfillmentOrderResponse>

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
