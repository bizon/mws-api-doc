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

<div id="FBAOutbound_GetFulfillmentOrder" class="nested0">

# GetFulfillmentOrder

<div class="body">

<span class="ph">Returns a fulfillment order based on a specified <span
class="keyword parmname">SellerFulfillmentOrderId</span>.</span>

</div>

<div id="Description" class="topic concept nested1">

## Description

<div class="body conbody">

The <span class="keyword apiname">GetFulfillmentOrder</span> operation
returns a fulfillment order based on a <span
class="keyword parmname">SellerFulfillmentOrderId</span> that you
specify. This operation returns general fulfillment order information as
well as item-level and shipment-level information. You can also use this
operation to get information about fulfillment returns. See
<a href="FBAOutbound_CreateFulfillmentReturn.md" class="xref" title="Creates a fulfillment return.">CreateFulfillmentReturn</a>.

<div class="section">

### Availability

This operation is available in all marketplaces except Brazil.

</div>

<div class="section">

### Throttling

The <span class="keyword apiname">GetFulfillmentOrder</span> operation
has a **maximum request quota** of 30 and a **restore rate** of two
requests every second. <span class="ph">For definitions of throttling
terminology and for a complete explanation of throttling, see
<a href="../dev_guide/DG_Throttling.md" class="xref">Throttling: Limits to how often you can submit requests</a>
in the <span class="ph">Amazon MWS Developer Guide</span>.</span>

</div>

</div>

</div>

<div id="RequestParameters" class="topic reference nested1">

## Request parameters

<div class="body refbody">

<div class="tablenoborder">

<table id="RequestParameters__RequestParametersTable" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d110335e141" class="entry" data-valign="top" width="31.880448318804476%">Name</th>
<th id="d110335e144" class="entry" data-valign="top" width="30.01245330012453%">Description</th>
<th id="d110335e147" class="entry" data-valign="top" width="12.453300124533%">Required</th>
<th id="d110335e150" class="entry" data-valign="top" width="25.65379825653798%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="31.880448318804476%" headers="d110335e141 "><span class="keyword parmname">SellerFulfillmentOrderId</span></td>
<td class="entry" data-valign="top" width="30.01245330012453%" headers="d110335e144 ">A fulfillment order identifier that was assigned by the seller with a previous call to the <span class="keyword apiname">CreateFulfillmentOrder</span> operation.</td>
<td class="entry" data-valign="top" width="12.453300124533%" headers="d110335e147 ">Yes</td>
<td class="entry" data-valign="top" width="25.65379825653798%" headers="d110335e150 ">Maximum: 40 characters
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

<table id="ResponseElements__ResponseElementsTable" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d110335e207" class="entry" data-valign="top" width="40%">Name</th>
<th id="d110335e210" class="entry" data-valign="top" width="60%">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="40%" headers="d110335e207 "><span class="keyword parmname">FulfillmentOrder</span></td>
<td class="entry" data-valign="top" width="60%" headers="d110335e210 ">General fulfillment order information, including order status.
<p>Type: <a href="FBAOutbound_Datatypes.md#FulfillmentOrder" class="xref" title="General information about a fulfillment order, including its status.">FulfillmentOrder</a></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="40%" headers="d110335e207 "><span class="keyword parmname">FulfillmentOrderItem</span></td>
<td class="entry" data-valign="top" width="60%" headers="d110335e210 ">Item-level fulfillment order information.
<p>Type: List of <a href="FBAOutbound_Datatypes.md#FulfillmentOrderItem" class="xref" title="Item information for a fulfillment order.">FulfillmentOrderItem</a></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="40%" headers="d110335e207 "><span class="keyword parmname">FulfillmentShipment</span></td>
<td class="entry" data-valign="top" width="60%" headers="d110335e210 ">Shipment-level fulfillment order information.
<p>Type: List of <a href="FBAOutbound_Datatypes.md#FulfillmentShipment" class="xref" title="Delivery and item information for a shipment in a fulfillment order.">FulfillmentShipment</a></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="40%" headers="d110335e207 "><span class="keyword parmname">ReturnItemList</span></td>
<td class="entry" data-valign="top" width="60%" headers="d110335e210 ">A list of items that Amazon accepted for return. Returns empty if no items were accepted for return.
<p>Type: List of <a href="FBAOutbound_Datatypes.md#ReturnItem" class="xref" title="An item that Amazon accepted for return.">ReturnItem</a></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="40%" headers="d110335e207 "><span class="keyword parmname">ReturnAuthorizationList</span></td>
<td class="entry" data-valign="top" width="60%" headers="d110335e210 ">A list of return authorizations.
<p>Type: List of <a href="FBAOutbound_Datatypes.md#ReturnAuthorization" class="xref" title="Return authorization information for items accepted for return.">ReturnAuthorization</a></p></td>
</tr>
</tbody>
</table>

