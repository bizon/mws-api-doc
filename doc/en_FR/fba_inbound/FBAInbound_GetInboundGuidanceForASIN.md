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

<div id="FBAInbound_GetInboundGuidanceForASIN" class="nested0">

# <span id="Operation" class="ph">GetInboundGuidanceForASIN</span>

<div class="body">

<span class="ph">Returns inbound guidance for a list of items by
ASIN.</span>

</div>

<div id="Description" class="topic concept nested1">

## Description

<div class="body conbody">

The <span id="Description__apiname_operation"
class="keyword apiname">GetInboundGuidanceForASIN</span> operation lets
a seller know if Amazon recommends sending a product to a given
marketplace. In some cases, Amazon provides guidance for why a given
ASIN is not recommended for shipment to <span class="ph">Amazon's
fulfillment network</span>.

Sellers may still ship items that are not recommended, at their
discretion.

<div class="section">

### Availability

This operation is available in all marketplaces except Brazil.

</div>

<div class="section">

### Throttling

<div class="p">

<div class="tablenoborder">

| Maximum request quota | Restore rate            | Hourly request quota  |
|-----------------------|-------------------------|-----------------------|
| 200 requests          | 200 requests per second | 500 requests per hour |

</div>

<span class="ph">For definitions of throttling terminology and for a
complete explanation of throttling, see
<a href="../dev_guide/DG_Throttling.md" class="xref">Throttling: Limits to how often you can submit requests</a>
in the <span class="ph">Amazon MWS Developer Guide</span>.</span>

</div>

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

<table class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d64029e183" class="entry" data-valign="top" width="34.18367346938776%">Name</th>
<th id="d64029e186" class="entry" data-valign="top" width="25.510204081632654%">Description</th>
<th id="d64029e189" class="entry" data-valign="top" width="12.755102040816327%">Required</th>
<th id="d64029e192" class="entry" data-valign="top" width="27.551020408163268%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d64029e183 "><span class="keyword parmname">ASINList</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d64029e186 ">A list of <span class="keyword parmname">ASIN</span> values. Used to identify items for which you want inbound guidance for shipment to <span class="ph">Amazon's fulfillment network</span>.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d64029e189 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d64029e192 ">Maximum: 50 <span class="keyword parmname">ASIN</span> values.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d64029e183 "><span class="keyword parmname">MarketplaceId</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d64029e186 ">A marketplace identifier. Specifies the marketplace where the product would be stored.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d64029e189 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d64029e192 "><span class="ph">For a list of <span class="keyword parmname">MarketplaceId</span> values, see <a href="../dev_guide/DG_Endpoints.md" class="xref">Amazon MWS endpoints and MarketplaceId values</a> in the <span class="ph">Amazon MWS Developer Guide</span>.</span>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
</tbody>
</table>

</div>

<div class="section">

### Notes

1.  If you specify a <span class="keyword parmname">ASIN</span> that
    identifies a variation parent ASIN, this operation returns the <span
    class="keyword parmname">InvalidParamaterValue</span> error. A
    variation parent ASIN represents a generic product that cannot be
    sold. Variation child ASINs represent products that have specific
    characteristics (such as size and color) and can be sold.

</div>

</div>

</div>

<div id="ResponseElements" class="topic reference nested1">

## Response elements

<div class="body refbody">

<div class="section">

<span class="ph">Amazon MWS returns an XML file that contains the
response to a successful request or subscription. If the request is
unsuccessful, the main response element is <span
class="keyword apiname">ErrorResponse</span>. For more information, see
<a href="../dev_guide/DG_ResponseFormat.md" class="xref">Response format</a>
in the <span class="ph">Amazon MWS Developer Guide</span>.</span>

The top-level elements returned by the <span
class="keyword apiname">GetInboundGuidanceForASIN</span> operation are:

</div>

<div class="section">

### <span class="ph">GetInboundGuidanceForASIN</span> Elements

<div class="tablenoborder">

| Name                                                          | Description                                            | Required | Values                                                                                                                                                                                                           |
|---------------------------------------------------------------|--------------------------------------------------------|----------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| <span class="keyword parmname">ASINInboundGuidanceList</span> | A list of ASINs and their associated inbound guidance. | Yes      | Type: List of <a href="FBAInbound_Datatypes.md#ASINInboundGuidance" class="xref" title="Reasons why a given ASIN is not recommended for shipment to Amazon&#39;s fulfillment network.">ASINInboundGuidance</a> |
| <span class="keyword parmname">InvalidASINList</span>         | A list of ASINs that were not found.                   | No       | <span class="ph">Type: List of xs:string</span>                                                                                                                                                                  |

</div>

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
https://mws.amazonservices.com/FulfillmentInboundShipment/2010-10-01
?AWSAccessKeyId=0PB842EXAMPLE7N4ZTR2
  &Action=GetInboundGuidanceForASIN
  &MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
  &SellerId=A1XEXAMPLE5E6
  &Signature=ZQLpf8vEXAMPLE0iC265pf18n0%3D
  &SignatureVersion=2
  &SignatureMethod=HmacSHA256
  &Timestamp=2016-09-26T18%3A12%3A21
  &Version=2010-10-01
  &ASINList.Id.1=B00005N5PF
  &MarketplaceId=ATVPDKIKX0DER
```

<a href="#Examples" class="xref">↑ Top</a>

</div>

</div>

<div class="section">

### Example response (Success)

<span class="ph">For information about standard response formatting, see
<a href="../dev_guide/DG_ResponseFormat.md" class="xref">Response format</a>.</span>

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre
<?xml version="1.0"?>
<GetInboundGuidanceForASINResponse 
  xmlns="https://mws.amazonservices.com/FulfillmentInboundShipment/2010-10-01">
  <GetInboundGuidanceForASINResult>
    <ASINInboundGuidanceList>
      <ASIN>B00005N5PF</ASIN>
      <InboundGuidance>InboundNotRecommended</InboundGuidance>
      <GuidanceReasonList>
        <GuidanceReason>SlowMovingASIN</GuidanceReason>
      </GuidanceReasonList>
    </ASINInboundGuidanceList>
    <InvalidASINList></InvalidASINList>
  </GetInboundGuidanceForASINResult>  
  <ResponseMetadata>
    <RequestId>d80c6c7b-f7c7-4fa7-bdd7-854711cb3bcc</RequestId>
  </ResponseMetadata>
</GetInboundGuidanceForASINResponse>
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
