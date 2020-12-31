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

<div id="ExtractingPdfDocumentData" class="nested0">

Extracting PDF Document Data
============================

<div class="body">

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="../fba_inbound/FBAInbound_Overview.md" class="link">What you should know about the Fulfillment Inbound Shipment API section</a>

</div>

</div>

</div>

<div id="Description" class="topic concept nested1">

Description
-----------

<div class="body conbody">

The
<a href="../fba_inbound/FBAInbound_GetPackageLabels.md" class="xref">GetPackageLabels</a>,
<a href="../fba_inbound/FBAInbound_GetUniquePackageLabels.md" class="xref">GetUniquePackageLabels</a>,
<a href="../fba_inbound/FBAInbound_GetPalletLabels.md" class="xref">GetPalletLabels</a>,
and
<a href="../fba_inbound/FBAInbound_GetBillOfLading.md" class="xref">GetBillOfLading</a>
operations return PDF document data for printing shipping labels and
carrier labels for an inbound shipment. Amazon compresses PDF document
data before returning it as a Base64-encoded string. To obtain the
actual PDF document, you must decode the Base64-encoded string, save it
as a binary file with a “.zip” extension, and then extract the PDF file
from the ZIP file. These operations also return a Base64-encoded MD5
hash to validate the document data.

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
