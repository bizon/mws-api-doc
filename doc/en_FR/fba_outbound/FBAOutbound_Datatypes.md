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
<span id="MWSDX_dep_notice"></span>

### Deprecation Notice:

Amazon Marketplace Web Service (MWS) will no longer be available after
**December 31, 2023**. All MWS developers must migrate to Selling
Partner API (SP-API) to avoid service disruptions. Refer to the
[Migration
Hub](https://developer-docs.amazon.com/sp-api/page/migration-hub) for
more information.

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

<div id="FBAOutbound_Datatypes" class="nested0">

# Outbound Datatypes

<div class="body">

The following datatypes are used in the request parameters and response
elements of the <span class="ph">Amazon Marketplace Web Service (Amazon
MWS)</span> <span class="ph">Fulfillment Outbound Shipment API
section</span>:

<div class="tablenoborder">

| Datatype                                                                                                                                                                                                                                     | Description                                                                                                                                                                    |
|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| <a href="FBAOutbound_Datatypes.md#Address" class="xref" title="Postal address information.">Address</a>                                                                                                                                    | <span class="ph">Postal address information.</span>                                                                                                                            |
| <a href="FBAOutbound_Datatypes.md#CODSettings" class="xref" title="The COD (Cash On Delivery) charges that you associate with a COD fulfillment order. Note that COD fulfillment orders are available only in Japan (JP).">CODSettings</a> | <span class="ph">The COD (Cash On Delivery) charges that you associate with a COD fulfillment order. Note that COD fulfillment orders are available only in Japan (JP).</span> |
| <a href="FBAOutbound_Datatypes.md#CreateFulfillmentOrderItem" class="xref" title="Item information for creating a fulfillment order.">CreateFulfillmentOrderItem</a>                                                                       | <span class="ph">Item information for creating a fulfillment order.</span>                                                                                                     |
| <a href="FBAOutbound_Datatypes.md#CreateReturnItem" class="xref" title="An item to be returned.">CreateReturnItem</a>                                                                                                                      | <span class="ph">An item to be returned.</span>                                                                                                                                |
| <a href="FBAOutbound_Datatypes.md#Currency" class="xref" title="Currency type and amount.">Currency</a>                                                                                                                                    | <span class="ph">Currency type and amount.</span>                                                                                                                              |
| <a href="FBAOutbound_Datatypes.md#DeliveryWindow" class="xref" title="The time range within which your Scheduled Delivery fulfillment order should be delivered.">DeliveryWindow</a>                                                       | <span class="ph">The time range within which your Scheduled Delivery fulfillment order should be delivered.</span>                                                             |
| <a href="FBAOutbound_Datatypes.md#Fee" class="xref" title="Fee type and cost.">Fee</a>                                                                                                                                                     | <span class="ph">Fee type and cost.</span>                                                                                                                                     |
| <a href="FBAOutbound_Datatypes.md#FulfillmentOrder" class="xref" title="General information about a fulfillment order, including its status.">FulfillmentOrder</a>                                                                         | <span class="ph">General information about a fulfillment order, including its status.</span>                                                                                   |
| <a href="FBAOutbound_Datatypes.md#FulfillmentOrderItem" class="xref" title="Item information for a fulfillment order.">FulfillmentOrderItem</a>                                                                                            | <span class="ph">Item information for a fulfillment order.</span>                                                                                                              |
| <a href="FBAOutbound_Datatypes.md#FulfillmentPreview" class="xref" title="Information about a fulfillment order preview, including delivery and fee information based on shipping method.">FulfillmentPreview</a>                          | <span class="ph">Information about a fulfillment order preview, including delivery and fee information based on shipping method.</span>                                        |
| <a href="FBAOutbound_Datatypes.md#FulfillmentPreviewItem" class="xref" title="Item information for a shipment in a fulfillment order preview.">FulfillmentPreviewItem</a>                                                                  | <span class="ph">Item information for a shipment in a fulfillment order preview.</span>                                                                                        |
| <a href="FBAOutbound_Datatypes.md#FulfillmentPreviewShipment" class="xref" title="Delivery and item information for a shipment in a fulfillment order preview.">FulfillmentPreviewShipment</a>                                             | <span class="ph">Delivery and item information for a shipment in a fulfillment order preview.</span>                                                                           |
| <a href="FBAOutbound_Datatypes.md#FulfillmentShipment" class="xref" title="Delivery and item information for a shipment in a fulfillment order.">FulfillmentShipment</a>                                                                   | <span class="ph">Delivery and item information for a shipment in a fulfillment order.</span>                                                                                   |
| <a href="FBAOutbound_Datatypes.md#FulfillmentShipmentItem" class="xref" title="Item information for a shipment in a fulfillment order.">FulfillmentShipmentItem</a>                                                                        | <span class="ph">Item information for a shipment in a fulfillment order.</span>                                                                                                |
| <a href="FBAOutbound_Datatypes.md#FulfillmentShipmentPackage" class="xref" title="Package information for a shipment in a fulfillment order.">FulfillmentShipmentPackage</a>                                                               | <span class="ph">Package information for a shipment in a fulfillment order.</span>                                                                                             |
| <a href="FBAOutbound_Datatypes.md#GetFulfillmentPreviewItem" class="xref" title="Item information for a fulfillment order preview.">GetFulfillmentPreviewItem</a>                                                                          | <span class="ph">Item information for a fulfillment order preview.</span>                                                                                                      |
| <a href="FBAOutbound_Datatypes.md#InvalidItemReason" class="xref" title="The reason that the item is invalid for return.">InvalidItemReason</a>                                                                                            | <span class="ph">The reason that the item is invalid for return.</span>                                                                                                        |
| <a href="FBAOutbound_Datatypes.md#InvalidItemReasonCode" class="xref" title="A code for why the item is invalid for return.">InvalidItemReasonCode</a>                                                                                     | <span class="ph">A code for why the item is invalid for return.</span>                                                                                                         |
| <a href="FBAOutbound_Datatypes.md#InvalidReturnItem" class="xref" title="An item that is invalid for return.">InvalidReturnItem</a>                                                                                                        | <span class="ph">An item that is invalid for return.</span>                                                                                                                    |
| <a href="FBAOutbound_Datatypes.md#ReasonCodeDetails" class="xref" title="A return reason code, a description, and an optional description translation.">ReasonCodeDetails</a>                                                              | <span class="ph">A return reason code, a description, and an optional description translation.</span>                                                                          |
| <a href="FBAOutbound_Datatypes.md#ReturnAuthorization" class="xref" title="Return authorization information for items accepted for return.">ReturnAuthorization</a>                                                                        | <span class="ph">Return authorization information for items accepted for return.</span>                                                                                        |
| <a href="FBAOutbound_Datatypes.md#ReturnItem" class="xref" title="An item that Amazon accepted for return.">ReturnItem</a>                                                                                                                 | <span class="ph">An item that Amazon accepted for return.</span>                                                                                                               |
| <a href="FBAOutbound_Datatypes.md#ReturnReceivedCondition" class="xref" title="The condition that the return item was received by an Amazon fulfillment center.">ReturnReceivedCondition</a>                                               | <span class="ph">The condition that the return item was received by an Amazon fulfillment center.</span>                                                                       |
| <a href="FBAOutbound_Datatypes.md#ScheduledDeliveryInfo" class="xref" title="Delivery information for a Scheduled Delivery.">ScheduledDeliveryInfo</a>                                                                                     | <span class="ph">Delivery information for a Scheduled Delivery.</span>                                                                                                         |
| <a href="FBAOutbound_Datatypes.md#Status" class="xref" title="Indicates if the return item has been processed by an Amazon fulfillment center.">Status</a>                                                                                 | <span class="ph">Indicates if the return item has been processed by an Amazon fulfillment center.</span>                                                                       |
| <a href="FBAOutbound_Datatypes.md#TrackingAddress" class="xref" title="Address information for tracking the package.">TrackingAddress</a>                                                                                                  | <span class="ph">Address information for tracking the package.</span>                                                                                                          |
| <a href="FBAOutbound_Datatypes.md#TrackingEvent" class="xref" title="Information for tracking package deliveries.">TrackingEvent</a>                                                                                                       | <span class="ph">Information for tracking package deliveries.</span>                                                                                                           |
| <a href="FBAOutbound_Datatypes.md#UnfulfillablePreviewItem" class="xref" title="Information about unfulfillable items in a fulfillment order preview.">UnfulfillablePreviewItem</a>                                                        | <span class="ph">Information about unfulfillable items in a fulfillment order preview.</span>                                                                                  |
| <a href="FBAOutbound_Datatypes.md#UpdateFulfillmentOrderItem" class="xref" title="Item information for updating a fulfillment order.">UpdateFulfillmentOrderItem</a>                                                                       | <span class="ph">Item information for updating a fulfillment order.</span>                                                                                                     |
| <a href="FBAOutbound_Datatypes.md#Weight" class="xref" title="Weight unit and amount.">Weight</a>                                                                                                                                          | <span class="ph">Weight unit and amount.</span>                                                                                                                                |

</div>

</div>

<div id="Address" class="topic reference nested1">

## Address

<div class="body refbody">

<span class="ph">Postal address information.</span>

<div class="section">

### Operations

The <span class="keyword parmname">Address</span> datatype is used in a
request parameter or a response element of the following operations:

-   <a href="FBAOutbound_CreateFulfillmentOrder.md" class="xref" title="Requests that Amazon ship items from the seller&#39;s inventory in Amazon&#39;s fulfillment network to a destination address.">CreateFulfillmentOrder</a>
-   <a href="FBAOutbound_GetFulfillmentPreview.md" class="xref" title="Returns a list of fulfillment order previews based on shipping criteria that you specify.">GetFulfillmentPreview</a>
-   <a href="FBAOutbound_ListAllFulfillmentOrders.md" class="xref" title="Returns a list of fulfillment orders fulfilled after (or at) a specified date.">ListAllFulfillmentOrders</a>
-   <a href="FBAOutbound_UpdateFulfillmentOrder.md" class="xref" title="Updates and/or requests shipment for a fulfillment order with an order hold on it.">UpdateFulfillmentOrder</a>

</div>

<div class="section">

### Datatype content

The following table shows the elements of the <span
class="keyword parmname">Address</span> datatype:

<div class="tablenoborder">

<table id="Address__RequestParametersTable" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d91183e715" class="entry" data-valign="top" width="32.75613275613276%">Name</th>
<th id="d91183e718" class="entry" data-valign="top" width="27.705627705627705%">Description</th>
<th id="d91183e721" class="entry" data-valign="top" width="14.430014430014431%">Required</th>
<th id="d91183e724" class="entry" data-valign="top" width="25.108225108225106%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="32.75613275613276%" headers="d91183e715 "><span class="keyword parmname">Name</span></td>
<td class="entry" data-valign="top" width="27.705627705627705%" headers="d91183e718 ">Recipient's name.</td>
<td class="entry" data-valign="top" width="14.430014430014431%" headers="d91183e721 ">Yes</td>
<td class="entry" data-valign="top" width="25.108225108225106%" headers="d91183e724 ">Maximum: 50 characters
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="32.75613275613276%" headers="d91183e715 "><span class="keyword parmname">Line1</span></td>
<td class="entry" data-valign="top" width="27.705627705627705%" headers="d91183e718 ">Recipient's street address information.</td>
<td class="entry" data-valign="top" width="14.430014430014431%" headers="d91183e721 ">Yes</td>
<td class="entry" data-valign="top" width="25.108225108225106%" headers="d91183e724 ">Maximum: 60 characters
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="32.75613275613276%" headers="d91183e715 "><span class="keyword parmname">Line2</span></td>
<td class="entry" data-valign="top" width="27.705627705627705%" headers="d91183e718 ">Additional street address information, if required.</td>
<td class="entry" data-valign="top" width="14.430014430014431%" headers="d91183e721 ">No</td>
<td class="entry" data-valign="top" width="25.108225108225106%" headers="d91183e724 ">Maximum: 60 characters
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="32.75613275613276%" headers="d91183e715 "><span class="keyword parmname">Line3</span></td>
<td class="entry" data-valign="top" width="27.705627705627705%" headers="d91183e718 ">Additional street address information, if required.</td>
<td class="entry" data-valign="top" width="14.430014430014431%" headers="d91183e721 ">No</td>
<td class="entry" data-valign="top" width="25.108225108225106%" headers="d91183e724 ">Maximum: 60 characters
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="32.75613275613276%" headers="d91183e715 "><span class="keyword parmname">DistrictOrCounty</span></td>
<td class="entry" data-valign="top" width="27.705627705627705%" headers="d91183e718 ">Recipient's district or county.</td>
<td class="entry" data-valign="top" width="14.430014430014431%" headers="d91183e721 ">No</td>
<td class="entry" data-valign="top" width="25.108225108225106%" headers="d91183e724 ">Maximum: 150 characters
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="32.75613275613276%" headers="d91183e715 "><span class="keyword parmname">City</span></td>
<td class="entry" data-valign="top" width="27.705627705627705%" headers="d91183e718 ">Recipient's city.</td>
<td class="entry" data-valign="top" width="14.430014430014431%" headers="d91183e721 ">Required, except in JP. Do not use in JP.</td>
<td class="entry" data-valign="top" width="25.108225108225106%" headers="d91183e724 ">Maximum: 50 characters
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="32.75613275613276%" headers="d91183e715 "><span class="keyword parmname">StateOrProvinceCode</span></td>
<td class="entry" data-valign="top" width="27.705627705627705%" headers="d91183e718 ">Recipient's state or province code.</td>
<td class="entry" data-valign="top" width="14.430014430014431%" headers="d91183e721 ">Yes</td>
<td class="entry" data-valign="top" width="25.108225108225106%" headers="d91183e724 ">Maximum: 150 characters
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="32.75613275613276%" headers="d91183e715 "><span class="keyword parmname">CountryCode</span></td>
<td class="entry" data-valign="top" width="27.705627705627705%" headers="d91183e718 ">Recipient's country code.</td>
<td class="entry" data-valign="top" width="14.430014430014431%" headers="d91183e721 ">Yes</td>
<td class="entry" data-valign="top" width="25.108225108225106%" headers="d91183e724 "><span class="ph">A two-character country code, in ISO 3166-1 alpha-2 format.</span>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="32.75613275613276%" headers="d91183e715 "><span class="keyword parmname">PostalCode</span></td>
<td class="entry" data-valign="top" width="27.705627705627705%" headers="d91183e718 ">The postal code (required for shipments to the U.S.).</td>
<td class="entry" data-valign="top" width="14.430014430014431%" headers="d91183e721 ">No</td>
<td class="entry" data-valign="top" width="25.108225108225106%" headers="d91183e724 ">Maximum: 20 characters
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="32.75613275613276%" headers="d91183e715 "><span class="keyword parmname">PhoneNumber</span></td>
<td class="entry" data-valign="top" width="27.705627705627705%" headers="d91183e718 ">Recipient's phone number.</td>
<td class="entry" data-valign="top" width="14.430014430014431%" headers="d91183e721 ">No</td>
<td class="entry" data-valign="top" width="25.108225108225106%" headers="d91183e724 ">Maximum: 20 characters
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="CODSettings" class="topic reference nested1">

## CODSettings

<div class="body refbody">

<span class="ph">The COD (Cash On Delivery) charges that you associate
with a COD fulfillment order. Note that COD fulfillment orders are
available only in Japan (JP).</span>

<div class="section">

### Operations

The <span class="keyword parmname">CODSettings</span> datatype is used
in a request parameter or response element in the following operations:

-   <a href="FBAOutbound_CreateFulfillmentOrder.md" class="xref" title="Requests that Amazon ship items from the seller&#39;s inventory in Amazon&#39;s fulfillment network to a destination address.">CreateFulfillmentOrder</a>
-   <a href="FBAOutbound_GetFulfillmentOrder.md" class="xref" title="Returns a fulfillment order based on a specified SellerFulfillmentOrderId.">GetFulfillmentOrder</a>

</div>

<div class="section">

### Datatype content

The following table shows the elements of the <span
class="keyword parmname">CODSettings</span> datatype:

<div class="tablenoborder">

<table id="CODSettings__RequestParametersTable" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d91183e1048" class="entry" data-valign="top" width="21.96132596685083%">Name</th>
<th id="d91183e1051" class="entry" data-valign="top" width="25.552486187845304%">Description</th>
<th id="d91183e1054" class="entry" data-valign="top" width="13.812154696132598%">Required</th>
<th id="d91183e1057" class="entry" data-valign="top" width="38.674033149171265%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="21.96132596685083%" headers="d91183e1048 "><span class="keyword parmname">IsCODRequired</span></td>
<td class="entry" data-valign="top" width="25.552486187845304%" headers="d91183e1051 ">Indicates whether this fulfillment order requires COD (Cash On Delivery) payment.</td>
<td class="entry" data-valign="top" width="13.812154696132598%" headers="d91183e1054 ">No</td>
<td class="entry" data-valign="top" width="38.674033149171265%" headers="d91183e1057 "><span class="keyword parmname">IsCODRequired</span> values:
<ul>
<li><var class="keyword varname">true</var> - COD payment is required.</li>
<li><var class="keyword varname">false</var> - COD payment is not required.</li>
</ul>
<div class="note note">
<span class="notetitle">Note:</span> <var class="keyword varname">true</var> is a valid value for <span class="keyword parmname">IsCODRequired</span> only in Japan (JP). Specifying <span class="keyword parmname">IsCODRequired</span>=<var class="keyword varname">true</var> with a call to <span class="keyword apiname">CreateFulfillmentOrder</span> in any other marketplace returns an error.
</div>
<div class="note note">
<span class="notetitle">Note:</span> If you specify <span class="keyword parmname">IsCODRequired</span>=<var class="keyword varname">true</var>, then you must also specify <span class="keyword parmname">PerUnitPrice</span>. For more information about <span class="keyword parmname">PerUnitPrice</span>, see <a href="FBAOutbound_Datatypes.md#CreateFulfillmentOrderItem" class="xref" title="Item information for creating a fulfillment order.">CreateFulfillmentOrderItem</a>.
</div>
<p><span class="ph">Type: xs:boolean</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="21.96132596685083%" headers="d91183e1048 "><span class="keyword parmname">CODCharge</span></td>
<td class="entry" data-valign="top" width="25.552486187845304%" headers="d91183e1051 ">The amount of the COD charge to be collected from the customer for a COD order.</td>
<td class="entry" data-valign="top" width="13.812154696132598%" headers="d91183e1054 ">No</td>
<td class="entry" data-valign="top" width="38.674033149171265%" headers="d91183e1057 ">Default: zero
<div class="note note">
<span class="notetitle">Note:</span> <span class="keyword parmname">CODCharge</span> is valid only in JP.
</div>
<p>Type: <a href="FBAOutbound_Datatypes.md#Currency" class="xref" title="Currency type and amount.">Currency</a></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="21.96132596685083%" headers="d91183e1048 "><span class="keyword parmname">CODChargeTax</span></td>
<td class="entry" data-valign="top" width="25.552486187845304%" headers="d91183e1051 ">The amount of the tax on the COD charge to be collected from the customer for a COD order.</td>
<td class="entry" data-valign="top" width="13.812154696132598%" headers="d91183e1054 ">No</td>
<td class="entry" data-valign="top" width="38.674033149171265%" headers="d91183e1057 ">Default: zero
<div class="note note">
<span class="notetitle">Note:</span> <span class="keyword parmname">CODChargeTax</span> is valid only in JP.
</div>
<p>Type: <a href="FBAOutbound_Datatypes.md#Currency" class="xref" title="Currency type and amount.">Currency</a></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="21.96132596685083%" headers="d91183e1048 "><span class="keyword parmname">ShippingCharge</span></td>
<td class="entry" data-valign="top" width="25.552486187845304%" headers="d91183e1051 ">The amount of the shipping charge to be collected from the customer for a COD order.</td>
<td class="entry" data-valign="top" width="13.812154696132598%" headers="d91183e1054 ">No</td>
<td class="entry" data-valign="top" width="38.674033149171265%" headers="d91183e1057 ">Default: zero
<div class="note note">
<span class="notetitle">Note:</span> <span class="keyword parmname">ShippingCharge</span> is valid only in JP.
</div>
<p>Type: <a href="FBAOutbound_Datatypes.md#Currency" class="xref" title="Currency type and amount.">Currency</a></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="21.96132596685083%" headers="d91183e1048 "><span class="keyword parmname">ShippingChargeTax</span></td>
<td class="entry" data-valign="top" width="25.552486187845304%" headers="d91183e1051 ">The amount of the tax on the shipping charge to be collected from the customer for a COD order.</td>
<td class="entry" data-valign="top" width="13.812154696132598%" headers="d91183e1054 ">No</td>
<td class="entry" data-valign="top" width="38.674033149171265%" headers="d91183e1057 ">Default: zero
<div class="note note">
<span class="notetitle">Note:</span> <span class="keyword parmname">ShippingChargeTax</span> is valid only in JP.
</div>
<p>Type: <a href="FBAOutbound_Datatypes.md#Currency" class="xref" title="Currency type and amount.">Currency</a></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="CreateFulfillmentOrderItem" class="topic reference nested1">

## CreateFulfillmentOrderItem

<div class="body refbody">

<span class="ph">Item information for creating a fulfillment
order.</span>

<div class="section">

### Operations

The <span class="keyword parmname">CreateFulfillmentOrderItem</span>
datatype is used in a request parameter of the following operation:

-   <a href="FBAOutbound_CreateFulfillmentOrder.md" class="xref" title="Requests that Amazon ship items from the seller&#39;s inventory in Amazon&#39;s fulfillment network to a destination address.">CreateFulfillmentOrder</a>

</div>

<div class="section">

### Datatype content

The following table shows the elements of the <span
class="keyword parmname">CreateFulfillmentOrderItem</span> datatype:

<div class="tablenoborder">

<table id="CreateFulfillmentOrderItem__RequestParametersTable" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d91183e1361" class="entry" data-valign="top" width="24.803149606299215%">Name</th>
<th id="d91183e1364" class="entry" data-valign="top" width="24.803149606299215%">Description</th>
<th id="d91183e1367" class="entry" data-valign="top" width="30.708661417322837%">Required</th>
<th id="d91183e1370" class="entry" data-valign="top" width="19.685039370078737%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="24.803149606299215%" headers="d91183e1361 "><span class="keyword parmname">SellerSKU</span></td>
<td class="entry" data-valign="top" width="24.803149606299215%" headers="d91183e1364 "><span class="ph">The seller SKU of the item.</span></td>
<td class="entry" data-valign="top" width="30.708661417322837%" headers="d91183e1367 ">Yes</td>
<td class="entry" data-valign="top" width="19.685039370078737%" headers="d91183e1370 ">Maximum: 50 characters
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="24.803149606299215%" headers="d91183e1361 "><span class="keyword parmname">SellerFulfillmentOrderItemId</span></td>
<td class="entry" data-valign="top" width="24.803149606299215%" headers="d91183e1364 ">A fulfillment order item identifier that you create to track your fulfillment order items. You can use this value to disambiguate multiple fulfillment items that have the same <span class="keyword parmname">SellerSKU</span>. For example, you might assign different <span class="keyword parmname">SellerFulfillmentOrderItemId</span> values to two items in a fulfillment order that share the same <span class="keyword parmname">SellerSKU</span> but have different <span class="keyword parmname">GiftMessage</span> values.</td>
<td class="entry" data-valign="top" width="30.708661417322837%" headers="d91183e1367 ">Yes</td>
<td class="entry" data-valign="top" width="19.685039370078737%" headers="d91183e1370 ">Maximum: 50 characters
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="24.803149606299215%" headers="d91183e1361 "><span class="keyword parmname">Quantity</span></td>
<td class="entry" data-valign="top" width="24.803149606299215%" headers="d91183e1364 "><span class="ph">The item quantity.</span></td>
<td class="entry" data-valign="top" width="30.708661417322837%" headers="d91183e1367 ">Yes</td>
<td class="entry" data-valign="top" width="19.685039370078737%" headers="d91183e1370 "><span class="ph">Type: xs:int</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="24.803149606299215%" headers="d91183e1361 "><span class="keyword parmname">GiftMessage</span></td>
<td class="entry" data-valign="top" width="24.803149606299215%" headers="d91183e1364 ">A message to the gift recipient, if applicable.</td>
<td class="entry" data-valign="top" width="30.708661417322837%" headers="d91183e1367 ">No</td>
<td class="entry" data-valign="top" width="19.685039370078737%" headers="d91183e1370 ">Maximum: 512 characters
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="24.803149606299215%" headers="d91183e1361 "><span class="keyword parmname">DisplayableComment</span></td>
<td class="entry" data-valign="top" width="24.803149606299215%" headers="d91183e1364 ">Item-specific text that displays in recipient-facing materials such as the outbound shipment packing slip.</td>
<td class="entry" data-valign="top" width="30.708661417322837%" headers="d91183e1367 ">No</td>
<td class="entry" data-valign="top" width="19.685039370078737%" headers="d91183e1370 ">Maximum: 250 characters
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="24.803149606299215%" headers="d91183e1361 "><span class="keyword parmname">FulfillmentNetworkSKU</span></td>
<td class="entry" data-valign="top" width="24.803149606299215%" headers="d91183e1364 "><span class="ph"><span class="ph">Amazon's fulfillment network</span> SKU of the item.</span></td>
<td class="entry" data-valign="top" width="30.708661417322837%" headers="d91183e1367 ">No</td>
<td class="entry" data-valign="top" width="19.685039370078737%" headers="d91183e1370 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="24.803149606299215%" headers="d91183e1361 "><span class="keyword parmname">PerUnitDeclaredValue</span></td>
<td class="entry" data-valign="top" width="24.803149606299215%" headers="d91183e1364 ">The monetary value assigned by the seller to this item.</td>
<td class="entry" data-valign="top" width="30.708661417322837%" headers="d91183e1367 ">No.
<p><strong>For sellers in Europe:</strong> Required only if the destination country is outside of the 26-country set of supported destination countries for FBA Export for EU. For more information, see <a href="https://sellercentral.amazon.co.uk/gp/help/200149570" class="xref">FBA Export</a> in Seller Central Help.</p>
<p><strong>For sellers outside of Europe:</strong> Required only if the destination country differs from the country from which the fulfillment order originates.</p></td>
<td class="entry" data-valign="top" width="19.685039370078737%" headers="d91183e1370 ">Default: zero
<p>Type: <a href="FBAOutbound_Datatypes.md#Currency" class="xref" title="Currency type and amount.">Currency</a></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="24.803149606299215%" headers="d91183e1361 "><span class="keyword parmname">PerUnitPrice</span></td>
<td class="entry" data-valign="top" width="24.803149606299215%" headers="d91183e1364 ">The amount to be collected from the customer for this item in a COD (Cash On Delivery) order.
<p>Type: <a href="FBAOutbound_Datatypes.md#Currency" class="xref" title="Currency type and amount.">Currency</a></p>
<div class="note note">
<span class="notetitle">Note:</span> COD fulfillment orders are available only in Japan (JP).
</div></td>
<td class="entry" data-valign="top" width="30.708661417322837%" headers="d91183e1367 ">No</td>
<td class="entry" data-valign="top" width="19.685039370078737%" headers="d91183e1370 ">Default: zero
<p>Type: <a href="FBAOutbound_Datatypes.md#Currency" class="xref" title="Currency type and amount.">Currency</a></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="24.803149606299215%" headers="d91183e1361 "><span class="keyword parmname">PerUnitTax</span></td>
<td class="entry" data-valign="top" width="24.803149606299215%" headers="d91183e1364 ">The tax on the amount to be collected from the customer for this item in a COD (Cash On Delivery) order.
<p>Type: <a href="FBAOutbound_Datatypes.md#Currency" class="xref" title="Currency type and amount.">Currency</a></p>
<div class="note note">
<span class="notetitle">Note:</span> COD fulfillment orders are available only in JP.
</div></td>
<td class="entry" data-valign="top" width="30.708661417322837%" headers="d91183e1367 ">No</td>
<td class="entry" data-valign="top" width="19.685039370078737%" headers="d91183e1370 ">Default: zero
<p>Type: <a href="FBAOutbound_Datatypes.md#Currency" class="xref" title="Currency type and amount.">Currency</a></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="CreateReturnItem" class="topic reference nested1">

## CreateReturnItem

<div class="body refbody">

<span class="ph">An item to be returned.</span>

<div class="section">

### Operations

The <span class="keyword parmname">CreateReturnItem</span> datatype is
used in a request parameter of the following operation:

-   <a href="FBAOutbound_CreateFulfillmentReturn.md" class="xref" title="Creates a fulfillment return.">CreateFulfillmentReturn</a>

</div>

<div class="section">

### Datatype content

The following table shows the elements of the <span
class="keyword parmname">CreateReturnItem</span> datatype:

<div class="tablenoborder">

<table id="CreateReturnItem__RequestParametersTable" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d91183e1726" class="entry" data-valign="top" width="25.806451612903224%">Name</th>
<th id="d91183e1729" class="entry" data-valign="top" width="32.25806451612903%">Description</th>
<th id="d91183e1732" class="entry" data-valign="top" width="12.903225806451612%">Required</th>
<th id="d91183e1735" class="entry" data-valign="top" width="29.03225806451613%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="25.806451612903224%" headers="d91183e1726 "><span class="keyword parmname">SellerReturnItemId</span></td>
<td class="entry" data-valign="top" width="32.25806451612903%" headers="d91183e1729 ">An identifier that the seller assigns to the return item. This identifier must be unique in the context of the fulfillment order.</td>
<td class="entry" data-valign="top" width="12.903225806451612%" headers="d91183e1732 ">Yes</td>
<td class="entry" data-valign="top" width="29.03225806451613%" headers="d91183e1735 ">Maximum: 80 characters
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="25.806451612903224%" headers="d91183e1726 "><span class="keyword parmname">SellerFulfillmentOrderItemId</span></td>
<td class="entry" data-valign="top" width="32.25806451612903%" headers="d91183e1729 "><span class="ph">The identifier assigned to the item by the seller when the fulfillment order was created.</span> The seller uses their own records to find the correct <span class="keyword parmname">SellerFulfillmentOrderItemId</span> values based on the buyer's request to return items. See <a href="../fba_guide/FBAGuide_CreateFulfillmentReturn.md" class="xref">Creating a fulfillment return</a>.</td>
<td class="entry" data-valign="top" width="12.903225806451612%" headers="d91183e1732 ">Yes</td>
<td class="entry" data-valign="top" width="29.03225806451613%" headers="d91183e1735 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="25.806451612903224%" headers="d91183e1726 "><span class="keyword parmname">AmazonShipmentId</span></td>
<td class="entry" data-valign="top" width="32.25806451612903%" headers="d91183e1729 ">The Amazon shipment ID for the shipment that was associated with the fulfillment order. Get this value by calling the <span class="keyword apiname">GetFulfillmentOrder</span> operation. See <a href="../fba_guide/FBAGuide_CreateFulfillmentReturn.md" class="xref">Creating a fulfillment return</a>.</td>
<td class="entry" data-valign="top" width="12.903225806451612%" headers="d91183e1732 ">Yes</td>
<td class="entry" data-valign="top" width="29.03225806451613%" headers="d91183e1735 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="25.806451612903224%" headers="d91183e1726 "><span class="keyword parmname">ReturnReasonCode</span></td>
<td class="entry" data-valign="top" width="32.25806451612903%" headers="d91183e1729 "><span class="ph">The return reason code assigned to the return item by the seller.</span> Get valid return reason codes by calling the <a href="FBAOutbound_ListReturnReasonCodes.md" class="xref" title="Returns a list of return reason codes for a seller SKU in a given marketplace.">ListReturnReasonCodes</a> operation. See <a href="../fba_guide/FBAGuide_CreateFulfillmentReturn.md" class="xref">Creating a fulfillment return</a>.</td>
<td class="entry" data-valign="top" width="12.903225806451612%" headers="d91183e1732 ">Yes</td>
<td class="entry" data-valign="top" width="29.03225806451613%" headers="d91183e1735 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="25.806451612903224%" headers="d91183e1726 "><span class="keyword parmname">ReturnComment</span></td>
<td class="entry" data-valign="top" width="32.25806451612903%" headers="d91183e1729 "><span class="ph">An optional comment about the return item.</span></td>
<td class="entry" data-valign="top" width="12.903225806451612%" headers="d91183e1732 ">No</td>
<td class="entry" data-valign="top" width="29.03225806451613%" headers="d91183e1735 ">Maximum: 1000 characters
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="Currency" class="topic reference nested1">

## Currency

<div class="body refbody">

<span class="ph">Currency type and amount.</span>

<div class="section">

### Operations

The <span class="keyword parmname">Currency</span> datatype is used in a
request parameter or a response element of the following operations:

-   <a href="FBAOutbound_CreateFulfillmentOrder.md" class="xref" title="Requests that Amazon ship items from the seller&#39;s inventory in Amazon&#39;s fulfillment network to a destination address.">CreateFulfillmentOrder</a>
-   <a href="FBAOutbound_GetFulfillmentOrder.md" class="xref" title="Returns a fulfillment order based on a specified SellerFulfillmentOrderId.">GetFulfillmentOrder</a>
-   <a href="FBAOutbound_GetFulfillmentPreview.md" class="xref" title="Returns a list of fulfillment order previews based on shipping criteria that you specify.">GetFulfillmentPreview</a>
-   <a href="FBAOutbound_UpdateFulfillmentOrder.md" class="xref" title="Updates and/or requests shipment for a fulfillment order with an order hold on it.">UpdateFulfillmentOrder</a>

</div>

<div class="section">

### Datatype content

The following table shows the elements of the <span
class="keyword parmname">Currency</span> datatype:

<div class="tablenoborder">

<table id="Currency__RequestParametersTable" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d91183e1998" class="entry" data-valign="top" width="25.806451612903224%">Name</th>
<th id="d91183e2001" class="entry" data-valign="top" width="32.25806451612903%">Description</th>
<th id="d91183e2004" class="entry" data-valign="top" width="12.903225806451612%">Required</th>
<th id="d91183e2007" class="entry" data-valign="top" width="29.03225806451613%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="25.806451612903224%" headers="d91183e1998 "><span class="keyword parmname">CurrencyCode</span></td>
<td class="entry" data-valign="top" width="32.25806451612903%" headers="d91183e2001 ">Three-digit currency code.</td>
<td class="entry" data-valign="top" width="12.903225806451612%" headers="d91183e2004 ">Yes</td>
<td class="entry" data-valign="top" width="29.03225806451613%" headers="d91183e2007 ">In <span class="ph"> <a href="../dev_guide/DG_ISO4217.md" class="xref">ISO 4217 format</a> </span>.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="25.806451612903224%" headers="d91183e1998 "><span class="keyword parmname">Value</span></td>
<td class="entry" data-valign="top" width="32.25806451612903%" headers="d91183e2001 ">The currency amount.</td>
<td class="entry" data-valign="top" width="12.903225806451612%" headers="d91183e2004 ">Yes</td>
<td class="entry" data-valign="top" width="29.03225806451613%" headers="d91183e2007 "><span class="ph">Type: xs:string</span></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="DeliveryWindow" class="topic reference nested1">

## DeliveryWindow

<div class="body refbody">

<span class="ph">The time range within which your Scheduled Delivery
fulfillment order should be delivered.</span>

<div class="section">

### Operations

The <span class="keyword parmname">DeliveryWindow</span> datatype is
used in a request parameter or a response element of the following
operations:

-   <a href="FBAOutbound_CreateFulfillmentOrder.md" class="xref" title="Requests that Amazon ship items from the seller&#39;s inventory in Amazon&#39;s fulfillment network to a destination address.">CreateFulfillmentOrder</a>
-   <a href="FBAOutbound_GetFulfillmentOrder.md" class="xref" title="Returns a fulfillment order based on a specified SellerFulfillmentOrderId.">GetFulfillmentOrder</a>
-   <a href="FBAOutbound_GetFulfillmentPreview.md" class="xref" title="Returns a list of fulfillment order previews based on shipping criteria that you specify.">GetFulfillmentPreview</a>
-   <a href="FBAOutbound_ListAllFulfillmentOrders.md" class="xref" title="Returns a list of fulfillment orders fulfilled after (or at) a specified date.">ListAllFulfillmentOrders</a>
-   <a href="FBAOutbound_ListAllFulfillmentOrdersByNextToken.md" class="xref" title="Returns the next page of fulfillment orders using the NextToken parameter.">ListAllFulfillmentOrdersByNextToken</a>

</div>

<div class="section">

### Datatype content

The following table shows the elements of the <span
class="keyword parmname">DeliveryWindow</span> datatype:

<div class="tablenoborder">

<table id="DeliveryWindow__RequestParametersTable" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d91183e2209" class="entry" data-valign="top" width="31.596638655462183%">Name</th>
<th id="d91183e2212" class="entry" data-valign="top" width="31.428571428571427%">Description</th>
<th id="d91183e2215" class="entry" data-valign="top" width="16.806722689075627%">Required</th>
<th id="d91183e2218" class="entry" data-valign="top" width="20.168067226890756%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="31.596638655462183%" headers="d91183e2209 "><span class="keyword parmname">StartDateTime</span></td>
<td class="entry" data-valign="top" width="31.428571428571427%" headers="d91183e2212 ">The date and time of the start of the Scheduled Delivery window.</td>
<td class="entry" data-valign="top" width="16.806722689075627%" headers="d91183e2215 ">Yes</td>
<td class="entry" data-valign="top" width="20.168067226890756%" headers="d91183e2218 ">In <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="31.596638655462183%" headers="d91183e2209 "><span class="keyword parmname">EndDateTime</span></td>
<td class="entry" data-valign="top" width="31.428571428571427%" headers="d91183e2212 ">The date and time of the end of the Scheduled Delivery window.</td>
<td class="entry" data-valign="top" width="16.806722689075627%" headers="d91183e2215 ">Yes</td>
<td class="entry" data-valign="top" width="20.168067226890756%" headers="d91183e2218 ">In <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="Fee" class="topic reference nested1">

## Fee

<div class="body refbody">

<span class="ph">Fee type and cost.</span>

<div class="section">

### Operations

The <span class="keyword parmname">Fee</span> datatype is used in a
response element of the following operation:

-   <a href="FBAOutbound_GetFulfillmentPreview.md" class="xref" title="Returns a list of fulfillment order previews based on shipping criteria that you specify.">GetFulfillmentPreview</a>

</div>

<div class="section">

### Datatype content

The following table shows the elements of the <span
class="keyword parmname">Fee</span> datatype:

<div class="tablenoborder">

<table id="Fee__RequestParametersTable" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d91183e2377" class="entry" data-valign="top" width="24.720496894409933%">Name</th>
<th id="d91183e2380" class="entry" data-valign="top" width="28.819875776397513%">Description</th>
<th id="d91183e2383" class="entry" data-valign="top" width="12.422360248447204%">Required</th>
<th id="d91183e2386" class="entry" data-valign="top" width="34.037267080745345%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="24.720496894409933%" headers="d91183e2377 "><span class="keyword parmname">Name</span></td>
<td class="entry" data-valign="top" width="28.819875776397513%" headers="d91183e2380 ">The type of fee.</td>
<td class="entry" data-valign="top" width="12.422360248447204%" headers="d91183e2383 ">Yes</td>
<td class="entry" data-valign="top" width="34.037267080745345%" headers="d91183e2386 "><span class="keyword parmname">Name</span> values:
<ul>
<li><var class="keyword varname">FBAPerUnitFulfillmentFee</var> - Estimated fee for each unit in the fulfillment order.</li>
<li><var class="keyword varname">FBAPerOrderFulfillmentFee</var> - Estimated order-level fee.</li>
<li><var class="keyword varname">FBATransportationFee</var> - Estimated shipping fee.</li>
<li><var class="keyword varname">FBAFulfillmentCODFee</var> - Estimated COD (Cash On Delivery) fee. This fee applies only to fulfillment order previews for COD.
<div class="note note">
<span class="notetitle">Note:</span> COD fulfillment orders are available only in Japan (JP).
</div></li>
</ul>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="24.720496894409933%" headers="d91183e2377 "><span class="keyword parmname">Amount</span></td>
<td class="entry" data-valign="top" width="28.819875776397513%" headers="d91183e2380 ">The amount of the fee.</td>
<td class="entry" data-valign="top" width="12.422360248447204%" headers="d91183e2383 ">Yes</td>
<td class="entry" data-valign="top" width="34.037267080745345%" headers="d91183e2386 ">Type: <a href="FBAOutbound_Datatypes.md#Currency" class="xref" title="Currency type and amount.">Currency</a></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="FulfillmentOrder" class="topic reference nested1">

## FulfillmentOrder

<div class="body refbody">

<span class="ph">General information about a fulfillment order,
including its status.</span>

<div class="section">

### Operations

The <span class="keyword parmname">FulfillmentOrder</span> datatype is
used in a response element of the following operations:

-   <a href="FBAOutbound_GetFulfillmentOrder.md" class="xref" title="Returns a fulfillment order based on a specified SellerFulfillmentOrderId.">GetFulfillmentOrder</a>
-   <a href="FBAOutbound_ListAllFulfillmentOrders.md" class="xref" title="Returns a list of fulfillment orders fulfilled after (or at) a specified date.">ListAllFulfillmentOrders</a>
-   <a href="FBAOutbound_ListAllFulfillmentOrdersByNextToken.md" class="xref" title="Returns the next page of fulfillment orders using the NextToken parameter.">ListAllFulfillmentOrdersByNextToken</a>

</div>

<div class="section">

### Datatype content

The following table shows the elements of the <span
class="keyword parmname">FulfillmentOrder</span> datatype:

<div class="tablenoborder">

<table id="FulfillmentOrder__RequestParametersTable" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d91183e2592" class="entry" data-valign="top" width="29.210275927687917%">Name</th>
<th id="d91183e2595" class="entry" data-valign="top" width="29.87630827783064%">Description</th>
<th id="d91183e2598" class="entry" data-valign="top" width="9.514747859181732%">Required</th>
<th id="d91183e2601" class="entry" data-valign="top" width="31.398667935299713%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="29.210275927687917%" headers="d91183e2592 "><span class="keyword parmname">SellerFulfillmentOrderId</span></td>
<td class="entry" data-valign="top" width="29.87630827783064%" headers="d91183e2595 "><span class="ph">The fulfillment order identifier that you created and submitted using the <span class="keyword apiname">CreateFulfillmentOrder</span> operation.</span></td>
<td class="entry" data-valign="top" width="9.514747859181732%" headers="d91183e2598 ">Yes</td>
<td class="entry" data-valign="top" width="31.398667935299713%" headers="d91183e2601 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="29.210275927687917%" headers="d91183e2592 "><span class="keyword parmname">MarketplaceId</span></td>
<td class="entry" data-valign="top" width="29.87630827783064%" headers="d91183e2595 ">The marketplace the fulfillment order is placed against.</td>
<td class="entry" data-valign="top" width="9.514747859181732%" headers="d91183e2598 ">Yes</td>
<td id="FulfillmentOrder__d23147e187" class="entry" data-valign="top" width="31.398667935299713%" headers="d91183e2601 "><span class="keyword parmname">MarketplaceId</span> values: see <a href="../dev_guide/DG_Endpoints.md" class="xref">Amazon MWS endpoints and MarketplaceId values</a>.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="29.210275927687917%" headers="d91183e2592 "><span class="keyword parmname">DisplayableOrderId</span></td>
<td class="entry" data-valign="top" width="29.87630827783064%" headers="d91183e2595 ">A fulfillment order identifier that you created when you submitted the <span class="keyword parmname">CreateFulfillmentOrder</span> operation. Displays as the order identifier in recipient-facing materials such as the packing slip.</td>
<td class="entry" data-valign="top" width="9.514747859181732%" headers="d91183e2598 ">Yes</td>
<td class="entry" data-valign="top" width="31.398667935299713%" headers="d91183e2601 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="29.210275927687917%" headers="d91183e2592 "><span class="keyword parmname">DisplayableOrderDateTime</span></td>
<td class="entry" data-valign="top" width="29.87630827783064%" headers="d91183e2595 ">A date that you created when you submitted the <span class="keyword parmname">CreateFulfillmentOrder</span> operation. Displays as the order date in recipient-facing materials such as the packing slip.</td>
<td class="entry" data-valign="top" width="9.514747859181732%" headers="d91183e2598 ">Yes</td>
<td class="entry" data-valign="top" width="31.398667935299713%" headers="d91183e2601 "><span class="ph">Type: xs:dateTime</span></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="29.210275927687917%" headers="d91183e2592 "><span class="keyword parmname">DisplayableOrderComment</span></td>
<td class="entry" data-valign="top" width="29.87630827783064%" headers="d91183e2595 ">A text block that you created when you submitted the <span class="keyword parmname">CreateFulfillmentOrder</span> operation. Displays in recipient-facing materials such as the packing slip.</td>
<td class="entry" data-valign="top" width="9.514747859181732%" headers="d91183e2598 ">Yes</td>
<td class="entry" data-valign="top" width="31.398667935299713%" headers="d91183e2601 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="29.210275927687917%" headers="d91183e2592 "><span class="keyword parmname">ShippingSpeedCategory</span></td>
<td class="entry" data-valign="top" width="29.87630827783064%" headers="d91183e2595 ">The shipping method that you selected when you submitted the <span class="keyword apiname">CreateFulfillmentOrder</span> operation.</td>
<td class="entry" data-valign="top" width="9.514747859181732%" headers="d91183e2598 ">Yes</td>
<td class="entry" data-valign="top" width="31.398667935299713%" headers="d91183e2601 "><span class="keyword parmname">ShippingSpeedCategory</span> values:
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
<tr class="odd row">
<td class="entry" data-valign="top" width="29.210275927687917%" headers="d91183e2592 "><span class="keyword parmname">DeliveryWindow</span></td>
<td class="entry" data-valign="top" width="29.87630827783064%" headers="d91183e2595 ">The time range within which your Scheduled Delivery fulfillment order should be delivered.</td>
<td class="entry" data-valign="top" width="9.514747859181732%" headers="d91183e2598 ">No</td>
<td class="entry" data-valign="top" width="31.398667935299713%" headers="d91183e2601 ">Type: <a href="FBAOutbound_Datatypes.md#DeliveryWindow" class="xref" title="The time range within which your Scheduled Delivery fulfillment order should be delivered.">DeliveryWindow</a></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="29.210275927687917%" headers="d91183e2592 "><span class="keyword parmname">DestinationAddress</span></td>
<td class="entry" data-valign="top" width="29.87630827783064%" headers="d91183e2595 ">The destination address that you created when you submitted the <span class="keyword parmname">CreateFulfillmentOrder</span> operation.</td>
<td class="entry" data-valign="top" width="9.514747859181732%" headers="d91183e2598 ">Yes</td>
<td class="entry" data-valign="top" width="31.398667935299713%" headers="d91183e2601 ">Type: <a href="FBAOutbound_Datatypes.md#Address" class="xref" title="Postal address information.">Address</a></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="29.210275927687917%" headers="d91183e2592 "><span class="keyword parmname">FulfillmentAction</span></td>
<td class="entry" data-valign="top" width="29.87630827783064%" headers="d91183e2595 ">Specifies whether an order was created to ship immediately or to be held for later. Only returned by <a href="FBAOutbound_GetFulfillmentOrder.md" class="xref" title="Returns a fulfillment order based on a specified SellerFulfillmentOrderId.">GetFulfillmentOrder</a>.</td>
<td class="entry" data-valign="top" width="9.514747859181732%" headers="d91183e2598 ">No</td>
<td class="entry" data-valign="top" width="31.398667935299713%" headers="d91183e2601 "><span class="keyword parmname">FulfillmentAction</span> values:
<ul>
<li><var class="keyword varname">Ship</var> - The fulfillment order ships immediately.</li>
<li><var class="keyword varname">Hold</var> - The fulfillment order ships later.</li>
</ul>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="29.210275927687917%" headers="d91183e2592 "><span class="keyword parmname">FulfillmentPolicy</span></td>
<td class="entry" data-valign="top" width="29.87630827783064%" headers="d91183e2595 ">The <span class="keyword parmname">FulfillmentPolicy</span> value that you chose when you submitted the <span class="keyword parmname">CreateFulfillmentOrder</span> operation.</td>
<td class="entry" data-valign="top" width="9.514747859181732%" headers="d91183e2598 ">No</td>
<td class="entry" data-valign="top" width="31.398667935299713%" headers="d91183e2601 "><span class="keyword parmname">FulfillmentPolicy</span> values:
<ul>
<li><var class="keyword varname">FillOrKill</var> - If an item in a fulfillment order is determined to be unfulfillable before any shipment in the order has acquired the status of <var class="keyword varname">Pending</var> (the process of picking units from inventory has begun), then the entire order is considered unfulfillable. However, if an item in a fulfillment order is determined to be unfulfillable after a shipment in the order has acquired the status of <var class="keyword varname">Pending</var>, Amazon cancels as much of the fulfillment order as possible. See the <a href="FBAOutbound_Datatypes.md#FulfillmentShipment" class="xref" title="Delivery and item information for a shipment in a fulfillment order.">FulfillmentShipment</a> datatype for shipment status definitions.</li>
<li><var class="keyword varname">FillAll</var> - All fulfillable items in the fulfillment order are shipped. The fulfillment order remains in a processing state until all items are either shipped by Amazon or cancelled by the seller.</li>
<li><var class="keyword varname">FillAllAvailable</var> - All fulfillable items in the fulfillment order are shipped. All unfulfillable items in the order are cancelled by Amazon.</li>
</ul>
<p>Default: <var class="keyword varname">FillOrKill</var></p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="29.210275927687917%" headers="d91183e2592 "><span class="keyword parmname">ReceivedDateTime</span></td>
<td class="entry" data-valign="top" width="29.87630827783064%" headers="d91183e2595 ">The date that the fulfillment order was received by an <span class="ph">Amazon fulfillment center</span>.</td>
<td class="entry" data-valign="top" width="9.514747859181732%" headers="d91183e2598 ">Yes</td>
<td class="entry" data-valign="top" width="31.398667935299713%" headers="d91183e2601 ">In <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
<tr id="FulfillmentOrder__FulfillmentOrderStatus_row" class="even row">
<td class="entry" data-valign="top" width="29.210275927687917%" headers="d91183e2592 "><span class="keyword parmname">FulfillmentOrderStatus</span></td>
<td class="entry" data-valign="top" width="29.87630827783064%" headers="d91183e2595 ">The current status of the fulfillment order.</td>
<td class="entry" data-valign="top" width="9.514747859181732%" headers="d91183e2598 ">Yes</td>
<td class="entry" data-valign="top" width="31.398667935299713%" headers="d91183e2601 "><span class="keyword parmname">FulfillmentOrderStatus</span> values:
<ul>
<li><var class="keyword varname">RECEIVED</var> - The fulfillment order was received by <span class="ph">Amazon Marketplace Web Service (Amazon MWS)</span> and validated. Validation includes determining that the destination address is valid and that Amazon's records indicate that the seller has enough sellable (undamaged) inventory to fulfill the order. The seller can cancel a fulfillment order that has a status of <var class="keyword varname">RECEIVED</var>.</li>
<li><var class="keyword varname">INVALID</var> - The fulfillment order was received by <span class="ph">Amazon Marketplace Web Service (Amazon MWS)</span> but could not be validated. The reasons for this include an invalid destination address or Amazon's records indicating that the seller does not have enough sellable inventory to fulfill the order. When this happens, the fulfillment order is invalid and no items in the order will ship.</li>
<li><var class="keyword varname">PLANNING</var> - The fulfillment order has been sent to <span class="ph">Amazon's fulfillment network</span> to begin shipment planning, but no unit in any shipment has been picked from inventory yet. The seller can cancel a fulfillment order that has a status of <var class="keyword varname">PLANNING</var>.</li>
<li><var class="keyword varname">PROCESSING</var> - The process of picking units from inventory has begun on at least one shipment in the fulfillment order. The seller cannot cancel a fulfillment order that has a status of <var class="keyword varname">PROCESSING</var>.</li>
<li><var class="keyword varname">CANCELLED</var> - The fulfillment order has been cancelled by the seller.</li>
<li><var class="keyword varname">COMPLETE</var> - All item quantities in the fulfillment order have been fulfilled.</li>
<li><var class="keyword varname">COMPLETE_PARTIALLED</var> - Some item quantities in the fulfillment order were fulfilled; the rest were either cancelled or unfulfillable.</li>
<li><var class="keyword varname">UNFULFILLABLE</var> - No item quantities in the fulfillment order could be fulfilled because the <span class="ph">Amazon fulfillment center</span> workers found no inventory for those items or found no inventory that was in sellable (undamaged) condition.</li>
</ul>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="29.210275927687917%" headers="d91183e2592 "><span class="keyword parmname">StatusUpdatedDateTime</span></td>
<td class="entry" data-valign="top" width="29.87630827783064%" headers="d91183e2595 ">The date that the status of the fulfillment order last changed.</td>
<td class="entry" data-valign="top" width="9.514747859181732%" headers="d91183e2598 ">Yes</td>
<td class="entry" data-valign="top" width="31.398667935299713%" headers="d91183e2601 ">In <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="29.210275927687917%" headers="d91183e2592 "><span class="keyword parmname">NotificationEmailList</span></td>
<td class="entry" data-valign="top" width="29.87630827783064%" headers="d91183e2595 ">The <span class="keyword parmname">NotificationEmailList</span> value that you created when you submitted the <span class="keyword apiname">CreateFulfillmentOrder</span> operation.</td>
<td class="entry" data-valign="top" width="9.514747859181732%" headers="d91183e2598 ">No</td>
<td class="entry" data-valign="top" width="31.398667935299713%" headers="d91183e2601 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="29.210275927687917%" headers="d91183e2592 "><span class="keyword parmname">CODSettings</span></td>
<td class="entry" data-valign="top" width="29.87630827783064%" headers="d91183e2595 ">The COD (Cash On Delivery) charges that you associated with a COD order.</td>
<td class="entry" data-valign="top" width="9.514747859181732%" headers="d91183e2598 ">No</td>
<td class="entry" data-valign="top" width="31.398667935299713%" headers="d91183e2601 "><span class="keyword parmname">CODSettings</span> is returned only for COD orders. COD orders are available only in Japan (JP).
<p>Type: <a href="FBAOutbound_Datatypes.md#CODSettings" class="xref" title="The COD (Cash On Delivery) charges that you associate with a COD fulfillment order. Note that COD fulfillment orders are available only in Japan (JP).">CODSettings</a></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="FulfillmentOrderItem" class="topic reference nested1">

## FulfillmentOrderItem

<div class="body refbody">

<span class="ph">Item information for a fulfillment order.</span>

<div class="section">

### Operations

The <span class="keyword parmname">FulfillmentOrderItem</span> datatype
is used in a response element of the following operation:

-   <a href="FBAOutbound_GetFulfillmentOrder.md" class="xref" title="Returns a fulfillment order based on a specified SellerFulfillmentOrderId.">GetFulfillmentOrder</a>

</div>

<div class="section">

### Datatype content

The following table shows the elements of the <span
class="keyword parmname">FulfillmentOrderItem</span> datatype:

<div class="tablenoborder">

<table id="FulfillmentOrderItem__RequestParametersTable" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d91183e3229" class="entry" data-valign="top" width="30.07063572149344%">Name</th>
<th id="d91183e3232" class="entry" data-valign="top" width="33.19878910191726%">Description</th>
<th id="d91183e3235" class="entry" data-valign="top" width="10.090817356205854%">Required</th>
<th id="d91183e3238" class="entry" data-valign="top" width="26.63975782038345%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="30.07063572149344%" headers="d91183e3229 "><span class="keyword parmname">SellerSKU</span></td>
<td class="entry" data-valign="top" width="33.19878910191726%" headers="d91183e3232 "><span class="ph">The seller SKU of the item.</span></td>
<td class="entry" data-valign="top" width="10.090817356205854%" headers="d91183e3235 ">Yes</td>
<td class="entry" data-valign="top" width="26.63975782038345%" headers="d91183e3238 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="30.07063572149344%" headers="d91183e3229 "><span class="keyword parmname">SellerFulfillmentOrderItemId</span></td>
<td class="entry" data-valign="top" width="33.19878910191726%" headers="d91183e3232 "><span class="ph">The fulfillment order item identifier that you created and submitted with the <span class="keyword apiname">CreateFulfillmentOrder</span> operation.</span></td>
<td class="entry" data-valign="top" width="10.090817356205854%" headers="d91183e3235 ">Yes</td>
<td class="entry" data-valign="top" width="26.63975782038345%" headers="d91183e3238 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="30.07063572149344%" headers="d91183e3229 "><span class="keyword parmname">Quantity</span></td>
<td class="entry" data-valign="top" width="33.19878910191726%" headers="d91183e3232 "><span class="ph">The item quantity.</span></td>
<td class="entry" data-valign="top" width="10.090817356205854%" headers="d91183e3235 ">Yes</td>
<td class="entry" data-valign="top" width="26.63975782038345%" headers="d91183e3238 "><span class="ph">Type: xs:int</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="30.07063572149344%" headers="d91183e3229 "><span class="keyword parmname">GiftMessage</span></td>
<td class="entry" data-valign="top" width="33.19878910191726%" headers="d91183e3232 ">A message to the gift recipient, if applicable.</td>
<td class="entry" data-valign="top" width="10.090817356205854%" headers="d91183e3235 ">No</td>
<td class="entry" data-valign="top" width="26.63975782038345%" headers="d91183e3238 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="30.07063572149344%" headers="d91183e3229 "><span class="keyword parmname">DisplayableComment</span></td>
<td class="entry" data-valign="top" width="33.19878910191726%" headers="d91183e3232 ">Item-specific text that displays in recipient-facing materials such as the outbound shipment packing slip.</td>
<td class="entry" data-valign="top" width="10.090817356205854%" headers="d91183e3235 ">No</td>
<td class="entry" data-valign="top" width="26.63975782038345%" headers="d91183e3238 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="30.07063572149344%" headers="d91183e3229 "><span class="keyword parmname">FulfillmentNetworkSKU</span></td>
<td class="entry" data-valign="top" width="33.19878910191726%" headers="d91183e3232 "><span class="ph"><span class="ph">Amazon's fulfillment network</span> SKU of the item.</span></td>
<td class="entry" data-valign="top" width="10.090817356205854%" headers="d91183e3235 ">No</td>
<td class="entry" data-valign="top" width="26.63975782038345%" headers="d91183e3238 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="30.07063572149344%" headers="d91183e3229 "><span class="keyword parmname">CancelledQuantity</span></td>
<td class="entry" data-valign="top" width="33.19878910191726%" headers="d91183e3232 ">The item quantity that was cancelled by the seller.</td>
<td class="entry" data-valign="top" width="10.090817356205854%" headers="d91183e3235 ">Yes</td>
<td class="entry" data-valign="top" width="26.63975782038345%" headers="d91183e3238 "><span class="ph">Type: xs:int</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="30.07063572149344%" headers="d91183e3229 "><span class="keyword parmname">UnfulfillableQuantity</span></td>
<td class="entry" data-valign="top" width="33.19878910191726%" headers="d91183e3232 ">The item quantity that is unfulfillable.</td>
<td class="entry" data-valign="top" width="10.090817356205854%" headers="d91183e3235 ">Yes</td>
<td class="entry" data-valign="top" width="26.63975782038345%" headers="d91183e3238 "><span class="ph">Type: xs:int</span></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="30.07063572149344%" headers="d91183e3229 "><span class="keyword parmname">EstimatedShipDateTime</span></td>
<td class="entry" data-valign="top" width="33.19878910191726%" headers="d91183e3232 ">The estimated time that the item quantity is scheduled to ship from the fulfillment center. Note that this value can change over time. If the shipment that contains the item quantity has been cancelled, <span class="keyword parmname">EstimatedShipDateTime</span> is not returned.</td>
<td class="entry" data-valign="top" width="10.090817356205854%" headers="d91183e3235 ">No</td>
<td class="entry" data-valign="top" width="26.63975782038345%" headers="d91183e3238 ">In <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="30.07063572149344%" headers="d91183e3229 "><span class="keyword parmname">EstimatedArrivalDateTime</span></td>
<td class="entry" data-valign="top" width="33.19878910191726%" headers="d91183e3232 ">The estimated arrival time of the item quantity, . Note that this value can change over time. If the shipment that contains the item quantity has been cancelled, <span class="keyword parmname">EstimatedArrivalDateTime</span> is not returned.</td>
<td class="entry" data-valign="top" width="10.090817356205854%" headers="d91183e3235 ">No</td>
<td class="entry" data-valign="top" width="26.63975782038345%" headers="d91183e3238 ">In <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="30.07063572149344%" headers="d91183e3229 "><span class="keyword parmname">PerUnitDeclaredValue</span></td>
<td class="entry" data-valign="top" width="33.19878910191726%" headers="d91183e3232 ">The monetary value assigned by the seller to this item.</td>
<td class="entry" data-valign="top" width="10.090817356205854%" headers="d91183e3235 ">No</td>
<td class="entry" data-valign="top" width="26.63975782038345%" headers="d91183e3238 ">Default: zero
<p>Type: <a href="FBAOutbound_Datatypes.md#Currency" class="xref" title="Currency type and amount.">Currency</a></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="30.07063572149344%" headers="d91183e3229 "><span class="keyword parmname">PerUnitPrice</span></td>
<td class="entry" data-valign="top" width="33.19878910191726%" headers="d91183e3232 ">The amount to be collected from the customer for this item in a COD (Cash On Delivery) order.
<div class="note note">
<span class="notetitle">Note:</span> COD fulfillment orders are available only in Japan (JP).
</div></td>
<td class="entry" data-valign="top" width="10.090817356205854%" headers="d91183e3235 ">No</td>
<td class="entry" data-valign="top" width="26.63975782038345%" headers="d91183e3238 ">Default: zero
<p>Type: <a href="FBAOutbound_Datatypes.md#Currency" class="xref" title="Currency type and amount.">Currency</a></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="30.07063572149344%" headers="d91183e3229 "><span class="keyword parmname">PerUnitTax</span></td>
<td class="entry" data-valign="top" width="33.19878910191726%" headers="d91183e3232 ">The tax on the amount to be collected from the customer for this item in a COD (Cash On Delivery) order.
<div class="note note">
<span class="notetitle">Note:</span> COD fulfillment orders are available only in JP.
</div></td>
<td class="entry" data-valign="top" width="10.090817356205854%" headers="d91183e3235 ">No</td>
<td class="entry" data-valign="top" width="26.63975782038345%" headers="d91183e3238 ">Default: zero
<p>Type: <a href="FBAOutbound_Datatypes.md#Currency" class="xref" title="Currency type and amount.">Currency</a></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="FulfillmentPreview" class="topic reference nested1">

## FulfillmentPreview

<div class="body refbody">

<span class="ph">Information about a fulfillment order preview,
including delivery and fee information based on shipping method.</span>

<div class="section">

### Operations

The <span class="keyword parmname">FulfillmentPreview</span> datatype is
used in a response element of the following operation:

-   <a href="FBAOutbound_GetFulfillmentPreview.md" class="xref" title="Returns a list of fulfillment order previews based on shipping criteria that you specify.">GetFulfillmentPreview</a>

</div>

<div class="section">

### Datatype content

The following table shows the elements of the <span
class="keyword parmname">FulfillmentPreview</span> datatype:

<div class="tablenoborder">

<table id="FulfillmentPreview__RequestParametersTable" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d91183e3638" class="entry" data-valign="top" width="33.19002579535684%">Name</th>
<th id="d91183e3641" class="entry" data-valign="top" width="28.46087704213242%">Description</th>
<th id="d91183e3644" class="entry" data-valign="top" width="8.598452278589855%">Required</th>
<th id="d91183e3647" class="entry" data-valign="top" width="29.750644883920895%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="33.19002579535684%" headers="d91183e3638 "><span class="keyword parmname">ShippingSpeedCategory</span></td>
<td class="entry" data-valign="top" width="28.46087704213242%" headers="d91183e3641 ">The shipping method for your fulfillment order.</td>
<td class="entry" data-valign="top" width="8.598452278589855%" headers="d91183e3644 ">Yes</td>
<td class="entry" data-valign="top" width="29.750644883920895%" headers="d91183e3647 "><span class="keyword parmname">ShippingSpeedCategory</span> values:
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
<tr class="even row">
<td class="entry" data-valign="top" width="33.19002579535684%" headers="d91183e3638 "><span class="keyword parmname">IsFulfillable</span></td>
<td class="entry" data-valign="top" width="28.46087704213242%" headers="d91183e3641 ">Indicates whether this fulfillment order preview is fulfillable.</td>
<td class="entry" data-valign="top" width="8.598452278589855%" headers="d91183e3644 ">Yes</td>
<td class="entry" data-valign="top" width="29.750644883920895%" headers="d91183e3647 "><span class="keyword parmname">IsFulfillable</span> values:
<ul>
<li><var class="keyword varname">true</var> - Fulfillable</li>
<li><var class="keyword varname">false</var> - Not fulfillable</li>
</ul>
<p><span class="ph">Type: xs:boolean</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="33.19002579535684%" headers="d91183e3638 "><span class="keyword parmname">IsCODCapable</span></td>
<td class="entry" data-valign="top" width="28.46087704213242%" headers="d91183e3641 ">Indicates whether this fulfillment order preview is for COD (Cash On Delivery).</td>
<td class="entry" data-valign="top" width="8.598452278589855%" headers="d91183e3644 ">Yes</td>
<td class="entry" data-valign="top" width="29.750644883920895%" headers="d91183e3647 "><span class="keyword parmname">IsCODCapable</span> values:
<ul>
<li><var class="keyword varname">true</var> - Fulfillment order preview is for COD.</li>
<li><var class="keyword varname">false</var> - Fulfillment order preview is not for COD.</li>
</ul>
<div class="note note">
<span class="notetitle">Note:</span> COD fulfillment orders are available only in Japan (JP).
</div>
<p><span class="ph">Type: xs:boolean</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="33.19002579535684%" headers="d91183e3638 "><span class="keyword parmname">MarketplaceId</span></td>
<td class="entry" data-valign="top" width="28.46087704213242%" headers="d91183e3641 ">The marketplace the fulfillment order is placed against.</td>
<td class="entry" data-valign="top" width="8.598452278589855%" headers="d91183e3644 ">Yes</td>
<td id="FulfillmentPreview__d23147e187" class="entry" data-valign="top" width="29.750644883920895%" headers="d91183e3647 "><span class="keyword parmname">MarketplaceId</span> values: see <a href="../dev_guide/DG_Endpoints.md" class="xref">Amazon MWS endpoints and MarketplaceId values</a>.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="33.19002579535684%" headers="d91183e3638 "><span class="keyword parmname">EstimatedShippingWeight</span></td>
<td class="entry" data-valign="top" width="28.46087704213242%" headers="d91183e3641 ">Estimated shipping weight for this fulfillment order preview.</td>
<td class="entry" data-valign="top" width="8.598452278589855%" headers="d91183e3644 ">No</td>
<td class="entry" data-valign="top" width="29.750644883920895%" headers="d91183e3647 ">Type: <a href="FBAOutbound_Datatypes.md#Weight" class="xref" title="Weight unit and amount.">Weight</a></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="33.19002579535684%" headers="d91183e3638 "><span class="keyword parmname">EstimatedFees</span></td>
<td class="entry" data-valign="top" width="28.46087704213242%" headers="d91183e3641 ">The estimated fulfillment fees for this fulfillment order preview, if applicable.</td>
<td class="entry" data-valign="top" width="8.598452278589855%" headers="d91183e3644 ">No</td>
<td class="entry" data-valign="top" width="29.750644883920895%" headers="d91183e3647 ">Type: List of <a href="FBAOutbound_Datatypes.md#Fee" class="xref" title="Fee type and cost.">Fee</a></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="33.19002579535684%" headers="d91183e3638 "><span class="keyword parmname">FulfillmentPreviewShipments</span></td>
<td class="entry" data-valign="top" width="28.46087704213242%" headers="d91183e3641 ">A list of fulfillable outbound shipments for this fulfillment order preview.</td>
<td class="entry" data-valign="top" width="8.598452278589855%" headers="d91183e3644 ">No</td>
<td class="entry" data-valign="top" width="29.750644883920895%" headers="d91183e3647 ">Type: List of <a href="FBAOutbound_Datatypes.md#FulfillmentPreviewShipment" class="xref" title="Delivery and item information for a shipment in a fulfillment order preview.">FulfillmentPreviewShipment</a></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="33.19002579535684%" headers="d91183e3638 "><span class="keyword parmname">UnfulfillablePreviewItems</span></td>
<td class="entry" data-valign="top" width="28.46087704213242%" headers="d91183e3641 ">A list of unfulfillable items for this fulfillment order preview.</td>
<td class="entry" data-valign="top" width="8.598452278589855%" headers="d91183e3644 ">No</td>
<td class="entry" data-valign="top" width="29.750644883920895%" headers="d91183e3647 ">Type: List of <a href="FBAOutbound_Datatypes.md#UnfulfillablePreviewItem" class="xref" title="Information about unfulfillable items in a fulfillment order preview.">UnfulfillablePreviewItem</a></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="33.19002579535684%" headers="d91183e3638 "><span class="keyword parmname">OrderUnfulfillableReasons</span></td>
<td class="entry" data-valign="top" width="28.46087704213242%" headers="d91183e3641 ">Error codes associated with the fulfillment order preview that indicate why the order is not fulfillable.</td>
<td class="entry" data-valign="top" width="8.598452278589855%" headers="d91183e3644 ">No</td>
<td class="entry" data-valign="top" width="29.750644883920895%" headers="d91183e3647 ">Error code examples:
<p><strong>DeliverySLAUnavailable</strong></p>
<p><strong>InvalidDestinationAddress</strong></p>
<p>Type: List of type: xs:string</p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="33.19002579535684%" headers="d91183e3638 "><span class="keyword parmname">ScheduledDeliveryInfo</span></td>
<td class="entry" data-valign="top" width="28.46087704213242%" headers="d91183e3641 ">Delivery information for a Scheduled Delivery.</td>
<td class="entry" data-valign="top" width="8.598452278589855%" headers="d91183e3644 ">No</td>
<td class="entry" data-valign="top" width="29.750644883920895%" headers="d91183e3647 ">Type: <a href="FBAOutbound_Datatypes.md#ScheduledDeliveryInfo" class="xref" title="Delivery information for a Scheduled Delivery.">ScheduledDeliveryInfo</a></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="FulfillmentPreviewItem" class="topic reference nested1">

## FulfillmentPreviewItem

<div class="body refbody">

<span class="ph">Item information for a shipment in a fulfillment order
preview.</span>

<div class="section">

### Operations

The <span class="keyword parmname">FulfillmentPreviewItem</span>
datatype is used in a response element of the following operation:

-   <a href="FBAOutbound_GetFulfillmentPreview.md" class="xref" title="Returns a list of fulfillment order previews based on shipping criteria that you specify.">GetFulfillmentPreview</a>

</div>

<div class="section">

### Datatype content

The following table shows the elements of the <span
class="keyword parmname">FulfillmentPreviewItem</span> datatype:

<div class="tablenoborder">

<table id="FulfillmentPreviewItem__RequestParametersTable" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d91183e4049" class="entry" data-valign="top" width="32.87788215200684%">Name</th>
<th id="d91183e4052" class="entry" data-valign="top" width="26.302305721605467%">Description</th>
<th id="d91183e4055" class="entry" data-valign="top" width="8.539709649871904%">Required</th>
<th id="d91183e4058" class="entry" data-valign="top" width="32.2801024765158%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="32.87788215200684%" headers="d91183e4049 "><span class="keyword parmname">SellerSKU</span></td>
<td class="entry" data-valign="top" width="26.302305721605467%" headers="d91183e4052 "><span class="ph">The seller SKU of the item.</span></td>
<td class="entry" data-valign="top" width="8.539709649871904%" headers="d91183e4055 ">Yes</td>
<td class="entry" data-valign="top" width="32.2801024765158%" headers="d91183e4058 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="32.87788215200684%" headers="d91183e4049 "><span class="keyword parmname">SellerFulfillmentOrderItemId</span></td>
<td class="entry" data-valign="top" width="26.302305721605467%" headers="d91183e4052 ">A fulfillment order item identifier that you created with a call to the <span class="keyword apiname">GetFulfillmentPreview</span> operation.</td>
<td class="entry" data-valign="top" width="8.539709649871904%" headers="d91183e4055 ">Yes</td>
<td class="entry" data-valign="top" width="32.2801024765158%" headers="d91183e4058 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="32.87788215200684%" headers="d91183e4049 "><span class="keyword parmname">Quantity</span></td>
<td class="entry" data-valign="top" width="26.302305721605467%" headers="d91183e4052 "><span class="ph">The item quantity.</span></td>
<td class="entry" data-valign="top" width="8.539709649871904%" headers="d91183e4055 ">Yes</td>
<td class="entry" data-valign="top" width="32.2801024765158%" headers="d91183e4058 "><span class="ph">Type: xs:int</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="32.87788215200684%" headers="d91183e4049 "><span class="keyword parmname">EstimatedShippingWeight</span></td>
<td class="entry" data-valign="top" width="26.302305721605467%" headers="d91183e4052 ">The estimated shipping weight of the item quantity for a single item, as identified by <span class="keyword parmname">SellerSKU</span>, in a shipment.</td>
<td class="entry" data-valign="top" width="8.539709649871904%" headers="d91183e4055 "> </td>
<td class="entry" data-valign="top" width="32.2801024765158%" headers="d91183e4058 ">Type: <a href="FBAOutbound_Datatypes.md#Weight" class="xref" title="Weight unit and amount.">Weight</a></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="32.87788215200684%" headers="d91183e4049 "><span class="keyword parmname">ShippingWeightCalculationMethod</span></td>
<td class="entry" data-valign="top" width="26.302305721605467%" headers="d91183e4052 ">The method used to calculate <span class="keyword parmname">EstimatedShippingWeight</span>.</td>
<td class="entry" data-valign="top" width="8.539709649871904%" headers="d91183e4055 "> </td>
<td class="entry" data-valign="top" width="32.2801024765158%" headers="d91183e4058 "><span class="keyword parmname">ShippingWeightCalculationMethod</span> values:
<ul>
<li><var class="keyword varname">Package</var> - Based on the actual weight of the items.</li>
<li><var class="keyword varname">Dimensional</var> - Based on the cubic space that the items occupy.</li>
</ul>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="FulfillmentPreviewShipment" class="topic reference nested1">

## FulfillmentPreviewShipment

<div class="body refbody">

<span class="ph">Delivery and item information for a shipment in a
fulfillment order preview.</span>

<div class="section">

### Operations

The <span class="keyword parmname">FulfillmentPreviewShipment</span>
datatype is used in a response element of the following operation:

-   <a href="FBAOutbound_GetFulfillmentPreview.md" class="xref" title="Returns a list of fulfillment order previews based on shipping criteria that you specify.">GetFulfillmentPreview</a>

</div>

<div class="section">

### Datatype content

The following table shows the elements of the <span
class="keyword parmname">FulfillmentPreviewShipment</span> datatype:

<div class="tablenoborder">

<table id="FulfillmentPreviewShipment__RequestParametersTable" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d91183e4291" class="entry" data-valign="top" width="33.46693386773546%">Name</th>
<th id="d91183e4294" class="entry" data-valign="top" width="28.256513026052097%">Description</th>
<th id="d91183e4297" class="entry" data-valign="top" width="10.020040080160319%">Required</th>
<th id="d91183e4300" class="entry" data-valign="top" width="28.256513026052097%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="33.46693386773546%" headers="d91183e4291 "><span class="keyword parmname">EarliestShipDate</span></td>
<td class="entry" data-valign="top" width="28.256513026052097%" headers="d91183e4294 ">The earliest date that the shipment is expected to be sent from the fulfillment center.</td>
<td class="entry" data-valign="top" width="10.020040080160319%" headers="d91183e4297 ">Yes</td>
<td class="entry" data-valign="top" width="28.256513026052097%" headers="d91183e4300 ">In <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="33.46693386773546%" headers="d91183e4291 "><span class="keyword parmname">LatestShipDate</span></td>
<td class="entry" data-valign="top" width="28.256513026052097%" headers="d91183e4294 ">The latest date that the shipment is expected to be sent from the fulfillment center.</td>
<td class="entry" data-valign="top" width="10.020040080160319%" headers="d91183e4297 ">Yes</td>
<td class="entry" data-valign="top" width="28.256513026052097%" headers="d91183e4300 ">In <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="33.46693386773546%" headers="d91183e4291 "><span class="keyword parmname">EarliestArrivalDate</span></td>
<td class="entry" data-valign="top" width="28.256513026052097%" headers="d91183e4294 ">The earliest date that the shipment is expected to arrive at its destination.</td>
<td class="entry" data-valign="top" width="10.020040080160319%" headers="d91183e4297 ">Yes</td>
<td class="entry" data-valign="top" width="28.256513026052097%" headers="d91183e4300 ">In <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="33.46693386773546%" headers="d91183e4291 "><span class="keyword parmname">LatestArrivalDate</span></td>
<td class="entry" data-valign="top" width="28.256513026052097%" headers="d91183e4294 ">The latest date that the shipment is expected to arrive at its destination.</td>
<td class="entry" data-valign="top" width="10.020040080160319%" headers="d91183e4297 ">Yes</td>
<td class="entry" data-valign="top" width="28.256513026052097%" headers="d91183e4300 ">In <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="33.46693386773546%" headers="d91183e4291 "><span class="keyword parmname">FulfillmentPreviewItems</span></td>
<td class="entry" data-valign="top" width="28.256513026052097%" headers="d91183e4294 ">Information about the items in the shipment.</td>
<td class="entry" data-valign="top" width="10.020040080160319%" headers="d91183e4297 ">Yes</td>
<td class="entry" data-valign="top" width="28.256513026052097%" headers="d91183e4300 ">Type: List of <a href="FBAOutbound_Datatypes.md#FulfillmentPreviewItem" class="xref" title="Item information for a shipment in a fulfillment order preview.">FulfillmentPreviewItem</a></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="FulfillmentShipment" class="topic reference nested1">

## FulfillmentShipment

<div class="body refbody">

<span class="ph">Delivery and item information for a shipment in a
fulfillment order.</span>

<div class="section">

### Operations

The <span class="keyword parmname">FulfillmentShipment</span> datatype
is used in a response element of the following operation:

-   <a href="FBAOutbound_GetFulfillmentOrder.md" class="xref" title="Returns a fulfillment order based on a specified SellerFulfillmentOrderId.">GetFulfillmentOrder</a>

</div>

<div class="section">

### Datatype content

The following table shows the elements of the <span
class="keyword parmname">FulfillmentShipment</span> datatype:

<div class="tablenoborder">

<table id="FulfillmentShipment__RequestParametersTable" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d91183e4537" class="entry" data-valign="top" width="30.446194225721783%">Name</th>
<th id="d91183e4540" class="entry" data-valign="top" width="30.621172353455815%">Description</th>
<th id="d91183e4543" class="entry" data-valign="top" width="8.748906386701663%">Required</th>
<th id="d91183e4546" class="entry" data-valign="top" width="30.18372703412074%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="30.446194225721783%" headers="d91183e4537 "><span class="keyword parmname">AmazonShipmentId</span></td>
<td class="entry" data-valign="top" width="30.621172353455815%" headers="d91183e4540 ">A shipment identifier assigned by Amazon.</td>
<td class="entry" data-valign="top" width="8.748906386701663%" headers="d91183e4543 ">Yes</td>
<td class="entry" data-valign="top" width="30.18372703412074%" headers="d91183e4546 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="30.446194225721783%" headers="d91183e4537 "><span class="keyword parmname">FulfillmentCenterId</span></td>
<td class="entry" data-valign="top" width="30.621172353455815%" headers="d91183e4540 ">An identifier for the <span class="ph">Amazon fulfillment center</span> that the shipment will be sent from.</td>
<td class="entry" data-valign="top" width="8.748906386701663%" headers="d91183e4543 ">Yes</td>
<td class="entry" data-valign="top" width="30.18372703412074%" headers="d91183e4546 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="30.446194225721783%" headers="d91183e4537 "><span class="keyword parmname">FulfillmentShipmentStatus</span></td>
<td class="entry" data-valign="top" width="30.621172353455815%" headers="d91183e4540 ">The current status of the shipment.</td>
<td class="entry" data-valign="top" width="8.748906386701663%" headers="d91183e4543 ">Yes</td>
<td class="entry" data-valign="top" width="30.18372703412074%" headers="d91183e4546 "><span class="keyword parmname">FulfillmentShipmentStatus</span> values:
<ul>
<li><var class="keyword varname">PENDING</var> - The process of picking units from inventory has begun.</li>
<li><var class="keyword varname">SHIPPED </var> - All packages in the shipment have left the fulfillment center.</li>
<li><var class="keyword varname">CANCELLED_BY_FULFILLER</var> - The <span class="ph">Amazon fulfillment center</span> could not fulfill the shipment as planned. This might be because the inventory was not at the expected location in the fulfillment center. After cancelling the fulfillment order, Amazon immediately creates a new fulfillment shipment and again attempts to fulfill the order.</li>
<li><var class="keyword varname">CANCELLED_BY_SELLER</var> - The shipment was cancelled using the <span class="keyword parmname">CancelFulfillmentOrder</span> request.</li>
</ul>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="30.446194225721783%" headers="d91183e4537 "><span class="keyword parmname">ShippingDateTime</span></td>
<td class="entry" data-valign="top" width="30.621172353455815%" headers="d91183e4540 ">The meaning of the <span class="keyword parmname">ShippingDateTime</span> value depends on the current status of the shipment. If the current value of <span class="keyword parmname">FulfillmentShipmentStatus</span> is:
<ul>
<li><var class="keyword varname">Pending</var> - <span class="keyword parmname">ShippingDateTime</span> represents the estimated time that the shipment will leave the <span class="ph">Amazon fulfillment center</span>.</li>
<li><var class="keyword varname">Shipped</var> - <span class="keyword parmname">ShippingDateTime</span> represents the date that the shipment left the <span class="ph">Amazon fulfillment center</span>.</li>
</ul>
If a shipment includes more than one package, <span class="keyword parmname">ShippingDateTime</span> applies to all of the packages in the shipment. If the value of <span class="keyword parmname">FulfillmentShipmentStatus</span> is <var class="keyword varname">CancelledByFulfiller</var> or <var class="keyword varname">CancelledBySeller</var>, <span class="keyword parmname">ShippingDateTime</span> is not returned.</td>
<td class="entry" data-valign="top" width="8.748906386701663%" headers="d91183e4543 ">No</td>
<td class="entry" data-valign="top" width="30.18372703412074%" headers="d91183e4546 ">In <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="30.446194225721783%" headers="d91183e4537 "><span class="keyword parmname">EstimatedArrivalDateTime</span></td>
<td class="entry" data-valign="top" width="30.621172353455815%" headers="d91183e4540 ">The estimated arrival time of the shipment. Note that this value can change over time. If a shipment includes more than one package, <span class="keyword parmname">EstimatedArrivalDateTime</span> applies to all of the packages in the shipment. If the shipment has been cancelled, <span class="keyword parmname">EstimatedArrivalDateTime</span> is not returned.</td>
<td class="entry" data-valign="top" width="8.748906386701663%" headers="d91183e4543 ">No</td>
<td class="entry" data-valign="top" width="30.18372703412074%" headers="d91183e4546 ">In <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="30.446194225721783%" headers="d91183e4537 "><span class="keyword parmname">FulfillmentShipmentItem</span></td>
<td class="entry" data-valign="top" width="30.621172353455815%" headers="d91183e4540 ">Information about the items in the shipment.</td>
<td class="entry" data-valign="top" width="8.748906386701663%" headers="d91183e4543 ">Yes</td>
<td class="entry" data-valign="top" width="30.18372703412074%" headers="d91183e4546 ">Type: List of <a href="FBAOutbound_Datatypes.md#FulfillmentShipmentItem" class="xref" title="Item information for a shipment in a fulfillment order.">FulfillmentShipmentItem</a></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="30.446194225721783%" headers="d91183e4537 "><span class="keyword parmname">FulfillmentShipmentPackage</span></td>
<td class="entry" data-valign="top" width="30.621172353455815%" headers="d91183e4540 ">Information about a single package in the shipment.</td>
<td class="entry" data-valign="top" width="8.748906386701663%" headers="d91183e4543 ">No</td>
<td class="entry" data-valign="top" width="30.18372703412074%" headers="d91183e4546 ">Type: List of <a href="FBAOutbound_Datatypes.md#FulfillmentShipmentPackage" class="xref" title="Package information for a shipment in a fulfillment order.">FulfillmentShipmentPackage</a></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="FulfillmentShipmentItem" class="topic reference nested1">

## FulfillmentShipmentItem

<div class="body refbody">

Item information for a shipment in a fulfillment order.

<div class="section">

### Operations

The <span class="keyword parmname">FulfillmentShipmentItem</span>
datatype is used in a response element of the following operation:

-   <a href="FBAOutbound_GetFulfillmentOrder.md" class="xref" title="Returns a fulfillment order based on a specified SellerFulfillmentOrderId.">GetFulfillmentOrder</a>

</div>

<div class="section">

### Datatype content

The following table shows the elements of the <span
class="keyword parmname">FulfillmentShipmentItem</span> datatype:

<div class="tablenoborder">

| Name                                                               | Description                                                                                                                                                                  | Required | Values                                  |
|--------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------|-----------------------------------------|
| <span class="keyword parmname">SellerSKU</span>                    | <span class="ph">The seller SKU of the item.</span>                                                                                                                          | No       | <span class="ph">Type: xs:string</span> |
| <span class="keyword parmname">SellerFulfillmentOrderItemId</span> | <span class="ph">The fulfillment order item identifier that you created and submitted with the <span class="keyword apiname">CreateFulfillmentOrder</span> operation.</span> | Yes      | <span class="ph">Type: xs:string</span> |
| <span class="keyword parmname">Quantity</span>                     | <span class="ph">The item quantity.</span>                                                                                                                                   | Yes      | <span class="ph">Type: xs:int</span>    |
| <span class="keyword parmname">PackageNumber</span>                | An identifier for the package that contains the item quantity.                                                                                                               | No       | <span class="ph">Type: xs:int</span>    |

</div>

</div>

</div>

</div>

<div id="FulfillmentShipmentPackage" class="topic reference nested1">

## FulfillmentShipmentPackage

<div class="body refbody">

<span class="ph">Package information for a shipment in a fulfillment
order.</span>

<div class="section">

### Operations

The <span class="keyword parmname">FulfillmentShipmentPackage</span>
datatype is used in a response element of the following operation:

-   <a href="FBAOutbound_GetFulfillmentOrder.md" class="xref" title="Returns a fulfillment order based on a specified SellerFulfillmentOrderId.">GetFulfillmentOrder</a>

</div>

<div class="section">

### Datatype content

The following table shows the elements of the <span
class="keyword parmname">FulfillmentShipmentPackage</span> datatype:

<div class="tablenoborder">

<table id="FulfillmentShipmentPackage__RequestParametersTable" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d91183e5103" class="entry" data-valign="top" width="42.797783933518005%">Name</th>
<th id="d91183e5106" class="entry" data-valign="top" width="28.11634349030471%">Description</th>
<th id="d91183e5109" class="entry" data-valign="top" width="13.850415512465375%">Required</th>
<th id="d91183e5112" class="entry" data-valign="top" width="15.235457063711916%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="42.797783933518005%" headers="d91183e5103 "><span class="keyword parmname">PackageNumber</span></td>
<td class="entry" data-valign="top" width="28.11634349030471%" headers="d91183e5106 ">Identifies a package in a shipment.</td>
<td class="entry" data-valign="top" width="13.850415512465375%" headers="d91183e5109 ">Yes</td>
<td class="entry" data-valign="top" width="15.235457063711916%" headers="d91183e5112 "><span class="ph">Type: xs:int</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="42.797783933518005%" headers="d91183e5103 "><span class="keyword parmname">CarrierCode</span></td>
<td class="entry" data-valign="top" width="28.11634349030471%" headers="d91183e5106 ">Identifies the carrier who will deliver the shipment to the recipient.</td>
<td class="entry" data-valign="top" width="13.850415512465375%" headers="d91183e5109 ">Yes</td>
<td class="entry" data-valign="top" width="15.235457063711916%" headers="d91183e5112 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="42.797783933518005%" headers="d91183e5103 "><span class="keyword parmname">TrackingNumber</span></td>
<td class="entry" data-valign="top" width="28.11634349030471%" headers="d91183e5106 ">The tracking number, if provided, can be used to obtain tracking and delivery information.</td>
<td class="entry" data-valign="top" width="13.850415512465375%" headers="d91183e5109 ">No</td>
<td class="entry" data-valign="top" width="15.235457063711916%" headers="d91183e5112 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="42.797783933518005%" headers="d91183e5103 "><span class="keyword parmname">EstimatedArrivalDateTime</span></td>
<td class="entry" data-valign="top" width="28.11634349030471%" headers="d91183e5106 ">The estimated arrival time of the package.</td>
<td class="entry" data-valign="top" width="13.850415512465375%" headers="d91183e5109 ">No</td>
<td class="entry" data-valign="top" width="15.235457063711916%" headers="d91183e5112 ">In <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="GetFulfillmentPreviewItem" class="topic reference nested1">

## GetFulfillmentPreviewItem

<div class="body refbody">

<span class="ph">Item information for a fulfillment order
preview.</span>

<div class="section">

### Operations

The <span class="keyword parmname">GetFulfillmentPreviewItem</span>
datatype is used in a request parameter of the following operation:

-   <a href="FBAOutbound_GetFulfillmentPreview.md" class="xref" title="Returns a list of fulfillment order previews based on shipping criteria that you specify.">GetFulfillmentPreview</a>

</div>

<div class="section">

### Datatype content

The following table shows the elements of the <span
class="keyword parmname">GetFulfillmentPreviewItem</span> datatype:

<div class="tablenoborder">

<table id="GetFulfillmentPreviewItem__RequestParametersTable" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d91183e5300" class="entry" data-valign="top" width="27.262931034482758%">Name</th>
<th id="d91183e5303" class="entry" data-valign="top" width="31.25%">Description</th>
<th id="d91183e5306" class="entry" data-valign="top" width="10.775862068965518%">Required</th>
<th id="d91183e5309" class="entry" data-valign="top" width="30.71120689655173%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="27.262931034482758%" headers="d91183e5300 "><span class="keyword parmname">SellerSKU</span></td>
<td class="entry" data-valign="top" width="31.25%" headers="d91183e5303 "><span class="ph">The seller SKU of the item.</span></td>
<td class="entry" data-valign="top" width="10.775862068965518%" headers="d91183e5306 ">Yes</td>
<td class="entry" data-valign="top" width="30.71120689655173%" headers="d91183e5309 ">Maximum: 50 characters
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="27.262931034482758%" headers="d91183e5300 "><span class="keyword parmname">SellerFulfillmentOrderItemId</span></td>
<td class="entry" data-valign="top" width="31.25%" headers="d91183e5303 ">A fulfillment order item identifier that you create to track items in your fulfillment preview.</td>
<td class="entry" data-valign="top" width="10.775862068965518%" headers="d91183e5306 ">Yes</td>
<td class="entry" data-valign="top" width="30.71120689655173%" headers="d91183e5309 ">Maximum: 50 characters
<p>Each <span class="keyword parmname">SellerFulfillmentOrderItemId</span> value must be unique within a given request.</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="27.262931034482758%" headers="d91183e5300 "><span class="keyword parmname">Quantity</span></td>
<td class="entry" data-valign="top" width="31.25%" headers="d91183e5303 "><span class="ph">The item quantity.</span></td>
<td class="entry" data-valign="top" width="10.775862068965518%" headers="d91183e5306 ">Yes</td>
<td class="entry" data-valign="top" width="30.71120689655173%" headers="d91183e5309 "><span class="ph">Type: xs:int</span></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="InvalidItemReason" class="topic reference nested1">

## InvalidItemReason

<div class="body refbody">

<span class="ph">The reason that the item is invalid for return.</span>

<div class="section">

### Operations

The <span class="keyword parmname">InvalidItemReason</span> datatype is
used in a response element of the following operations:

-   <a href="FBAOutbound_CreateFulfillmentReturn.md" class="xref" title="Creates a fulfillment return.">CreateFulfillmentReturn</a>
-   <a href="FBAOutbound_GetFulfillmentOrder.md" class="xref" title="Returns a fulfillment order based on a specified SellerFulfillmentOrderId.">GetFulfillmentOrder</a>

</div>

<div class="section">

### Datatype content

The following table shows the elements of the <span
class="keyword parmname">InvalidItemReason</span> datatype:

<div class="tablenoborder">

| Name                                                        | Description                                                            | Required | Values                                                                                                                                                         |
|-------------------------------------------------------------|------------------------------------------------------------------------|----------|----------------------------------------------------------------------------------------------------------------------------------------------------------------|
| <span class="keyword parmname">InvalidItemReasonCode</span> | <span class="ph">A code for why the item is invalid for return.</span> | Yes      | Type: <a href="FBAOutbound_Datatypes.md#InvalidItemReasonCode" class="xref" title="A code for why the item is invalid for return.">InvalidItemReasonCode</a> |
| <span class="keyword parmname">Description</span>           | A human readable description of the invalid item reason code.          | Yes      | <span class="ph">Type: xs:string</span>                                                                                                                        |

</div>

</div>

</div>

</div>

<div id="InvalidItemReasonCode" class="topic reference nested1">

## InvalidItemReasonCode

<div class="body refbody">

<span class="ph">A code for why the item is invalid for return.</span>

<div class="section">

**Type:** xs:string

**Values:**

-   `InvalidValues` - The item was not found in a fulfillment order.
-   `DuplicateRequest` - A fulfillment return has already been requested
    for this item.
-   `NoCompletedShipItems` - The fulfillment order containing this item
    has not yet shipped.
-   `NoReturnableQuantity` - All item quantity available for return has
    been allocated to other return items.

</div>

</div>

</div>

<div id="InvalidReturnItem" class="topic reference nested1">

## InvalidReturnItem

<div class="body refbody">

<span class="ph">An item that is invalid for return.</span>

<div class="section">

### Operations

The <span class="keyword parmname">InvalidReturnItem</span> datatype is
used in a response element of the following operations:

-   <a href="FBAOutbound_CreateFulfillmentReturn.md" class="xref" title="Creates a fulfillment return.">CreateFulfillmentReturn</a>
-   <a href="FBAOutbound_GetFulfillmentOrder.md" class="xref" title="Returns a fulfillment order based on a specified SellerFulfillmentOrderId.">GetFulfillmentOrder</a>

</div>

<div class="section">

### Datatype content

The following table shows the elements of the <span
class="keyword parmname">InvalidReturnItem</span> datatype:

<div class="tablenoborder">

| Name                                                               | Description                                                                                                       | Required | Values                                                                                                                                                  |
|--------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------|----------|---------------------------------------------------------------------------------------------------------------------------------------------------------|
| <span class="keyword parmname">SellerReturnItemId</span>           | <span class="ph">An identifier assigned by the seller to the return item.</span>                                  | Yes      | <span class="ph">Type: xs:string</span>                                                                                                                 |
| <span class="keyword parmname">SellerFulfillmentOrderItemId</span> | <span class="ph">The identifier assigned to the item by the seller when the fulfillment order was created.</span> | Yes      | <span class="ph">Type: xs:string</span>                                                                                                                 |
| <span class="keyword parmname">InvalidItemReason</span>            | The reason that the item is invalid for return.                                                                   | Yes      | Type: <a href="FBAOutbound_Datatypes.md#InvalidItemReason" class="xref" title="The reason that the item is invalid for return.">InvalidItemReason</a> |

</div>

</div>

</div>

</div>

<div id="ReasonCodeDetails" class="topic reference nested1">

## ReasonCodeDetails

<div class="body refbody">

<span class="ph">A return reason code, a description, and an optional
description translation.</span>

<div class="section">

### Operations

The <span class="keyword parmname">ReasonCodeDetails</span> datatype is
used in a response element of the following operation:

-   <a href="FBAOutbound_ListReturnReasonCodes.md" class="xref" title="Returns a list of return reason codes for a seller SKU in a given marketplace.">ListReturnReasonCodes</a>

</div>

<div class="section">

### Datatype content

The following table shows the elements of the <span
class="keyword parmname">ReasonCodeDetails</span> datatype:

<div class="tablenoborder">

| Name                                                        | Description                                                                                                                                                | Required                                                  | Values                                  |
|-------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------|-----------------------------------------|
| <span class="keyword parmname">ReturnReasonCode</span>      | A code for a valid return reason.                                                                                                                          | Yes                                                       | <span class="ph">Type: xs:string</span> |
| <span class="keyword parmname">Description</span>           | A human readable description of the return reason code.                                                                                                    | Yes                                                       | <span class="ph">Type: xs:string</span> |
| <span class="keyword parmname">TranslatedDescription</span> | A translation of the description. The translation is in the language passed in using the <span class="keyword parmname">Language</span> request parameter. | No. Only returned if a valid language code was passed in. | <span class="ph">Type: xs:string</span> |

</div>

</div>

</div>

</div>

<div id="ReturnAuthorization" class="topic reference nested1">

## ReturnAuthorization

<div class="body refbody">

<span class="ph">Return authorization information for items accepted for
return.</span>

<div class="section">

### Operations

The <span class="keyword parmname">ReturnAuthorization</span> datatype
is used in a response element of the following operations:

-   <a href="FBAOutbound_CreateFulfillmentReturn.md" class="xref" title="Creates a fulfillment return.">CreateFulfillmentReturn</a>

<!-- -->

-   <a href="FBAOutbound_GetFulfillmentOrder.md" class="xref" title="Returns a fulfillment order based on a specified SellerFulfillmentOrderId.">GetFulfillmentOrder</a>

</div>

<div class="section">

### Datatype content

The following table shows the elements of the <span
class="keyword parmname">ReturnAuthorization</span> datatype:

<div class="tablenoborder">

| Name                                                        | Description                                                                                                                                                                                                                                                              | Required | Values                                                                                                          |
|-------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------|-----------------------------------------------------------------------------------------------------------------|
| <span class="keyword parmname">ReturnAuthorizationId</span> | An identifier for the return authorization. This identifier associates return items with the return authorization used to return them. See <a href="FBAOutbound_Datatypes.md#ReturnItem" class="xref" title="An item that Amazon accepted for return.">ReturnItem</a>. | Yes      | <span class="ph">Type: xs:string</span>                                                                         |
| <span class="keyword parmname">FulfillmentCenterId</span>   | An identifier for the Amazon fulfillment center that the return items should be sent to.                                                                                                                                                                                 | Yes      | <span class="ph">Type: xs:string</span>                                                                         |
| <span class="keyword parmname">ReturnToAddress</span>       | The address of the Amazon fulfillment center that the return items should be sent to.                                                                                                                                                                                    | Yes      | Type: <a href="FBAOutbound_Datatypes.md#Address" class="xref" title="Postal address information.">Address</a> |
| <span class="keyword parmname">AmazonRmaId</span>           | The return merchandise authorization (RMA) that Amazon needs to process the return.                                                                                                                                                                                      | Yes      | <span class="ph">Type: xs:string</span>                                                                         |
| <span class="keyword parmname">RmaPageURL</span>            | A URL for a web page that contains the return authorization barcode and the mailing label. This does not include pre-paid shipping.                                                                                                                                      | Yes      | <span class="ph">Type: xs:string</span>                                                                         |

</div>

</div>

</div>

</div>

<div id="ReturnItem" class="topic reference nested1">

## ReturnItem

<div class="body refbody">

<span class="ph">An item that Amazon accepted for return.</span>

<div class="section">

### Operations

The <span class="keyword parmname">ReturnItem</span> datatype is used in
a response element of the following operations:

-   <a href="FBAOutbound_CreateFulfillmentReturn.md" class="xref" title="Creates a fulfillment return.">CreateFulfillmentReturn</a>
-   <a href="FBAOutbound_GetFulfillmentOrder.md" class="xref" title="Returns a fulfillment order based on a specified SellerFulfillmentOrderId.">GetFulfillmentOrder</a>

</div>

<div class="section">

### Datatype content

The following table shows the elements of the <span
class="keyword parmname">ReturnItem</span> datatype:

<div class="tablenoborder">

<table id="ReturnItem__RequestParametersTable" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d91183e6344" class="entry" data-valign="top" width="27.80172413793104%">Name</th>
<th id="d91183e6347" class="entry" data-valign="top" width="30.71120689655173%">Description</th>
<th id="d91183e6350" class="entry" data-valign="top" width="10.775862068965518%">Required</th>
<th id="d91183e6353" class="entry" data-valign="top" width="30.71120689655173%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="27.80172413793104%" headers="d91183e6344 "><span class="keyword parmname">SellerReturnItemId</span></td>
<td class="entry" data-valign="top" width="30.71120689655173%" headers="d91183e6347 "><span class="ph">An identifier assigned by the seller to the return item.</span></td>
<td class="entry" data-valign="top" width="10.775862068965518%" headers="d91183e6350 ">Yes</td>
<td class="entry" data-valign="top" width="30.71120689655173%" headers="d91183e6353 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="27.80172413793104%" headers="d91183e6344 "><span class="keyword parmname">SellerFulfillmentOrderItemId</span></td>
<td class="entry" data-valign="top" width="30.71120689655173%" headers="d91183e6347 "><span class="ph">The identifier assigned to the item by the seller when the fulfillment order was created.</span></td>
<td class="entry" data-valign="top" width="10.775862068965518%" headers="d91183e6350 ">Yes</td>
<td class="entry" data-valign="top" width="30.71120689655173%" headers="d91183e6353 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="27.80172413793104%" headers="d91183e6344 "><span class="keyword parmname">AmazonShipmentId</span></td>
<td class="entry" data-valign="top" width="30.71120689655173%" headers="d91183e6347 "><span class="ph">The identifier for the shipment that is associated with the return item.</span></td>
<td class="entry" data-valign="top" width="10.775862068965518%" headers="d91183e6350 ">Yes</td>
<td class="entry" data-valign="top" width="30.71120689655173%" headers="d91183e6353 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="27.80172413793104%" headers="d91183e6344 "><span class="keyword parmname">SellerReturnReasonCode</span></td>
<td class="entry" data-valign="top" width="30.71120689655173%" headers="d91183e6347 "><span class="ph">The return reason code assigned to the return item by the seller.</span></td>
<td class="entry" data-valign="top" width="10.775862068965518%" headers="d91183e6350 ">Yes</td>
<td class="entry" data-valign="top" width="30.71120689655173%" headers="d91183e6353 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="27.80172413793104%" headers="d91183e6344 "><span class="keyword parmname">ReturnComment</span></td>
<td class="entry" data-valign="top" width="30.71120689655173%" headers="d91183e6347 "><span class="ph">An optional comment about the return item.</span></td>
<td class="entry" data-valign="top" width="10.775862068965518%" headers="d91183e6350 ">No</td>
<td class="entry" data-valign="top" width="30.71120689655173%" headers="d91183e6353 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="27.80172413793104%" headers="d91183e6344 "><span class="keyword parmname">AmazonReturnReasonCode</span></td>
<td class="entry" data-valign="top" width="30.71120689655173%" headers="d91183e6347 ">The return reason code that the Amazon fulfillment center assigned to the return item.</td>
<td class="entry" data-valign="top" width="10.775862068965518%" headers="d91183e6350 ">No</td>
<td class="entry" data-valign="top" width="30.71120689655173%" headers="d91183e6353 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="27.80172413793104%" headers="d91183e6344 "><span class="keyword parmname">Status</span></td>
<td class="entry" data-valign="top" width="30.71120689655173%" headers="d91183e6347 "><span class="ph">Indicates if the return item has been processed by an Amazon fulfillment center.</span></td>
<td class="entry" data-valign="top" width="10.775862068965518%" headers="d91183e6350 ">Yes</td>
<td class="entry" data-valign="top" width="30.71120689655173%" headers="d91183e6353 ">Type: <a href="FBAOutbound_Datatypes.md#Status" class="xref" title="Indicates if the return item has been processed by an Amazon fulfillment center.">Status</a></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="27.80172413793104%" headers="d91183e6344 "><span class="keyword parmname">StatusChangedDate</span></td>
<td class="entry" data-valign="top" width="30.71120689655173%" headers="d91183e6347 ">Indicates when the status last changed.</td>
<td class="entry" data-valign="top" width="10.775862068965518%" headers="d91183e6350 ">Yes</td>
<td class="entry" data-valign="top" width="30.71120689655173%" headers="d91183e6353 ">In <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="27.80172413793104%" headers="d91183e6344 "><span class="keyword parmname">ReturnAuthorizationId</span></td>
<td class="entry" data-valign="top" width="30.71120689655173%" headers="d91183e6347 ">Identifies the return authorization used to return this item. See <a href="FBAOutbound_Datatypes.md#ReturnAuthorization" class="xref" title="Return authorization information for items accepted for return.">ReturnAuthorization</a>.</td>
<td class="entry" data-valign="top" width="10.775862068965518%" headers="d91183e6350 ">No</td>
<td class="entry" data-valign="top" width="30.71120689655173%" headers="d91183e6353 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="27.80172413793104%" headers="d91183e6344 "><span class="keyword parmname">ReturnReceivedCondition</span></td>
<td class="entry" data-valign="top" width="30.71120689655173%" headers="d91183e6347 "><span class="ph">The condition that the return item was received by an Amazon fulfillment center.</span></td>
<td class="entry" data-valign="top" width="10.775862068965518%" headers="d91183e6350 ">No</td>
<td class="entry" data-valign="top" width="30.71120689655173%" headers="d91183e6353 ">Type: <a href="FBAOutbound_Datatypes.md#ReturnReceivedCondition" class="xref" title="The condition that the return item was received by an Amazon fulfillment center.">ReturnReceivedCondition</a></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="27.80172413793104%" headers="d91183e6344 "><span class="keyword parmname">FulfillmentCenterId</span></td>
<td class="entry" data-valign="top" width="30.71120689655173%" headers="d91183e6347 ">The identifier for the Amazon fulfillment center that processed the return item.</td>
<td class="entry" data-valign="top" width="10.775862068965518%" headers="d91183e6350 ">No</td>
<td class="entry" data-valign="top" width="30.71120689655173%" headers="d91183e6353 "><span class="ph">Type: xs:string</span></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="ReturnReceivedCondition" class="topic reference nested1">

## ReturnReceivedCondition

<div class="body refbody">

<span class="ph">The condition that the return item was received by an
Amazon fulfillment center.</span>

<div class="section">

**Type:** xs:string

**Values:**

-   `CarrierDamaged` - Item was damaged by the carrier.
-   `CustomerDamaged` - Item was damaged by the buyer or the seller.
-   `Defective` - Item is defective.
-   `FulfillerDamaged` - Item was damaged by Amazon.
-   `Sellable` - Item is in sellable condition.

</div>

</div>

</div>

<div id="ScheduledDeliveryInfo" class="topic reference nested1">

## ScheduledDeliveryInfo

<div class="body refbody">

<span class="ph">Delivery information for a Scheduled Delivery.</span>

<div class="section">

### Operations

The <span class="keyword parmname">ScheduledDeliveryInfo</span> datatype
is used in a response element of the following operation:

-   <a href="FBAOutbound_GetFulfillmentPreview.md" class="xref" title="Returns a list of fulfillment order previews based on shipping criteria that you specify.">GetFulfillmentPreview</a>

</div>

<div class="section">

### Datatype content

The following table shows the elements of the <span
class="keyword parmname">ScheduledDeliveryInfo</span> datatype:

<div class="tablenoborder">

<table id="ScheduledDeliveryInfo__RequestParametersTable" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d91183e6773" class="entry" data-valign="top" width="27.262931034482758%">Name</th>
<th id="d91183e6776" class="entry" data-valign="top" width="31.25%">Description</th>
<th id="d91183e6779" class="entry" data-valign="top" width="10.775862068965518%">Required</th>
<th id="d91183e6782" class="entry" data-valign="top" width="30.71120689655173%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="27.262931034482758%" headers="d91183e6773 "><span class="keyword parmname">DeliveryTimeZone</span></td>
<td class="entry" data-valign="top" width="31.25%" headers="d91183e6776 ">The time zone of the destination address for the fulfillment order preview.</td>
<td class="entry" data-valign="top" width="10.775862068965518%" headers="d91183e6779 ">Yes</td>
<td class="entry" data-valign="top" width="30.71120689655173%" headers="d91183e6782 ">IANA time zone name. Example: Asia/Tokyo.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="27.262931034482758%" headers="d91183e6773 "><span class="keyword parmname">DeliveryWindows</span></td>
<td class="entry" data-valign="top" width="31.25%" headers="d91183e6776 ">A list of time ranges that are available for Scheduled Delivery.</td>
<td class="entry" data-valign="top" width="10.775862068965518%" headers="d91183e6779 ">Yes</td>
<td class="entry" data-valign="top" width="30.71120689655173%" headers="d91183e6782 ">Type: List of <a href="FBAOutbound_Datatypes.md#DeliveryWindow" class="xref" title="The time range within which your Scheduled Delivery fulfillment order should be delivered.">DeliveryWindow</a></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="Status" class="topic reference nested1">

## Status

<div class="body refbody">

<span class="ph">Indicates if the return item has been processed by an
Amazon fulfillment center.</span>

<div class="section">

**Type:** xs:string

**Values:**

-   `New` - The return item has not yet been processed by an Amazon
    fulfillment center.
-   `Processed `- The return item has been processed by an Amazon
    fulfillment center.

</div>

</div>

</div>

<div id="TrackingAddress" class="topic reference nested1">

## TrackingAddress

<div class="body refbody">

<span class="ph">Address information for tracking the package.</span>

<div class="section">

### Operations

The <span class="keyword parmname">TrackingAddress</span> datatype is
used in a response element of the following operation:

-   <a href="FBAOutbound_GetPackageTrackingDetails.md" class="xref" title="Returns delivery tracking information for a package in an outbound shipment for a Multi-Channel Fulfillment order.">GetPackageTrackingDetails</a>

</div>

<div class="section">

### Datatype content

The following table shows the elements of the <span
class="keyword parmname">TrackingAddress</span> datatype:

<div class="tablenoborder">

<table id="TrackingAddress__RequestParametersTable" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d91183e7006" class="entry" data-valign="top" width="26.618705035971217%">Name</th>
<th id="d91183e7009" class="entry" data-valign="top" width="32.949640287769775%">Description</th>
<th id="d91183e7012" class="entry" data-valign="top" width="14.38848920863309%">Required</th>
<th id="d91183e7015" class="entry" data-valign="top" width="26.043165467625894%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="26.618705035971217%" headers="d91183e7006 "><span class="keyword parmname">City</span></td>
<td class="entry" data-valign="top" width="32.949640287769775%" headers="d91183e7009 ">The city.</td>
<td class="entry" data-valign="top" width="14.38848920863309%" headers="d91183e7012 ">Yes</td>
<td class="entry" data-valign="top" width="26.043165467625894%" headers="d91183e7015 ">Maximum: 150 characters
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="26.618705035971217%" headers="d91183e7006 "><span class="keyword parmname">State</span></td>
<td class="entry" data-valign="top" width="32.949640287769775%" headers="d91183e7009 ">The state.</td>
<td class="entry" data-valign="top" width="14.38848920863309%" headers="d91183e7012 ">Yes</td>
<td class="entry" data-valign="top" width="26.043165467625894%" headers="d91183e7015 ">Maximum: 150 characters
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="26.618705035971217%" headers="d91183e7006 "><span class="keyword parmname">Country</span></td>
<td class="entry" data-valign="top" width="32.949640287769775%" headers="d91183e7009 ">The country.</td>
<td class="entry" data-valign="top" width="14.38848920863309%" headers="d91183e7012 ">Yes</td>
<td class="entry" data-valign="top" width="26.043165467625894%" headers="d91183e7015 ">Maximum: 6 characters
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="TrackingEvent" class="topic reference nested1">

## TrackingEvent

<div class="body refbody">

<span class="ph">Information for tracking package deliveries.</span>

<div class="section">

### Operations

The <span class="keyword parmname">TrackingEvent</span> datatype is used
in a response element of the following operation:

-   <a href="FBAOutbound_GetPackageTrackingDetails.md" class="xref" title="Returns delivery tracking information for a package in an outbound shipment for a Multi-Channel Fulfillment order.">GetPackageTrackingDetails</a>

</div>

<div class="section">

### Datatype content

The following table shows the elements of the <span
class="keyword parmname">TrackingEvent</span> datatype:

<div class="tablenoborder">

<table id="TrackingEvent__RequestParametersTable" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d91183e7185" class="entry" data-valign="top" width="15.330188679245282%">Name</th>
<th id="d91183e7188" class="entry" data-valign="top" width="29.599056603773583%">Description</th>
<th id="d91183e7191" class="entry" data-valign="top" width="11.792452830188678%">Required</th>
<th id="d91183e7194" class="entry" data-valign="top" width="43.27830188679245%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="15.330188679245282%" headers="d91183e7185 "><span class="keyword parmname">EventDate</span></td>
<td class="entry" data-valign="top" width="29.599056603773583%" headers="d91183e7188 ">The date and time that the delivery event took place.</td>
<td class="entry" data-valign="top" width="11.792452830188678%" headers="d91183e7191 ">Yes</td>
<td class="entry" data-valign="top" width="43.27830188679245%" headers="d91183e7194 ">In <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="15.330188679245282%" headers="d91183e7185 "><span class="keyword parmname">EventAddress</span></td>
<td class="entry" data-valign="top" width="29.599056603773583%" headers="d91183e7188 ">The city where the delivery event took place.</td>
<td class="entry" data-valign="top" width="11.792452830188678%" headers="d91183e7191 ">Yes</td>
<td class="entry" data-valign="top" width="43.27830188679245%" headers="d91183e7194 ">Type: <a href="FBAOutbound_Datatypes.md#TrackingAddress" class="xref" title="Address information for tracking the package.">TrackingAddress</a></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="15.330188679245282%" headers="d91183e7185 "><span class="keyword parmname">EventCode</span></td>
<td class="entry" data-valign="top" width="29.599056603773583%" headers="d91183e7188 ">The event code for the delivery event.</td>
<td class="entry" data-valign="top" width="11.792452830188678%" headers="d91183e7191 ">Yes</td>
<td class="entry" data-valign="top" width="43.27830188679245%" headers="d91183e7194 "><span class="keyword parmname">EventCode</span> values:
<ul>
<li><var class="keyword varname">EVENT_101</var> - Carrier notified to pick up package.</li>
<li><var class="keyword varname">EVENT_102</var> - Shipment picked up from seller's facility.</li>
<li><var class="keyword varname">EVENT_201</var> - Arrival scan.</li>
<li><var class="keyword varname">EVENT_202</var> - Departure scan.</li>
<li><var class="keyword varname">EVENT_203</var> - Arrived at destination country.</li>
<li><var class="keyword varname">EVENT_204</var> - Initiated customs clearance process.</li>
<li><var class="keyword varname">EVENT_205</var> - Completed customs clearance process.</li>
<li><var class="keyword varname">EVENT_206</var> - In transit to pickup location.</li>
<li><var class="keyword varname">EVENT_301</var> - Delivered.</li>
<li><var class="keyword varname">EVENT_302</var> - Out for delivery.</li>
<li><var class="keyword varname">EVENT_304</var> - Delivery attempted.</li>
<li><var class="keyword varname">EVENT_306</var> - Customer contacted to arrange delivery.</li>
<li><var class="keyword varname">EVENT_307</var> - Delivery appointment scheduled.</li>
<li><var class="keyword varname">EVENT_308</var> - Available for pickup.</li>
<li><var class="keyword varname">EVENT_309</var> - Returned to seller.</li>
<li><var class="keyword varname">EVENT_401</var> - Held by carrier - incorrect address.</li>
<li><var class="keyword varname">EVENT_402</var> - Customs clearance delay.</li>
<li><var class="keyword varname">EVENT_403</var> - Customer moved.</li>
<li><var class="keyword varname">EVENT_404</var> - Delay in delivery due to external factors.</li>
<li><var class="keyword varname">EVENT_405</var> - Shipment damaged.</li>
<li><var class="keyword varname">EVENT_406</var> - Held by carrier.</li>
<li><var class="keyword varname">EVENT_407</var> - Customer refused delivery.</li>
<li><var class="keyword varname">EVENT_408</var> - Returning to seller.</li>
<li><var class="keyword varname">EVENT_409</var> - Lost by carrier.</li>
<li><var class="keyword varname">EVENT_411</var> - Paperwork received - did not receive shipment.</li>
<li><var class="keyword varname">EVENT_412</var> - Shipment received- did not receive paperwork.</li>
<li><var class="keyword varname">EVENT_413</var> - Held by carrier- customer refused shipment due to customs charges.</li>
<li><var class="keyword varname">EVENT_414</var> - Missorted by carrier.</li>
<li><var class="keyword varname">EVENT_415</var> - Received from prior carrier.</li>
<li><var class="keyword varname">EVENT_416</var> - Undeliverable.</li>
<li><var class="keyword varname">EVENT_417</var> - Shipment missorted.</li>
<li><var class="keyword varname">EVENT_418</var> - Shipment delayed.</li>
<li><var class="keyword varname">EVENT_419</var> - Address corrected - delivery rescheduled.</li>
</ul>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="UnfulfillablePreviewItem" class="topic reference nested1">

## UnfulfillablePreviewItem

<div class="body refbody">

<span class="ph">Information about unfulfillable items in a fulfillment
order preview.</span>

<div class="section">

### Operations

The <span class="keyword parmname">UnfulfillablePreviewItem</span>
datatype is used in a response element of the following operation:

-   <a href="FBAOutbound_GetFulfillmentPreview.md" class="xref" title="Returns a list of fulfillment order previews based on shipping criteria that you specify.">GetFulfillmentPreview</a>

</div>

<div class="section">

### Datatype content

The following table shows the elements of the <span
class="keyword parmname">UnfulfillablePreviewItem</span> datatype:

<div class="tablenoborder">

<table id="UnfulfillablePreviewItem__RequestParametersTable" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d91183e7546" class="entry" data-valign="top" width="32.50883392226149%">Name</th>
<th id="d91183e7549" class="entry" data-valign="top" width="28.739693757361607%">Description</th>
<th id="d91183e7552" class="entry" data-valign="top" width="11.778563015312134%">Required</th>
<th id="d91183e7555" class="entry" data-valign="top" width="26.972909305064785%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="32.50883392226149%" headers="d91183e7546 "><span class="keyword parmname">SellerSKU</span></td>
<td class="entry" data-valign="top" width="28.739693757361607%" headers="d91183e7549 "><span class="ph">The seller SKU of the item.</span></td>
<td class="entry" data-valign="top" width="11.778563015312134%" headers="d91183e7552 ">Yes</td>
<td class="entry" data-valign="top" width="26.972909305064785%" headers="d91183e7555 ">Maximum: 50 characters
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="32.50883392226149%" headers="d91183e7546 "><span class="keyword parmname">SellerFulfillmentOrderItemId</span></td>
<td class="entry" data-valign="top" width="28.739693757361607%" headers="d91183e7549 ">A fulfillment order item identifier that you created with a call to the <span class="keyword apiname">GetFulfillmentPreview</span> operation.</td>
<td class="entry" data-valign="top" width="11.778563015312134%" headers="d91183e7552 ">Yes</td>
<td class="entry" data-valign="top" width="26.972909305064785%" headers="d91183e7555 ">Maximum: 50 characters
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="32.50883392226149%" headers="d91183e7546 "><span class="keyword parmname">Quantity</span></td>
<td class="entry" data-valign="top" width="28.739693757361607%" headers="d91183e7549 "><span class="ph">The item quantity.</span></td>
<td class="entry" data-valign="top" width="11.778563015312134%" headers="d91183e7552 ">Yes</td>
<td class="entry" data-valign="top" width="26.972909305064785%" headers="d91183e7555 "><span class="ph">Type: xs:int</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="32.50883392226149%" headers="d91183e7546 "><span class="keyword parmname">ItemUnfulfillableReasons</span></td>
<td class="entry" data-valign="top" width="28.739693757361607%" headers="d91183e7549 ">Error codes associated with the fulfillment order preview that indicate why the item is unfulfillable.</td>
<td class="entry" data-valign="top" width="11.778563015312134%" headers="d91183e7552 ">No</td>
<td class="entry" data-valign="top" width="26.972909305064785%" headers="d91183e7555 ">Error code examples:
<ul>
<li><strong>InventoryUnavailable</strong></li>
<li><strong>NoDeliveryOption</strong></li>
</ul>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="UpdateFulfillmentOrderItem" class="topic reference nested1">

## UpdateFulfillmentOrderItem

<div class="body refbody">

<span class="ph">Item information for updating a fulfillment
order.</span>

<div class="section">

### Operations

The <span class="keyword parmname">UpdateFulfillmentOrderItem</span>
datatype is used in a request parameter of the following operation:

-   <a href="FBAOutbound_UpdateFulfillmentOrder.md" class="xref" title="Updates and/or requests shipment for a fulfillment order with an order hold on it.">UpdateFulfillmentOrder</a>

</div>

<div class="section">

### Datatype content

The following table shows the elements of the <span
class="keyword parmname">UpdateFulfillmentOrderItem</span> datatype:

<div class="tablenoborder">

<table id="UpdateFulfillmentOrderItem__RequestParametersTable" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d91183e7761" class="entry" data-valign="top" width="33.5920177383592%">Name</th>
<th id="d91183e7764" class="entry" data-valign="top" width="26.607538802660752%">Description</th>
<th id="d91183e7767" class="entry" data-valign="top" width="11.086474501108649%">Required</th>
<th id="d91183e7770" class="entry" data-valign="top" width="28.713968957871394%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="33.5920177383592%" headers="d91183e7761 "><span class="keyword parmname">SellerFulfillmentOrderItemId</span></td>
<td class="entry" data-valign="top" width="26.607538802660752%" headers="d91183e7764 ">Identifies the fulfillment order item that you want to update. Created with a previous call to the <span class="keyword apiname">CreateFulfillmentOrder</span> operation.</td>
<td class="entry" data-valign="top" width="11.086474501108649%" headers="d91183e7767 ">Yes</td>
<td class="entry" data-valign="top" width="28.713968957871394%" headers="d91183e7770 ">Maximum: 50 characters
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="33.5920177383592%" headers="d91183e7761 "><span class="keyword parmname">Quantity</span></td>
<td class="entry" data-valign="top" width="26.607538802660752%" headers="d91183e7764 "><span class="ph">The item quantity.</span></td>
<td class="entry" data-valign="top" width="11.086474501108649%" headers="d91183e7767 ">Yes</td>
<td class="entry" data-valign="top" width="28.713968957871394%" headers="d91183e7770 ">Must be less than or equal to the quantity specified for this order item when the fulfillment order was originally created. Must be greater than zero.
<p><span class="ph">Type: xs:int</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="33.5920177383592%" headers="d91183e7761 "><span class="keyword parmname">GiftMessage</span></td>
<td class="entry" data-valign="top" width="26.607538802660752%" headers="d91183e7764 ">A message to the gift recipient, if applicable.</td>
<td class="entry" data-valign="top" width="11.086474501108649%" headers="d91183e7767 ">No</td>
<td class="entry" data-valign="top" width="28.713968957871394%" headers="d91183e7770 ">Maximum: 512 characters
<p>Default: If you specified a value with a previous call to the <span class="keyword apiname">CreateFulfillmentOrder</span> or <span class="keyword apiname">UpdateFulfillmentOrder</span> operation, then that value is the default. Otherwise the default is null.</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="33.5920177383592%" headers="d91183e7761 "><span class="keyword parmname">DisplayableComment</span></td>
<td class="entry" data-valign="top" width="26.607538802660752%" headers="d91183e7764 ">Item-specific text that displays in recipient-facing materials such as the outbound shipment packing slip.</td>
<td class="entry" data-valign="top" width="11.086474501108649%" headers="d91183e7767 ">No</td>
<td class="entry" data-valign="top" width="28.713968957871394%" headers="d91183e7770 ">Maximum: 250 characters
<p>Default: If you specified a value with a previous call to the <span class="keyword apiname">CreateFulfillmentOrder</span> or <span class="keyword apiname">UpdateFulfillmentOrder</span> operation, then that value is the default. Otherwise the default is null.</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="33.5920177383592%" headers="d91183e7761 "><span class="keyword parmname">PerUnitDeclaredValue</span></td>
<td class="entry" data-valign="top" width="26.607538802660752%" headers="d91183e7764 ">The monetary value assigned by the seller to this item.</td>
<td class="entry" data-valign="top" width="11.086474501108649%" headers="d91183e7767 ">No</td>
<td class="entry" data-valign="top" width="28.713968957871394%" headers="d91183e7770 ">Default: If you specified a value with a previous call to the <span class="keyword apiname">CreateFulfillmentOrder</span> or <span class="keyword apiname">UpdateFulfillmentOrder</span> operation, then that value is the default. Otherwise the default is zero.
<p>Type: <a href="FBAOutbound_Datatypes.md#Currency" class="xref" title="Currency type and amount.">Currency</a></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="33.5920177383592%" headers="d91183e7761 "><span class="keyword parmname">PerUnitPrice</span></td>
<td class="entry" data-valign="top" width="26.607538802660752%" headers="d91183e7764 ">The amount to be collected from the customer for this item in a COD (Cash On Delivery) order.
<div class="note note">
<span class="notetitle">Note:</span> COD fulfillment orders are available only in Japan (JP).
</div></td>
<td class="entry" data-valign="top" width="11.086474501108649%" headers="d91183e7767 ">No</td>
<td class="entry" data-valign="top" width="28.713968957871394%" headers="d91183e7770 ">Default: If you specified a value with a previous call to the <span class="keyword apiname">CreateFulfillmentOrder</span> or <span class="keyword apiname">UpdateFulfillmentOrder</span> operation, then that value is the default. Otherwise the default is zero.
<p>Type: <a href="FBAOutbound_Datatypes.md#Currency" class="xref" title="Currency type and amount.">Currency</a></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="33.5920177383592%" headers="d91183e7761 "><span class="keyword parmname">PerUnitTax</span></td>
<td class="entry" data-valign="top" width="26.607538802660752%" headers="d91183e7764 ">The tax on the amount to be collected from the customer for this item in a COD (Cash On Delivery) order.
<div class="note note">
<span class="notetitle">Note:</span> COD fulfillment orders are available only in JP.
</div></td>
<td class="entry" data-valign="top" width="11.086474501108649%" headers="d91183e7767 ">No</td>
<td class="entry" data-valign="top" width="28.713968957871394%" headers="d91183e7770 ">Default: If you specified a value with a previous call to the <span class="keyword apiname">CreateFulfillmentOrder</span> or <span class="keyword apiname">UpdateFulfillmentOrder</span> operation, then that value is the default. Otherwise the default is zero.
<p>Type: <a href="FBAOutbound_Datatypes.md#Currency" class="xref" title="Currency type and amount.">Currency</a></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="Weight" class="topic reference nested1">

## Weight

<div class="body refbody">

<span class="ph">Weight unit and amount.</span>

<div class="section">

### Operations

The <span class="keyword parmname">Weight</span> datatype is used in a
response element of the following operation:

-   <a href="FBAOutbound_GetFulfillmentPreview.md" class="xref" title="Returns a list of fulfillment order previews based on shipping criteria that you specify.">GetFulfillmentPreview</a>

</div>

<div class="section">

### Datatype content

The following table shows the elements of the <span
class="keyword parmname">Weight</span> datatype:

<div class="tablenoborder">

<table id="Weight__RequestParametersTable" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d91183e8078" class="entry" data-valign="top" width="22.873345935727787%">Name</th>
<th id="d91183e8081" class="entry" data-valign="top" width="36.294896030245745%">Description</th>
<th id="d91183e8084" class="entry" data-valign="top" width="9.45179584120983%">Required</th>
<th id="d91183e8087" class="entry" data-valign="top" width="31.379962192816635%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="22.873345935727787%" headers="d91183e8078 "><span class="keyword parmname">Unit</span></td>
<td class="entry" data-valign="top" width="36.294896030245745%" headers="d91183e8081 ">Indicates the unit of weight.</td>
<td class="entry" data-valign="top" width="9.45179584120983%" headers="d91183e8084 ">Yes</td>
<td class="entry" data-valign="top" width="31.379962192816635%" headers="d91183e8087 "><span class="keyword parmname">Unit</span> values:
<ul>
<li><var class="keyword varname">KG</var> - Kilograms</li>
<li><var class="keyword varname">LB</var> - Pounds</li>
</ul>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="22.873345935727787%" headers="d91183e8078 "><span class="keyword parmname">Value</span></td>
<td class="entry" data-valign="top" width="36.294896030245745%" headers="d91183e8081 ">The numeric value of the item's weight.</td>
<td class="entry" data-valign="top" width="9.45179584120983%" headers="d91183e8084 ">Yes</td>
<td class="entry" data-valign="top" width="31.379962192816635%" headers="d91183e8087 "><span class="ph">Type: xs:string</span></td>
</tr>
</tbody>
</table>

</div>

</div>

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
