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
<span id="MWSDX_dep_notice"></span>

### Deprecation Notice:

Amazon Marketplace Web Service (MWS) will no longer be available after
**December 31, 2023**. All MWS developers must migrate to Selling
Partner API (SP-API) to avoid service disruptions. Refer to the
[Migration
Hub](https://developer-docs.amazon.com/sp-api/page/migration-hub) for
more information.

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

<div id="DG_ISO8601" class="nested0">

# ISO 8601 use in <span class="ph">Amazon MWS</span>

<div class="body">

<span class="ph">Amazon Marketplace Web Service (Amazon MWS)</span>
formats date- and time-related data similar to the RFC 3339 standard,
which defines a subset profile of ISO 8601 for use in Internet protocols
and standards. This section will clarify just how you should format and
use date and time data in <span class="ph">Amazon MWS</span>.

<div id="DG_ISO8601__formats" class="section">

## Type DateTime

All date and time data is expressed as calendar dates (year, month, day)
and a 24-hour day. Day and time data is always expressed in a combined
format. No truncated formats are allowed. Dates are based on the
Gregorian calendar. All date and time data is expressed numerically,
leading zeros are preserved.

The basic type DateTime string patterns are `yyyy-MM-ddTHH:mm:ss.sssZ`
(for UTC) or `yyyy-MM-ddTHH:mm:ss.sss±hh:mm` (for a local time offset).
The character '**T**' is a required delimiter between the date and time
sections. Times are expressed in the extended format: the '**:**' is
used as a delimiter between hours, minutes and seconds. Fractional
seconds are expressed with a decimal mark ('**.**' or '**,**') when
needed.

</div>

<div id="DG_ISO8601__datetimetype" class="section">

## Type conflicts

All use of date and time data in <span class="ph">Amazon MWS</span>
should be expressed as type <span
class="keyword parmname">DateTime</span>. However, there are a few
parameters that express date or time as a simple string. Check the
parameter type definition to be sure of which type to use. Using the
wrong type will generate an error.

</div>

<div id="DG_ISO8601__time_intervals" class="section">

## Time intervals

While time intervals and durations are allowed under ISO 8601, they are
not currently used in <span class="ph">Amazon MWS</span>.

</div>

<div id="DG_ISO8601__8601_example" class="section">

## Example:

``` pre
  2016-03-16T14:32:16.50-07
```

This example is read as the 16th day of March in 2016 at 14hrs 32min and
16.50 seconds local time. The local time is 7 hours behind UTC.

</div>

<div id="DG_ISO8601__8601References" class="section">

## References

-   <a href="https://en.wikipedia.org/wiki/ISO_8601" class="xref">ISO 8601</a>
-   <a href="http://www.iso.org/iso/home/store/catalogue_tc/catalogue_detail.htm?csnumber=40874" class="xref">ISO 8601:2004</a>
-   <a href="https://tools.ietf.org/html/rfc3339" class="xref">RFC 3339</a>
-   <a href="https://en.wikipedia.org/wiki/List_of_UTC_time_offsets" class="xref">List of UTC time offsets</a>

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
