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

<div id="FBAInbound_GetPrepInstructionsForSKU" class="nested0">

# GetPrepInstructionsForSKU

<span class="ph">Returns labeling requirements and item preparation
instructions to help you prepare items for an inbound shipment.</span>

<div id="Description" class="topic concept nested1">

## Description

<div class="body conbody">

<div class="section">

The <span class="keyword apiname">GetPrepInstructionsForSKU</span>
operation returns labeling requirements and item preparation
instructions to help you prepare items for shipment to
<span class="ph">Amazon's fulfillment network</span>.

If you have not yet listed an item and only want item preparation
instructions to help with sourcing decisions for that item, use the
[<span class="keyword apiname">GetPrepInstructionsForASIN</span>](FBAInbound_GetPrepInstructionsForASIN.md "Returns item preparation instructions to help with item sourcing decisions.")
operation.

<div class="note important">

<span class="importanttitle">Important:</span> Labeling requirements and
item preparation instructions are subject to change. Before creating a
new inbound shipment, call the
<span class="keyword apiname">GetPrepInstructionsForSKU</span> operation
to get the most current labeling requirements and item preparation
instructions for the <span class="keyword parmname">SellerSKU</span>
values in the shipment. Do not rely on values received from previous
calls to <span class="keyword apiname">GetPrepInstructionsForSKU</span>.

</div>

</div>

<div class="section">

### Availability

This operation is available in all marketplaces except Brazil.

</div>

<div class="section">

### Throttling

The <span class="keyword apiname">GetPrepInstructionsForSKU</span>
operation has a **maximum request quota** of 30 and a **restore rate**
of two requests every second. <span class="ph">For definitions of
throttling terminology and for a complete explanation of throttling, see
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
<span class="ph">Amazon MWS Developer Guide</span>.</span>

</div>

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
<td><span class="keyword parmname">SellerSKUList</span></td>
<td>A list of <span class="keyword parmname">SellerSKU</span> values. Used to identify items for which you want labeling requirements and item preparation instructions for shipment to <span class="ph">Amazon's fulfillment network</span>. The Seller SKU is qualified by your Seller ID, which is included with every call to <span class="ph">Amazon Marketplace Web Service (Amazon MWS)</span>.</td>
<td>Yes</td>
<td>Maximum: 50 <span class="keyword parmname">SellerSKU</span> values
<div class="note note">
<span class="notetitle">Note:</span> Include Seller SKUs that you have used to list items on Amazon's retail website. If you include a Seller SKU that you have never used to list an item on Amazon's retail website, the Seller SKU is returned in the <span class="keyword parmname">InvalidSKUList</span> response element.
</div>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">ShipToCountryCode</span></td>
<td>The country code of the country the items will be shipped to. Note that labeling requirements and item preparation instructions can vary by country.</td>
<td>Yes</td>
<td><span class="ph">A two-character country code, in ISO 3166-1 alpha-2 format.</span>
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
<thead>
<tr class="header">
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><span class="keyword parmname">SKUPrepInstructionsList</span></td>
<td><span class="ph">Labeling requirements and item preparation instructions to help you prepare items for shipment to <span class="ph">Amazon's fulfillment network</span>.</span>
<p>Type: List of <a href="FBAInbound_Datatypes.md#SKUPrepInstructions" class="xref" title="Labeling requirements and item preparation instructions to help you prepare items for shipment to Amazon&#39;s fulfillment network.">SKUPrepInstructions</a></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">InvalidSKUList</span></td>
<td>A list of invalid <span class="keyword parmname">SellerSKU</span> values and the reasons they are invalid.
<p>Type: List of <a href="FBAInbound_Datatypes.md#InvalidSKU" class="xref" title="An invalid Seller SKU and the reason it is invalid.">InvalidSKU</a></p></td>
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
https://mws.amazonaws.com/FulfillmentInboundShipment/2010-10-01
?AWSAccessKeyId=AKIAEIAEXAMPLEQCJLSA
&Action=GetPrepInstructionsForSKU
&SellerId=A13EXAMPLE1J56
&SignatureVersion=2
&Timestamp=2013-08-09T22%3A52%3A25Z
&Version=2010-10-01
&SignatureMethod=HmacSHA256
&SellerSKUList.Id.1=ca_001
&ShipToCountryCode=US
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
<?xml version="1.0" encoding="UTF-8"?>
<GetPrepInstructionsForSKUResponse 
  xmlns="http://mws.amazonaws.com/FulfillmentInboundShipment/2010-10-01/">
  <GetPrepInstructionsForSKUResult>
    <SKUPrepInstructionsList>
      <SKUPrepInstructions>
        <SellerSKU>ca_001</SellerSKU>
        <ASIN>B00EXAMPLE</ASIN>
        <BarcodeInstruction>RequiresFNSKULabel</BarcodeInstruction>
        <PrepGuidance>SeePrepInstructionsList</PrepGuidance>
        <PrepInstructionList>
          <PrepInstruction>Polybagging</PrepInstruction>
          <PrepInstruction>Taping</PrepInstruction>
          <PrepInstruction>Labeling</PrepInstruction>
        </PrepInstructionList>
        <AmazonPrepFeesDetailsList>
          <AmazonPrepFeesDetails>
            <PrepInstruction>Polybagging</PrepInstruction>
            <Amount>
              <CurrencyCode>USD</CurrencyCode>
              <Value>0.2</Value>
            </Amount>
          </AmazonPrepFeesDetails>
          <AmazonPrepFeesDetails>
            <PrepInstruction>Taping</PrepInstruction>
            <Amount>
              <CurrencyCode>USD</CurrencyCode>
              <Value>0.2</Value>
            </Amount>
          </AmazonPrepFeesDetails>
          <AmazonPrepFeesDetails>
            <PrepInstruction>Labeling</PrepInstruction>
            <Amount>
              <CurrencyCode>USD</CurrencyCode>
              <Value>0.2</Value>
            </Amount>
          </AmazonPrepFeesDetails>          
        </AmazonPrepFeesDetailsList>        
      </SKUPrepInstructions>
    </SKUPrepInstructionsList>
    <InvalidSKUList>
    </InvalidSKUList>
  </GetPrepInstructionsForSKUResult>
  <ResponseMetadata>
    <RequestId>171a23ca-12f9-4599-bbdf-47bc5701d955</RequestId>
  </ResponseMetadata>
</GetPrepInstructionsForSKUResponse>
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

[GetPrepInstructionsForASIN](FBAInbound_GetPrepInstructionsForASIN.md "Returns item preparation instructions to help with item sourcing decisions.")

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
