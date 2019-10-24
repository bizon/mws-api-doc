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

<div id="DG_ErrorMessages_Examples" class="nested0">

# Example HTTP errors

<div class="body">

This section shows some common <span class="ph">Amazon MWS</span> error
code examples and possible solutions to the error.

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:** [Handling errors](../dev_guide/DG_Errors.md)

</div>

</div>

</div>

<div id="ErrorMessages_Examples_503_error" class="topic nested1">

## 503 service unavailable error

<div class="body">

**Reason**

This 503 error indicates that the Amazon MWS service is unavailable.
When you use the client library, the response is parsed and a
MarketplacewebService exception with all data included is thrown.

**How to troubleshoot**

Retry the request using an "exponential backoff" approach, as described
in [*Handling errors: Service
errors*](../dev_guide/DG_Errors.html#ErrorMessages_Service_errors).

<div class="section">

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre codeblock
POST 
mws.amazonservices.com
/Reports/2009-01-01
?AWSAccessKeyId=AKIAJSTDR2444BJQ
&AWSAccountId=458080
&MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
&Marketplace=ATVPDKIKX0DER
&SellerId=AC28N11YUQ
&SignatureVersion=2
&Version=2009-01-01
&RequestId=2d093e-0408-4517-9685-
474d1a0a8e9e
&CustomerId=A2AR6RWNQ
&NamespaceUri=
http%3A%2F%2Fmws.amazonservices.com
%2Fdoc%2F2009-01-01%2F
&ServiceName=MarketplaceWebService
&Action=GetReportList
&ErrorCode=ServiceUnavailable
&ErrorFault=Receiver 
HTTP/0.0" 503 296 "-" "UST/1.0 
(Language=PHP/5.2.14; 
MWSClientVersion=2009-07-02; 
Platform=Linux infong 2.4 #1 
SMP Wed Nov 4 21:12:12 
UTC 2009 i686 GNU/Linux/Linux 
infong 2.4 #1 SMP 
Wed Nov 4 21:12:12 UTC 2009 i686 
GNU/Linux/Linux infong 2.4 
#1 SMP Wed Nov 4 21:12:12 UTC 
2009 i686 GNU/Linux)
```

[↑
Top](#DG_ErrorMessages_Examples)

</div>

</div>

</div>

</div>

<div id="ErrorMessages_Examples_503_throttling_error" class="topic nested1">

## 503 throttling error

<div class="body">

<div class="section">

**Reason**

This 503 error indicates that your request is being throttled. When you
use the client library, the response is parsed and a
MarketplacewebService exception with all data included is thrown.

**How to troubleshoot**

Check the throttling limit in the API documentation for the type of
request you are submitting. Set up your *retry* logic to resend the
request when the appropriate amount of time has passed to prevent
throttling.

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre codeblock
POST 
mws.amazonservices.com
/Reports/2009-01-01
?AWSAccessKeyId=AKIVUUNIIMFTA
&AWSAccountId=7948
&MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
&Marketplace=ATVPDKIKX0DER
&SellerId=ASH1H4EF
&SignatureVersion=2
&Version=2009-01-01
&RequestId=260-0116-41fa-91d0-7bc98359c694
&CustomerId=ASH14EF
&NamespaceUri=
http%3A%2F%2Fmws.amazonservices.com
%2Fdoc%2F2009-01-01%2F
&ServiceName=MarketplaceWebService
&Action=GetReportRequestList
&ErrorCode=RequestThrottled
&ErrorFault=Sender
HTTP/0.0" 503 309 "-" "null"
```

[↑ Top](#ErrorMessages_Examples_503_throttling_error)

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
