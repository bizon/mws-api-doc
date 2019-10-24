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

<div id="MerchFulfill_HowToExtractShippingLabel" class="nested0">

# How to extract a shipping label file

<div class="body">

The [CreateShipment](MerchFulfill_CreateShipment.md) and
[GetShipment](MerchFulfill_GetShipment.md "Returns an existing shipment for a given identifier.")
operations return a shipping label file in PDF, PNG, or ZPL format,
depending on the carrier. Amazon compresses the document data before
returning it as a Base64-encoded string.

**To extract document data from a compressed file**

1.  Decode the Base64-encoded string.
2.  Save the decoded string with a “.gzip” extension.
3.  Extract the PDF, PNG, or ZPL file from the GZIP file.

<span class="keyword apiname">CreateShipment</span> and
<span class="keyword apiname">GetShipment</span> also return a
Base64-encoded MD5 hash to validate the document data.

<div class="section">

## Related topics

[How to fulfill Seller Fulfilled Prime
orders](MerchFulfill_HowToUseForPrime.md)

[How to reprint a shipping
label](MerchFulfill_HowToGetNewShippingLabel.md)

</div>

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:** [What you should know about the Merchant Fulfillment
service](../merch_fulfill/MerchFulfill_Overview.md)

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
