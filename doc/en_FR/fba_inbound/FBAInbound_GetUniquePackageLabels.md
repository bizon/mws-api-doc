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
information about extracting PDF document data, see
<a href="FBAInbound_ExtractingPdfDocumentData.md" class="xref">Extracting PDF Document Data</a>.</span>

Use this operation to get unique shipping labels for the packages in all
types of inbound shipments: <span class="ph">Small Parcel</span>, <span
class="ph">Less Than Truckload/Full Truckload (LTL/FTL)</span>,
Amazon-partnered, or non-Amazon-partnered shipments. For
Amazon-partnered, <span class="ph">Small Parcel</span> shipments, this
operation returns carrier labels in addition to shipping labels.

The language of the address section of a shipping label is determined by
the <span class="keyword parmname">ShipFromAddress</span> value for the
shipment, which was specified with a previous call to the <span
class="keyword apiname">CreateInboundShipmentPlan</span> operation. The
language of the FC Prep instructions (if applicable) is determined by
the marketplace of the <span class="ph">Amazon fulfillment center</span>
receiving the shipment.

</div>

<div id="Description__ProvidingCartonContentInfo" class="section">

### Providing carton contents information

Before calling the <span
class="keyword apiname">GetUniquePackageLabels</span> operation, use the
<a href="../feeds/Feeds_Overview.md" class="xref">Feeds API section</a>
to submit the FBA Inbound Shipment Carton Information Feed
(\_POST_FBA_INBOUND_CARTON_CONTENTS\_). This provides information to
Amazon about the carton contents of your inbound shipment, which enables
faster and more accurate processing of your shipment at the <span
class="ph">Amazon fulfillment center</span>. You must submit this feed
before calling the <span
class="keyword apiname">GetUniquePackageLabels</span> operation,
otherwise the operation returns the <span
class="keyword parmname">NoPackageContentInformation</span> error. For
more information, see the following links:

**Amazon-partnered shipments**

-   <a href="../fba_guide/FBAGuide_UsingAmazonCarrierToShip.md#SubmitCartonContentsFeed" class="xref">Submit carton content information</a>
-   <a href="../fba_guide/FBAGuide_UsingAmazonCarrierToShip.md#RequestTransportDocs" class="xref">Request package labels for your inbound shipment</a>

**Non-Amazon-partnered shipments**

-   <a href="../fba_guide/FBAGuide_SubmitCartonContentsFeed.md" class="xref">Submit carton content information</a>
-   <a href="../fba_guide/FBAGuide_RequestTransportDocs.md" class="xref">Request shipping labels for your inbound shipment</a>

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
<a href="../dev_guide/DG_Throttling.md" class="xref">Throttling: Limits to how often you can submit requests</a>
in the <span class="ph">Amazon MWS Developer Guide</span>.</span>

</div>

</div>

</div>

<div id="RequestParameters" class="topic reference nested1">

## Request parameters

<div class="body refbody">

<div class="section">

<span class="ph">For more information about the request parameters that
are required for all <span class="ph">Amazon MWS</span> operations, see
<a href="../dev_guide/DG_RequiredRequestParameters.md" class="xref">Required request parameters</a>
in the <span class="ph">Amazon MWS Developer Guide</span>.</span>

