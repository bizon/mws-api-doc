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

# Using the Content-MD5 hash with the SubmitFeed and GetFeedSubmissionResult operations

<div class="body conbody">

The Content-MD5 header and
<span class="keyword parmname">ContentMD5Value</span> parameter are used
as a message integrity check to verify that the decoded data received is
the same data that was initially sent.

When you use the [SubmitFeed](../feeds/Feeds_SubmitFeed.md) operation,
you must create an MD5 hash of the HTTP entity body, and include it in
your request. You should include the hash in a
<span class="keyword parmname">ContentMD5Value</span> parameter. This
lets <span class="ph">Amazon Marketplace Web Service (Amazon MWS)</span>
compare the MD5 hash you create with the MD5 hash it creates when it
receives the feed. <span class="ph">Amazon MWS</span> can then determine
if the feed submitted for processing is identical to the feed that was
received. This process prevents corrupted descriptive data or pricing
product data from appearing in Amazon product listings.

For backward compatibility, you can still include the hash in the
Content-MD5 header when calling
<span class="keyword apiname">SubmitFeed</span>. Passing the MD5 value
as a <span class="keyword apiname">SubmitFeed</span> parameter instead
of a header means that the MD5 hash is included in the method signature,
which prevents anyone on the network from tampering with the feed
content. Passing a Content-MD5 header prevents accidental corruption but
not intentional tampering.

When you use the
[GetFeedSubmissionResult](../feeds/Feeds_GetFeedSubmissionResult.md)
operation, you must calculate an MD5 hash for the received feeds report
and compare that with the Content-MD5 header that is included in the
response. If the two match, the report was not corrupted in
transmission.

The <span class="ph">Amazon MWS</span> client libraries provide an easy
way to pass in the Content-MD5 hash with every <span class="ph">Amazon
MWS</span> request, as long as you send data that has been stored on
disk and an MD5 hash has been created for the data. For more information
about working with the Content-MD5 header, see [Working with Content-MD5
checksums](../dev_guide/DG_MD5.md).

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:** [What you should know about the Amazon MWS Feeds API
section](../feeds/Feeds_Overview.md)

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
