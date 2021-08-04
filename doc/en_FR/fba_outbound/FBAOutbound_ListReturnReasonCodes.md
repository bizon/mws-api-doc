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
<a href="FBAOutbound_CreateFulfillmentReturn.md" class="xref" title="Creates a fulfillment return.">CreateFulfillmentReturn</a>
operation. See
<a href="../fba_guide/FBAGuide_CreateFulfillmentReturn.md" class="xref">Creating a fulfillment return</a>.

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
<th id="d115060e135" class="entry" data-valign="top" width="34.18367346938776%">Name</th>
<th id="d115060e138" class="entry" data-valign="top" width="25.510204081632654%">Description</th>
<th id="d115060e141" class="entry" data-valign="top" width="12.755102040816327%">Required</th>
<th id="d115060e144" class="entry" data-valign="top" width="27.551020408163268%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d115060e135 "><span class="keyword parmname">MarketplaceId</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d115060e138 ">The marketplace for which the seller wants return reason codes.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d115060e141 ">No. Not required if <span class="keyword parmname">SellerFulfillmentOrderId</span> is specified.</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d115060e144 "><span class="keyword parmname">MarketplaceId</span> values: see <a href="../dev_guide/DG_Endpoints.md" class="xref">Amazon MWS endpoints and MarketplaceId values</a>.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d115060e135 "><span class="keyword parmname">SellerFulfillmentOrderId</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d115060e138 "><span class="ph">The identifier assigned to the item by the seller when the fulfillment order was created.</span> The service uses this value to determine the marketplace for which the seller wants return reason codes.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d115060e141 ">No. Not required if <span class="keyword parmname">MarketplaceId</span> is specified.</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d115060e144 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d115060e135 "><span class="keyword parmname">SellerSKU</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d115060e138 ">The seller SKU for which return reason codes are required.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d115060e141 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d115060e144 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d115060e135 "><span class="keyword parmname">Language</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d115060e138 ">The language that the <span class="keyword parmname">TranslatedDescription</span> element of the <a href="FBAOutbound_Datatypes.md#ReasonCodeDetails" class="xref" title="A return reason code, a description, and an optional description translation.">ReasonCodeDetails</a> response element should be translated into.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d115060e141 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d115060e144 ">The <span class="ph"> <a href="../dev_guide/DG_ISO639.md" class="xref">ISO 639-1 format</a> </span> language code. Example: fr_CA
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

| Name                                                        | Description                                                                                                                                                                                   |
|-------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| <span class="keyword parmname">ReasonCodeDetailsList</span> | Type: List of <a href="FBAOutbound_Datatypes.md#ReasonCodeDetails" class="xref" title="A return reason code, a description, and an optional description translation.">ReasonCodeDetails</a> |

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

<a href="#Examples" class="xref">↑ Top</a>

</div>

</div>

</div>

</div>

<div id="RelatedTopics" class="topic nested1">

## Related topics

<div class="body">

<a href="FBAOutbound_Overview.md" class="xref">What you should know about the Fulfillment Outbound Shipment API section</a>

<a href="FBAOutbound_CreateFulfillmentReturn.md" class="xref" title="Creates a fulfillment return.">CreateFulfillmentReturn</a>

<a href="../fba_guide/FBAGuide_CreateFulfillmentReturn.md" class="xref">Creating a fulfillment return</a>

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
