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

<div id="EasyShip_CreateScheduledPackage" class="nested0">

# CreateScheduledPackage

<div id="Description" class="topic concept nested1">

## Description

<div class="body conbody">

Calling the <span class="keyword apiname">CreateScheduledPackage</span>
operation does the following:

  - Schedules an <span class="ph">Amazon Easy Ship</span> package pickup
    slot. This is a window of time when the seller can expect their
    package to be picked up for delivery to the buyer.
  - Marks the <span class="ph">Amazon Easy Ship</span> order status as
    WaitingForPickup. You can check the status of
    <span class="ph">Amazon Easy Ship</span> orders by calling the
    [ListOrders](../orders-2013-09-01/Orders_ListOrders.html) operation
    of the Orders API section and examining the
    <span class="keyword parmname">EasyShipShipmentStatus</span>
    response element.
  - Generates a shipping label and an invoice. Calling
    <span class="keyword apiname">CreateScheduledPackage</span> also
    generates a warranty document if you specify a
    <span class="keyword parmname">SerialNumber</span> value. To get
    these documents, see [How to get invoice, shipping label, and
    warranty documents](../easy_ship/EasyShip_HowToGetEasyShipDocs.html)

<div class="section">

### Availability

This operation is available only in the India marketplace.

</div>

<div class="section">

### Throttling

<div class="p">

<div class="tablenoborder">

| Maximum request quota | Restore rate             |
| --------------------- | ------------------------ |
| 15 requests           | 15 requests every minute |

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
<span class="ph">[Required request
parameters](../dev_guide/DG_RequiredRequestParameters.html)</span> in
the <span class="ph">Amazon MWS Developer
Guide</span>.</span>

<div class="tablenoborder">

| Name                                                        | Description                                                                                                                                                       | Required | Values                                                                                                               |
| ----------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------- | -------------------------------------------------------------------------------------------------------------------- |
| <span class="keyword parmname">AmazonOrderId</span>         | <span class="ph">An Amazon-defined order identifier. Identifies the order that the seller wants to deliver using <span class="ph">Amazon Easy Ship</span>.</span> | Yes      | <span class="ph">Type: xs:string</span>                                                                              |
| <span class="keyword parmname">MarketplaceId</span>         | The marketplace that the seller is selling in.                                                                                                                    | Yes      | <span class="ph">Type: xs:string</span>                                                                              |
| <span class="keyword parmname">PackageRequestDetails</span> | The package information required for creating the scheduled package                                                                                               | Yes      | Type: [PackageRequestDetails](EasyShip_Datatypes.html#PackageRequestDetails "Information for scheduling a package.") |

</div>

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
<td><span class="keyword parmname">ScheduledPackage</span></td>
<td>Information about the scheduled package.
<p>Type: <a href="EasyShip_Datatypes.html#Package" class="xref" title="Information about a scheduled package.">Package</a></p></td>
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
https://mws.amazonservices.in/EasyShip/2018-09-01
  ?AWSAccessKeyId=0PB842EXAMPLE7N4ZTR2
  &Action=CreateScheduledPackage
  &MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
  &SellerId=A1XEXAMPLE5E6
  &Signature=ZQLpf8vEXAMPLE0iC265pf18n0%3D
  &SignatureVersion=2
  &SignatureMethod=HmacSHA256
  &Timestamp=2018-11-05T18%3A12%3A21
  &Version=2018-09-01
  &AmazonOrderId=903-1713775-3598252
  &MarketplaceId=A21TJRUUN4KGV
  &PackageRequestDetails.PackageDimensions.Length=12.00
  &PackageRequestDetails.PackageDimensions.Width=12.00
  &PackageRequestDetails.PackageDimensions.Height=12.00
  &PackageRequestDetails.PackageDimensions.Unit=cm
  &PackageRequestDetails.PackageWeight.Unit=23.00
  &PackageRequestDetails.PackageWeight.Value=g
  &PackageRequestDetails.PackagePickupSlot.SlotId=Xyt123bbdg=
  &PackageRequestDetails.PackagePickupSlot.PickupTimeStart=2018-02-21T07:30:00.00Z
  &PackageRequestDetails.PackagePickupSlot.PickupTimeEnd=2018-02-21T10:30:00.00Z
  &PackageRequestDetails.PackageIdentifier=Package1
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
<CreateScheduledPackageResponse xmlns="http://mws.amazonaws.in/EasyShip/2018-09-01">
    <CreateScheduledPackageResult>
        <ScheduledPackage>
            <ScheduledPackageId>
                <AmazonOrderId>903-1713775-3598252</AmazonOrderId>
                <PackageId>1ab0f06a-9149-87e0-aba9-7098117872d6</PackageId>
            </ScheduledPackageId>
            <PackageDimensions>
                <Length>12.00</Length>
                <Width>12.00</Width>
                <Height>12.00</Height>
                <Unit>cm</Unit>
            </PackageDimensions>
            <PackageWeight>
                <Unit>g</Unit>
                <Value>23.00</Value>
            </PackageWeight>
            <PackagePickupSlot>
                <SlotId>Xyt123bbdg=</SlotId>
                <PickupTimeStart>2018-02-19T14:00:00.50+05:30</PickupTimeStart>
                <PickupTimeEnd>2018-02-19T16:00:00.50+05:30</PickupTimeEnd>
            </PackagePickupSlot>
            <PackageStatus>ReadyForPickup</PackageStatus>
        </ScheduledPackage>
    </CreateScheduledPackageResult>
    <ResponseMetadata>
        <RequestId>adb18f0d-2076-48d4-99ef-fb4b9f892a4e</RequestId>
    </ResponseMetadata>
</CreateScheduledPackageResponse>
```

[↑ Top](#Examples)

</div>

</div>

</div>

</div>

<div id="RelatedTopics" class="topic nested1">

## Related topics

<div class="body">

[What you should know about the Easy Ship API
section](EasyShip_Overview.html)

[ListPickupSlots](EasyShip_ListPickupSlots.html)

[How to handle order items that require serial
numbers](EasyShip_HowToHandleSerialNumbers.html)

[How to get invoice, shipping label, and warranty
documents](../easy_ship/EasyShip_HowToGetEasyShipDocs.html)

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
