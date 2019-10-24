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

<div id="FBAInbound_VoidTransportRequest" class="nested0">

# VoidTransportRequest

<div class="body">

<span class="ph">Voids a previously-confirmed request to ship your
inbound shipment using an Amazon-partnered carrier.</span>

</div>

<div id="Description" class="topic concept nested1">

## Description

<div class="body conbody">

<div class="section">

The <span class="keyword apiname">VoidTransportRequest</span> operation
voids a previously-confirmed request to ship your inbound shipment using
an Amazon-partnered carrier. To be successful, this operation must be
called before the <span class="keyword parmname">VoidDeadline</span>
date that is returned by the
<span class="keyword apiname">GetTransportContent</span> operation.

<div class="note important">

<span class="importanttitle">Important:</span> The
<span class="keyword parmname">VoidDeadline</span> date is 24 hours
after you confirm a <span class="ph">Small Parcel</span> shipment
transportation request or one hour after you confirm a
<span class="ph">Less Than Truckload/Full Truckload (LTL/FTL)</span>
shipment transportation request. After the void deadline passes, your
account will be charged for the shipping cost.

</div>

<div class="note note">

<span class="notetitle">Note:</span>

  - Only sellers in the Amazon European marketplaces (France, Germany,
    Italy, Spain, and the United Kingdom) and in the United States can
    use an Amazon-partnered carrier when creating inbound shipments
    using Amazon Marketplace Web Service (Amazon MWS). Calling this
    operation in other marketplaces returns an error.
  - In the Amazon European marketplaces, before using an
    Amazon-partnered carrier for an inbound shipment, you must first
    review and accept the terms and conditions of the carrier and the
    terms and conditions of Amazon's Partnered Carrier Program. You can
    do this on [Seller
    Central](https://sellercentral.amazon.co.uk/gp/help/201119120). If
    you attempt to use <span class="ph">Amazon Marketplace Web Service
    (Amazon MWS)</span> to create an inbound shipment using an
    Amazon-partnered carrier before accepting these terms and
    conditions, the service returns an error.

</div>

<span class="ph">For more information, see [Using an Amazon-partnered
carrier for your inbound
shipment](../fba_guide/FBAGuide_UsingAmazonCarrierToShip.md) in the
MWS for FBA Sellers guide.</span>

</div>

<div class="section">

### Availability

This operation is available in all marketplaces except Brazil.

</div>

<div class="section">

### Throttling

The <span class="keyword apiname">VoidTransportRequest</span> operation
has a **maximum request quota** of 30 and a **restore rate** of two
requests every second. <span class="ph">For definitions of throttling
terminology and for a complete explanation of throttling, see
[Throttling: Limits to how often you can submit
requests](../dev_guide/DG_Throttling.md) in the
<span class="ph">Amazon MWS Developer Guide</span>.</span>

</div>

</div>

</div>

<div id="RequestParameters" class="topic reference nested1">

## Request parameters

<div class="body refbody">

<div class="section">

<span class="ph">For more information about the request parameters that
are required for all <span class="ph">Amazon MWS</span> operations, see
[Required request
parameters](../dev_guide/DG_RequiredRequestParameters.md) in the
<span class="ph">Amazon MWS Developer
Guide</span>.</span>

</div>

<div class="tablenoborder">

| Name                                             | Description                                                                                                                                        | Required | Values                                  |
| ------------------------------------------------ | -------------------------------------------------------------------------------------------------------------------------------------------------- | -------- | --------------------------------------- |
| <span class="keyword parmname">ShipmentId</span> | <span class="ph">A shipment identifier originally returned by the <span class="keyword apiname">CreateInboundShipmentPlan</span> operation.</span> | Yes      | <span class="ph">Type: xs:string</span> |

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
<td><span class="keyword parmname">TransportResult</span></td>
<td>Workflow status for a shipment with an Amazon-partnered carrier.
<p>Type: <a href="FBAInbound_Datatypes.html#TransportResult" class="xref" title="The workflow status for a shipment with an Amazon-partnered carrier.">TransportResult</a></p></td>
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
parameters](../dev_guide/DG_RequiredRequestParameters.md).</span>

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre codeblock
http://mws.amazonaws.com/FulfillmentInboundShipment/2010-10-01
  ?AWSAccessKeyId=AKIAEIAEXAMPLEQCJLSA
  &Action=VoidTransportRequest
  &MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
  &SellerId=A13EXAMPLE1J56
  &SignatureVersion=2
  &Timestamp=2013-08-10T00%3A16%3A11Z
  &Version=2010-10-01
  &SignatureMethod=HmacSHA256
  &ShipmentId=FBAQFGQZ
```

[↑ Top](#Examples)

</div>

</div>

<div class="section">

### Example response

<span class="ph">For information about standard response formatting, see
[Response format](../dev_guide/DG_ResponseFormat.md).</span>

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre codeblock
<?xml version="1.0"?>
<VoidTransportRequestResponse 
    xmlns="http://mws.amazonaws.com/FulfillmentInboundShipment/2010-10-01/">
    <VoidTransportRequestResult>
        <TransportResult>
            <TransportStatus>VOIDING</TransportStatus>
        </TransportResult>
    </VoidTransportRequestResult>
    <ResponseMetadata>
        <RequestId>c5818219-de93-4b3e-8f9b-b172fbacd010</RequestId>
    </ResponseMetadata>
</VoidTransportRequestResponse>
```

[↑ Top](#Examples)

</div>

</div>

</div>

</div>

<div id="RelatedTopics" class="topic nested1">

## Related topics

<div class="body">

[Fulfillment Inbound Shipment
API](../fba_inbound/FBAInbound_Overview.md)

[GetTransportContent](../fba_inbound/FBAInbound_GetTransportContent.md)

[PutTransportContent](../fba_inbound/FBAInbound_PutTransportContent.md)

[EstimateTransportRequest](FBAInbound_EstimateTransportRequest.html "Requests an estimate of the shipping cost for an inbound shipment.")

[ConfirmTransportRequest](FBAInbound_ConfirmTransportRequest.html "Confirms that you accept the Amazon-partnered shipping estimate and you request that the Amazon-partnered carrier ship your inbound shipment.")

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
