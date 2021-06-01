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

<div id="DG_ISO4217" class="nested0">

# ISO 4217 use in <span class="ph">Amazon MWS</span>

<div class="body">

<span class="ph">Amazon Marketplace Web Service (Amazon MWS)</span> uses
currency codes based on ISO 4217. This page will clarify just how you
should format and use currency data in <span class="ph">Amazon
MWS</span>.

<div id="DG_ISO4217__formats" class="section">

## Currency number formats

All currency data is expressed as a three-letter code. The first two
letters of the code are taken from the two letters of ISO 3166-1 alpha-2
country codes and the third is usually the initial of the currency
itself. Codes are represented as capital letters. For example,
Australia's currency code is AUD: AU for Australia and D for dollar.

There are also codes for "supranational" currencies, procedural
purposes, and several things which are "similar to" currencies (the
so-called
<a href="https://en.wikipedia.org/wiki/ISO_4217#X_currencies" class="xref">X currencies</a>).
Changes in the codes take place as needed to reflect changes to
countries and currencies. For example, Gold has the code XAU, Silver has
the code XAG and XXX is the code for a transaction involving no
currency.

There is no provision for embedding exchange rates in these codes.

There is also a three-digit code number assigned to each currency, based
on ISO 3166-1 numeric codes, but this is not currently used by <span
class="ph">Amazon MWS</span>. Minor currency units are also defined in
ISO 4217, but they are not currently used by <span class="ph">Amazon
MWS</span>.

Amazon MWS uses currency codes as values for operation parameters. This
means that only the currency code is required. Other parameters are used
for amounts.

</div>

<div id="DG_ISO4217__4217References" class="section">

## References

-   <a href="https://en.wikipedia.org/wiki/ISO_4217" class="xref">ISO 4217</a>
-   <a href="https://www.currency-iso.org/en/home/tables/table-a1.html" class="xref">Official currency &amp; funds code list (XML format)</a>
-   <a href="https://www.currency-iso.org/en/home.html" class="xref">ISO 4217 Maintenance Agency</a>

</div>

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="../dev_guide/DG_StandardsCompliance.md" class="link">Standards compliance in Amazon MWS</a>

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