</div>

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
<th id="d71079e236" class="entry" data-valign="top" width="23.015873015873016%">Name</th>
<th id="d71079e239" class="entry" data-valign="top" width="28.571428571428577%">Description</th>
<th id="d71079e242" class="entry" data-valign="top" width="19.841269841269845%">Required</th>
<th id="d71079e245" class="entry" data-valign="top" width="28.571428571428577%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="23.015873015873016%" headers="d71079e236 "><span class="keyword parmname">ShipmentId</span></td>
<td class="entry" data-valign="top" width="28.571428571428577%" headers="d71079e239 "><span class="ph">A shipment identifier originally returned by the <span class="keyword apiname">CreateInboundShipmentPlan</span> operation.</span></td>
<td class="entry" data-valign="top" width="19.841269841269845%" headers="d71079e242 ">Yes</td>
<td class="entry" data-valign="top" width="28.571428571428577%" headers="d71079e245 ">Must match a <span class="keyword parmname">ShipmentId</span> value previously passed using the FBA Inbound Shipment Carton Information Feed. If not, the operation returns the <span class="keyword parmname">NoPackageContentInformation</span> error. For more information, see <a href="../fba_inbound/FBAInbound_GetUniquePackageLabels.md#ProvidingCartonContentInfo" class="xref">Providing carton contents information</a>.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="23.015873015873016%" headers="d71079e236 "><span class="keyword parmname">PageType</span></td>
<td class="entry" data-valign="top" width="28.571428571428577%" headers="d71079e239 ">The page type that you want to print the labels on.</td>
<td class="entry" data-valign="top" width="19.841269841269845%" headers="d71079e242 ">Yes</td>
<td class="entry" data-valign="top" width="28.571428571428577%" headers="d71079e245 "><span class="keyword parmname">PageType</span> values:
<ul>
<li><var class="keyword varname">PackageLabel_Letter_2</var> - Two labels per US Letter label sheet. This is the only valid value for Amazon-partnered shipments in the US that use UPS as the carrier. Supported in Canada and the US.</li>
<li><var class="keyword varname">PackageLabel_Letter_6</var> - Six labels per US Letter label sheet. This is the only valid value for non-Amazon-partnered shipments in the US. Supported in Canada and the US.</li>
<li><var class="keyword varname">PackageLabel_A4_2</var> - Two labels per A4 label sheet. Supported in France, Germany, Italy, Spain, and the UK.</li>
<li><var class="keyword varname">PackageLabel_A4_4</var> - Four labels per A4 label sheet. Supported in France, Germany, Italy, Spain, and the UK.</li>
<li><var class="keyword varname">PackageLabel_Plain_Paper</var>. One label per sheet of US Letter paper. Only for non-Amazon-partnered shipments. Supported in all marketplaces.</li>
</ul>
<p>Submitting a <span class="keyword parmname">PageType</span> value that is not supported in your marketplace returns an error.</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="23.015873015873016%" headers="d71079e236 "><span class="keyword parmname">PackageLabelsToPrint</span></td>
<td class="entry" data-valign="top" width="28.571428571428577%" headers="d71079e239 ">A list of identifiers that specify for which packages you want package labels printed.</td>
<td class="entry" data-valign="top" width="19.841269841269845%" headers="d71079e242 ">Yes</td>
<td class="entry" data-valign="top" width="28.571428571428577%" headers="d71079e245 ">Must match <span class="keyword parmname">CartonId</span> values previously passed using the FBA Inbound Shipment Carton Information Feed. If not, the operation returns the <span class="keyword parmname">IncorrectPackageIdentifier</span> error code. For more information, see <a href="#Description__ProvidingCartonContentInfo" class="xref">Providing carton contents information</a>.
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

<table id="ResponseElements__ResponseElementsTable" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d71079e404" class="entry" data-valign="top" width="29.585798816568047%">Name</th>
<th id="d71079e407" class="entry" data-valign="top" width="70.41420118343196%">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="29.585798816568047%" headers="d71079e404 "><span class="keyword parmname">TransportDocument</span></td>
<td class="entry" data-valign="top" width="70.41420118343196%" headers="d71079e407 ">PDF document data and checksum.
<p>Type: <a href="FBAInbound_Datatypes.md#TransportContent" class="xref" title="Inbound shipment information, including carrier details, shipment status, and the workflow status for a request for shipment with an Amazon-partnered carrier.">TransportContent</a></p></td>
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

<a href="#Examples" class="xref">↑ Top</a>

</div>

</div>

</div>

</div>

<div id="RelatedTopics" class="topic nested1">

## Related topics

<div class="body">

<a href="../fba_inbound/FBAInbound_Overview.md" class="xref">Fulfillment Inbound Shipment API</a>

<a href="../fba_inbound/FBAInbound_GetPalletLabels.md" class="xref">GetPalletLabels</a>

<a href="../fba_inbound/FBAInbound_GetBillOfLading.md" class="xref">GetBillOfLading</a>

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
