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

<div id="DG_ErrorMessages_ClientSideExamples" class="nested0">

# Example Client Side errors

<div class="body">

This section shows some common <span class="ph">Amazon MWS</span> client
side error examples and possible solutions to the problem.

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:** [Handling
errors](../dev_guide/DG_Errors.md)

</div>

</div>

</div>

<div id="ErrorMessages_ClientSideExamples_UserAgent_error" class="topic nested1">

## User-agent error

<div class="body">

**Reason**

The User-Agent header sent with the request was not in a valid format.

**How to troubleshoot**

Build the User-Agent header using code from the <span class="ph">Amazon
MWS</span> client library or see the documentation for an acceptable
format for the [User-Agent header](DG_ClientLibraries.md).

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="section content">

<div class="p">

``` pre codeblock
<ErrorResponse xmlns="http://mws.amazonservices.com/doc/2009-01-01/">
  <Error>
    <Type>Sender</Type>
    <Code>UserAgentHeaderMalformed</Code>
    <Message>
      Problem with required MWS User-Agent header
      (e.g. "MyAppName/build123 (Language=Java/1.2)"):
      Encountered "<EOF>" at column 116.
      Was expecting: "=" ...
    </Message>
    <Detail/>
  </Error>
  <RequestID>
    21f197f6-24b7-4b7b-94fc-55fa34056d34
  </RequestID>
</ErrorResponse>
```

</div>

[↑
Top](#DG_ErrorMessages_ClientSideExamples)

</div>

</div>

</div>

<div id="ErrorMessages_ClientSideExamples_SSL_error" class="topic nested1">

## SSL exception error

<div class="body">

**Reason**

The client tried to communicate with the <span class="ph">Amazon
MWS</span> endpoint, but it could not verify our SSL certificate or it
could not find the certificate store on the client machine to use for
verification.

**How to troubleshoot**

If you get this exception, you need to add <span class="ph">Amazon
MWS</span> certificates to your client trust store. Consult the Java
documentation regarding setting up and configuring Trust Stores in Java.

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="section content">

<div class="p">

``` pre codeblock
javax.net.ssl.SSLException: java.lang.RuntimeException:
Unexpected error: java.security.
InvalidAlgorithmParameterException: the trustAnchors
parameter must be non-empty
```

</div>

[↑
Top](#DG_ErrorMessages_ClientSideExamples)

</div>

</div>

</div>

<div id="ErrorMessages_ClientSideExamples_MD5_error" class="topic nested1">

## MD5 error

<div class="body">

**Error message**

<div class="section">

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre codeblock
The Content-MD5 HTTP header you passed for your feed
(1B2M2Y8AsgTpgAmY7PhCfg==) did not match the Content-MD5 we
calculated for your feed (3cldK7kqMxK6orwvXXdzSQ==)
            
```

</div>

</div>

<div class="section">

**Reason**

The Content-MD5 value 1B2M2Y8AsgTpgAmY7PhCfg== corresponds to the empty
string. The MD5 provider instance used to calculate the Content-MD5 is
not able to read any bytes from the stream.

**How to troubleshoot**

A possible solution is to export the document as a string and construct
the MemoryStream with this string's bytes.

</div>

<div class="section">

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre codeblock
MemoryStream stream =
  new MemoryStream(
    new UTF8Encoding()
      .GetBytes(
        xmlDocument.ToString()));
request.ContentMD5 =
  MarketplaceWebServiceClient
    .CalculateContentMD5(stream);
            
```

[↑ Top](#DG_ErrorMessages_ClientSideExamples)

</div>

</div>

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
