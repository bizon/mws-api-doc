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

<div id="FBAOutbound_ListReturnReasonCodes" class="nested0">

# ListReturnReasonCodes

<div class="body">

<span class="ph">Returns a list of return reason codes for a seller SKU
in a given marketplace.</span>

</div>

<div id="Description" class="topic concept nested1">

## Description

<div class="body conbody">

The <span class="keyword apiname">ListReturnReasonCodes</span> operation
returns a list of valid return reasons codes for a seller SKU in a given
marketplace. Valid reason codes are required in subsequent calls to the
[CreateFulfillmentReturn](FBAOutbound_CreateFulfillmentReturn.md "Creates a fulfillment return.")
operation. See [Creating a fulfillment
return](../fba_guide/FBAGuide_CreateFulfillmentReturn.md).

<div class="section">

### Availability

This operation is only available in the US, Germany, France, Italy, UK,
Japan, and Australia marketplaces.

</div>

<div class="section">

### Throttling

The <span class="keyword apiname">ListReturnReasonCodes</span> operation
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
<td>The marketplace for which the seller wants return reason codes.</td>
<td>No. Not required if <span class="keyword parmname">SellerFulfillmentOrderId</span> is specified.</td>
<td><span class="keyword parmname">MarketplaceId</span> values: see <a href="../dev_guide/DG_Endpoints.md" class="xref">Amazon MWS endpoints and MarketplaceId values</a>.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">SellerFulfillmentOrderId</span></td>
<td><span class="ph">The identifier assigned to the item by the seller when the fulfillment order was created.</span> The service uses this value to determine the marketplace for which the seller wants return reason codes.</td>
<td>No. Not required if <span class="keyword parmname">MarketplaceId</span> is specified.</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">SellerSKU</span></td>
<td>The seller SKU for which return reason codes are required.</td>
<td>Yes</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Language</span></td>
<td>The language that the <span class="keyword parmname">TranslatedDescription</span> element of the <a href="FBAOutbound_Datatypes.md#ReasonCodeDetails" class="xref" title="A return reason code, a description, and an optional description translation.">ReasonCodeDetails</a> response element should be translated into.</td>
<td>No</td>
<td>The <span class="ph"> <a href="../dev_guide/DG_ISO639.md" class="xref">ISO 639-1 format</a> </span> language code. Example: fr_CA
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

| Name                                                        | Description                                                                                                                                                     |
| ----------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| <span class="keyword parmname">ReasonCodeDetailsList</span> | Type: List of [ReasonCodeDetails](FBAOutbound_Datatypes.md#ReasonCodeDetails "A return reason code, a description, and an optional description translation.") |

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
http://mws.amazonaws.com/FulfillmentOutboundShipment/2010-10-01/
  ?Action=ListReturnReasonCodes 
  &Version=2010-10-01
  &AWSAccessKeyId=AKIAJGUEXAMPLEE2NVUA
  &MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
  &SignatureVersion=2
  &SignatureMethod=HmacSHA256
  &Signature=ZRA9DR5rveSuz%2F1D18AHvoipg2BAev8yblPQ1BbEbfU%3D
  &Timestamp=2016-09-29T02:40:36Z
  &SellerId=A2NKEXAMPLEF53 
  &MarketplaceId=A13V1IB3VIYZZH 
  &SellerSKU=DV-001 
  &Language=fr_FR  
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
<ListReturnReasonCodesResponse  xmlns="http://mws.amazonaws.com/FulfillmentOutboundShipment/2010-10-01/">
    <ListReturnReasonCodesResult>
        <ReasonCodeDetailsList>
            <ReasonCodeDetails>
                <ReturnReasonCode>REASON-CODE</ReturnReasonCode>
                <Description>This is a description of the reason code.</Description>
                <TranslatedDescription>This is an optional translated description of the reason code.</TranslatedDescription>
            </ReasonCodeDetails>
        </ReasonCodeDetailsList>
    </ListReturnReasonCodesResult> 
    <ResponseMetadata>     
        <RequestId>5e5e5694-8e76-11df-929f-87c80302f8f6</RequestId>
    </ResponseMetadata> 
</ListReturnReasonCodesResponse>
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
section](FBAOutbound_Overview.md)

[CreateFulfillmentReturn](FBAOutbound_CreateFulfillmentReturn.md "Creates a fulfillment return.")

[Creating a fulfillment
return](../fba_guide/FBAGuide_CreateFulfillmentReturn.md)

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
