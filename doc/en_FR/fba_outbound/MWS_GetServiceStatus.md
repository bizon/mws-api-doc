<div id="MWSDX_noscript">

JavaScript is currently disabled in your browser.  
To use the Amazon MWS documentation, you must enable JavaScript in your
browser.

</div>

<div id="MWSDX_divtop">

[![Amazon
Services](https://images-na.ssl-images-amazon.com/images/G/08/mwsportal/fr_FR/amazonservices.gif "Amazon Services")](http://services.amazon.fr)  
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

<div id="MWS_GetServiceStatus" class="nested0">

GetServiceStatus
================

<div class="body">

<span class="ph">Returns the operational status of the <span
class="ph">Fulfillment Outbound Shipment API section</span>.</span>

</div>

<div id="Description" class="topic concept nested1">

Description
-----------

<div class="body conbody">

The <span id="Description__GetServiceStatus"
class="keyword apiname">GetServiceStatus</span> operation returns the
operational status of the <span class="ph">Fulfillment Outbound Shipment
API section</span> of Amazon Marketplace Web Service. Status values are
`GREEN`, `YELLOW`, and `RED`.

<div class="section">

### Availability

This operation is available in all marketplaces except Brazil.

</div>

<div class="section">

### Throttling

<span class="ph">The <span
class="keyword apiname">GetServiceStatus</span> operation has a
**maximum request quota** of two and a **restore rate** of one request
every five minutes. </span> <span class="ph">For definitions of
throttling terminology and for a complete explanation of throttling, see
<a href="../dev_guide/DG_Throttling.md" class="xref">Throttling: Limits to how often you can submit requests</a>
in the <span class="ph">Amazon MWS Developer Guide</span>.</span>

</div>

</div>

</div>

<div id="RequestParameters" class="topic reference nested1">

Request parameters
------------------

<div class="body refbody">

<div class="section">

None

</div>

</div>

</div>

<div id="ResponseElements" class="topic reference nested1">

Response elements
-----------------

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
<td><span class="keyword parmname">Status</span></td>
<td>The following list shows possible values returned by the <span class="keyword apiname">GetServiceStatus</span> operation:
<dl>
<dt>GREEN</dt>
<dd>The service is operating normally.
</dd>
<dt>YELLOW</dt>
<dd>The service is experiencing higher than normal error rates or is operating with degraded performance. Additional information may be provided.
</dd>
<dt>RED</dt>
<dd>The service is unavailable or experiencing extremely high error rates. Additional information may be provided.
</dd>
</dl>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Timestamp</span></td>
<td>Indicates the time at which the operational status was evaluated.
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">MessageId</span></td>
<td>An Amazon-defined message identifier.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Messages</span></td>
<td>The parent element of one or more <span class="keyword parmname">Message</span> elements.</td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">Message</span></td>
<td>The operational status message.
<p>The parent element of the following child elements (both child elements are type: xs:string):</p>
<ul>
<li><span class="keyword parmname">Locale</span></li>
<li><span class="keyword parmname">Text</span></li>
</ul></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div id="Examples" class="topic reference nested1">

Examples
--------

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

    http://mws.amazonservices.com/FulfillmentOutboundShipment/2010-10-01/
      ?AWSAccessKeyId=0PB842EXAMPLE7N4ZTR2
      &Action=GetServiceStatus
      &MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
      &SellerId=A1XEXAMPLE5E6
      &Signature=ZQLpf8vEXAMPLE0iC265pf18n0%3D
      &SignatureVersion=2
      &SignatureMethod=HmacSHA256
      &Timestamp=2010-11-01T18%3A12%3A21.687Z
      &Version=2010-10-01

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

    <?xml version="1.0"?>
    <GetServiceStatusResponse xmlns="http://mws.amazonaws.com/FulfillmentOutboundShipment/2010-10-01/">
        <GetServiceStatusResult>
            <Status>GREEN</Status>
            <Timestamp>2010-11-01T21:38:09.676Z</Timestamp>
        </GetServiceStatusResult>
        <ResponseMetadata>
            <RequestId>d80c6c7b-f7c7-4fa7-bdd7-854711cb3bcc</RequestId>
        </ResponseMetadata>
    </GetServiceStatusResponse>

<a href="#Examples" class="xref">↑ Top</a>

</div>

</div>

</div>

</div>

<div id="RelatedTopics" class="topic nested1">

Related topics
--------------

<div class="body">

<a href="FBAOutbound_Overview.md" class="xref">What you should know about the Fulfillment Outbound Shipment API section</a>

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
