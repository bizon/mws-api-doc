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

<div id="EasyShip_UpdateScheduledPackages" class="nested0">

# UpdateScheduledPackages

<div class="body">

</div>

<div id="Description" class="topic concept nested1">

## Description

<div class="body conbody">

The <span class="keyword apiname">UpdateScheduledPackages</span>
operation updates the pickup slot of an existing scheduled package. Pass
in the <span class="keyword parmname">ScheduledPackageId</span> value
for the scheduled package that the seller wants to change, along with a
new <span class="keyword parmname">SlotId</span> value for the desired
scheduled pickup slot. Get the new
<span class="keyword parmname">SlotId</span> value from a previous call
to the [ListPickupSlots](EasyShip_ListPickupSlots.html) operation.

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
| 10 requests           | 15 requests every minute |

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
the <span class="ph">Amazon MWS Developer Guide</span>.</span>

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
<td><span class="keyword parmname">MarketplaceId</span></td>
<td>The marketplace that the seller is selling in.</td>
<td>Yes</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">ScheduledPackageUpdateDetailsList</span></td>
<td>The scheduled packages to be updated.</td>
<td>Yes</td>
<td>List of <a href="EasyShip_Datatypes.html#ScheduledPackageUpdateDetails" class="xref" title="Information for updating a package.">ScheduledPackageUpdateDetails</a>
<div class="note note">
<span class="notetitle">Note:</span> Currently you can specify only one <span class="keyword parmname">ScheduledPackageUpdateDetails</span> element.
</div></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="ResponseElements" class="topic reference nested1">

## Response elements

<div class="body refbody">

<div class="tablenoborder">

| Name                                                       | Description                                                                                 |
| ---------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| <span class="keyword parmname">ScheduledPackageList</span> | List of [Package](EasyShip_Datatypes.html#Package "Information about a scheduled package.") |

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
  &Action=UpdateScheduledPackages
  &MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
  &SellerId=A1XEXAMPLE5E6
  &Signature=ZQLpf8vEXAMPLE0iC265pf18n0%3D
  &SignatureVersion=2
  &SignatureMethod=HmacSHA256
  &Timestamp=2018-11-05T18%3A12%3A21
  &Version=2018-09-01
  &MarketplaceId=A21TJRUUN4KGV
  &ScheduledPackageUpdateDetailsList.PackageUpdateDetails.1.ScheduledPackageId.AmazonOrderId=903-1713775-3598252
  &ScheduledPackageUpdateDetailsList.PackageUpdateDetails.1.ScheduledPackageId.PackageId=1ab0f06a-9149-87e0-aba9-7098117872d6
  &ScheduledPackageUpdateDetailsList.PackageUpdateDetails.1.PackagePickupSlot.SlotId=Xyt123bbdg=
  &ScheduledPackageUpdateDetailsList.PackageUpdateDetails.1.PackagePickupSlot.PickupTimeStart=2018-09-05T16%3A12%3A21
  &ScheduledPackageUpdateDetailsList.PackageUpdateDetails.1.PackagePickupSlot.PickupTimeEnd=2018-09-05T18%3A12%3A21
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
<UpdateScheduledPackagesResponse xmlns="http://mws.amazonaws.in/Scheduling/2018-09-01">
    <UpdateScheduledPackagesResult>
        <ScheduledPackageList>
            <Package>
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
                    <PickupTimeStart>2018-11-05T14:00:00.50+05:30</PickupTimeStart>
                    <PickupTimeEnd>2018-11-05T16:00:00.50+05:30</PickupTimeEnd>
                </PackagePickupSlot>
                <PackageStatus>Scheduled</PackageStatus>
            </Package>
        </ScheduledPackageList>
    </UpdateScheduledPackagesResult>
    <ResponseMetadata>
        <RequestId>adb18f0d-2076-48d4-99ef-fb4b9f892a4e</RequestId>
    </ResponseMetadata>
</UpdateScheduledPackagesResponse>
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

[CreateScheduledPackage](EasyShip_CreateScheduledPackage.html)

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
