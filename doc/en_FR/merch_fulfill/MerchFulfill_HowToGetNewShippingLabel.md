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

<div id="MerchFulfill_HowToGetNewShippingLabel" class="nested0">

# How to reprint a shipping label

<div class="body">

<span class="ph">This shows how to add functionality to the workflow
described in [How to fulfill Seller Fulfilled Prime
orders](MerchFulfill_HowToUseForPrime.md).</span>

**To reprint a shipping label**

1.  Call the
    [GetShipment](MerchFulfill_GetShipment.md "Returns an existing shipment for a given identifier.")
    operation, specifying the
    <span class="keyword parmname">ShipmentId</span> value of the
    shipment for which you want to reprint the shipping label.
2.  Extract and print the shipping label from the
    <span class="keyword parmname">FileContents</span> element returned
    by the <span class="keyword apiname">GetShipment</span> operation.
    See [How to extract a shipping label
    file](MerchFulfill_HowToExtractShippingLabel.md).

<div class="section">

## Related topics

[How to fulfill Seller Fulfilled Prime
orders](MerchFulfill_HowToUseForPrime.md)

[How to extract a shipping label
file](MerchFulfill_HowToExtractShippingLabel.md)

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
