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

<div id="FBAOutbound_CreateFulfillmentReturn" class="nested0">

# CreateFulfillmentReturn

<div class="body">

<span class="ph">Creates a fulfillment return.</span>

</div>

<div id="Description" class="topic concept nested1">

## Description

<div class="body conbody">

The <span class="keyword apiname">CreateFulfillmentReturn</span>
operation creates a fulfillment return for items that were fulfilled
using the
[CreateFulfillmentOrder](FBAOutbound_CreateFulfillmentOrder.html "Requests that Amazon ship items from the seller's inventory in Amazon's fulfillment network to a destination address.")
operation. For calls to
<span class="keyword apiname">CreateFulfillmentReturn</span> you must
include <span class="keyword parmname">ReturnReasonCode</span> values
returned by a previous call to the
[ListReturnReasonCodes](FBAOutbound_ListReturnReasonCodes.html "Returns a list of return reason codes for a seller SKU in a given marketplace.")
operation. For definitions, see
[Terminology](FBAOutbound_Overview.html#Outbound_Overview__Terminology).
For more information, see [Creating a fulfillment
return](../fba_guide/FBAGuide_CreateFulfillmentReturn.html).

<div class="section">

### Availability

This operation is only available in the US, Germany, France, Italy, UK,
Japan, and Australia marketplaces.

</div>

<div class="section">

### Throttling

The <span class="keyword apiname">CreateFulfillmentReturn</span>
operation has a **maximum request quota** of 30 and a **restore rate**
of two requests every second. <span class="ph">For definitions of
throttling terminology and for a complete explanation of throttling, see
[Throttling: Limits to how often you can submit
requests](../dev_guide/DG_Throttling.html) in the
<span class="ph">Amazon MWS Developer
Guide</span>.</span>

</div>

</div>

</div>

<div id="RequestParameters" class="topic reference nested1">

## Request parameters

<div class="body refbody">

<div class="tablenoborder">

| Name                                                           | Description                                                                                                                                                                                                                                                                                                                                                 | Required | Values                                                                                          |
| -------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------- | ----------------------------------------------------------------------------------------------- |
| <span class="keyword parmname">SellerFulfillmentOrderId</span> | An identifier assigned by the seller to the fulfillment order at the time it was created. The seller uses their own records to find the correct <span class="keyword parmname">SellerFulfillmentOrderId</span> value based on the buyer's request to return items. See [Creating a fulfillment return](../fba_guide/FBAGuide_CreateFulfillmentReturn.html). | Yes      | <span class="ph">Type: xs:string</span>                                                         |
| <span class="keyword parmname">Items</span>                    | A list of items to be returned.                                                                                                                                                                                                                                                                                                                             | Yes      | Type: [CreateReturnItem](FBAOutbound_Datatypes.html#CreateReturnItem "An item to be returned.") |

</div>

</div>

</div>

<div id="ResponseElements" class="topic reference nested1">

## Response elements

<div class="body refbody">

<div class="tablenoborder">

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><span class="keyword parmname">ReturnItemList</span></td>
<td>A list of items that Amazon accepted for return. Returns empty if no items were accepted for return.
<p>Type: List of <a href="FBAOutbound_Datatypes.html#ReturnItem" class="xref" title="An item that Amazon accepted for return.">ReturnItem</a></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">InvalidReturnItemList</span></td>
<td>A list of items that are invalid for return. Returns empty if no items are invalid for return.
<p>Type: List of <a href="FBAOutbound_Datatypes.html#InvalidReturnItem" class="xref" title="An item that is invalid for return.">InvalidReturnItem</a></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">ReturnAuthorizationList</span></td>
<td>A list of return authorizations.
<p>Type: List of <a href="FBAOutbound_Datatypes.html#ReturnAuthorization" class="xref" title="Return authorization information for items accepted for return.">ReturnAuthorization</a></p></td>
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
see [Required request
parameters](../dev_guide/DG_RequiredRequestParameters.html).</span>

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre codeblock
http://mws.amazonaws.com/FulfillmentOutboundShipment/2010-10-01/
  ?Action=CreateFulfillmentReturn
  &Version=2010-10-01
  &AWSAccessKeyId=AKIAJGUEXAMPLEE2NVUA
  &MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
  &SignatureVersion=2
  &SignatureMethod=HmacSHA256
  &Signature=ZRA9DR5rveSuz%2F1D18AHvoipg2BAev8yblPQ1BbEbfU%3D
  &Timestamp=2016-09-29T02:40:36Z
  &SellerId=A2NKEXAMPLEF53
  &SellerFulfillmentOrderId=extern_id_1154539615776
  &Items.member.1.SellerReturnItemId=16a6a142EXAMPLE
  &Items.member.1.SellerFulfillmentOrderItemId=order-item-1
  &Items.member.1.AmazonShipmentId= DLHg36GDN
  &Items.member.1.ReturnReasonCode=REASON-CODE
  &Items.member.1.ReturnComment=Did%20not%20like%20color
  &Items.member.2.SellerReturnItemId=20a6a142EXAMPLE
  &Items.member.2.SellerFulfillmentOrderItemId=order-item-2
  &Items.member.2.AmazonShipmentId= DLHg36GDN
  &Items.member.2.ReturnReasonCode=REASON-CODE
  &Items.member.2.ReturnComment=Size%20does%20not%20fit
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
<CreateFulfillmenReturnResponse  xmlns="http://mws.amazonaws.com/FulfillmentOutboundShipment/2010-10-01/">
    <CreateFulfillmentReturnResult>
        <ReturnItemList>
            <ReturnItem>
                <SellerReturnItemId>16a6a142EXAMPLE</SellerReturnItemId>
                <SellerFulfillmentOrderItemId>order-item-1 </SellerFulfillmentOrderItemId>
                <AmazonShipmentId>DLHg36GDN</AmazonShipmentId >
                <SellerReturnReasonCode>REASON-CODE</SellerReturnReasonCode>
                <ReturnComment>Did not like color</ReturnComment>
                <AmazonReturnReasonCode>OTHER-REASON-CODE</AmazonReturnReasonCode>
                <Status>Processed</Status> 
                <StatusChangedDate>2016-09-29T02:40:36Z</StatusChangedDate>
                <ReturnAuthorizationId>amzn-rma-id</ReturnAuthorizationId>
                <ReturnReceivedCondition>Sellable</ReturnReceivedCondition>
                <FulfillmentCenterId>FC123</FulfillmentCenterId>
            </ReturnItem>
        </ReturnItemList>
        <InvalidReturnItemList>
            <InvalidReturnItem>
                <SellerReturnItemId>20a6a142EXAMPLE</SellerReturnItemId>
                <SellerFulfillmentOrderItemId>order-item-2</SellerFulfillmentOrderItemId>
                <InvalidItemReason>
                    <InvalidItemReasonCode>DuplicateRequest</InvalidItemReasonCode>
                    <Description>There are duplicate return requests for this item.</Description>
                </InvalidItemReason>
            </InvalidReturnItem>
        </InvalidReturnItemList>
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
    </CreateFulfillmentReturnResult>
    <ResponseMetadata>
        <RequestId>5e5e5694-8e76-11df-929f-87c80302f8f6</RequestId>
    </ResponseMetadata>
 </CreateFulfillmenReturnResponse>
```

[↑ Top](#Examples)

</div>

</div>

</div>

</div>

<div id="RelatedTopics" class="topic nested1">

## Related topics

<div class="body">

[What you should know about the Fulfillment Outbound Shipment API
section](FBAOutbound_Overview.html)

[ListReturnReasonCodes](FBAOutbound_ListReturnReasonCodes.html "Returns a list of return reason codes for a seller SKU in a given marketplace.")

[Creating a fulfillment
return](../fba_guide/FBAGuide_CreateFulfillmentReturn.html)

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
