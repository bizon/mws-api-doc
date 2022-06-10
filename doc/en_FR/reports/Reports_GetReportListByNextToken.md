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

<div id="Reports_GetReportListByNextToken" class="nested0">

# GetReportListByNextToken

<div class="body">

<span class="ph"> Returns a list of reports using the <span
class="keyword parmname">NextToken</span>, which was supplied by a
previous request to either <span
class="keyword apiname">GetReportListByNextToken</span> or <span
class="keyword apiname">GetReportList</span>, where the value of <span
class="keyword parmname">HasNext</span> was `true` in the previous
call.</span>

</div>

<div id="Description" class="topic concept nested1">

## Description

<div class="body conbody">

The <span id="Description__GetReportListByNextToken"
class="keyword apiname">GetReportListByNextToken</span> operation
returns a list of reports that match the query parameters, using the
<span class="keyword parmname">NextToken</span>, which was supplied by a
previous call to either <span
class="keyword apiname">GetReportListByNextToken</span> or a call to
<span class="keyword apiname">GetReportList</span>, where the value of
<span class="keyword parmname">HasNext</span> was `true` in the previous
call.

<div class="section">

### Availability

This operation is available in all marketplaces.

</div>

<div class="section">

### Throttling

<div class="p">

<div class="tablenoborder">

| Maximum request quota | Restore rate                  | Hourly request quota   |
|-----------------------|-------------------------------|------------------------|
| 30 requests           | One request every two seconds | 1800 requests per hour |

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
<a href="../dev_guide/DG_RequiredRequestParameters.md" class="xref">Required request parameters</a>
in the <span class="ph">Amazon MWS Developer Guide</span>.</span>

</div>

<div class="tablenoborder">

| Name                                            | Description                                                                                                                                                                                                                                                                    | Required | Values                                  |
|-------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------|-----------------------------------------|
| <span class="keyword parmname">NextToken</span> | <span id="RequestParameters__parm_NextToken" class="ph">A string token returned in a previous call. Use the <span class="keyword parmname">NextToken</span> to call the operation again if the return value of <span class="keyword parmname">HasNext</span> is `true`.</span> | Yes      | <span class="ph">Type: xs:string</span> |

</div>

</div>

</div>

<div id="ResponseElements" class="topic reference nested1">

## Response elements

<div class="body refbody">

<div class="tablenoborder">

<table id="ResponseElements__ResponseElementsTable" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d284239e274" class="entry" data-valign="top" width="50%">Name</th>
<th id="d284239e277" class="entry" data-valign="top" width="50%">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="50%" headers="d284239e274 "><span class="keyword parmname">NextToken</span></td>
<td class="entry" data-valign="top" width="50%" headers="d284239e277 "><span class="ph">A string token used to pass information to another call. Use the <span class="keyword parmname">NextToken</span> to call the operation again if the value of <span class="keyword parmname">HasNext</span> is <var class="keyword varname">true</var>.</span>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="50%" headers="d284239e274 "><span class="keyword parmname">HasNext</span></td>
<td class="entry" data-valign="top" width="50%" headers="d284239e277 "><span class="ph">A Boolean value that indicates whether there are more items to return, requiring additional calls to this operation to retrieve them. The value is <var class="keyword varname">true</var> if there are more items to retrieve; otherwise <var class="keyword varname">false</var>.</span>
<p><span class="ph">Type: xs:boolean</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="50%" headers="d284239e274 "><span class="keyword parmname">ReportInfo</span></td>
<td class="entry" data-valign="top" width="50%" headers="d284239e277 "><span class="ph">Detailed information about a report.</span>
<p>Type: <a href="Reports_Datatypes.md#ReportInfo" class="xref" title="Detailed information about a report.">ReportInfo</a></p></td>
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
see
<a href="../dev_guide/DG_RequiredRequestParameters.md" class="xref">Required request parameters</a>.</span>

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre
POST /Reports/2009-01-01 HTTP/1.1
Content-Type: x-www-form-urlencoded
Host: mws.amazonservices.com
User-Agent: <Your User Agent Header>

AWSAccessKeyId=0PB842EXAMPLE7N4ZTR2
&Acknowledged=false
&Action=GetReportListByNextToken
&MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
&Marketplace=ATVPDKIKX0DER
&NextToken=2YgYW55IPQhvu5hbCBwbGVhc3VyZS4=
&ReportTypeList.Type.1=_GET_MERCHANT_LISTINGS_DATA_
&SellerId=A1XEXAMPLE5E6
&SignatureMethod=HmacSHA256
&SignatureVersion=2
&Timestamp=2009-02-04T18%3A12%3A19.796Z
&Version=2009-01-01
&Signature=3yvUqWWBpLDld9CCx0ANjVU95ks%3D
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
<GetReportListByNextTokenResponse
    xmlns="http://mws.amazonservices.com/doc/2009-01-01/">
    <GetReportListByNextTokenResult>
        <NextToken>none</NextToken>
        <HasNext>false</HasNext>
        <ReportInfo>
            <ReportId>898899473</ReportId>
            <ReportType>_GET_MERCHANT_LISTINGS_DATA_</ReportType>
            <ReportRequestId>2278662938</ReportRequestId>
            <AvailableDate>2009-02-10T09:22:33+00:00</AvailableDate>
            <Acknowledged>false</Acknowledged>
        </ReportInfo>
    </GetReportListByNextTokenResult>
    <ResponseMetadata>
        <RequestId>fbf677c1-dcee-4110-bc88-2ba3702e331b</RequestId>
    </ResponseMetadata>
</GetReportListByNextTokenResponse>
```

<a href="#Examples" class="xref">↑ Top</a>

</div>

</div>

</div>

</div>

<div id="RelatedActions" class="topic nested1">

## Related topics

<div class="body">

<a href="../dev_guide/DG_NextToken.md" class="xref">Using NextToken to request additional pages</a>

<a href="../reports/Reports_Overview.md" class="xref">What you should know about the Amazon MWS Reports API Section</a>

<a href="Reports_GetReportList.md" class="xref" title="Returns a list of reports that were created in the previous 90 days.">GetReportList</a>

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
