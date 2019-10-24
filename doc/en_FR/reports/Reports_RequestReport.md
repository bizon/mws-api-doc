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

<div id="Reports_RequestReport" class="nested0">

# RequestReport

<span class="ph">Creates a report request and submits the request to
<span class="ph">Amazon MWS</span>.</span>

<div id="Description" class="topic concept nested1">

## Description

<div class="body conbody">

The
<span id="Description__RequestReport" class="keyword apiname">RequestReport</span>
operation creates a report request. <span class="ph">Amazon MWS</span>
processes the report request and when the report is completed, sets the
status of the report request to \_DONE\_. Reports are retained for 90
days.

You specify what marketplaces you want a report to cover by supplying a
list of marketplace IDs to the optional
<span class="keyword parmname">MarketplaceIdList</span> request
parameter when you call the
<span class="keyword apiname">RequestReport</span> operation. If you do
not specify a marketplace ID, your home marketplace ID is used. Note
that the <span class="keyword parmname">MarketplaceIdList</span> request
parameter is not used in the Japan marketplace.

The <span class="keyword apiname">RequestReport</span> operation has a
maximum request quota of 15 and a restore rate of one request every
minute. <span class="ph">For definitions of throttling terminology and
for a complete explanation of throttling, see [Throttling: Limits to how
often you can submit requests](../dev_guide/DG_Throttling.html) in the
<span class="ph">Amazon MWS Developer Guide</span>.</span>

<div class="section">

### Availability

This operation is available in all marketplaces.

The <span class="keyword parmname">MarketplaceIdList</span> parameter is
not available in the Japan
marketplace.

</div>

<div class="section">

### Throttling

<div class="p">

<div class="tablenoborder">

| Maximum request quota | Restore rate             | Hourly request quota |
| --------------------- | ------------------------ | -------------------- |
| 15 requests           | One request every minute | 60 requests per hour |

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
<td><span class="keyword parmname">ReportType</span></td>
<td><span class="ph">A value of the <a href="Reports_ReportType.html" class="xref" title="An enumeration of the types of reports that can be requested from Amazon MWS.">ReportType</a> that indicates the type of report to request.</span></td>
<td>Yes</td>
<td>A <a href="Reports_ReportType.html" class="xref" title="An enumeration of the types of reports that can be requested from Amazon MWS.">ReportType</a> value
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">StartDate</span></td>
<td>The start of a date range used for selecting the data to report.</td>
<td>No</td>
<td>Must be prior to or equal to the current time.
<p>Default: Now</p>
<p>Values in <span class="ph"><a href="../dev_guide/DG_ISO8601.html" class="xref">ISO 8601 date time format</a></span></p>
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">EndDate</span></td>
<td>The end of a date range used for selecting the data to report.</td>
<td>No</td>
<td>Must be prior to or equal to the current time.
<p>Default: Now</p>
<p>Values in <span class="ph"><a href="../dev_guide/DG_ISO8601.html" class="xref">ISO 8601 date time format</a></span></p>
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
<tr class="even">
<td><span id="RequestParameters__ReportOptions" class="keyword parmname">ReportOptions</span></td>
<td>Additional information to pass to the report.</td>
<td>No</td>
<td>If a report accepts <span class="keyword parmname">ReportOptions</span>, they will be described in the description of the report in the <a href="Reports_ReportType.html" class="xref" title="An enumeration of the types of reports that can be requested from Amazon MWS.">ReportType enumeration</a> section.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">MarketplaceIdList</span>
<p>(NA, EU only)</p></td>
<td>A list of one or more marketplace IDs for the marketplaces you are registered to sell in. The resulting report will include information for all marketplaces you specify. <span class="ph">For more information about the behavior of reports when submitting multiple <span class="keyword parmname">MarketplaceId</span> values, see <a href="Reports_UsingMultipleMarketplaces.html" class="xref" title="Describes the best practices to follow when you are registered to sell in multiple marketplaces.">Using multiple marketplaces</a></span>.
<p>Example: &amp;MarketplaceIdList.Id.1=A13V1IB3VIYZZH &amp;MarketplaceIdList.Id.2=A1PA6795UKMFR9</p></td>
<td>No</td>
<td>Marketplace IDs for marketplaces you are registered to sell in.
<p>Default: The first marketplace that you registered to sell in.</p>
<p>Type: List of <span class="ph">Type: xs:string</span></p></td>
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
<td><span class="keyword parmname">ReportRequestInfo</span></td>
<td><span class="ph">Detailed information about a report request.</span>
<p>Type: <a href="Reports_Datatypes.html#ReportRequestInfo" class="xref" title="Detailed information about a report request.">ReportRequestInfo</a></p></td>
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
POST /Reports/2009-01-01 HTTP/1.1
Content-Type: x-www-form-urlencoded
Host: mws.amazonservices.com
User-Agent: <Your User Agent Header>

AWSAccessKeyId=0PB842EXAMPLE7N4ZTR2
&Action=RequestReport
&EndDate=2008-06-26T18%3A12%3A21
&MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
&Marketplace=ATVPDKIKX0DER
&ReportType=_GET_MERCHANT_LISTINGS_DATA_
&SellerId=A1XEXAMPLE5E6
&SignatureMethod=HmacSHA256
&SignatureVersion=2
&StartDate=2009-01-03T18%3A12%3A21
&Timestamp=2009-02-04T18%3A12%3A21.687Z
&Version=2009-01-01
&Signature=ZQLpf8vEXAMPLE0iC265pf18n0%3D
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
<RequestReportResponse
    xmlns="http://mws.amazonaws.com/doc/2009-01-01/">
    <RequestReportResult>
        <ReportRequestInfo>
            <ReportRequestId>2291326454</ReportRequestId>
            <ReportType>_GET_MERCHANT_LISTINGS_DATA_</ReportType>
            <StartDate>2009-01-21T02:10:39+00:00</StartDate>
            <EndDate>2009-02-13T02:10:39+00:00</EndDate>
            <Scheduled>false</Scheduled>
            <SubmittedDate>2009-02-20T02:10:39+00:00</SubmittedDate>
            <ReportProcessingStatus>_SUBMITTED_</ReportProcessingStatus>
        </ReportRequestInfo>
    </RequestReportResult>
    <ResponseMetadata>
        <RequestId>88faca76-b600-46d2-b53c-0c8c4533e43a</RequestId>
    </ResponseMetadata>
</RequestReportResponse>
```

[↑ Top](#Examples)

</div>

</div>

</div>

</div>

<div id="RelatedActions" class="topic nested1">

## Related topics

<div class="body">

[What you should know about the Amazon MWS Reports API
Section](../reports/Reports_Overview.html)

[GetReportRequestList](Reports_GetReportRequestList.html "Returns a list of report requests that you can use to get the ReportRequestId for a report.")

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