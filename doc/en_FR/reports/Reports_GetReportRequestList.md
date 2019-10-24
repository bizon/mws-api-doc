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

<div id="Reports_GetReportRequestList" class="nested0">

# GetReportRequestList

<div class="body">

<span class="ph">Returns a list of report requests that you can use to
get the <span class="keyword parmname">ReportRequestId</span> for a
report.</span>

</div>

<div id="Description" class="topic concept nested1">

## Description

<div class="body conbody">

The
<span id="Description__GetReportRequestList" class="keyword apiname">GetReportRequestList</span>
operation returns a list of report requests that match the query
parameters. You can specify query parameters for report status, date
range, and report type. The list contains the
<span class="keyword parmname">ReportRequestId</span> for each report
request. You can obtain <span class="keyword parmname">ReportId</span>
values by passing the
<span class="keyword parmname">ReportRequestId</span> values to the
<span class="keyword apiname">GetReportList</span> operation.

In the first request, a maximum of 100 report requests are returned. If
there are additional report requests to return,
<span class="keyword parmname">HasNext</span> is returned set to true in
the response . To retrieve all the results, you can pass the value of
the <span class="keyword parmname">NextToken</span> parameter to call
<span class="keyword apiname">GetReportRequestListByNextToken</span>
operation iteratively until
<span class="keyword parmname">HasNext</span> is returned set to false.

<div class="section">

### Availability

This operation is available in all
marketplaces.

</div>

<div class="section">

### Throttling

<div class="p">

<div class="tablenoborder">

| Maximum request quota | Restore rate                 | Hourly request quota |
| --------------------- | ---------------------------- | -------------------- |
| 10 requests           | One request every 45 seconds | 80 requests per hour |

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
<td><span class="keyword parmname">ReportRequestIdList</span></td>
<td><span class="ph">A structured list of <span class="keyword parmname">ReportRequestId</span> values. If you pass in <span class="keyword parmname">ReportRequestId</span> values, other query conditions are ignored.</span></td>
<td>No</td>
<td>Default: All
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">ReportTypeList</span></td>
<td><span class="ph">A structured list of <a href="Reports_ReportType.html" class="xref" title="An enumeration of the types of reports that can be requested from Amazon MWS.">ReportType enumeration</a> values.</span></td>
<td>No</td>
<td>Default: All
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">ReportProcessingStatusList</span></td>
<td><span class="ph">A structured list of report processing statuses by which to filter report requests.</span></td>
<td>No</td>
<td><ul>
<li>_SUBMITTED_</li>
<li>_IN_PROGRESS_</li>
<li>_CANCELLED_</li>
<li>_DONE_</li>
<li>_DONE_NO_DATA_</li>
</ul>
<p>Default: All</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">MaxCount</span></td>
<td>A non-negative integer that represents the maximum number of report requests to return. If you specify a number greater than 100, the request is rejected.</td>
<td>No</td>
<td>1-100
<p>Default: 10</p>
<p>Type: xs:nonNegativeInteger</p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">RequestedFromDate</span></td>
<td><span class="ph">The start of the date range used for selecting the data to report, in <span class="ph"><a href="../dev_guide/DG_ISO8601.html" class="xref">ISO 8601 date time format</a></span>.</span>
<p><span class="ph">Type: xs:dateTime</span></p></td>
<td>No</td>
<td>Default: 90 days ago</td>
</tr>
<tr class="even">
<td><span class="keyword parmname">RequestedToDate</span></td>
<td><span class="ph">The end of the date range used for selecting the data to report, in <span class="ph"><a href="../dev_guide/DG_ISO8601.html" class="xref">ISO 8601 date time format</a></span>.</span></td>
<td>No</td>
<td>Default: Now
<p><span class="ph">Type: xs:dateTime</span></p></td>
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
<td><span class="keyword parmname">NextToken</span></td>
<td><span class="ph">A string token used to pass information to another call. Use the <span class="keyword parmname">NextToken</span> to call the operation again if the value of <span class="keyword parmname">HasNext</span> is true.</span>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">HasNext</span></td>
<td><span class="ph">A Boolean value that indicates whether there are more items to return, requiring additional calls to this operation to retrieve them. The value is true if there are more items to retrieve; otherwise false.</span>
<p><span class="ph">Type: xs:boolean</span></p></td>
</tr>
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
&Action=GetReportRequestList
&MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
&Marketplace=ATVPDKIKX0DER
&ReportProcessingStatusList.Status.1=_DONE_
&ReportRequestIdList.Id.1=2291326454
&ReportTypeList.Type.1=_GET_ORDERS_DATA_
&ReportTypeList.Type.2=_GET_MERCHANT_LISTINGS_DATA_
&SellerId=A1XEXAMPLE5E6
&SignatureMethod=HmacSHA256
&SignatureVersion=2
&Timestamp=2009-02-04T18%3A12%3A21.921Z
&Version=2009-01-01
&Signature=pBixmXKBaS%2Bq3EbPzgFhv%2BDf6do%3D
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
<GetReportRequestListResponse
    xmlns="http://mws.amazonservices.com/doc/2009-01-01/">
    <GetReportRequestListResult>
        <NextToken>2YgYW55IPQhcm5hbCBwbGVhc3VyZS4=</NextToken>
        <HasNext>true</HasNext>
        <ReportRequestInfo>
            <ReportRequestId>2291326454</ReportRequestId>
            <ReportType>_GET_MERCHANT_LISTINGS_DATA_</ReportType>
            <StartDate>2011-01-21T02:10:39+00:00</StartDate>
            <EndDate>2011-02-13T02:10:39+00:00</EndDate>
            <Scheduled>false</Scheduled>
            <SubmittedDate>2011-02-17T23:44:09+00:00</SubmittedDate>
            <ReportProcessingStatus>_DONE_</ReportProcessingStatus>
            <GeneratedReportId>3538561173</GeneratedReportId>
            <StartedProcessingDate>
                2011-02-17T23:44:43+00:00
            </StartedProcessingDate>
            <CompletedDate>2011-02-17T23:44:48+00:00</CompletedDate>
        </ReportRequestInfo>
    </GetReportRequestListResult>
    <ResponseMetadata>
        <RequestId>732480cb-84a8-4c15-9084-a46bd9a0889b</RequestId>
    </ResponseMetadata>
</GetReportRequestListResponse>
```

[↑
Top](#Examples)

</div>

</div>

</div>

</div>

<div id="RelatedActions" class="topic nested1">

## Related topics

<div class="body">

[GetReportRequestListByNextToken](Reports_GetReportRequestListByNextToken.html "Returns a list of report requests using the NextToken, which was supplied by a previous request to either GetReportRequestListByNextToken or GetReportRequestList, where the value of HasNext was true in that previous request.")

[What you should know about the Amazon MWS Reports API
Section](../reports/Reports_Overview.html)

[Using NextToken to request additional
pages](../dev_guide/DG_NextToken.html)

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
