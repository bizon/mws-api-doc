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

# Step 8 - Request shipping labels for your inbound shipment

<div class="body conbody">

Call the
[GetUniquePackageLabels](../fba_inbound/FBAInbound_GetUniquePackageLabels.html)
operation to request unique shipping labels for your inbound shipments.

<div class="note important">

<span class="importanttitle">Important:</span> Before calling the
<span class="keyword apiname">GetUniquePackageLabels</span> operation,
use the [Feeds API section](../feeds/Feeds_Overview.html) to submit the
FBA Inbound Shipment Carton Information Feed (see [Step
7](FBAGuide_SubmitCartonContentsFeed.html)). This provides information
to Amazon about the carton contents of your inbound shipment, which
helps to ensure that your shipment is processed at the
<span class="ph">Amazon fulfillment center</span> quickly and
accurately. You must submit this feed before calling the
<span class="keyword apiname">GetUniquePackageLabels</span> operation,
otherwise the operation returns the
<span class="keyword parmname">NoPackageContentInformation</span> error.

</div>

Each shipping label returned by the
<span class="keyword apiname">GetUniquePackageLabels</span> operation
should be affixed to the package in the shipment that it corresponds to,
so the labels indicate the package contents. This helps to ensure that
your shipment is processed at the Amazon fulfillment center quickly and
accurately.

To get shipping labels on the right packages, do the following for each
shipping label:

1.  Get the Package ID, which is the string located directly below the
    bar code of the shipping label. This ID matches one of the
    <span class="keyword parmname">CartonId</span> values that you
    included in the FBA Inbound Shipment Carton Information Feed that
    you submitted in [Step 7](FBAGuide_SubmitCartonContentsFeed.html).
2.  Determine which package to affix the shipping label to using the
    record of the correspondence between
    <span class="keyword parmname">CartonId</span> values and packages
    that you created in [Step
    7](FBAGuide_SubmitCartonContentsFeed.html).
3.  Affix the label to its corresponding package.

<div class="section">

## Information included on shipping labels

In all circumstances, the
<span class="keyword apiname">GetUniquePackageLabels</span> operation
returns shipping labels that include a unique bar code and Package ID
(the string located directly below the bar code). Depending on the
contents of the packages in your shipments, the labels can also include
an ASIN and an expiration date.

Shipping labels include an ASIN and an expiration date in either of the
following situations:

  - Every item in the shipment shares the same ASIN and expiration date.
  - The shipment includes multiple ASINs, but every package in the
    shipment contains items that share the same ASIN and expiration
    date.

Shipping labels include an ASIN and no expiration date in either of the
following situations:

  - Every item in the shipment shares the same ASIN. The ASIN does not
    have an expiration date.
  - The shipment includes multiple ASINs, but every package in the
    shipment contains items that share the same ASIN. The ASINs do not
    have expiration dates.

Shipping labels do not include an ASIN or an expiration date when the
shipment contains at least one package with items that do not share the
same ASIN and expiration date.

</div>

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:** [Shipping inventory to Amazon's fulfillment
network](../fba_guide/FBAGuide_ShipInventoryToAFN.html)

</div>

<div class="previouslink">

**Previous topic:** [Step 7 - Submit carton content
information](../fba_guide/FBAGuide_SubmitCartonContentsFeed.html)

</div>

<div class="nextlink">

**Next topic:** [Step 9 - Request pallet labels or bills of lading
(LTL/FTL only)](../fba_guide/FBAGuide_RequestPalletLabelsOrBOL.html)

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