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

<div id="EasyShip_HowToHandleSerialNumbers" class="nested0">

# How to handle order items that require serial numbers

<div class="body">

Some items in an <span class="ph">Amazon Easy Ship</span> order require
serial numbers so that Amazon can generate warranty documents for them.
Use the <span class="keyword apiname">ListOrderItems</span> operation to
find out which items require serial numbers.

<div class="p">

**To handle order items with serial numbers**

1.  Before calling the
    <a href="EasyShip_CreateScheduledPackage.md" class="xref">CreateScheduledPackage</a>
    operation, call the
    <a href="../orders-2013-09-01/Orders_ListOrderItems.md" class="xref">ListOrderItems</a>
    operation, specifying the Amazon Order ID for the order that you
    want to create a scheduled package for.

    Amazon returns the items in the order, marking the items that
    require a serial number with <span
    class="keyword parmname">SerialNumberRequired</span>=`true`.

2.  Call the
    <a href="EasyShip_CreateScheduledPackage.md" class="xref">CreateScheduledPackage</a>
    operation using <span
    class="keyword parmname">PackageItemList</span> to specify serial
    numbers for all of the items marked <span
    class="keyword parmname">SerialNumberRequired</span>=`true` in
    Step 1. Don't specify serial numbers for items marked <span
    class="keyword parmname">SerialNumberRequired</span>=`false`.

    Amazon generates warranty documents for the items that you specified
    serial numbers for. For information about getting the documents that
    Amazon generates when you create a scheduled package, see
    <a href="../easy_ship/EasyShip_HowToGetEasyShipDocs.md" class="xref">How to get invoice, shipping label, and warranty documents</a>.

</div>

<div class="section">

## Releated topics

<a href="../easy_ship/EasyShip_HowToGetEasyShipDocs.md" class="xref">How to get invoice, shipping label, and warranty documents</a>

</div>

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="../easy_ship/EasyShip_Overview.md" class="link">What you should know about the Easy Ship API section</a>

</div>

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