</div>

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
http://mws.amazonservices.jp/FulfillmentOutboundShipment/2010-10-01/   
  ?Action=GetFulfillmentOrder   
  &Version=2010-10-01   
  &AWSAccessKeyId=AKIAJGUEXAMPLEE2NVUA   
  &MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE   
  &SignatureVersion=2   
  &SignatureMethod=HmacSHA256   
  &Signature=ZRA9DR5rveSuz%2F1D18AHvoipg2BAev8yblPQ1BbEbfU%3D   
  &Timestamp=2016-09-29T02:40:36Z   
  &SellerId=A2NKEXAMPLEF53   
  &SellerFulfillmentOrderId=extern_id_1154539615776
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
<?xml version="1.0" encoding="UTF-8"?>
<GetFulfillmentOrderResponse
  xmlns="http://mws.amazonaws.com/FulfillmentOutboundShipment/2010-10-01/">
  <GetFulfillmentOrderResult>
    <FulfillmentOrderItem>
      <member>
        <SellerSKU>SKU100</SellerSKU>
        <GiftMessage>giftwrap_message</GiftMessage>
        <SellerFulfillmentOrderItemId>merchant_order_item_id_2
          </SellerFulfillmentOrderItemId>
        <EstimatedShipDateTime>2016-09-03T07:07:53Z</EstimatedShipDateTime>
        <DisplayableComment>Example comment</DisplayableComment>
        <UnfulfillableQuantity>0</UnfulfillableQuantity>
        <CancelledQuantity>1</CancelledQuantity>
        <Quantity>5</Quantity>
        <EstimatedArrivalDateTime>2016-09-05T08:07:53Z
          </EstimatedArrivalDateTime>
        <PerUnitPrice>
          <CurrencyCode>JPY</CurrencyCode>
          <Value>2500</Value>
        </PerUnitPrice>
        <PerUnitTax>
          <CurrencyCode>JPY</CurrencyCode>
          <Value>5000</Value>
        </PerUnitTax>
      </member>
      <member>
        <SellerSKU>SKU101</SellerSKU>
        <GiftMessage>giftwrap_message</GiftMessage>
        <SellerFulfillmentOrderItemId>merchant_order_item_id_1
          </SellerFulfillmentOrderItemId>
        <EstimatedShipDateTime>2016-09-03T07:07:53Z</EstimatedShipDateTime>
        <DisplayableComment>Example comment</DisplayableComment>
        <UnfulfillableQuantity>2</UnfulfillableQuantity>
        <CancelledQuantity>1</CancelledQuantity>
        <Quantity>5</Quantity>
        <EstimatedArrivalDateTime>2016-09-05T08:07:53Z
          </EstimatedArrivalDateTime>
        <PerUnitPrice>
          <CurrencyCode>JPY</CurrencyCode>
          <Value>1000</Value>
        </PerUnitPrice>
        <PerUnitTax>
          <CurrencyCode>JPY</CurrencyCode>
          <Value>2000</Value>
        </PerUnitTax>
      </member>
    </FulfillmentOrderItem>
    <FulfillmentOrder>
      <ShippingSpeedCategory>ScheduledDelivery</ShippingSpeedCategory>
      <DeliveryWindow>
        <StartDateTime>2016-09-05T03:00:00Z</StartDateTime>
        <EndDateTime>2016-09-05T05:00:00Z</EndDateTime>
      </DeliveryWindow>
      <NotificationEmailList>
        <member>o8c2EXAMPLsfr7o@marketplace.amazon.com</member>
      </NotificationEmailList>
      <StatusUpdatedDateTime>2016-09-05T23:48:48Z</StatusUpdatedDateTime>
      <SellerFulfillmentOrderId>extern_id_1154539615776
        </SellerFulfillmentOrderId>
      <DestinationAddress>
        <PostalCode>153-0002</PostalCode>
        <Name>Amazon Taro</Name>
        <CountryCode>JP</CountryCode>
        <Line1>Meguro-ku Shimomeguro 12-34-56</Line1>
        <StateOrProvinceCode>Tokyo</StateOrProvinceCode>
        <Line2>XXX building 101</Line2>
      </DestinationAddress>
      <DisplayableOrderDateTime>2016-09-02T17:26:56Z </DisplayableOrderDateTime>
      <FulfillmentPolicy>FillOrKill</FulfillmentPolicy>
      <ReceivedDateTime>2016-09-02T17:26:56Z</ReceivedDateTime>
      <DisplayableOrderId>test_displayable_id</DisplayableOrderId>
      <DisplayableOrderComment>Sample comment</DisplayableOrderComment>
      <CODSettings>
        <IsCODRequired>true</IsCODRequired>
        <CODCharge>
          <Value>4000</Value>
          <CurrencyCode>JPY</CurrencyCode>
        </CODCharge>
        <CODChargeTax>
          <Value>300</Value>
          <CurrencyCode>JPY</CurrencyCode>
        </CODChargeTax>
        <ShippingCharge>
          <Value>1000</Value>
          <CurrencyCode>JPY</CurrencyCode>
        </ShippingCharge>
        <ShippingChargeTax>
          <Value>75</Value>
          <CurrencyCode>JPY</CurrencyCode>
        </ShippingChargeTax>
      </CODSettings>
      <FulfillmentOrderStatus>PROCESSING</FulfillmentOrderStatus>
      <FulfillmentAction>Ship</FulfillmentAction>
      <MarketplaceId>ATVPDKIKX0DER </MarketplaceId>
    </FulfillmentOrder>
    <FulfillmentShipment>
      <member>
        <FulfillmentShipmentStatus>PENDING</FulfillmentShipmentStatus>
        <FulfillmentShipmentItem>
          <member>
            <SellerSKU>SKU100</SellerSKU>
            <SellerFulfillmentOrderItemId>merchant_order_item_id_2
              </SellerFulfillmentOrderItemId>
            <Quantity>2</Quantity>
            <PackageNumber>0</PackageNumber>
          </member>
        </FulfillmentShipmentItem>
        <AmazonShipmentId>DnMDLWJWN</AmazonShipmentId>
        <ShippingDateTime>2016-09-03T07:00:00Z</ShippingDateTime>
        <FulfillmentCenterId>RNO1</FulfillmentCenterId>
        <EstimatedArrivalDateTime>2016-09-04T07:00:00Z
          </EstimatedArrivalDateTime>
      </member>
      <member>
        <FulfillmentShipmentStatus>SHIPPED</FulfillmentShipmentStatus>
        <FulfillmentShipmentItem>
          <member>
            <SellerSKU>SKU101</SellerSKU>
            <SellerFulfillmentOrderItemId>merchant_order_item_id_1
              </SellerFulfillmentOrderItemId>
            <Quantity>1</Quantity>
            <PackageNumber>1</PackageNumber>
          </member>
        </FulfillmentShipmentItem>
        <AmazonShipmentId>DKMKLXJmN</AmazonShipmentId>
        <ShippingDateTime>2016-09-03T07:00:00Z</ShippingDateTime>
        <FulfillmentShipmentPackage>
          <member>
            <TrackingNumber>93ZZ00</TrackingNumber>
            <CarrierCode>UPS</CarrierCode>
            <PackageNumber>1</PackageNumber>
          </member>
        </FulfillmentShipmentPackage>
        <FulfillmentCenterId>TST1</FulfillmentCenterId>
        <EstimatedArrivalDateTime>2016-09-05T07:00:00Z
          </EstimatedArrivalDateTime>
      </member>
    </FulfillmentShipment>
    <ReturnItemList>
      <ReturnItem>
        <SellerReturnItemId>16a6a142EXAMPLE</SellerReturnItemId>
        <SellerFulfillmentOrderItemId>order-item-1</SellerFulfillmentOrderItemId>
        <AmazonShipmentId>DLHg36GDN</AmazonShipmentId >
        <ReturnReasonCode>REASON-CODE</ReturnReasonCode>
        <ReturnComment>Did not like color</ReturnComment>
        <AmazonReturnReasonCode>OTHER-REASON-CODE</AmazonReturnReasonCode>
        <Status>Processed</Status> 
        <StatusChangedDate>2016-09-02T02:40:36Z</StatusChangedDate>
        <ReturnAuthorizationId>amzn-rma-id</ReturnAuthorizationId>
        <ReturnReceivedCondition>Sellable</ReturnReceivedCondition>
        <FulfillmentCenterId>FC123</FulfillmentCenterId>
      </ReturnItem>
    </ReturnItemList>
    <ReturnAuthorizationList>
      <ReturnAuthorization>
        <ReturnAuthorizationId>amzn-rma-id</ReturnAuthorizationId>
        <FulfillmentCenterId>FC123</FulfillmentCenterId>
        <ReturnToAddress>
          <Name>Amazon FC</Name>
          <Line1>123 Main Street</Line1>
          <City>Anywhere</City>
          <StateOrRegionCode>WA</StateOrRegionCode>
          <PostalCode>98122</PostalCode>
          <CountryCode>US</CountryCode>
        </ReturnToAddress>
        <AmazonRmaId>test123</AmazonRmaId>
        <RmaPageURL>https://sellercentral.amazon.com/URL</RmaPageURL>
      </ReturnAuthorization>
    </ReturnAuthorizationList>
  </GetFulfillmentOrderResult>
  <ResponseMetadata>
    <RequestId>5e5e5694-8e76-11df-929f-87c80302f8f6</RequestId>
  </ResponseMetadata>
</GetFulfillmentOrderResponse>
```

<a href="#Examples" class="xref">↑ Top</a>

</div>

</div>

</div>

</div>

<div id="RelatedTopics" class="topic nested1">

## Related topics

<div class="body">

<a href="FBAOutbound_Overview.md" class="xref">What you should know about the Fulfillment Outbound Shipment API section</a>

<a href="FBAOutbound_ListAllFulfillmentOrders.md" class="xref" title="Returns a list of fulfillment orders fulfilled after (or at) a specified date.">ListAllFulfillmentOrders</a>

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
