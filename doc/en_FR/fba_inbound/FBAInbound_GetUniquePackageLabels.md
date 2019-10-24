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

<div id="FBAInbound_GetUniquePackageLabels" class="nested0">

# GetUniquePackageLabels

<div class="body">

<span class="ph">Returns unique package labels for faster and more
accurate shipment processing at the <span class="ph">Amazon fulfillment
center</span>.</span>

</div>

<div id="Description" class="topic concept nested1">

## Description

<div class="body conbody">

<div class="section">

The <span class="keyword apiname">GetUniquePackageLabels</span>
operation returns PDF document data for printing unique shipping labels
and carrier labels for an inbound shipment. <span class="ph">For
information about extracting PDF document data, see [Extracting PDF
Document Data](FBAInbound_ExtractingPdfDocumentData.html).</span>

Use this operation to get unique shipping labels for the packages in all
types of inbound shipments: <span class="ph">Small Parcel</span>,
<span class="ph">Less Than Truckload/Full Truckload (LTL/FTL)</span>,
Amazon-partnered, or non-Amazon-partnered shipments. For
Amazon-partnered, <span class="ph">Small Parcel</span> shipments, this
operation returns carrier labels in addition to shipping labels.

The language of the address section of a shipping label is determined by
the <span class="keyword parmname">ShipFromAddress</span> value for the
shipment, which was specified with a previous call to the
<span class="keyword apiname">CreateInboundShipmentPlan</span>
operation. The language of the FC Prep instructions (if applicable) is
determined by the marketplace of the <span class="ph">Amazon fulfillment
center</span> receiving the shipment.

</div>

<div id="Description__ProvidingCartonContentInfo" class="section">

### Providing carton contents information

Before calling the
<span class="keyword apiname">GetUniquePackageLabels</span> operation,
use the [Feeds API section](../feeds/Feeds_Overview.html) to submit the
FBA Inbound Shipment Carton Information Feed
(\_POST\_FBA\_INBOUND\_CARTON\_CONTENTS\_). This provides information to
Amazon about the carton contents of your inbound shipment, which enables
faster and more accurate processing of your shipment at the
<span class="ph">Amazon fulfillment center</span>. You must submit this
feed before calling the
<span class="keyword apiname">GetUniquePackageLabels</span> operation,
otherwise the operation returns the
<span class="keyword parmname">NoPackageContentInformation</span> error.
For more information, see the following links:

**Amazon-partnered shipments**

  - [Submit carton content
    information](../fba_guide/FBAGuide_UsingAmazonCarrierToShip.html#SubmitCartonContentsFeed)
  - [Request package labels for your inbound
    shipment](../fba_guide/FBAGuide_UsingAmazonCarrierToShip.html#RequestTransportDocs)

**Non-Amazon-partnered shipments**

  - [Submit carton content
    information](../fba_guide/FBAGuide_SubmitCartonContentsFeed.html)
  - [Request shipping labels for your inbound
    shipment](../fba_guide/FBAGuide_RequestTransportDocs.html)

</div>

<div class="section">

### Availability

This operation is available in all marketplaces except Brazil.

</div>

<div class="section">

### Throttling

The <span class="keyword apiname">GetUniquePackageLabels</span>
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
<td><span class="keyword parmname">ShipmentId</span></td>
<td><span class="ph">A shipment identifier originally returned by the <span class="keyword apiname">CreateInboundShipmentPlan</span> operation.</span></td>
<td>Yes</td>
<td>Must match a <span class="keyword parmname">ShipmentId</span> value previously passed using the FBA Inbound Shipment Carton Information Feed. If not, the operation returns the <span class="keyword parmname">NoPackageContentInformation</span> error. For more information, see <a href="../fba_inbound/FBAInbound_GetUniquePackageLabels.html#ProvidingCartonContentInfo" class="xref">Providing carton contents information</a>.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">PageType</span></td>
<td>The page type that you want to print the labels on.</td>
<td>Yes</td>
<td><span class="keyword parmname">PageType</span> values:
<ul>
<li>PackageLabel_Letter_2 - Two labels per US Letter label sheet. This is the only valid value for Amazon-partnered shipments in the US that use UPS as the carrier. Supported in Canada and the US.</li>
<li>PackageLabel_Letter_6 - Six labels per US Letter label sheet. This is the only valid value for non-Amazon-partnered shipments in the US. Supported in Canada and the US.</li>
<li>PackageLabel_A4_2 - Two labels per A4 label sheet. Supported in France, Germany, Italy, Spain, and the UK.</li>
<li>PackageLabel_A4_4 - Four labels per A4 label sheet. Supported in France, Germany, Italy, Spain, and the UK.</li>
<li>PackageLabel_Plain_Paper. One label per sheet of US Letter paper. Only for non-Amazon-partnered shipments. Supported in all marketplaces.</li>
</ul>
<p>Submitting a <span class="keyword parmname">PageType</span> value that is not supported in your marketplace returns an error.</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">PackageLabelsToPrint</span></td>
<td>A list of identifiers that specify for which packages you want package labels printed.</td>
<td>Yes</td>
<td>Must match <span class="keyword parmname">CartonId</span> values previously passed using the FBA Inbound Shipment Carton Information Feed. If not, the operation returns the <span class="keyword parmname">IncorrectPackageIdentifier</span> error code. For more information, see <a href="#Description__ProvidingCartonContentInfo" class="xref">Providing carton contents information</a>.
<p>Maximum: 999</p>
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
<td><span class="keyword parmname">TransportDocument</span></td>
<td>PDF document data and checksum.
<p>Type: <a href="FBAInbound_Datatypes.html#TransportContent" class="xref" title="Inbound shipment information, including carrier details, shipment status, and the workflow status for a request for shipment with an Amazon-partnered carrier.">TransportContent</a></p></td>
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
  &Action=GetUniquePackageLabels
  &MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
  &SellerId=A13EXAMPLE1J56
  &SignatureVersion=2
  &Timestamp=2015-08-10T00%3A25%3A41Z
  &Version=2010-10-01
  &SignatureMethod=HmacSHA256
  &ShipmentId=FBAQFGQZ
  &PageType=PackageLabel_Letter_6
  &PackageLabelsToPrint.member.1=CartonA 
  &PackageLabelsToPrint.member.2=CartonB
  &PackageLabelsToPrint.member.3=CartonD
  &PackageLabelsToPrint.member.4=CartonE
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
<GetUniquePackageLabelsResponse 
    xmlns="http://mws.amazonaws.com/FulfillmentInboundShipment/2010-10-01/">
    <GetUniquePackageLabelsResult>
        <TransportDocument>
            <PdfDocument>ABEAAAAAAlbHMucGRmUEsFBgAAAAABAAEAPwAAALQXAQAAAA==
            </PdfDocument>
            <Checksum>WGQwqA+NlzMVL1plHc/7ZA==</Checksum>
        </TransportDocument>
    </GetUniquePackageLabelsResult>
    <ResponseMetadata>
        <RequestId>985a3fa9-3ce2-46fb-a1c7-321439269d2b</RequestId>
    </ResponseMetadata>
</GetUniquePackageLabelsResponse>
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

[GetPalletLabels](../fba_inbound/FBAInbound_GetPalletLabels.html)

[GetBillOfLading](../fba_inbound/FBAInbound_GetBillOfLading.html)

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
