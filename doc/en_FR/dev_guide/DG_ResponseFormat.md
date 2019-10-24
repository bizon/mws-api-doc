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

<div id="DG_ResponseFormat" class="nested0">

# Response format

<div id="Success" class="topic nested1">

## Success response

<div class="body">

In response to an HTTP request, <span class="ph">Amazon MWS</span>
returns an XML file that contains the results of the request. If a
request is successful, the response is returned with the data requested.
The following example shows a successful response.

``` pre codeblock
<?xml version="1.0"?>
<RequestReportResponse xmlns="http://mws.amazonservices.com/doc/2009-01-01/">
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

<div class="note important">

<span class="importanttitle">Important:</span> You should record and
retain for 30 days the <span class="keyword parmname">RequestId</span>
and <span class="keyword parmname">Timestamp</span> for every request
that you submit to <span class="ph">Amazon MWS</span>. Doing this
enables Amazon to diagnose and fix any problems that you might
encounter, helping to improve your experience using
<span class="ph">Amazon MWS</span>. Without this information, requests
to <span class="ph">Amazon MWS</span> support will take longer to
resolve.

</div>

</div>

</div>

<div id="Error" class="topic nested1">

## Error response

<div class="body">

<div class="p">

If a request is unsuccessful, the main response element is
<span class="keyword parmname">ErrorResponse</span>, irrespective of the
action requested. This element contains one or more
<span class="keyword parmname">Error</span> child elements. Each
<span class="keyword parmname">Error</span> includes:

  - An error code that identifies the type of error that occurred.
  - A message code that describes the error condition in a
    human-readable form.
  - An error type, identifying either the receiver or the sender as the
    originator of the error.

</div>

<span class="ph">For more information about errors and error handling,
see [Error Messages](../dev_guide/DG_Errors.html).</span>

The following example shows an error response:

``` pre codeblock
<ErrorResponse xmlns="http://mws.amazonservices.com/doc/2009-01-01/">
    <Error>
        <Type>Sender</Type>
        <Code>InvalidClientTokenId</Code>
        <Message> The AWS Access Key Id you provided does not exist in our records. </Message>
        <Detail>com.amazonservices.mws.model.Error$Detail@17b6643</Detail>
    </Error>
    <RequestID>b7afc6c3-6f75-4707-bcf4-0475ad23162c</RequestID>
</ErrorResponse>
```

</div>

</div>

<div id="XML_Character_Limits" class="topic nested1">

## XML Character Limits

<div class="body">

XML responses are limited to the Unicode characters compatible with the
[Extensible Markup Language (XML)
1.0](https://www.w3.org/TR/REC-xml/):

``` pre codeblock
Char ::= #x9 | #xA | #xD | [#x20-#xD7FF] | [#xE000-#xFFFD] | [#x10000-#x10FFFF]
```

If a response includes a character outside of that range,
<span class="ph">Amazon MWS</span> returns Unicode \#xFFFD (�) in place
of that character.

</div>

</div>

<div id="RelatedTopics" class="topic nested1">

## Related topics

<div class="body">

[Error Messages](../dev_guide/DG_Errors.html)

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
