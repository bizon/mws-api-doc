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

# Creating a Canonicalized Query String

<div class="body">

To create an <span class="ph">Amazon MWS</span> query request, you first
construct a query string with the query information. You then sign this
query string and include it in the request submission. All parameters
must be in natural-byte order when calculating the signature. The string
consists of:

  - The HTTP action. This value is most often **POST**.
  - The domain name of the request, such as
    <span class="ph filepath">https://mws.amazonservices.com/</span>.
    For a list of endpoints for each Amazon marketplace, see the
    <span class="ph">Amazon MWS</span> Endpoints section in this guide.
    After the endpoint is a forward slash (/), which separates the
    endpoint from the parameters.
  - `AWSAccessKeyId` — Your <span class="ph">Amazon MWS</span> account
    is identified by your access key Id, which <span class="ph">Amazon
    MWS</span> uses to look up your Secret Access Key.
  - `Action` — The action you want to perform on the endpoint, such as
    the operation
    <span class="keyword apiname">GetFeedSubmissionResult</span>.
  - `Parameters` — Any required and optional request parameters.
  - `MWSAuthToken` — Represents the authorization of a specific
    developer of a web application by a specific Amazon seller.
  - `MarketplaceIdList` — An optional structured list of marketplace Ids
    for supporting sellers registered in multiple marketplaces. For
    example, two marketplace Ids would be formatted as:
    \&MarketplaceIdList.Id.1=ATVPDKIKX0DER\&MarketplaceIdList.Id.2=A1F83G8C2ARO7P.
    Note that the `MarketplaceIdList` parameter is not used in the Japan
    marketplace..
  - `SellerId` or `Merchant` — Your seller or merchant identifier.
  - `SignatureMethod` — The HMAC hash algorithm you are using to
    calculate your signature. Both HmacSHA256 and HmacSHA1 are supported
    hash algorithms, but Amazon recommends using HmacSHA256.
  - `SignatureVersion` — Which signature version is being used. This is
    <span class="ph">Amazon MWS</span>-specific information that tells
    <span class="ph">Amazon MWS</span> the algorithm you used to form
    the string that is the basis of the signature. For
    <span class="ph">Amazon MWS</span>, this value is currently
    **SignatureVersion=2**.
  - `Timestamp` — Each request must contain the timestamp of the
    request. Depending on the API function you're using, you can provide
    an expiration date and time for the request instead of the
    timestamp.
  - `Version` — The version of the API section being called.

To create the query string to be signed, do the following:

1.  Sort the UTF-8 query string components by parameter name with
    natural byte ordering. The parameters can come from the GET URI or
    from the POST body (when Content-Type is
    application/x-www-form-urlencoded).

2.  URL encode the parameter name and values according to the following
    rules:
    
      - Do not URL encode any of the unreserved characters that RFC 3986
        defines. These unreserved characters are A-Z, a-z, 0-9, hyphen (
        - ), underscore ( \_ ), period ( . ), and tilde ( \~ ).
      - Percent encode all other characters with %XY, where X and Y are
        hex characters 0-9 and uppercase A-F.
      - Percent encode extended UTF-8 characters in the form %XY%ZA....
      - Percent encode the space character as %20. Do **not** percent
        encode the space character as +, as some common encoding schemes
        do.

3.  Separate the encoded parameter names from their encoded values with
    the equals sign ( = ) (ASCII character 61), even if the parameter
    value is empty.

4.  Separate the name-value pairs with an ampersand ( & ) (ASCII code
    38).

5.  Create the string to sign according to the following pseudo-grammar
    (the "\\n" represents an ASCII newline).
    
    ``` pre codeblock
    StringToSign = HTTPVerb + "\n" +
      ValueOfHostHeaderInLowercase + "\n" +
      HTTPRequestURI + "\n" +
      CanonicalizedQueryString <from the preceding step>
    ```
    
    The HTTPRequestURI component is the HTTP absolute path component of
    the URI up to, but not including, the query string. If the
    HTTPRequestURI is empty, use a forward slash ( / ).

The following example shows a query string for a
<span class="keyword apiname">GetFeedSubmissionResult</span> request.
Note that there are no spaces or line breaks in the sorted parameter
string.

``` pre codeblock
POST
mws.amazonservices.com
/Feeds/2009-01-01
AWSAccessKeyId=0PExampleR2&Action=GetFeedSubmissionResult&FeedSubmissionId=20Example76&MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE&Marketplace=ATExampleER&SellerId=A1ExampleE6&SignatureMethod=HmacSHA256&SignatureVersion=2&Timestamp=2009-02-04T17%3A44%3A33.500Z&Version=2009-01-01&Signature=CNExampleQ%3D
```

This is the string that you sign and then include in your query request.
The steps that show how to sign the query request string are in the
section "Signing the query request."

</div>

<div id="RelatedTopics" class="topic nested1">

## Related topics

<div class="body">

[Using the Amazon MWS client libraries](DG_ClientLibraries.md)

[Working with Timestamps](DG_Timestamps.md)

[Signing a Query Request](DG_SigningQueryRequest.md)

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
