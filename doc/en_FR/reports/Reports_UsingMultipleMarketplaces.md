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

<div id="reports_using_multiple_marketplaces" class="nested0">

# Using multiple marketplaces

<div class="body">

Describes the best practices to follow when you are registered to sell
in multiple marketplaces.

If you are registered in multiple marketplaces, then you have multiple
<span class="keyword parmname">MarketplaceId</span> values associated
with your <span class="keyword parmname">SellerId</span>. These multiple
<span class="keyword parmname">MarketplaceId</span> values can be, for
example, an Amazon seller account or a <span class="ph">Checkout by
Amazon</span> account, where those services are available. If you are in
the Europe (EU) or North America (NA) region, you can sell in multiple
marketplaces if you have registered using a single, unified seller
account, and you will have multiple
<span class="keyword parmname">MarketplaceId</span> values associated
with your account.

Every seller has a default marketplace. The default marketplace is based
on the country in which you first registered as a seller. For example,
if you used the DE Seller Central website to register, your default
marketplace would be DE and your default
<span class="keyword parmname">MarketplaceId</span> would be
A1PA6795UKMFR9 (see the table below for seller
<span class="keyword parmname">MarketplaceId</span> values). For more
information on selling in multiple marketplaces, see [Selling on
Amazon's European
Marketplaces](https://sellercentral-europe.amazon.com/gp/help/200671260).

For backwards compatibility, when no marketplace is specified, all
marketplaces within the default country locale are shown.

<div class="note note">

<span class="notetitle">Note:</span> You can use the
<span class="ph">Amazon MWS</span> <span class="ph">Sellers API
section</span> to determine what
<span class="keyword parmname">MarketplaceId</span> values are
associated with your
<span class="keyword parmname">SellerId</span>.

</div>

<div class="section">

## Using the <span class="keyword parmname">MarketplaceIdList</span> parameter

You specify what marketplaces you want a report to cover by supplying a
list of <span class="keyword parmname">MarketplaceId</span> values to
the optional <span class="keyword parmname">MarketplaceIdList</span>
parameter when you call the
<span class="keyword apiname">RequestReport</span> operation. For
example, an EU multiple-marketplace seller could specify that a report
should include information from both their FR and DE marketplaces by
specifying the <span class="keyword parmname">MarketplaceIdList</span>
parameter as follows:

``` pre codeblock
&MarketplaceIdList.Id.1=A13V1IB3VIYZZH
&MarketplaceIdList.Id.2=A1PA6795UKMFR9
```

Do not confuse this parameter with the
<span class="keyword parmname">Marketplace</span> parameter; the
<span class="keyword parmname">Marketplace</span> parameter is no longer
used for authentication and is deprecated.

For EU and NA sellers, you do not need to use a specific country
endpoint, such as https://mws.amazonservices.de, to indicate what
marketplace a report is for. EU and NA sellers can obtain reports for a
given EU or NA marketplace by specifying that
<span class="keyword parmname">MarketplaceId</span> when submitting a
report request. For a list of
<span class="keyword parmname">MarketplaceId</span> values, see [Amazon
MWS endpoints and MarketplaceId values](../dev_guide/DG_Endpoints.md).
You can also specify a <span class="ph">Checkout by Amazon</span>
<span class="keyword parmname">MarketplaceId</span>
value.

</div>

<div class="section">

## Behavior of reports when submitting multiple <span class="keyword parmname">MarketplaceId</span> values

If you include multiple
<span class="keyword parmname">MarketplaceId</span> values when
submitting a report request, report processing will have a more complex
behavior. The following are some general rules when submitting a report
request with multiple
<span class="keyword parmname">MarketplaceId</span> values:

  - Reports can vary, depending on the
    <span class="keyword apiname">ReportType</span> and
    <span class="keyword parmname">MarketplaceId</span> values
    submitted. See below for information on how a particular
    <span class="keyword apiname">ReportType</span> behaves when
    requested with multiple
    <span class="keyword parmname">MarketplaceId</span> values.
  - If more than one <span class="keyword parmname">MarketplaceId</span>
    value is submitted and one or more of those
    <span class="keyword parmname">MarketplaceId</span> values fail
    validation, for whatever reason, then <span class="ph">Amazon
    MWS</span> returns an error and the submission fails.
  - If no <span class="keyword parmname">MarketplaceId</span> value is
    provided, reports that are not Listings Reports show all
    marketplaces the seller is registered in. You must specify a
    <span class="keyword parmname">MarketplaceId</span> value for
    Listings Reports.
  - If a seller does not have a status of **Active** in a marketplace,
    only Settlement Reports will be available for that marketplace. For
    example, if a seller's status in a marketplace is Pending because
    they have not completed the registration process, that seller would
    only be able to retrieve Settlement Reports.
  - Note that <span class="ph">Amazon MWS</span> validates a report
    request before it is queued for processing. A report request passes
    validation when it contains appropriate
    <span class="keyword parmname">MarketplaceId</span> values for the
    <span class="keyword apiname">ReportType</span> requested. Passing
    validation does not mean that the report will be processed
    successfully.

</div>

<div class="section">

## Behavior of Listings Reports when submitting multiple <span class="keyword parmname">MarketplaceId</span> values

The [Listings
Reports](Reports_ReportType.md#ReportTypeCategories__ListingsReports)
in the "ReportType enumeration" topic can only provide information for
one marketplace per
request.

</div>

<div class="section">

## Behavior of Order Reports when submitting multiple <span class="keyword parmname">MarketplaceId</span> values

The flat file [Order
Reports](Reports_ReportType.md#ReportTypeCategories__OrderReports) in
the "ReportType enumeration" topic can be used with the
<span class="keyword parmname">ShowSalesChannel</span> parameter to show
an additional column of sales channel information. The following code
shows how the
<span class="keyword parmname">ReportOptions=ShowSalesChannel</span>
parameter is included in a report request:

``` pre codeblock
POST /?AWSAccessKeyId=SDFSD235ASSDFG3445AS
  &Action=RequestReport
  &MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
  &MarketplaceIdList.Id.1=A1F83G8C2ARO7P
  &MarketplaceIdList.Id.2=A1PA6795UKMFR9
  &SellerId=AGFDG34255SFDSSHV83
  &SignatureVersion=2
  &Timestamp=2011-06-23T22%3A33%3A25Z
  &Version=2009-01-01
  &Signature=%2BtKQ637UjDCoE%2F3w8GTmsd8E29Lrgsuc%2FkdYBLPfyE8%3D
  &SignatureMethod=HmacSHA256
  &ReportType=_GET_CONVERGED_FLAT_FILE_ORDER_REPORT_DATA_
  &ReportOptions=ShowSalesChannel%3Dtrue HTTP/1.1
Host: mws.amazonservices.com
x-amazon-user-agent: AmazonJavascriptScratchpad/1.0 (Language=Javascript)
Content-Type: text/xml
```

</div>

<div class="section">

## Behavior of Order Tracking Reports when submitting multiple <span class="keyword parmname">MarketplaceId</span> values

The [Order Tracking
Reports](Reports_ReportType.md#ReportTypeCategories__OrderTrackingReports)
in the "ReportType enumeration" topic return orders from all of the
marketplaces that you are registered in even if you specify only a
subset of the marketplaces that you are registered in when you submit a
report
request.

</div>

<div class="section">

## Behavior of Settlement Reports when submitting multiple <span class="keyword parmname">MarketplaceId</span> values

The [Settlement
Reports](Reports_ReportType.md#ReportTypeCategories__SettlementReports)
in the "ReportType enumeration" topic can be retrieved regardless of the
status of the seller in the marketplace. Settlement Reports will contain
Amazon seller and <span class="ph">Checkout by Amazon</span> (if
applicable) settlement transactions.

</div>

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:** [What you should know about the Amazon MWS Reports API
section](../reports/Reports_Overview.md)

</div>

</div>

<div class="relinfo">

**Related information**  

<div>

[Use ReportProcessingFinishedNotification when requesting a
report](../reports/Reports_UseReportProcessingFinished.md)

</div>

<div>

[Working with order
reports](../reports/Reports_WorkingWithOrderReports.md "Describes how to schedule and manage order reports.")

</div>

<div>

[Using NextToken to request additional
pages](../reports/Reports_UsingNextToken.md "Describes how to use the NextToken to receive more response elements than the maximum number of response elements allowed by an operation.")

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
