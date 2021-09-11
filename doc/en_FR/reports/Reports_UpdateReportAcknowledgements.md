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

<div id="Reports_UpdateReportAcknowledgements" class="nested0">

# UpdateReportAcknowledgements

<div class="body">

<span class="ph">Updates the acknowledged status of one or more
reports.</span>

</div>

<div id="Description" class="topic concept nested1">

## Description

<div class="body conbody">

The <span id="Description__UpdateReportAcknowledgements"
class="keyword apiname">UpdateReportAcknowledgements</span> operation is
an optional request that updates the acknowledged status of one or more
reports. Use this operation if you want <span class="ph">Amazon
MWS</span> to remember the acknowledged status of your reports. To keep
track of which reports you have already received, it is a good practice
to acknowledge reports after you have received and stored them
successfully. Then, when you submit a <span
class="keyword apiname">GetReportList</span> request, you can specify to
receive only reports that have not yet been acknowledged.

To retrieve reports that have been lost, set the <span
class="keyword parmname">Acknowledged</span> to `false` and then submit
a <span class="keyword apiname">GetReportList</span> request. This
action returns a list of all reports within the previous 90 days that
match the query parameters.

<div class="note note">

<span class="notetitle">Note:</span> When submitting the <span
class="keyword apiname">GetReportList</span> or <span
class="keyword apiname">GetReportListByNextToken</span> operations, be
sure that <span class="keyword parmname">HasNext</span> returns false
before submitting the <span
class="keyword apiname">UpdateReportAcknowledgements</span> operation.
This helps to ensure that all of the reports that match your query
parameters are returned.

</div>

<div class="section">

### Availability

This operation is available in all marketplaces.

</div>

<div class="section">

### Throttling

<div class="p">

<div class="tablenoborder">

| Maximum request quota | Restore rate                 | Hourly request quota |
|-----------------------|------------------------------|----------------------|
| 10 requests           | One request every 45 seconds | 80 requests per hour |

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

<table id="RequestParameters__RequestParametersTable" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d299068e204" class="entry" data-valign="top" width="28.57142857142857%">Name</th>
<th id="d299068e207" class="entry" data-valign="top" width="28.57142857142857%">Description</th>
<th id="d299068e210" class="entry" data-valign="top" width="14.285714285714285%">Required</th>
<th id="d299068e213" class="entry" data-valign="top" width="28.57142857142857%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d299068e204 "><span class="keyword parmname">ReportIdList</span></td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d299068e207 ">A structured list of Report Ids. The maximum number of reports that can be specified is 100.</td>
<td class="entry" data-valign="top" width="14.285714285714285%" headers="d299068e210 ">Yes</td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d299068e213 ">Default: none
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d299068e204 "><span class="keyword parmname">Acknowledged</span></td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d299068e207 ">A Boolean value that indicates that you have received and stored a report. Specify <var class="keyword varname">true</var> to set the acknowledged status of a report to <var class="keyword varname">true</var>. Specify <var class="keyword varname">false</var> to set the acknowledged status of a report to <var class="keyword varname">false</var>.</td>
<td class="entry" data-valign="top" width="14.285714285714285%" headers="d299068e210 ">No</td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d299068e213 ">Default: All
<p><span class="ph">Type: xs:boolean</span></p></td>
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

<table id="ResponseElements__ResponseElementsTable" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d299068e299" class="entry" data-valign="top" width="50%">Name</th>
<th id="d299068e302" class="entry" data-valign="top" width="50%">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="50%" headers="d299068e299 "><span class="keyword parmname">Count</span></td>
<td class="entry" data-valign="top" width="50%" headers="d299068e302 "><span class="ph">A non-negative integer that represents the total number of report requests.</span>
<p><span class="ph">Type: xs:nonNegativeInteger</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="50%" headers="d299068e299 "><span class="keyword parmname">ReportInfo</span></td>
<td class="entry" data-valign="top" width="50%" headers="d299068e302 "><span class="ph">Detailed information about a report.</span>
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
&Acknowledged=true
&Action=UpdateReportAcknowledgements
&MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
&Marketplace=ATVPDKIKX0DER
&ReportIdList.Id.1=841997483
&ReportIdList.id.2=843337483
&SellerId=A1XEXAMPLE5E6
&SignatureMethod=HmacSHA256
&SignatureVersion=2
&Timestamp=2009-02-04T18%3A12%3A20.718Z
&Version=2009-01-01
&Signature=cE8%2FUgE8BspmM%2B26UTy7oVEdBk4%3D
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
<UpdateReportAcknowledgementsResponse
    xmlns="http://mws.amazonservices.com/doc/2009-01-01/">
    <UpdateReportAcknowledgementsResult>
        <Count>1</Count>
        <ReportInfo>
            <ReportId>841997483</ReportId>
            <ReportType>_GET_MERCHANT_LISTINGS_DATA_</ReportType>
            <ReportRequestId>2234038326</ReportRequestId>
            <AvailableDate>2009-01-06T03:48:36+00:00</AvailableDate>
            <Acknowledged>true</Acknowledged>
            <AcknowledgedDate>2009-02-20T02:10:41+00:00</AcknowledgedDate>
        </ReportInfo>
    </UpdateReportAcknowledgementsResult>
    <ResponseMetadata>
        <RequestId>42a578a7-ed92-486b-ac67-5de7464fcdfa</RequestId>
    </ResponseMetadata>
</UpdateReportAcknowledgementsResponse>
```

<a href="#Examples" class="xref">↑ Top</a>

</div>

</div>

</div>

</div>

<div id="RelatedActions" class="topic nested1">

## Related topics

<div class="body">

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
