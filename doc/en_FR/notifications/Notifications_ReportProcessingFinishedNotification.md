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

<div id="Notifications_ReportProcessingFinishedNotification" class="nested0">

# ReportProcessingFinishedNotification

<div class="body">

<span class="ph">The
<span class="keyword parmname">ReportProcessingFinished</span>
notification is sent whenever any report that you have requested using
the <span class="ph">Reports API section</span> reaches a report
processing status of DONE, CANCELLED, or DONE\_NO\_DATA.</span>

<div class="section">

## Availability

This notification is available in all marketplaces.

</div>

<div class="section">

## Elements

This is the root element of the
[ReportProcessingFinishedNotification.xsd](https://m.media-amazon.com/images/G/01/mwsportal/doc/en_US/subscriptions/ReportProcessingFinishedNotification.xsd)
schema:

<div class="tablenoborder">

| Name                                                                                                                                                                                  | Description                                                                                                                   |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- |
| [ReportProcessingFinishedNotification](#ReportProcessingFinishedNotification "The root element of the payload for the notification that is sent when report processing is complete.") | <span class="ph">The root element of the payload for the notification that is sent when report processing is complete.</span> |

</div>

</div>

</div>

<div id="ReportProcessingFinishedNotification" class="topic nested1">

## ReportProcessingFinishedNotification

<div class="body">

<span class="ph">The root element of the payload for the notification
that is sent when report processing is complete.</span>

<div class="section">

### ReportProcessingFinishedNotification Elements

The following table shows the child elements of the
<span class="keyword parmname">ReportProcessingFinishedNotification</span>
element:

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
<td><span class="keyword parmname">SellerId</span></td>
<td>The <span class="keyword parmname">SellerId</span> value that you specified with a call to the <a href="../reports/Reports_RequestReport.html" class="xref">RequestReport</a> operation, which initiated the report request process. For more information, see <a href="../reports/Reports_Overview.html" class="xref">What you should know about the Amazon MWS Reports API section</a>.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">ReportRequestId</span></td>
<td><span class="ph">A unique report request identifier.</span> Use this value to identify the report request that this notification is associated with. For more information, see <a href="../reports/Reports_Overview.html" class="xref">What you should know about the Amazon MWS Reports API section</a>.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">ReportId</span></td>
<td><span class="ph">A unique report identifier.</span> Pass this value to the <a href="../reports/Reports_GetReport.html" class="xref">GetReport</a> operation to get a report.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">ReportType</span></td>
<td>The <span class="keyword parmname">ReportType</span> value that you specified with a call to the <a href="../reports/Reports_RequestReport.html" class="xref">RequestReport</a> operation, which initiated the report request process. For more information, see <a href="../reports/Reports_Overview.html" class="xref">What you should know about the Amazon MWS Reports API section</a>.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">ReportProcessingStatus</span></td>
<td>The processing status of the report request. This notification is only sent when the processing status reaches one of three terminal states: DONE, CANCELLED, or DONE_NO_DATA. In other words, the notification is sent only when report processing is complete.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="RelatedTopics" class="topic nested1">

## Related topics

<div class="body">

[What you should know about the Amazon MWS Subscriptions API
section](../subscriptions/Subscriptions_Overview.html)

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