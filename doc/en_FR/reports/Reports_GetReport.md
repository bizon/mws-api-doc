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

<div id="Reports_GetReport" class="nested0">

# GetReport

<div class="body">

<span class="ph">Returns the contents of a report and the Content-MD5
header for the returned report body.</span>

</div>

<div id="Description" class="topic concept nested1">

## Description

<div class="body conbody">

The <span id="Description__GetReport"
class="keyword apiname">GetReport</span> operation returns the contents
of a report and the Content-MD5 header for the returned report body.
Reports are retained for 90 days from the time they are generated.

You should compute the MD5 hash of the HTTP body and compare that with
the returned Content- MD5 header value. If they do not match, it means
the body was corrupted during transmission. If the report is corrupted,
you should discard the result and automatically retry the request up to
three more times. Please notify <span class="ph">Amazon MWS</span> if
you receive a corrupted report body. The client library for the Reports
API section, found on the <span class="ph">Amazon MWS</span> website,
contains code for processing and comparing Content-MD5 headers. For more
information on working with the Content-MD5 header, see the <span
class="ph">Amazon MWS Developer Guide</span>.

<div class="section">

### Availability

This operation is available in all marketplaces.

</div>

<div class="section">

### Throttling

<div class="p">

<div class="tablenoborder">

| Maximum request quota | Restore rate             | Hourly request quota |
|-----------------------|--------------------------|----------------------|
| 15 requests           | One request every minute | 60 requests per hour |

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
<th id="d281728e183" class="entry" data-valign="top" width="28.57142857142857%">Name</th>
<th id="d281728e186" class="entry" data-valign="top" width="28.57142857142857%">Description</th>
<th id="d281728e189" class="entry" data-valign="top" width="14.285714285714285%">Required</th>
<th id="d281728e192" class="entry" data-valign="top" width="28.57142857142857%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d281728e183 "><span class="keyword parmname">ReportId</span></td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d281728e186 ">A unique identifier of the report to download. For most reports, this identifier is returned either in the <span class="keyword parmname">ReportId</span> of the <span class="keyword apiname">GetReportList</span> operation or in the <span class="keyword parmname">GeneratedReportId</span> of the <span class="keyword apiname">GetReportRequestList</span> operation. For sellers in India getting <span class="ph">Amazon Easy Ship</span> documents, this identifier is returned in the <span class="keyword parmname">ReportReferenceId</span> element of the processing report of the Easy Ship Feed. For more information see <a href="../easy_ship/EasyShip_HowToGetEasyShipDocs.md" class="xref">How to get invoice, shipping label, and warranty documents</a>.</td>
<td class="entry" data-valign="top" width="14.285714285714285%" headers="d281728e189 ">Yes</td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d281728e192 ">Default: none
<p><span class="ph">Type: xs:string</span></p></td>
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
<th id="d281728e268" class="entry" data-valign="top" width="50%">Name</th>
<th id="d281728e271" class="entry" data-valign="top" width="50%">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="50%" headers="d281728e268 "><span class="keyword parmname">Report</span></td>
<td class="entry" data-valign="top" width="50%" headers="d281728e271 ">The contents of the report document. Depending on the <a href="Reports_ReportType.md" class="xref" title="An enumeration of the types of reports that can be requested from Amazon MWS.">ReportType</a>, this will either be a tab-delimited flat file, an XML document, or a PDF.
<p><span class="ph">Type: xs:string</span></p></td>
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
&Action=GetReport
&MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
&Marketplace=ATVPDKIKX0DER
&ReportId=624169093
&SellerId=A1XEXAMPLE5E6
&SignatureMethod=HmacSHA256
&SignatureVersion=2
&Timestamp=2009-02-04T18%3A12%3A20.015Z
&Version=2009-01-01
&Signature=sY%2BEJFLA1gmz78dEOofUcBWSM44%3D
```

<a href="#Examples" class="xref">↑ Top</a>

</div>

</div>

<div class="section">

### Example response (tab-delimited flat file)

<span class="ph">For information about standard response formatting, see
<a href="../dev_guide/DG_ResponseFormat.md" class="xref">Response format</a>.</span>

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre
  order-id order-item-id purchase-date payments-date buyer-email 
  buyer-name buyer-phone-number sku product-name quantity-purchased 
  currency item-price item-tax shipping-price shipping-tax 
  ship-service-level recipient-name ship-address-1 ship-address-2 
  ship-address-3 ship-city ship-state ship-postal-code ship-country
  ship-phone-number delivery-start-date delivery-end-date 
  delivery-time-zone delivery-Instructions
103-26010-55904 394929210114 2011-02-09T02:46:57-08:00
2011-02-09T02:46:57-08:00 0g9lx423zn5@marketplace.amazon.com 
Joe Customer 404-555-1212 JW-RT1-HLD9 The Structure of Aikido: 
Volume 1: Kenjutsu and Taijutsu Sword and Open-Hand Movement 
Relationships (Structure of Aikido, Vol 1) 1 USD 19.49 0.00 3.99 
0.00 Standard Joe Customer 123 Main Street LAWRENCE CA 90044-2463 
US 404-555-1212
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
