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

# Feeds Processing

<div class="body conbody">

<div class="p">

Here are a few points to help you better understand how feeds are
processed:

  - Inventory feeds, (product, price, inventory, relationship, image, or
    override feeds) and order feeds are processed separately; they can
    be submitted simultaneously.
  - \_POST\_PRODUCT\_DATA\_ feeds can be processed along with price,
    inventory, and other XML feeds. However, the price, inventory, and
    other feeds will fail if they refer to SKUs that the product feed
    hasn't finished processing. You should serialize price, inventory,
    and image updates after product feeds have completed.
  - All inventory feeds, other than \_POST\_PRODUCT\_DATA\_, can be
    submitted at the same time. For example price, inventory
    availability, relationship, and image feeds can all be submitted at
    the same time.
  - Feeds of the same type are processed sequentially. This applies to
    all inventory feed types. For example, if you submit two pricing
    feeds, only one is processed at a time.
  - Optimize your feeds submissions. Uploading many small feeds every
    few seconds is very inefficient and can result in a backlog,
    blocking other feeds from processing and forcing you to cancel some
    of the previously submitted feeds.
  - The feed processing report is stored in the output stream that was
    set on the request. For example, in the Java client library, you can
    call
    GetFeedSubmissionResultRequest\#setFeedSubmissionResultOutputStream()
    to control where the processing report can be stored. This is done
    because for large feeds, the processing report can be quite large.

</div>

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:** [What you should know about the Amazon MWS Feeds API
section](../feeds/Feeds_Overview.html)

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
