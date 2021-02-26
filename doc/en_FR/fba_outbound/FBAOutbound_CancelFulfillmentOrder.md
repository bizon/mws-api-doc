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

<div id="FBAOutbound_CancelFulfillmentOrder" class="nested0">

CancelFulfillmentOrder
======================

<div class="body">

<span class="ph">Requests that Amazon stop attempting to fulfill an
existing fulfillment order.</span>

</div>

<div id="Description" class="topic concept nested1">

Description
-----------

<div class="body conbody">

The <span class="keyword apiname">CancelFulfillmentOrder</span>
operation requests that Amazon stop attempting to ship the items in an
existing fulfillment order. Amazon attempts to stop shipment of items
that have not already shipped, but cannot guarantee success.

You can check the extent to which the cancellation of your fulfillment
order succeeded by submitting the <span
class="keyword apiname">GetFulfillmentOrder</span> operation. Submit the
same <span class="keyword parmname">SellerFulfillmentOrderId</span> that
you submitted with the <span
class="keyword apiname">CancelFulfillmentOrder</span> operation. The
<span class="keyword apiname">GetFulfillmentOrder</span> operation
returns the cancelled quantity for each item in the fulfillment order.

<div class="note note">

<span class="notetitle">Note:</span> You cannot cancel a fulfillment
order with a status of `Processing`, `Complete`, or
`CompletePartialled`.

</div>

<div class="section">

### Availability

This operation is available in all marketplaces except Brazil.

</div>

<div class="section">

### Throttling

The <span class="keyword apiname">CancelFulfillmentOrder</span>
operation has a **maximum request quota** of 30 and a **restore rate**
of two requests every second. <span class="ph">For definitions of
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
<td><span class="keyword parmname">SellerFulfillmentOrderId</span></td>
<td><span class="ph">The fulfillment order identifier that you created and submitted using the <span class="keyword apiname">CreateFulfillmentOrder</span> operation.</span></td>
<td>Yes</td>
<td>Maximum: 40 characters
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div id="ResponseElements" class="topic reference nested1">

Response elements
-----------------

<div class="body refbody">

<div class="section">

<span class="ph">This operation only returns the standard response
elements.</span>

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

    http://mws.amazonaws.com/FulfillmentOutboundShipment/2010-10-01/
      ?Action=CancelFulfillmentOrder
      &Version=2010-10-01
      &AWSAccessKeyId=AKIAJGUEXAMPLEE2NVUA
      &MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
      &SignatureVersion=2
      &SignatureMethod=HmacSHA256
      &Signature=ZRA9DR5rveSuz%2F1D18AHvoipg2BAev8yblPQ1BbEbfU%3D
      &Timestamp=2010-10-01T02:40:36Z
      &SellerId=A2NKEXAMPLEF53
      &SellerFulfillmentOrderId=six-test-order

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
    <CancelFulfillmentOrderResponse xmlns="http://mws.amazonaws.com/FulfillmentOutboundShipment/2010-10-01/">
        <ResponseMetadata>
            <RequestId>d95be26c-16cf-4bbc-ab58-dce89fd4ac53</RequestId>
        </ResponseMetadata>
    </CancelFulfillmentOrderResponse>

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

<a href="FBAOutbound_GetFulfillmentPreview.md" class="xref" title="Returns a list of fulfillment order previews based on shipping criteria that you specify.">GetFulfillmentPreview</a>

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
