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

<div id="EasyShip_ListPickupSlots" class="nested0">

ListPickupSlots
===============

<div id="Description" class="topic concept nested1">

Description
-----------

<div class="body conbody">

The <span class="keyword apiname">ListPickupSlots</span> operation
returns time slots for <span class="ph">Amazon Easy Ship</span> package
pickup, based on the package dimensions and package weight that the
seller specifies.

<div class="section">

### Availability

This operation is available only in the India marketplace.

</div>

<div class="section">

### Throttling

<div class="p">

<div class="tablenoborder">

| Maximum request quota | Restore rate             |
|-----------------------|--------------------------|
| 15 requests           | 15 requests every minute |

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

Request parameters
------------------

<div class="body refbody">

<div class="section">

<span class="ph">For more information about the request parameters that
are required for all <span class="ph">Amazon MWS</span> operations, see
<span
class="ph"><a href="../dev_guide/DG_RequiredRequestParameters.md" class="xref">Required request parameters</a></span>
in the <span class="ph">Amazon MWS Developer Guide</span>.</span>

<div class="tablenoborder">

| Name                                                    | Description                                                                                                                                                       | Required | Values                                                                                                                          |
|---------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------|---------------------------------------------------------------------------------------------------------------------------------|
| <span class="keyword parmname">MarketplaceId</span>     | The marketplace that the seller is selling in.                                                                                                                    | Yes      | <span class="ph">Type: xs:string</span>                                                                                         |
| <span class="keyword parmname">AmazonOrderId</span>     | <span class="ph">An Amazon-defined order identifier. Identifies the order that the seller wants to deliver using <span class="ph">Amazon Easy Ship</span>.</span> | Yes      | <span class="ph">Type: xs:string</span>                                                                                         |
| <span class="keyword parmname">PackageDimensions</span> | The package dimensions.                                                                                                                                           | Yes      | Type: <a href="EasyShip_Datatypes.md#Dimensions" class="xref" title="The dimensions of the scheduled package.">Dimensions</a> |
| <span class="keyword parmname">PackageWeight</span>     | The package weight.                                                                                                                                               | Yes      | Type: <a href="EasyShip_Datatypes.md#Weight" class="xref" title="The weight of the scheduled package.">Weight</a>             |

</div>

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
<td><span class="keyword parmname">AmazonOrderId</span></td>
<td>The <span class="keyword parmname">AmazonOrderId</span> that was passed in with the request.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">PickupSlotList</span></td>
<td>Type: List of <a href="EasyShip_Datatypes.md#PickupSlot" class="xref" title="Pickup slot ID and pickup time information.">PickupSlot</a></td>
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

    https://mws.amazonservices.in/EasyShip/2018-09-01
      ?AWSAccessKeyId=0PB842EXAMPLE7N4ZTR2
      &Action=ListPickupSlots
      &MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
      &SellerId=A1XEXAMPLE5E6
      &Signature=ZQLpf8vEXAMPLE0iC265pf18n0%3D
      &SignatureVersion=2
      &SignatureMethod=HmacSHA256
      &Timestamp=2018-11-05T18%3A12%3A21
      &Version=2018-09-01
      &AmazonOrderId=903-1713775-3598252
      &MarketplaceId=A21TJRUUN4KGV
      &PackageDimensions.Length=12.00
      &PackageDimensions.Width=12.00
      &PackageDimensions.Height=12.00
      &PackageDimensions.Unit=cm
      &PackageWeight.Unit=23.00
      &PackageWeight.Value=g

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
    <ListPickupSlotsResponse xmlns="http://mws.amazonaws.in/EasyShip/2018-09-01">
      <ListPickupSlotsResult>
        <AmazonOrderId>903-1713775-3598252</AmazonOrderId>
        <PickupSlotList>
          <PickupSlot>
            <SlotId>Xyt123bbdg=</SlotId>
            <PickupTimeStart>2018-11-05T14:00:00.50+05:30</PickupTimeStart>
            <PickupTimeEnd>2018-11-05T16:00:00.50+05:30</PickupTimeEnd>
          </PickupSlot>
          <PickupSlot>
            <SlotId>Byvjdhsdb=</SlotId>
            <PickupTimeStart>2018-11-05T10:00:00.50+05:30</PickupTimeStart>
            <PickupTimeEnd>2018-11-05T13:59:00.50+05:30</PickupTimeEnd>
          </PickupSlot>
        </PickupSlotList>
      </ListPickupSlotsResult>
      <ResponseMetadata>
        <RequestId>adb18f0d-2076-48d4-99ef-fb4b9f892a4e</RequestId>
      </ResponseMetadata>
    </ListPickupSlotsResponse>

<a href="#Examples" class="xref">↑ Top</a>

</div>

</div>

</div>

</div>

<div id="RelatedTopics" class="topic nested1">

Related topics
--------------

<div class="body">

<a href="EasyShip_Overview.md" class="xref">What you should know about the Easy Ship API section</a>

<a href="EasyShip_CreateScheduledPackage.md" class="xref">CreateScheduledPackage</a>

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
