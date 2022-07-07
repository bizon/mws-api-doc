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

<div id="EasyShip_GetScheduledPackage" class="nested0">

# GetScheduledPackage

<div class="body">

</div>

<div id="Description" class="topic concept nested1">

## Description

<div class="body conbody">

The <span class="keyword apiname">GetScheduledPackage</span> operation
returns information about a scheduled package, including dimensions,
weight, pickup slot information, invoice and item information, and
status.

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

## Request parameters

<div class="body refbody">

<div class="section">

<span class="ph">For more information about the request parameters that
are required for all <span class="ph">Amazon MWS</span> operations, see
<span
class="ph"><a href="../dev_guide/DG_RequiredRequestParameters.md" class="xref">Required request parameters</a></span>
in the <span class="ph">Amazon MWS Developer Guide</span>.</span>

<div class="tablenoborder">

| Name                                                     | Description                                                                                                                                                                                  | Required | Values                                                                                                                                                 |
|----------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------|--------------------------------------------------------------------------------------------------------------------------------------------------------|
| <span class="keyword parmname">ScheduledPackageId</span> | The identifier for the scheduled package to be updated. Returned by a previous call to the <a href="EasyShip_CreateScheduledPackage.md" class="xref">CreateScheduledPackage</a> operation. | Yes      | Type: <a href="EasyShip_Datatypes.md#ScheduledPackageId" class="xref" title="Identifies the scheduled package to be updated.">ScheduledPackageId</a> |
| <span class="keyword parmname">MarketplaceId</span>      | The marketplace that the seller is selling in.                                                                                                                                               | Yes      | <span class="ph">Type: xs:string</span>                                                                                                                |

</div>

</div>

</div>

</div>

<div id="ResponseElements" class="topic reference nested1">

## Response elements

<div class="body refbody">

<div class="tablenoborder">

| Name                                                   | Description                                                                                                             |
|--------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------|
| <span class="keyword parmname">ScheduledPackage</span> | Type: <a href="EasyShip_Datatypes.md#Package" class="xref" title="Information about a scheduled package.">Package</a> |

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
  &Action=GetScheduledPackage
  &MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
  &SellerId=A1XEXAMPLE5E6
  &Signature=ZQLpf8vEXAMPLE0iC265pf18n0%3D
  &SignatureVersion=2
  &SignatureMethod=HmacSHA256
  &Timestamp=2018-11-05T18%3A12%3A21
  &Version=2018-09-01
  &ScheduledPackageId.AmazonOrderId=903-1713775-3598252
  &ScheduledPackageId.PackageId=1ab0f06a-9149-87e0-aba9-7098117872d6
  &MarketplaceId=A21TJRUUN4KGV
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
<GetScheduledPackageResponse xmlns="http://mws.amazonaws.in/EasyShip/2018-09-01">
    <GetScheduledPackageResult>
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
            <PackageStatus>Scheduled</PackageStatus>
        </ScheduledPackage>
    </GetScheduledPackageResult>
    <ResponseMetadata>
        <RequestId>adb18f0d-2076-48d4-99ef-fb4b9f892a4e</RequestId>
    </ResponseMetadata>
</GetScheduledPackageResponse>
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
