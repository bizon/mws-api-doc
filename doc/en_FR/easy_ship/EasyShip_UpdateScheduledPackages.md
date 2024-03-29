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
scheduled pickup slot. Get the new <span
class="keyword parmname">SlotId</span> value from a previous call to the
<a href="EasyShip_ListPickupSlots.md" class="xref">ListPickupSlots</a>
operation.

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
| 10 requests           | 15 requests every minute |

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
<span
class="ph"><a href="../dev_guide/DG_RequiredRequestParameters.md" class="xref">Required request parameters</a></span>
in the <span class="ph">Amazon MWS Developer Guide</span>.</span>

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
<th id="d20702e205" class="entry" data-valign="top" width="24.103831891223734%">Name</th>
<th id="d20702e208" class="entry" data-valign="top" width="32.88009888751545%">Description</th>
<th id="d20702e211" class="entry" data-valign="top" width="12.360939431396787%">Required</th>
<th id="d20702e214" class="entry" data-valign="top" width="30.655129789864027%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="24.103831891223734%" headers="d20702e205 "><span class="keyword parmname">MarketplaceId</span></td>
<td class="entry" data-valign="top" width="32.88009888751545%" headers="d20702e208 ">The marketplace that the seller is selling in.</td>
<td class="entry" data-valign="top" width="12.360939431396787%" headers="d20702e211 ">Yes</td>
<td class="entry" data-valign="top" width="30.655129789864027%" headers="d20702e214 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="24.103831891223734%" headers="d20702e205 "><span class="keyword parmname">ScheduledPackageUpdateDetailsList</span></td>
<td class="entry" data-valign="top" width="32.88009888751545%" headers="d20702e208 ">The scheduled packages to be updated.</td>
<td class="entry" data-valign="top" width="12.360939431396787%" headers="d20702e211 ">Yes</td>
<td class="entry" data-valign="top" width="30.655129789864027%" headers="d20702e214 ">List of <a href="EasyShip_Datatypes.md#ScheduledPackageUpdateDetails" class="xref" title="Information for updating a package.">ScheduledPackageUpdateDetails</a>
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

| Name                                                       | Description                                                                                                               |
|------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------|
| <span class="keyword parmname">ScheduledPackageList</span> | List of <a href="EasyShip_Datatypes.md#Package" class="xref" title="Information about a scheduled package.">Package</a> |

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

<a href="#Examples" class="xref">↑ Top</a>

</div>

</div>

</div>

</div>

<div id="RelatedTopics" class="topic nested1">

## Related topics

<div class="body">

<a href="EasyShip_Overview.md" class="xref">What you should know about the Easy Ship API section</a>

<a href="EasyShip_CreateScheduledPackage.md" class="xref">CreateScheduledPackage</a>

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
