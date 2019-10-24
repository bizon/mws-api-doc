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

<div id="FBAInbound_GetInboundGuidanceForASIN" class="nested0">

# <span id="Operation" class="ph">GetInboundGuidanceForASIN</span>

<div class="body">

<span class="ph">Returns inbound guidance for a list of items by
ASIN.</span>

</div>

<div id="Description" class="topic concept nested1">

## Description

<div class="body conbody">

The
<span id="Description__apiname_operation" class="keyword apiname">GetInboundGuidanceForASIN</span>
operation lets a seller know if Amazon recommends sending a product to a
given marketplace. In some cases, Amazon provides guidance for why a
given ASIN is not recommended for shipment to <span class="ph">Amazon's
fulfillment network</span>.

Sellers may still ship items that are not recommended, at their
discretion.

<div class="section">

### Availability

This operation is available in all marketplaces except
Brazil.

</div>

<div class="section">

### Throttling

<div class="p">

<div class="tablenoborder">

| Maximum request quota | Restore rate            | Hourly request quota  |
| --------------------- | ----------------------- | --------------------- |
| 200 requests          | 200 requests per second | 500 requests per hour |

</div>

<span class="ph">For definitions of throttling terminology and for a
complete explanation of throttling, see [Throttling: Limits to how often
you can submit requests](../dev_guide/DG_Throttling.html) in the
<span class="ph">Amazon MWS Developer Guide</span>.</span>

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
<td>A list of <span class="keyword parmname">ASIN</span> values. Used to identify items for which you want inbound guidance for shipment to <span class="ph">Amazon's fulfillment network</span>.</td>
<td>Yes</td>
<td>Maximum: 50 <span class="keyword parmname">ASIN</span> values.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">MarketplaceId</span></td>
<td>A marketplace identifier. Specifies the marketplace where the product would be stored.</td>
<td>Yes</td>
<td><span class="ph">For a list of <span class="keyword parmname">MarketplaceId</span> values, see <a href="../dev_guide/DG_Endpoints.html" class="xref">Amazon MWS endpoints and MarketplaceId values</a> in the <span class="ph">Amazon MWS Developer Guide</span>.</span>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
</tbody>
</table>

</div>

<div class="section">

### Notes

1.  If you specify a <span class="keyword parmname">ASIN</span> that
    identifies a variation parent ASIN, this operation returns the
    <span class="keyword parmname">InvalidParamaterValue</span> error. A
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
unsuccessful, the main response element is
<span class="keyword apiname">ErrorResponse</span>. For more
information, see [Response format](../dev_guide/DG_ResponseFormat.html)
in the <span class="ph">Amazon MWS Developer Guide</span>.</span>

The top-level elements returned by the
<span class="keyword apiname">GetInboundGuidanceForASIN</span> operation
are:

</div>

<div class="section">

### <span class="ph">GetInboundGuidanceForASIN</span> Elements

<div class="tablenoborder">

| Name                                                          | Description                                            | Required | Values                                                                                                                                                                         |
| ------------------------------------------------------------- | ------------------------------------------------------ | -------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| <span class="keyword parmname">ASINInboundGuidanceList</span> | A list of ASINs and their associated inbound guidance. | Yes      | Type: List of [ASINInboundGuidance](FBAInbound_Datatypes.html#ASINInboundGuidance "Reasons why a given ASIN is not recommended for shipment to Amazon's fulfillment network.") |
| <span class="keyword parmname">InvalidASINList</span>         | A list of ASINs that were not found.                   | No       | <span class="ph">Type: List of xs:string</span>                                                                                                                                |

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
see [Required request
parameters](../dev_guide/DG_RequiredRequestParameters.html).</span>

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre codeblock
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

[↑ Top](#Examples)

</div>

</div>

<div class="section">

### Example response (Success)

<span class="ph">For information about standard response formatting, see
[Response format](../dev_guide/DG_ResponseFormat.html).</span>

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre codeblock
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
