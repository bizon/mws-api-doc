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

<div id="DG_ErrorMessages" class="nested0">

# Handling errors

<div class="body">

<span class="ph">Amazon Marketplace Web Service (Amazon MWS)</span>
deals with errors using the standard HTTP Response status codes. A
message is normally sent with the error code to explain more about the
error so that the problem it can be fixed or reported.

<div id="DG_ErrorMessages__Error_codes" class="section">

## Error codes

These error codes are common to all <span class="ph">Amazon MWS</span>
API sections. For error codes that are specific to an API section, see
that API's corresponding error codes section reference.

<div class="tablenoborder">

| Error code                                                    | HTTP status code | Description                                                                                                          |
| ------------------------------------------------------------- | ---------------- | -------------------------------------------------------------------------------------------------------------------- |
| <span class="keyword parmname">InputStreamDisconnected</span> | 400              | There was an error reading the input stream.                                                                         |
| <span class="keyword parmname">InvalidParameterValue</span>   | 400              | An invalid parameter value was used, or the request size exceeded the maximum accepted size, or the request expired. |
| <span class="keyword parmname">AccessDenied</span>            | 401              | Access was denied.                                                                                                   |
| <span class="keyword parmname">InvalidAccessKeyId</span>      | 403              | An invalid <span class="keyword parmname">AWSAccessKeyId</span> value was used.                                      |
| <span class="keyword parmname">SignatureDoesNotMatch</span>   | 403              | The signature used does not match the server's calculated signature value.                                           |
| <span class="keyword parmname">InvalidAddress</span>          | 404              | An invalid API section or operation value was used, or an invalid path was used.                                     |
| <span class="keyword parmname">InternalError</span>           | 500              | There was an internal service failure.                                                                               |
| <span class="keyword parmname">QuotaExceeded</span>           | 503              | The total number of requests in an hour was exceeded.                                                                |
| <span class="keyword parmname">RequestThrottled</span>        | 503              | The frequency of requests was greater than allowed.                                                                  |

<span class="tablecap">Table 1. Common HTTP error status codes</span>

</div>

</div>

<div id="DG_ErrorMessages__ErrorMessages_When_you_get_error" class="section">

## When you get an error

Each error is accompanied with enough information to help you research a
fix for the error on the client side. When your research can't resolve
the problem, you can request assistance from <span class="ph">Amazon
MWS</span> technical support. However, before calling
<span class="ph">Amazon MWS</span> technical support, please do the
following:

1.  Review the request that preceded the problem. Then, look for the
    problem described in the error message. Resolve it, if possible.
2.  Record the <span class="keyword parmname">RequestId</span> and
    <span class="keyword parmname">Timestamp</span> of the best example
    request that generated the error.
3.  If you cannot resolve the problem and need to call for technical
    support, Amazon needs the
    <span class="keyword parmname">RequestId</span> and
    <span class="keyword parmname">Timestamp</span> to locate the
    specific instance of your issue in our logs.

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

<div id="DG_ErrorMessages__ErrorMessages_Service_errors" class="section">

## Service errors

The common response to a 500 or 503 service error is to try the request
again. Such service errors are usually only temporary and will resolve
themselves. If you want to retry an operation call after receiving a 500
or 503 error, you can immediately retry after the first error response.
However, if you want to retry multiple times, Amazon recommends that you
implement an "**exponential backoff**" approach (i.e. pausing between
retrys), with up to four retries. Then, log the error and proceed with a
manual follow-up and investigation. For example, you can time your
retries with the following time spacing: 1s, 4s, 10s, 30s. The actual
backoff times and limit will depend upon your business processes.

</div>

<div id="DG_ErrorMessages__ErrorReferences" class="section">

## References

  - [List of HTTP status
    codes](https://en.wikipedia.org/wiki/List_of_HTTP_status_codes)
    (Wikipedia)
  - [Throttling: Limits to how often you can submit
    requests](../dev_guide/DG_Throttling.md)
  - [Working with Content-MD5 checksums](DG_MD5.md)

</div>

</div>

<div class="related-links">

## In this section

  - **[Example HTTP errors](../dev_guide/DG_Errors_Examples.md)**  
  - **[Example Client Side
    errors](../dev_guide/DG_Errors_ClientExamples.md)**  

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
