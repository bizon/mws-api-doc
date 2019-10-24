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

<div id="FBAInbound_GetPrepInstructionsForASIN" class="nested0">

# GetPrepInstructionsForASIN

<span class="ph">Returns item preparation instructions to help with item
sourcing decisions.</span>

<div id="Description" class="topic concept nested1">

## Description

<div class="body conbody">

<div class="section">

The <span class="keyword apiname">GetPrepInstructionsForASIN</span>
operation returns item preparation instructions to help with item
sourcing decisions.

<div class="p">

<div class="note note">

<span class="notetitle">Note:</span> In some cases, Amazon can also
determine the labeling requirements for an item based on the ASIN.
However, if the labeling requirements for an item cannot be determined,
the <span class="keyword apiname">GetPrepInstructionsForASIN</span>
operation returns a
<span class="keyword parmname">BarcodeInstruction</span> value of
MustProvideSellerSKU for the item. To get complete labeling requirement
information (in addition to item preparation instructions) to help you
prepare items for shipment to <span class="ph">Amazon's fulfillment
network</span>, use the
[<span class="keyword apiname">GetPrepInstructionsForSKU</span>](FBAInbound_GetPrepInstructionsForSKU.html "Returns labeling requirements and item preparation instructions to help you prepare items for an inbound shipment.")
operation.

</div>

</div>

</div>

<div class="section">

### Availability

This operation is available in all marketplaces except Brazil.

</div>

<div class="section">

### Throttling

The <span class="keyword apiname">GetPrepInstructionsForASIN</span>
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
<span class="ph">Amazon MWS Developer Guide</span>.</span>

</div>

<div class="tablenoborder">

<table>
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
<td><span class="keyword parmname">ASINList</span></td>
<td>A list of <span class="keyword parmname">ASIN</span> values. Used to identify items for which you want item preparation instructions to help with item sourcing decisions.</td>
<td>Yes</td>
<td>Maximum: 50 <span class="keyword parmname">ASIN</span> values
<div class="note note">
<span class="notetitle">Note:</span> ASINs must be included in the product catalog for at least one of the marketplaces that you participate in. Any ASIN that is not included in the product catalog for at least one of the marketplaces that you participate in is returned in the <span class="keyword parmname">InvalidASINList</span> response element. You can use the Amazon Sellers API section to find out which marketplaces you participate in. For more information, see <a href="../sellers/Sellers_Overview.html" class="xref">What you should know about the Amazon MWS Sellers API Section</a> in the <span class="ph">Sellers API section</span> reference.
</div>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">ShipToCountryCode</span></td>
<td>The country code of the country the items will be shipped to. Note that item preparation instructions can vary by country.</td>
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
<td><span class="keyword parmname">ASINPrepInstructionsList</span></td>
<td><span class="ph">Item preparation instructions to help with item sourcing decisions.</span>
<p>Type: List of <a href="FBAInbound_Datatypes.html#ASINPrepInstructions" class="xref" title="Item preparation instructions to help with item sourcing decisions.">ASINPrepInstructions</a></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">InvalidASINList</span></td>
<td>A list of invalid <span class="keyword parmname">ASIN</span> values and the reasons they are invalid.
<p>Type: List of <a href="FBAInbound_Datatypes.html#InvalidASIN" class="xref" title="An invalid ASIN and the reason it is invalid.">InvalidASIN</a></p></td>
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
  ?AWSAccessKeyId=AKIAJGUEXAMPLEE2NVUA
  &Action=GetPrepInstructionsForASIN
  &MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
  &SellerId=A2NKEXAMPLEF53
  &SignatureVersion=2
  &Timestamp=2014-07-18T22%3A52%3A25Z
  &Version=2010-10-01
  &Signature=ZRA9DR5rveSuz%2F1D18AHvoipg2BAev8yblPQ1BbEbfU%3D
  &SignatureMethod=HmacSHA256
  &ASINList.Id.1=B00005N5PF
  &ASINList.Id.2=B0INVALIDF
  &ShipToCountryCode=US
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
<GetPrepInstructionsForASINResponse xmlns="http://mws.amazonaws.com/FulfillmentInboundShipment/2010-10-01/">
    <GetPrepInstructionsForASINResult>
        <ASINPrepInstructionsList>
            <ASINPrepInstructions>
                <ASIN>B00005N5PF</ASIN>
                <BarcodeInstruction>RequiresFNSKULabel</BarcodeInstruction>
                <PrepGuidance>SeePrepInstructionsList</PrepGuidance>
                <PrepInstructionList>
                    <PrepInstruction>Polybagging</PrepInstruction>
                    <PrepInstruction>Taping</PrepInstruction>
                </PrepInstructionList>
            </ASINPrepInstructions>
        </ASINPrepInstructionsList>
        <InvalidASINList>
            <InvalidASIN>
                <ASIN>B0INVALIDF</ASIN>
                <ErrorReason>InvalidASIN</ErrorReason>
            </InvalidASIN>
        </InvalidASINList>
    </GetPrepInstructionsForASINResult>
    <ResponseMetadata>
        <RequestId>171a23ca-12f9-4599-bbdf-47bc5701d955</RequestId>
    </ResponseMetadata>
</GetPrepInstructionsForASINResponse>
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

[GetPrepInstructionsForSKU](FBAInbound_GetPrepInstructionsForSKU.html "Returns labeling requirements and item preparation instructions to help you prepare items for an inbound shipment.")

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
