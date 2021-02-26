<div id="MWSDX_noscript">

JavaScript is currently disabled in your browser.  
To use the Amazon MWS documentation, you must enable JavaScript in your
browser.

</div>

<div id="MWSDX_divtop">

[![Amazon
Services](https://images-na.ssl-images-amazon.com/images/G/08/mwsportal/fr_FR/amazonservices.gif "Amazon Services")](http://services.amazon.fr)  
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

<div id="DG_ClientLibraries" class="nested0">

Using the Amazon MWS client libraries
=====================================

<div class="body">

Each <span class="ph">Amazon MWS</span> API section has its own client
library that contains code for doing many common tasks when working with
<span class="ph">Amazon MWS</span>. By using an <span class="ph">Amazon
MWS</span> client library, you save time and you know the request you
send is correctly formatted. For example, the <span class="ph">Amazon
MWS</span> client libraries perform the following tasks for you:

-   Request Signature - creates a valid request HMAC-SHA signature. Each
    request must have a valid signature or the request is rejected. A
    request signature is calculated using your Secret Access Key, which
    is a shared secret, given to you when you registered, and known only
    to you and <span class="ph">Amazon MWS</span>.
-   Timestamp - adds a timestamp on each request you submit. Each
    request must contain the timestamp of the request.
-   Requests - builds a valid request for you based on the operation you
    select and the parameters you enter.
-   User-Agent header - creates the User-Agent header.
-   Stream - creates a stream you use to receive downloaded reports when
    using the <span class="keyword apiname">GetReport</span> operation.

</div>

<div id="DG_OwnClientLibrary" class="topic concept nested1">

If you create your own client library
-------------------------------------

<div class="body conbody">

You can create your own client library for use with <span
class="ph">Amazon MWS</span>. Your code should construct and sign a
request in the format expected by <span class="ph">Amazon MWS</span>,
and then you parse the resulting XML response.

You access <span class="ph">Amazon MWS</span> by following these steps:

1.  **Determine the correct <span class="ph">Amazon MWS</span> endpoint
    to use.**

    <span class="ph">Amazon MWS</span> endpoints vary by region for the
    marketplace you are trying to access. Consult
    <a href="../dev_guide/DG_Endpoints.md" class="xref">Amazon MWS endpoints and MarketplaceId values</a>
    for the correct endpoint to use for your intended marketplace.

2.  **Determine the throttling limits for the operation you want to
    submit.**

    Every <span class="ph">Amazon MWS</span> API has limits to how often
    it can be invoked over certain time periods. If you exceed these
    limits, your call will fail and you will have to wait for your next
    call. This waiting period will be based on the <span
    class="keyword">refresh rate</span> for the API. For more
    information, see
    <a href="../dev_guide/DG_Throttling.md" class="xref">Throttling: Limits to how often you can submit requests</a>.

    For each individual API, see the Throttling section on the API
    reference page for specific throttling limits.

3.  **Familiarize yourself with the MWS request format.**

    <span class="ph">Amazon MWS</span> supports query requests for
    calling web service actions. Query requests are simple HTTP
    requests, using the GET or POST method in the HTTP request-line. The
    HTTP request-line consists of the HTTP method, the URL, and the
    protocol version. The URL contains the path and query parameters.
    The HTTP Body contains the HTTP body request parameters. <span
    class="ph">Amazon MWS</span> requires the use of HTTPS in order to
    prevent third-party eavesdropping on your communication with Amazon.

    Each of the HTTP header lines must be terminated with a carriage
    return and a line feed. Query requests must contain an Action
    parameter to indicate the action to be performed. The response is an
    XML document.

4.  **Set the timestamp for your request.**

    See
    <a href="DG_Timestamps.md" class="xref">Working with Timestamps</a>.

5.  **Construct a query string for the request.**

    See
    <a href="DG_QueryString.md" class="xref">Creating a Canonicalized Query String</a>.

6.  **Sign the query string and create the request.**

    See
    <a href="DG_SigningQueryRequest.md" class="xref">Signing a Query Request</a>.

7.  **Set the User-Agent Header for your application.**

    See
    <a href="DG_UserAgentHeader.md" class="xref">Creating your User-Agent Header</a>.

8.  **Send the correctly formatted HTTP request-line and the HTTP header
    parameters containing the User-Agent header to the endpoint for your
    Amazon marketplace.**

    <span class="ph">Amazon MWS</span> requires that the size of the
    HTTP request-line must be less than `8190 bytes` and the size of the
    HTTP request body be less than `2048 MB`.

    If you are sending an HTTP request-line that exceeds the limit, then
    you must reduce your HTTP query parameters and use the HTTP request
    body parameters.

    <div class="note note">

    <span class="notetitle">Note:</span> The request-line limit doesn't
    matter if you are using the <span class="ph">Amazon MWS</span>
    client libraries.

    </div>

    The URL contains the following parts:

    -   <span class="ph filepath">https:// </span>
    -   The marketplace-specific web service
        <a href="../dev_guide/DG_Endpoints.md" class="xref">endpoint</a>
        you want to access.
    -   The query parameters that were included in the
        <a href="DG_QueryString.md" class="xref">canonicalized query request string</a>,
        plus the
        <a href="DG_SigningQueryRequest.md" class="xref">calculated signature</a>.
    -   The
        <a href="DG_UserAgentHeader.md" class="xref">User-Agent header</a>.

    The following is an example of a complete request URL that you could
    submit. The actual request should not contain white space or line
    breaks.

        https://mws.amazonservices.com/AWSAccessKeyId=AKIAFJPPO5KLY6G4XO7Q&Action=G
        etFeedSubmissionResult&FeedSubmissionId=4321011681&MWSAuthToken=amzn.mws.4e
        a38b7b-f563-7709-4bae-87aeaEXAMPLE&Marketplace=ATVPDKIKX0DER&SellerId=A3F1L
        GRLCQDI4D&SignatureMethod=HmacSHA256&SignatureVersion=2&Timestamp=2011-02-0
        4T23%3A08%3A19Z&Version=2009-01-0&Signature=WhateverTheSignatureWas1HTTP/1.
        1Host:mws.amazonservices.comX-Amazon-User-Agent:AmazonJavascriptApp/1.0(Lan
        guage=Javascript)Content-Type:text/xml

9.  **Parse the response.**

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
