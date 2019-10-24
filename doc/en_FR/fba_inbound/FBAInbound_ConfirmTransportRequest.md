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

<div id="FBAInbound_ConfirmTransportRequest" class="nested0">

# ConfirmTransportRequest

<div class="body">

<span class="ph">Confirms that you accept the Amazon-partnered shipping
estimate and you request that the Amazon-partnered carrier ship your
inbound shipment.</span>

</div>

<div id="Description" class="topic concept nested1">

## Description

<div class="body conbody">

<div class="section">

The <span class="keyword apiname">ConfirmTransportRequest</span>
operation confirms that you accept the Amazon-partnered shipping
estimate, agree to allow Amazon to charge your account for the shipping
cost, and request that the Amazon-partnered carrier ship your inbound
shipment. Prior to calling the
<span class="keyword apiname">ConfirmTransportRequest</span> operation,
you should call the
<span class="keyword apiname">GetTransportContent</span> operation to
get the Amazon-partnered shipping estimate (indicated by the
<span class="keyword parmname">PartneredEstimate</span> response
element.) <span class="ph">For more information, see [Using an
Amazon-partnered carrier for your inbound
shipment](../fba_guide/FBAGuide_UsingAmazonCarrierToShip.html) in the
MWS for FBA Sellers guide.</span>

<div class="note important">

<span class="importanttitle">Important:</span> After confirming the
transportation request, if you decide that you do not want the
Amazon-partnered carrier to ship your inbound shipment, you can call the
<span class="keyword apiname">VoidTransportRequest</span> operation to
cancel the transportation request. Note that for a
<span class="ph">Small Parcel</span> shipment, you have 24 hours after
confirming a transportation request to void the transportation request.
For a <span class="ph">Less Than Truckload/Full Truckload
(LTL/FTL)</span> shipment, you have one hour after confirming a
transportation request to void it. After the grace period has expired
your account will be charged for the shipping cost.

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

</div>

<div class="section">

### Availability

This operation is available in all marketplaces except Brazil.

</div>

<div class="section">

### Throttling

The <span class="keyword apiname">ConfirmTransportRequest</span>
operation has a **maximum request quota** of 30 and a **restore rate**
of two requests every second. <span class="ph">For definitions of
throttling terminology and for a complete explanation of throttling, see
[Throttling: Limits to how often you can submit
requests](../dev_guide/DG_Throttling.html) in the
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
parameters](../dev_guide/DG_RequiredRequestParameters.html) in the
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
parameters](../dev_guide/DG_RequiredRequestParameters.html).</span>

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre codeblock
http://mws.amazonaws.com/FulfillmentInboundShipment/2010-10-01
  ?AWSAccessKeyId=AKIAEIAEXAMPLEQCJLSA
  &Action=ConfirmTransportRequest
  &MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
  &SellerId=A13EXAMPLE1J56
  &SignatureVersion=2
  &Timestamp=2013-08-10T00%3A14%3A27Z
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
[Response format](../dev_guide/DG_ResponseFormat.html).</span>

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre codeblock
<?xml version="1.0"?>
<ConfirmTransportRequestResponse 
    xmlns="http://mws.amazonaws.com/FulfillmentInboundShipment/2010-10-01/">
    <ConfirmTransportRequestResult>
        <TransportResult>
            <TransportStatus>CONFIRMING</TransportStatus>
        </TransportResult>
    </ConfirmTransportRequestResult>
    <ResponseMetadata>
        <RequestId>27bdc3df-d41b-4cf5-a96d-047815797bbf</RequestId>
    </ResponseMetadata>
</ConfirmTransportRequestResponse>
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
API](../fba_inbound/FBAInbound_Overview.html)

[GetTransportContent](../fba_inbound/FBAInbound_GetTransportContent.html)

[PutTransportContent](../fba_inbound/FBAInbound_PutTransportContent.html)

[EstimateTransportRequest](FBAInbound_EstimateTransportRequest.html "Requests an estimate of the shipping cost for an inbound shipment.")

[VoidTransportRequest](FBAInbound_VoidTransportRequest.html "Voids a previously-confirmed request to ship your inbound shipment using an Amazon-partnered carrier.")

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
