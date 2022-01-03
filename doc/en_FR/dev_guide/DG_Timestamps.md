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

# Working with Timestamps

<div class="body">

The timestamp (or expiration time) you use in an <span class="ph">Amazon
Marketplace Web Service (Amazon MWS)</span> request must be a `dateTime`
object. A best practice is to provide the timestamp in Coordinated
Universal Time (UTC) in <span
class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>,
such as "2009-03-03T18:12:22Z" or "2009-02-23T18:12:22.093-07". The
`Timestamp` attribute must contain the client's machine time in <span
class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>;
requests with a timestamp significantly different (15 minutes) than the
receiving machine's clock will be rejected to help prevent replay
attacks. For more information about timestamps in XML, see
<a href="http://www.w3.org/TR/xmlschema-2/#dateTime" class="xref">http://www.w3.org/TR/xmlschema-2/#dateTime</a>.

Every <span class="ph">Amazon MWS</span> response includes a Date header
in its HTTP response that you can use to check whether your local
machine's time matches our server's time, such as Date: Tue, 24 Mar 2009
20:34:28 GMT You can also load the <span class="ph">Amazon MWS</span>
address
<a href="https://mws.amazonservices.com/" class="xref">https://mws.amazonservices.com/</a>
in any Web browser (no request is needed) to receive a response with the
current <span class="ph">Amazon MWS</span> server time:

``` pre
<?xml version="1.0"?>
<PingResponse>
  <Timestamp timestamp="2009-03-24T20:29:19:22Z"/>
</PingResponse>
```

Here are a few additional considerations when working with timestamps:

-   In order to allow <span class="ph">Amazon MWS</span> to extend the
    content of the PingResponse, any software you write to parse the
    `Timestamp` should not break if sibling XML tags start to appear.
    Generally, you should ignore unknown tags in any XML <span
    class="ph">Amazon MWS</span> sends you, as per the web architectural
    principle in Section 5.2 of
    <a href="http://www.w3.org/TR/webarch/" class="xref">http://www.w3.org/TR/webarch/</a>.
-   If you specify a timestamp (instead of an expiration time), the
    request automatically expires 15 minutes after the timestamp. In
    other words, <span class="ph">Amazon MWS</span> does not process a
    request if the timestamp is more than 15 minutes earlier than the
    current time on <span class="ph">Amazon MWS</span> servers. <span
    class="ph">Amazon MWS</span> also does not process a request if the
    timestamp is more than 15 minutes later than the current time on
    <span class="ph">Amazon MWS</span> servers. Make sure your server's
    time is set correctly.
-   If you are using .NET, you must not send overly specific timestamps,
    due to different interpretations of how extra time precision should
    be dropped. To avoid overly specific timestamps, manually construct
    `dateTime` objects with no more than millisecond precision.

</div>

<div id="RelatedTopics" class="topic nested1">

## Related topics

<div class="body">

<a href="DG_ClientLibraries.md" class="xref">Using the Amazon MWS client libraries</a>

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
