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

<div id="Reports_ReportType" class="nested0">

# ReportType enumeration

An enumeration of the types of reports that can be requested from
<span class="ph">Amazon MWS</span>.

<div id="Description" class="topic concept nested1">

## Description

<div class="body conbody">

The <span class="keyword apiname">ReportType</span> enumeration is used
by operations in the <span class="ph">Reports API</span> section to
indicate a particular report. For example, the
<span class="keyword apiname">RequestReport</span> operation uses the
<span class="keyword apiname">ReportType</span> value to indicate the
type of report requested.

The following report categories are supported:

  - [Inventory
    Reports](Reports_ReportType.md#ReportTypeCategories__ListingsReports)
  - [Order
    Reports](Reports_ReportType.md#ReportTypeCategories__OrderReports)
  - [Order Tracking
    Reports](Reports_ReportType.md#ReportTypeCategories__OrderTrackingReports)
  - [Pending Order
    Reports](Reports_ReportType.md#ReportTypeCategories__PendingOrderReports)
  - [Returns
    Reports](Reports_ReportType.md#ReportTypeCategories__ReturnsReports)
  - [Performance
    Reports](Reports_ReportType.md#ReportTypeCategories__PerformanceReports)
  - [Settlement
    Reports](Reports_ReportType.md#ReportTypeCategories__SettlementReports)
  - [Fulfillment By Amazon (FBA)
    Reports](Reports_ReportType.md#ReportTypeCategories__FBAReports)
  - [Tax
    Reports](Reports_ReportType.md#ReportTypeCategories__SalesTaxReports)
  - [Browse Tree
    Report](Reports_ReportType.md#ReportTypeCategories__BrowseTreeReports)
  - [Easy Ship
    Report](Reports_ReportType.md#ReportTypeCategories__EasyShipReport)
  - [Amazon Business
    Reports](Reports_ReportType.md#ReportTypeCategories__AmazonBusinessReports)
  - [AmazonPay
    Reports](Reports_ReportType.md#ReportTypeCategories__AmazonPayReports)

</div>

</div>

<div id="ReportTypeCategories" class="topic reference nested1">

## ReportType enumeration by report category

<div class="body refbody">

<div class="section">

The following tables show the report title, enumeration value, and
description of the report. Note that the enumeration value may be broken
into two lines for readability, but when you use the value as a string,
**there should be no spaces or hyphens in the value**.

In the report Description, note that Seller Central refers to sellers
who have registered to sell on Amazon in the past few years; Marketplace
refers to legacy sellers who registered to sell on Amazon prior to the
last few years. Some reports are only available for Marketplace or
Seller Central sellers.

</div>

<div id="ReportTypeCategories__ListingsReports" class="section">

### Inventory Reports

<div class="tablenoborder">

<table id="ReportTypeCategories__ListingReportsTable" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><span class="keyword parmname">Inventory Report</span>
<p>Enumeration value: <samp class="ph codeph">_GET_FLAT_FILE_OPEN_LISTINGS_DATA_</samp></p>
<p><span class="ph">API operation: <a href="../reports/Reports_RequestReport.md" class="xref">RequestReport</a></span></p></td>
<td>Tab-delimited flat file open listings report that contains a summary of the seller's product listings with the price and quantity for each SKU. For Marketplace and Seller Central sellers.
<p>This report accepts the following <a href="Reports_RequestReport.md#RequestParameters__ReportOptions" class="xref">ReportOptions</a> values:</p>
<ul>
<li><span class="keyword parmname">Custom</span> - A Boolean value that indicates whether a custom report is returned. For more information, see <a href="https://sellercentral-europe.amazon.com/listing/reports/custom" class="xref">Custom Inventory Reports</a>. Default: <var class="keyword varname">false</var>. URL-encoded example: <samp class="ph codeph">ReportOptions=custom%3Dtrue</samp>. <span class="ph">This functionality is available only in the Canada, US, UK, and India marketplaces.</span></li>
</ul></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">All Listings Report</span>
<p>Enumeration value: <samp class="ph codeph">_GET_MERCHANT_LISTINGS_ALL_DATA_</samp></p>
<p><span class="ph">API operation: <a href="../reports/Reports_RequestReport.md" class="xref">RequestReport</a></span></p></td>
<td>Tab-delimited flat file detailed all listings report. For Marketplace and Seller Central sellers.
<p>This report accepts the following <a href="Reports_RequestReport.md#RequestParameters__ReportOptions" class="xref">ReportOptions</a> values:</p>
<ul>
<li><span class="keyword parmname">Custom</span> - A Boolean value that indicates whether a custom report is returned. For more information, see <a href="https://sellercentral-europe.amazon.com/listing/reports/custom" class="xref">Custom Inventory Reports</a>. Default: <var class="keyword varname">false</var>. URL-encoded example: <samp class="ph codeph">ReportOptions=custom%3Dtrue</samp>. <span class="ph">This functionality is available only in the Canada, US, UK, and India marketplaces.</span></li>
</ul></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">Active Listings Report</span>
<p>Enumeration value: <samp class="ph codeph">_GET_MERCHANT_LISTINGS_DATA_</samp></p>
<p><span class="ph">API operation: <a href="../reports/Reports_RequestReport.md" class="xref">RequestReport</a></span></p></td>
<td>Tab-delimited flat file detailed active listings report. For Marketplace and Seller Central sellers.</td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Inactive Listings Report</span>
<p>Enumeration value: <samp class="ph codeph">_GET_MERCHANT_LISTINGS_INACTIVE_DATA_                                             </samp></p>
<p><span class="ph">API operation: <a href="../reports/Reports_RequestReport.md" class="xref">RequestReport</a></span></p></td>
<td>Tab-delimited flat file detailed inactive listings report. For Marketplace and Seller Central sellers.</td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">Open Listings Report</span>
<p>Enumeration value: <samp class="ph codeph">_GET_MERCHANT_LISTINGS_DATA_BACK_COMPAT_</samp></p>
<p><span class="ph">API operation: <a href="../reports/Reports_RequestReport.md" class="xref">RequestReport</a></span></p></td>
<td>Tab-delimited flat file open listings report.
<p>This report accepts the following <a href="Reports_RequestReport.md#RequestParameters__ReportOptions" class="xref">ReportOptions</a> values:</p>
<ul>
<li><span class="keyword parmname">Custom</span> - A Boolean value that indicates whether a custom report is returned. For more information, see <a href="https://sellercentral-europe.amazon.com/listing/reports/custom" class="xref">Custom Inventory Reports</a>. Default: <var class="keyword varname">false</var>. URL-encoded example: <samp class="ph codeph">ReportOptions=custom%3Dtrue</samp>. <span class="ph">This functionality is available only in the Canada, US, UK, and India marketplaces.</span></li>
</ul></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Open Listings Report Lite</span>
<p>Enumeration value: <samp class="ph codeph">_GET_MERCHANT_LISTINGS_DATA_LITE_</samp></p>
<p><span class="ph">API operation: <a href="../reports/Reports_RequestReport.md" class="xref">RequestReport</a></span></p></td>
<td>Tab-delimited flat file active listings report that contains only the SKU, ASIN, Price, and Quantity fields for items that have a quantity greater than zero. For Marketplace and Seller Central sellers.</td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">Open Listings Report Liter</span>
<p>Enumeration value: <samp class="ph codeph">_GET_MERCHANT_LISTINGS_DATA_LITER_</samp></p>
<p><span class="ph">API operation: <a href="../reports/Reports_RequestReport.md" class="xref">RequestReport</a></span></p></td>
<td>Tab-delimited flat file active listings report that contains only the SKU and Quantity fields for items that have a quantity greater than zero. For Marketplace and Seller Central sellers.</td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Canceled Listings Report</span>
<p>Enumeration value: <samp class="ph codeph">_GET_MERCHANT_CANCELLED_LISTINGS_DATA_</samp></p>
<p><span class="ph">API operation: <a href="../reports/Reports_RequestReport.md" class="xref">RequestReport</a></span></p></td>
<td>Tab-delimited flat file canceled listings report. For Marketplace and Seller Central sellers.
<p>This report accepts the following <a href="Reports_RequestReport.md#RequestParameters__ReportOptions" class="xref">ReportOptions</a> values:</p>
<ul>
<li><span class="keyword parmname">Custom</span> - A Boolean value that indicates whether a custom report is returned. For more information, see <a href="https://sellercentral-europe.amazon.com/listing/reports/custom" class="xref">Custom Inventory Reports</a>. Default: <var class="keyword varname">false</var>. URL-encoded example: <samp class="ph codeph">ReportOptions=custom%3Dtrue</samp>. <span class="ph">This functionality is available only in the Canada, US, UK, and India marketplaces.</span></li>
</ul></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">Sold Listings Report</span>
<p>Enumeration value: <samp class="ph codeph">_GET_CONVERGED_FLAT_FILE_SOLD_LISTINGS_DATA_</samp></p>
<p><span class="ph">API operation: <a href="../reports/Reports_RequestReport.md" class="xref">RequestReport</a></span></p></td>
<td>Tab-delimited flat file sold listings report that contains items sold on Amazon's retail website. For Marketplace and Seller Central sellers.</td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Listing Quality and Suppressed Listing Report</span>
<p>Enumeration value: <samp class="ph codeph">_GET_MERCHANT_LISTINGS_DEFECT_DATA_</samp></p>
<p><span class="ph">API operation: <a href="../reports/Reports_RequestReport.md" class="xref">RequestReport</a></span></p></td>
<td>Tab-delimited flat file listing quality and suppressed listing report that contains your listing information that is incomplete or incorrect. For Marketplace and Seller Central sellers.</td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">Pan-European Eligibility: FBA ASINs</span>
<p>Enumeration value: <samp class="ph codeph">_GET_PAN_EU_OFFER_STATUS_</samp></p>
<p><span class="ph">API operation: <a href="../reports/Reports_RequestReport.md" class="xref">RequestReport</a></span></p></td>
<td>Tab-delimited flat file report that contains enrollment status and eligibility information for the Pan-European FBA program for each of the seller's Amazon-fulfilled listings. <span class="ph">This report is only available to FBA sellers in the Spain, UK, France, Germany, and Italy marketplaces.</span> For more information, see <a href="https://sellercentral-europe.amazon.com/gp/help/201986960" class="xref">Pan-European Eligibility</a> in the Seller Central Help.</td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Pan-European Eligibility: Self-fulfilled ASINs</span>
<p>Enumeration value: <samp class="ph codeph">_GET_MFN_PAN_EU_OFFER_STATUS_</samp></p>
<p><span class="ph">API operation: <a href="../reports/Reports_RequestReport.md" class="xref">RequestReport</a></span></p></td>
<td>Tab-delimited flat file report that contains eligibility information for the Pan-European FBA Program for each of the seller's self-fulfilled listings. Self-fulfilled listings are not allowed in the Pan-European FBA program, and this report can help sellers determine whether to convert any of their self-fulfilled listings to Amazon-fulfilled listings in order to enroll them in the program. <span class="ph">This report is only available in the Spain, UK, France, Germany, and Italy marketplaces.</span> For more information, see <a href="https://sellercentral-europe.amazon.com/gp/help/201986960" class="xref">Pan-European Eligibility</a> in the Seller Central Help.</td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">Global Expansion Opportunities Report</span>
<p>Enumeration value: <samp class="ph codeph">                                                 _GET_FLAT_FILE_GEO_OPPORTUNITIES_</samp></p>
<p><span class="ph">API operation: <a href="../reports/Reports_RequestReport.md" class="xref">RequestReport</a></span></p></td>
<td>Tab-delimited flat file report that contains products that a seller lists which have a high sales potential in other Amazon marketplaces. <span class="ph">This report is only available in the US marketplace.</span></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Referral Fee Preview Report</span>
<p>Enumeration value: <samp class="ph codeph">_GET_REFERRAL_FEE_PREVIEW_REPORT_</samp></p>
<p><span class="ph">API operation: <a href="../reports/Reports_RequestReport.md" class="xref">RequestReport</a></span></p></td>
<td>Tab-delimited flat file that contains your open listings as well as the price and estimated referral fees for each SKU.
<div class="note note">
<span class="notetitle">Note:</span> The information in this report may be up to 24 hours old. Please do not request a report more than once per 24 hour period.
</div>
<span class="ph">This report is available in all marketplaces.</span></td>
</tr>
</tbody>
</table>

</div>

</div>

<div id="ReportTypeCategories__OrderReports" class="section">

### Order Reports

Note that the date range that you specify when requesting an order
report indicates when the orders became eligible for fulfillment (no
longer in a "pending" state), not when the orders were created.

<div class="tablenoborder">

<table id="ReportTypeCategories__OrderReportsTable" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><span class="keyword parmname">Unshipped Orders Report</span>
<p>Enumeration value: <samp class="ph codeph">_GET_FLAT_FILE_ACTIONABLE_ORDER_DATA_</samp></p>
<p><span class="ph">API operation: <a href="../reports/Reports_RequestReport.md" class="xref">RequestReport</a></span></p>
<p><span class="ph">API operation: <a href="Reports_ManageReportSchedule.md" class="xref" title="Creates, updates, or deletes a report request schedule for a specified report type.">ManageReportSchedule</a></span></p></td>
<td>Tab-delimited flat file report that contains only orders that are not confirmed as shipped. Can be requested or scheduled. For Marketplace and Seller Central sellers.
<p>This report accepts the following <a href="Reports_RequestReport.md#RequestParameters__ReportOptions" class="xref">ReportOptions</a> values:</p>
<ul>
<li><span class="keyword parmname">ShowSalesChannel</span> - A Boolean value that indicates whether an additional column is added to the report that shows the sales channel. Default: <var class="keyword varname">false</var>. URL-encoded example: <samp class="ph codeph">ReportOptions=ShowSalesChannel%3Dtrue</samp></li>
</ul></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Scheduled XML Order Report</span>
<p>Enumeration value: <samp class="ph codeph">_GET_ORDERS_DATA_</samp></p>
<p><span class="ph">API operation: <a href="Reports_ManageReportSchedule.md" class="xref" title="Creates, updates, or deletes a report request schedule for a specified report type.">ManageReportSchedule</a></span></p></td>
<td>Scheduled XML order report. For Seller Central sellers only.
<p>You can only schedule one _GET_ORDERS_DATA_ or _GET_FLAT_FILE_ORDERS_DATA_ report at a time. If you have one of these reports scheduled and you schedule a new report, the existing report will be canceled.</p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">Requested or Scheduled Flat File Order Report</span>
<p>Enumeration value: <samp class="ph codeph">_GET_FLAT_FILE_ORDERS_DATA_</samp></p>
<p><span class="ph">API operation: <a href="../reports/Reports_RequestReport.md" class="xref">RequestReport</a></span></p>
<p><span class="ph">API operation: <a href="Reports_ManageReportSchedule.md" class="xref" title="Creates, updates, or deletes a report request schedule for a specified report type.">ManageReportSchedule</a></span></p></td>
<td>Tab-delimited flat file order report that can be requested or scheduled. The report shows orders from the previous 60 days. For Marketplace and Seller Central sellers.
<p>Seller Central sellers can only schedule one _GET_ORDERS_DATA_ or _GET_FLAT_FILE_ORDERS_DATA_ report at a time. If you have one of these reports scheduled and you schedule a new report, the existing report will be canceled.</p>
<p>Marketplace sellers can only schedule one _GET_FLAT_FILE_ORDERS_DATA_ or _GET_CONVERGED_FLAT_FILE_ORDER_REPORT_DATA_ report at a time. If you have one of these reports scheduled and you schedule a new report, the existing report will be canceled.</p>
<div class="note note">
<span class="notetitle">Note:</span> The format of this report will differ slightly depending on whether it is scheduled or requested.
</div>
<p>This report accepts the following <a href="Reports_RequestReport.md#RequestParameters__ReportOptions" class="xref">ReportOptions</a> values:</p>
<ul>
<li><span class="keyword parmname">ShowSalesChannel</span> - A Boolean value that indicates whether an additional column is added to the report that shows the sales channel. Default: <var class="keyword varname">false</var>. URL-encoded example: <samp class="ph codeph">ReportOptions=ShowSalesChannel%3Dtrue</samp></li>
</ul></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Flat File Order Report</span>
<p>Enumeration value: <samp class="ph codeph">_GET_CONVERGED_FLAT_FILE_ORDER_REPORT_DATA_</samp></p>
<p><span class="ph">API operation: <a href="../reports/Reports_RequestReport.md" class="xref">RequestReport</a></span></p>
<p><span class="ph">API operation: <a href="Reports_ManageReportSchedule.md" class="xref" title="Creates, updates, or deletes a report request schedule for a specified report type.">ManageReportSchedule</a></span></p></td>
<td>Tab-delimited flat file order report that can be requested or scheduled. For Marketplace sellers only.
<p>You can only schedule one _GET_FLAT_FILE_ORDERS_DATA_ or _GET_CONVERGED_FLAT_FILE_ORDER_REPORT_DATA_ report at a time. If you have one of these reports scheduled and you schedule a new report, the existing report will be canceled.</p>
<div class="note note">
<span class="notetitle">Note:</span> The format of this report will differ slightly depending on whether it is scheduled or requested. For example, the format for the dates will differ, and the ship-method column is only returned when the report is requested.
</div>
<p>This report accepts the following <a href="Reports_RequestReport.md#RequestParameters__ReportOptions" class="xref">ReportOptions</a> values:</p>
<ul>
<li><span class="keyword parmname">ShowSalesChannel</span> - A Boolean value that indicates whether an additional column is added to the report that shows the sales channel. Default: <var class="keyword varname">false</var>. URL-encoded example: <samp class="ph codeph">ReportOptions=ShowSalesChannel%3Dtrue</samp></li>
</ul></td>
</tr>
</tbody>
</table>

</div>

</div>

<div id="ReportTypeCategories__OrderTrackingReports" class="section">

### Order Tracking Reports

These order tracking reports are available in North America (NA) and
Europe (EU). For all sellers. These reports return all orders,
regardless of fulfillment channel or shipment status. These reports are
intended for order tracking, not to drive your fulfillment process, as
the reports do not include customer-identifying information and
scheduling is not supported. Also note that for
<span class="ph">self-fulfilled</span> orders, item price is not shown
for orders in a "pending" state.

<div class="tablenoborder">

<table id="ReportTypeCategories__OrderTrackingReportsTable" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><span class="keyword parmname">Flat File Orders By Last Update Report</span>
<p>Enumeration value: <samp class="ph codeph">_GET_FLAT_FILE_ALL_ORDERS_DATA_BY_LAST_UPDATE_</samp></p>
<p><span class="ph">API operation: <a href="../reports/Reports_RequestReport.md" class="xref">RequestReport</a></span></p></td>
<td>Tab-delimited flat file report that shows all orders updated in the specified period. Cannot be scheduled. For all sellers.</td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Flat File Orders By Order Date Report</span>
<p>Enumeration value: <samp class="ph codeph">_GET_FLAT_FILE_ALL_ORDERS_DATA_BY_ORDER_DATE_</samp></p>
<p><span class="ph">API operation: <a href="../reports/Reports_RequestReport.md" class="xref">RequestReport</a></span></p></td>
<td>Tab-delimited flat file report that shows all orders that were placed in the specified period. Cannot be scheduled. For all sellers.</td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">Flat File Archived Orders Report</span>
<p>Enumeration value: <samp class="ph codeph">_GET_FLAT_FILE_ARCHIVED_ORDERS_DATA_BY_ORDER_DATE_</samp></p>
<p><span class="ph">API operation: <a href="../reports/Reports_RequestReport.md" class="xref">RequestReport</a></span></p></td>
<td>Tab-delimited flat file report that shows all archived orders that were placed in the specified period. Cannot be scheduled. For all sellers.</td>
</tr>
<tr class="even">
<td><span class="keyword parmname">XML Orders By Last Update Report</span>
<p>Enumeration value: <samp class="ph codeph">_GET_XML_ALL_ORDERS_DATA_BY_LAST_UPDATE_</samp></p>
<p><span class="ph">API operation: <a href="../reports/Reports_RequestReport.md" class="xref">RequestReport</a></span></p></td>
<td>XML report that shows all orders updated in the specified period. Cannot be scheduled. For all sellers.</td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">XML Orders By Order Date Report</span>
<p>Enumeration value: <samp class="ph codeph">_GET_XML_ALL_ORDERS_DATA_BY_ORDER_DATE_</samp></p>
<p><span class="ph">API operation: <a href="../reports/Reports_RequestReport.md" class="xref">RequestReport</a></span></p></td>
<td>XML report that shows all orders that were placed in the specified period. Cannot be scheduled. For all sellers.</td>
</tr>
</tbody>
</table>

</div>

</div>

<div id="ReportTypeCategories__PendingOrderReports" class="section">

### Pending Order Reports

These pending order reports are only available in the Japan marketplace.
These reports can be both scheduled and requested where noted.

<div class="tablenoborder">

<table id="ReportTypeCategories__PendingOrderReportsTable" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><span class="keyword parmname">Flat File Pending Orders Report</span>
<p>Enumeration value: <samp class="ph codeph">_GET_FLAT_FILE_PENDING_ORDERS_DATA_</samp></p>
<p><span class="ph">API operation: <a href="Reports_ManageReportSchedule.md" class="xref" title="Creates, updates, or deletes a report request schedule for a specified report type.">ManageReportSchedule</a></span></p>
<p><span class="ph">API operation: <a href="../reports/Reports_RequestReport.md" class="xref">RequestReport</a></span></p></td>
<td>Tab-delimited flat file report that can be requested or scheduled that shows all pending orders. For all sellers.</td>
</tr>
<tr class="even">
<td><span class="keyword parmname">XML Pending Orders Report</span>
<p>Enumeration value: <samp class="ph codeph">_GET_PENDING_ORDERS_DATA_</samp></p>
<p><span class="ph">API operation: <a href="Reports_ManageReportSchedule.md" class="xref" title="Creates, updates, or deletes a report request schedule for a specified report type.">ManageReportSchedule</a></span></p>
<p><span class="ph">API operation: <a href="../reports/Reports_RequestReport.md" class="xref">RequestReport</a></span></p></td>
<td>XML report that can be requested or scheduled that shows all pending orders. Can only be scheduled using Amazon MWS.</td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">Converged Flat File Pending Orders Report</span>
<p>Enumeration value: <samp class="ph codeph">_GET_CONVERGED_FLAT_FILE_PENDING_ORDERS_DATA_</samp></p>
<p><span class="ph">API operation: <a href="Reports_ManageReportSchedule.md" class="xref" title="Creates, updates, or deletes a report request schedule for a specified report type.">ManageReportSchedule</a></span></p>
<p><span class="ph">API operation: <a href="../reports/Reports_RequestReport.md" class="xref">RequestReport</a></span></p></td>
<td>Flat file report that can be requested or scheduled that shows all pending orders. For Marketplace sellers.</td>
</tr>
</tbody>
</table>

</div>

</div>

<div id="ReportTypeCategories__ReturnsReports" class="section">

### Returns Reports

<div class="tablenoborder">

<table id="ReportTypeCategories__ReturnsReportsTable" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><span class="keyword parmname">XML Returns Report by Return Date</span>
<p>Enumeration value: <samp class="ph codeph">_GET_XML_RETURNS_DATA_BY_RETURN_DATE_</samp></p>
<p><span class="ph">API operation: <a href="../reports/Reports_RequestReport.md" class="xref">RequestReport</a></span></p>
<p><span class="ph">API operation: <a href="Reports_ManageReportSchedule.md" class="xref" title="Creates, updates, or deletes a report request schedule for a specified report type.">ManageReportSchedule</a></span></p></td>
<td>XML report that can be requested or scheduled. Contains detailed returns information, including return request date, RMA ID, label details, ASIN, and return reason code. You can request up to 60 days of data in a single report.</td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Flat File Returns Report by Return Date</span>
<p>Enumeration value: <samp class="ph codeph">_GET_FLAT_FILE_RETURNS_DATA_BY_RETURN_DATE_</samp></p>
<p><span class="ph">API operation: <a href="../reports/Reports_RequestReport.md" class="xref">RequestReport</a></span></p>
<p><span class="ph">API operation: <a href="Reports_ManageReportSchedule.md" class="xref" title="Creates, updates, or deletes a report request schedule for a specified report type.">ManageReportSchedule</a></span></p></td>
<td>Tab-delimited flat file report that can be requested or scheduled. Contains detailed returns information, including return request date, RMA ID, label details, ASIN, and return reason code. You can request up to 60 days of data in a single report.</td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">XML Prime Returns Report by Return Date</span>
<p>Enumeration value: <samp class="ph codeph">_GET_XML_MFN_PRIME_RETURNS_REPORT_</samp></p>
<p><span class="ph">API operation: <a href="../reports/Reports_RequestReport.md" class="xref">RequestReport</a></span></p>
<p><span class="ph">API operation: <a href="Reports_ManageReportSchedule.md" class="xref" title="Creates, updates, or deletes a report request schedule for a specified report type.">ManageReportSchedule</a></span></p></td>
<td>XML report that can be requested or scheduled. Contains detailed Seller Fulfilled Prime returns information, including return request date, RMA ID, label details, ASIN, and return reason code. You can request up to 60 days of data in a single report.</td>
</tr>
<tr class="even">
<td><span class="keyword parmname">CSV Prime Returns Report by Return Date</span>
<p>Enumeration value: <samp class="ph codeph">_GET_CSV_MFN_PRIME_RETURNS_REPORT_</samp></p>
<p><span class="ph">API operation: <a href="../reports/Reports_RequestReport.md" class="xref">RequestReport</a></span></p>
<p><span class="ph">API operation: <a href="Reports_ManageReportSchedule.md" class="xref" title="Creates, updates, or deletes a report request schedule for a specified report type.">ManageReportSchedule</a></span></p></td>
<td>Comma-separated flat file report that can be requested or scheduled. Contains detailed Seller Fulfilled Prime returns information, including return request date, RMA ID, label details, ASIN, and return reason code. You can request up to 60 days of data in a single report.</td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">XML Return Attributes Report by Return Date</span>
<p>Enumeration value: <samp class="ph codeph">_GET_XML_MFN_SKU_RETURN_ATTRIBUTES_REPORT_</samp></p>
<p><span class="ph">API operation: <a href="../reports/Reports_RequestReport.md" class="xref">RequestReport</a></span></p>
<p><span class="ph">API operation: <a href="Reports_ManageReportSchedule.md" class="xref" title="Creates, updates, or deletes a report request schedule for a specified report type.">ManageReportSchedule</a></span></p></td>
<td>XML report that can be requested or scheduled. Contains detailed return attribute information by SKU, including prepaid label eligibility and returnless refund eligibility. You can request up to 60 days of data in a single report.</td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Flat File Return Attributes Report by Return Date</span>
<p>Enumeration value: <samp class="ph codeph">_GET_FLAT_FILE_MFN_SKU_RETURN_ATTRIBUTES_REPORT_</samp></p>
<p><span class="ph">API operation: <a href="../reports/Reports_RequestReport.md" class="xref">RequestReport</a></span></p>
<p><span class="ph">API operation: <a href="Reports_ManageReportSchedule.md" class="xref" title="Creates, updates, or deletes a report request schedule for a specified report type.">ManageReportSchedule</a></span></p></td>
<td>Tab-delimited flat file report that can be requested or scheduled. Contains detailed return attribute information by SKU, including prepaid label eligibility and returnless refund eligibility. You can request up to 60 days of data in a single report.</td>
</tr>
</tbody>
</table>

</div>

</div>

<div id="ReportTypeCategories__PerformanceReports" class="section">

### Performance Reports

<div class="tablenoborder">

<table id="ReportTypeCategories__PerformanceReportsTable" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><span class="keyword parmname">Flat File Feedback Report</span>
<p>Enumeration value: <samp class="ph codeph">_GET_SELLER_FEEDBACK_DATA_</samp></p>
<p><span class="ph">API operation: <a href="../reports/Reports_RequestReport.md" class="xref">RequestReport</a></span></p></td>
<td>Tab-delimited flat file that returns negative and neutral feedback (one to three stars) from buyers who rated your seller performance. For all sellers.</td>
</tr>
<tr class="even">
<td><span class="keyword parmname">XML Customer Metrics Report</span>
<p>Enumeration value: <samp class="ph codeph">_GET_V1_SELLER_PERFORMANCE_REPORT_</samp></p>
<p><span class="ph">API operation: <a href="../reports/Reports_RequestReport.md" class="xref">RequestReport</a></span></p></td>
<td>XML file that contains the individual performance metrics data from the Seller Central dashboard. For all sellers.</td>
</tr>
</tbody>
</table>

</div>

</div>

<div id="ReportTypeCategories__SettlementReports" class="section">

### Settlement Reports

Note that settlement reports cannot be requested or scheduled. They are
automatically scheduled by Amazon.

<div class="tablenoborder">

<table id="ReportTypeCategories__SettlementReportsTable" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><span class="keyword parmname">Flat File Settlement Report</span>
<p>Enumeration value: <samp class="ph codeph">_GET_V2_SETTLEMENT_REPORT_DATA_FLAT_FILE_</samp></p>
<p><span class="ph">API operation: <a href="Reports_GetReportList.md" class="xref" title="Returns a list of reports that were created in the previous 90 days.">GetReportList</a></span></p>
<p><span class="ph">API operation: <a href="../reports/Reports_GetReport.md" class="xref">GetReport</a></span></p></td>
<td>Tab-delimited flat file settlement report that is automatically scheduled by Amazon; it cannot be requested through <span class="keyword apiname">RequestReport</span>. For all sellers.</td>
</tr>
<tr class="even">
<td><span class="keyword parmname">XML Settlement Report</span>
<p>Enumeration value: <samp class="ph codeph">_GET_V2_SETTLEMENT_REPORT_DATA_XML_</samp></p>
<p><span class="ph">API operation: <a href="Reports_GetReportList.md" class="xref" title="Returns a list of reports that were created in the previous 90 days.">GetReportList</a></span></p>
<p><span class="ph">API operation: <a href="../reports/Reports_GetReport.md" class="xref">GetReport</a></span></p></td>
<td>XML file settlement report that is automatically scheduled by Amazon; it cannot be requested through <span class="keyword apiname">RequestReport</span>. For Seller Central sellers only.</td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">Flat File V2 Settlement Report</span>
<p>Enumeration value: <samp class="ph codeph">_GET_V2_SETTLEMENT_REPORT_DATA_FLAT_FILE_V2_</samp></p>
<p><span class="ph">API operation: <a href="Reports_GetReportList.md" class="xref" title="Returns a list of reports that were created in the previous 90 days.">GetReportList</a></span></p>
<p><span class="ph">API operation: <a href="../reports/Reports_GetReport.md" class="xref">GetReport</a></span></p></td>
<td>Tab-delimited flat file alternate version of the Flat File Settlement Report that is automatically scheduled by Amazon; it cannot be requested through <span class="keyword apiname">RequestReport</span>. Price columns are condensed into three general purpose columns: amounttype, amountdescription, and amount. For Seller Central sellers only.</td>
</tr>
</tbody>
</table>

</div>

</div>

<div id="ReportTypeCategories__FBAReports" class="section">

### Fulfillment By Amazon (FBA) Reports

There are limits to how often Amazon will generate
<span class="ph">FBA</span> reports. These limits depend on whether an
<span class="ph">FBA</span> report is a near real-time report or a daily
report. See the following table to see which <span class="ph">FBA</span>
reports are near real-time and which are daily.

A near real-time <span class="ph">FBA</span> report is generated no more
than once every 30 minutes. This means that after a near real-time
<span class="ph">FBA</span> report is generated following your report
request, a 30-minute waiting period must pass before Amazon will
generate an updated version of that report. Note that the four "All
Orders" reports are not subject to this limitation.

A daily <span class="ph">FBA</span> report is generated no more than
once every four hours. This means that after a daily
<span class="ph">FBA</span> report is generated following your report
request, a four-hour waiting period must pass before Amazon will
generate an updated version of that report.

For more information, see the "Do not request FBA reports more
frequently than they are generated" section of the MWS for FBA Sellers
Guide.

<div class="tablenoborder">

Name

</div>

</div>

</div>

</div>

</div>

</div>

</div>

</div>

Description

FBA Sales Reports

<span class="keyword parmname">FBA Amazon Fulfilled Shipments
Report</span>

Enumeration value: `_GET_AMAZON_FULFILLED_SHIPMENTS_DATA_`

<span class="ph">API operation:
[RequestReport](../reports/Reports_RequestReport.md)</span>

Tab-delimited flat file. Contains detailed order/shipment/item
information including price, address, and tracking data. You can request
up to one month of data in a single report. Content updated near
real-time in Europe (EU), Japan, and North America (NA). For FBA sellers
only. For Marketplace and Seller Central sellers.

<div class="note note">

<span class="notetitle">Note:</span> In Japan, EU, and NA, in most
cases, there will be a delay of approximately one to three hours from
the time a fulfillment order ships and the time the items in the
fulfillment order appear in the report. In some rare cases there could
be a delay of up to 24 hours.

</div>

<span class="keyword parmname">Flat File All Orders Report by Last
Update</span>

Enumeration value: `_GET_FLAT_FILE_ALL_ORDERS_DATA_BY_LAST_UPDATE_`

<span class="ph">API operation:
[RequestReport](../reports/Reports_RequestReport.md)</span>

Tab-delimited flat file. Returns all orders updated in the specified
date range regardless of fulfillment channel or shipment status. This
report is intended for order tracking, not to drive your fulfillment
process; it does not include customer identifying information and
scheduling is not supported. For all sellers.

<span class="keyword parmname">Flat File All Orders Report by Order
Date</span>

Enumeration value: `_GET_FLAT_FILE_ALL_ORDERS_DATA_BY_ORDER_DATE_`

<span class="ph">API operation:
[RequestReport](../reports/Reports_RequestReport.md)</span>

Tab-delimited flat file. Returns all orders placed in the specified date
range regardless of fulfillment channel or shipment status. This report
is intended for order tracking, not to drive your fulfillment process;
it does not include customer identifying information and scheduling is
not supported. For all sellers.

<span class="keyword parmname">XML All Orders Report by Last
Update</span>

Enumeration value: `_GET_XML_ALL_ORDERS_DATA_BY_LAST_UPDATE_`

<span class="ph">API operation:
[RequestReport](../reports/Reports_RequestReport.md)</span>

XML file order report that returns all orders updated in the specified
date range regardless of fulfillment channel or shipment status. This
report is intended for order tracking, not to drive your fulfillment
process; it does not include customer identifying information and
scheduling is not supported. For all sellers.

<span class="keyword parmname">XML All Orders Report by Order
Date</span>

Enumeration value: `_GET_XML_ALL_ORDERS_DATA_BY_ORDER_DATE_`

<span class="ph">API operation:
[RequestReport](../reports/Reports_RequestReport.md)</span>

XML file order report that returns all orders placed in the specified
date range regardless of fulfillment channel or shipment status. This
report is intended for order tracking, not to drive your fulfillment
process; it does not include customer identifying information and
scheduling is not supported. For all sellers.

<span class="keyword parmname">FBA Customer Shipment Sales Report</span>

Enumeration value: `_GET_FBA_FULFILLMENT_CUSTOMER_SHIPMENT_SALES_DATA_`

<span class="ph">API operation:
[RequestReport](../reports/Reports_RequestReport.md)</span>

Tab-delimited flat file. Contains condensed item level data on shipped
FBA customer orders including price, quantity, and ship to location.
Content updated near real-time in Europe (EU), Japan, and North America
(NA). For FBA sellers only. For Marketplace and Seller Central sellers.

<div class="note note">

<span class="notetitle">Note:</span> In Japan, EU, and NA, in most
cases, there will be a delay of approximately one to three hours from
the time a fulfillment order ships and the time the items in the
fulfillment order appear in the report. In some rare cases there could
be a delay of up to 24 hours.

</div>

<span class="keyword parmname">FBA Promotions Report</span>

Enumeration value:
`_GET_FBA_FULFILLMENT_CUSTOMER_SHIPMENT_PROMOTION_DATA_`

<span class="ph">API operation:
[RequestReport](../reports/Reports_RequestReport.md)</span>

Tab-delimited flat file. Contains promotions applied to FBA customer
orders sold through Amazon; e.g. Super Saver Shipping. Content updated
daily. <span class="ph">This report is only available to FBA sellers in
the North America (NA) region.</span> For Marketplace and Seller Central
sellers.

<span class="keyword parmname">FBA Customer Taxes</span>

Enumeration value: `_GET_FBA_FULFILLMENT_CUSTOMER_TAXES_DATA_`

<span class="ph">API operation:
[RequestReport](../reports/Reports_RequestReport.md)</span>

Tab-delimited flat file for tax-enabled US sellers. This report contains
data through February 28, 2013. All new transaction data can be found in
the [Sales Tax
Report](Reports_ReportType.md#ReportTypeCategories__SalesTaxReports).
For FBA sellers only. For Marketplace and Seller Central sellers.

<span class="keyword parmname">Remote Fulfillment Eligibility</span>

Enumeration value: `_GET_REMOTE_FULFILLMENT_ELIGIBILITY_`

<span class="ph">API operation:
[RequestReport](../reports/Reports_RequestReport.md)</span>

Tab-delimited flat file that contains all of your US Fulfillment by
Amazon offers and whether they qualify for the North America Remote
Fulfillment (NARF) program.

<div class="note note">

<span class="notetitle">Note:</span> Recheck this report regularly,
since ASIN eligibility can change. This report can take up to 24 hours
to generate.

</div>

<span class="ph">This report is only available in the Canada, US, and
Mexico marketplaces.</span>

FBA Inventory Reports

<span class="keyword parmname">FBA Amazon Fulfilled Inventory
Report</span>

Enumeration value: `_GET_AFN_INVENTORY_DATA_`

<span class="ph">API operation:
[RequestReport](../reports/Reports_RequestReport.md)</span>

Tab-delimited flat file. Content updated in near real-time. For FBA
sellers only. For Marketplace and Seller Central sellers.

<span class="keyword parmname">FBA Multi-Country Inventory Report</span>

Enumeration value: `_GET_AFN_INVENTORY_DATA_BY_COUNTRY_`

<span class="ph">API operation:
[RequestReport](../reports/Reports_RequestReport.md)</span>

Tab-delimited flat file. Contains quantity available for local
fulfillment by country, helping Multi-Country Inventory sellers in
Europe track their FBA inventory. Content updated in near-real time.
This report is only available to FBA sellers in European (EU)
marketplaces. For Seller Central sellers.

<span class="keyword parmname">FBA Daily Inventory History Report</span>

Enumeration value: `_GET_FBA_FULFILLMENT_CURRENT_INVENTORY_DATA_`

<span class="ph">API operation:
[RequestReport](../reports/Reports_RequestReport.md)</span>

Tab-delimited flat file. Contains historical daily snapshots of your
available inventory in Amazon’s fulfillment centers including quantity,
location and disposition. Content updated daily. For FBA sellers only.
For Marketplace and Seller Central sellers.

<span class="keyword parmname">FBA Monthly Inventory History
Report</span>

Enumeration value: `_GET_FBA_FULFILLMENT_MONTHLY_INVENTORY_DATA_`

<span class="ph">API operation:
[RequestReport](../reports/Reports_RequestReport.md)</span>

Tab-delimited flat file. Contains historical monthly snapshots of your
available inventory in Amazon’s fulfillment centers including average
and end-of-month quantity, location and disposition. Content updated
daily. For FBA sellers only. For Marketplace and Seller Central sellers.

<span class="keyword parmname">FBA Received Inventory Report</span>

Enumeration value: `_GET_FBA_FULFILLMENT_INVENTORY_RECEIPTS_DATA_`

<span class="ph">API operation:
[RequestReport](../reports/Reports_RequestReport.md)</span>

Tab-delimited flat file. Contains inventory that has completed the
receive process at Amazon’s fulfillment centers. Content updated daily.
For FBA sellers only. For Marketplace and Seller Central sellers.

<span class="keyword parmname">FBA Reserved Inventory Report</span>

Enumeration value: `_GET_RESERVED_INVENTORY_DATA_`

<span class="ph">API operation:
[RequestReport](../reports/Reports_RequestReport.md)</span>

Tab-delimited flat file. Provides data about the number of reserved
units in your inventory. Content updated in near real-time. For FBA
sellers only. For Marketplace and Seller Central sellers.

<span class="keyword parmname">FBA Inventory Event Detail Report</span>

Enumeration value: `_GET_FBA_FULFILLMENT_INVENTORY_SUMMARY_DATA_`

<span class="ph">API operation:
[RequestReport](../reports/Reports_RequestReport.md)</span>

Tab-delimited flat file. Contains history of inventory events (e.g.
receipts, shipments, adjustments etc.) by SKU and Fulfillment Center.
Content updated daily. For FBA sellers only. For Marketplace and Seller
Central sellers.

<span class="keyword parmname">FBA Inventory Adjustments Report</span>

Enumeration value: `_GET_FBA_FULFILLMENT_INVENTORY_ADJUSTMENTS_DATA_`

<span class="ph">API operation:
[RequestReport](../reports/Reports_RequestReport.md)</span>

Tab-delimited flat file. Contains corrections and updates to your
inventory in response to issues such as damage, loss, receiving
discrepancies, etc. Content updated daily. For FBA sellers only. For
Marketplace and Seller Central sellers.

<span class="keyword parmname">FBA Inventory Health Report</span>

Enumeration value: `_GET_FBA_FULFILLMENT_INVENTORY_HEALTH_DATA_`

<span class="ph">API operation:
[RequestReport](../reports/Reports_RequestReport.md)</span>

Tab-delimited flat file. Contains information about inventory age,
condition, sales volume, weeks of cover, and price. Content updated
daily. For FBA Sellers only. For Marketplace and Seller Central sellers.
This report is not available in the Mexico and Australia marketplaces.

<span class="keyword parmname">FBA Manage Inventory</span>

Enumeration value: `_GET_FBA_MYI_UNSUPPRESSED_INVENTORY_DATA_`

<span class="ph">API operation:
[RequestReport](../reports/Reports_RequestReport.md)</span>

Tab-delimited flat file. Contains current details of active (not
archived) inventory including condition, quantity and volume. Content
updated in near real-time. For FBA sellers only. For Marketplace and
Seller Central sellers.

<span class="keyword parmname">FBA Manage Inventory - Archived</span>

Enumeration value: `_GET_FBA_MYI_ALL_INVENTORY_DATA_`

<span class="ph">API operation:
[RequestReport](../reports/Reports_RequestReport.md)</span>

Tab-delimited flat file. Contains current details of all (including
archived) inventory including condition, quantity and volume. Content
updated in near real-time. This report is not available in the Mexico
marketplace. For FBA sellers only. For Marketplace and Seller Central
sellers.

<span class="keyword parmname">Restock Inventory Report</span>

Enumeration value: `_GET_RESTOCK_INVENTORY_RECOMMENDATIONS_REPORT_`

<span class="ph">API operation:
[RequestReport](../reports/Reports_RequestReport.md)</span>

Tab delimited flat file. Provides recommendations on products to
restock, suggested order quantities, and reorder dates. For more
information, see [Restock Inventory
Report](https://sellercentral.amazon.com/gp/help/202105670). Content
updated in near real-time. <span class="ph">This report is only
available to FBA sellers in the US marketplace.</span>

<span class="keyword parmname">FBA Inbound Performance Report</span>

Enumeration value: `_GET_FBA_FULFILLMENT_INBOUND_NONCOMPLIANCE_DATA_`

<span class="ph">API operation:
[RequestReport](../reports/Reports_RequestReport.md)</span>

Tab-delimited flat file. Contains inbound shipment problems by product
and shipment. Content updated daily. For Marketplace and Seller Central
sellers. <span class="ph">This report is only available to FBA
sellers.</span>

<span class="keyword parmname">FBA Stranded Inventory Report</span>

Enumeration value: `_GET_STRANDED_INVENTORY_UI_DATA_`

<span class="ph">API operation:
[RequestReport](../reports/Reports_RequestReport.md)</span>

Tab-delimited flat file. Contains a breakdown of inventory in stranded
status, including recommended actions. Content updated in near
real-time. <span class="ph">This report is only available to FBA sellers
in the US, India, and Japan marketplaces.</span> For more information,
see [Stranded Inventory
Report](https://sellercentral-europe.amazon.com/gp/help/201835130).

<span class="keyword parmname">FBA Bulk Fix Stranded Inventory
Report</span>

Enumeration value: `_GET_STRANDED_INVENTORY_LOADER_DATA_`

<span class="ph">API operation:
[RequestReport](../reports/Reports_RequestReport.md)</span>

Tab-delimited flat file. Contains a list of stranded inventory. Update
the listing information in this report file and then submit the file
using the Flat File Inventory Loader Feed
(\_POST\_FLAT\_FILE\_INVLOADER\_DATA\_) of the <span class="ph">Feeds
API section</span>. Content updated in near real-time.
<span class="ph">This report is only available to FBA sellers in the US,
India, and Japan marketplaces.</span> For more information, see [Bulk
Fix Stranded Inventory
Report](https://sellercentral-europe.amazon.com/gp/help/201968550).

<span class="keyword parmname">FBA Inventory Age Report</span>

Enumeration value: `_GET_FBA_INVENTORY_AGED_DATA_`

<span class="ph">API operation:
[RequestReport](../reports/Reports_RequestReport.md)</span>

Tab-delimited flat file. Indicates the age of inventory, which helps
sellers take action to avoid paying the Long Term Storage Fee. Content
updated daily. <span class="ph">This report is only available to FBA
sellers in the US, India, and Japan marketplaces.</span> For more
information, see [Inventory Age
Report](https://sellercentral-europe.amazon.com/gp/help/201979220).

<span class="keyword parmname">FBA Manage Excess Inventory Report</span>

Enumeration value: `_GET_EXCESS_INVENTORY_DATA_`

<span class="ph">API operation:
[RequestReport](../reports/Reports_RequestReport.md)</span>

Tab-delimited flat file. Contains listings with excess inventory, which
helps sellers take action to sell through faster. Content updated in
near real-time. <span class="ph">This report is only available to FBA
sellers in the US, India, and Japan marketplaces.</span> For more
information, see [Excess Inventory
Report](https://sellercentral-europe.amazon.com/gp/help/201835150).

<span class="keyword parmname">FBA Storage Fees Report</span>

Enumeration value: `_GET_FBA_STORAGE_FEE_CHARGES_DATA_`

<span class="ph">API operation:
[RequestReport](../reports/Reports_RequestReport.md)</span>

<span class="ph">API operation:
[ManageReportSchedule](Reports_ManageReportSchedule.md "Creates, updates, or deletes a report request schedule for a specified report type.")</span>

Tab-delimited flat file. Contains estimated monthly inventory storage
fees for each ASIN of a seller's inventory in <span class="ph">Amazon
fulfillment centers</span>. For FBA sellers only.

<span class="keyword parmname">Get Report Exchange Data</span>

Enumeration value: `_GET_PRODUCT_EXCHANGE_DATA_`

<span class="ph">API operation:
[RequestReport](../reports/Reports_RequestReport.md)</span>

Tab-delimited flat file that contains product exchange information for
the specified time duration.<span class="ph">This report is only
available in the India marketplace.</span>

FBA Payments Reports

<span class="keyword parmname">FBA Fee Preview Report</span>

Enumeration value: `_GET_FBA_ESTIMATED_FBA_FEES_TXT_DATA_`

<span class="ph">API operation:
[RequestReport](../reports/Reports_RequestReport.md)</span>

Tab-delimited flat file. Contains the estimated Amazon Selling and
Fulfillment Fees for your FBA inventory with active offers. The content
is updated at least once every 72 hours. To successfully generate a
report, specify the <span class="keyword parmname">StartDate</span>
parameter of a minimum 72 hours prior to NOW and
<span class="keyword parmname">EndDate</span> to NOW. For FBA sellers in
the NA and EU only. For Marketplace and Seller Central sellers.

<span class="keyword parmname">FBA Reimbursements Report</span>

Enumeration value: `_GET_FBA_REIMBURSEMENTS_DATA_`

<span class="ph">API operation:
[RequestReport](../reports/Reports_RequestReport.md)</span>

Tab-delimited flat file. Contains itemized details of your inventory
reimbursements including the reason for the reimbursement. Content
updated daily. For FBA sellers only. For Marketplace and Seller Central
sellers.

<span class="keyword parmname">FBA Long Term Storage Fee Charges
Report</span>

Enumeration value:
`_GET_FBA_FULFILLMENT_LONGTERM_STORAGE_FEE_CHARGES_DATA_`

<span class="ph">API operation:
[RequestReport](../reports/Reports_RequestReport.md)</span>

Tab-delimited flat file that contains the charge data for long-term
storage. <span class="ph">This report is only available in the Canada,
US, Spain, UK, France, Germany, Italy, India, and Japan
marketplaces.</span>

FBA Customer Concessions Reports

<span class="keyword parmname">FBA Returns Report</span>

Enumeration value: `_GET_FBA_FULFILLMENT_CUSTOMER_RETURNS_DATA_`

<span class="ph">API operation:
[RequestReport](../reports/Reports_RequestReport.md)</span>

Tab-delimited flat file. Contains customer returned items received at an
<span class="ph">Amazon fulfillment center</span>, including Return
Reason and Disposition. Content updated daily. For FBA sellers only. For
Marketplace and Seller Central sellers.

<span class="keyword parmname">FBA Replacements Report</span>

Enumeration value:
`_GET_FBA_FULFILLMENT_CUSTOMER_SHIPMENT_REPLACEMENT_DATA_`

<span class="ph">API operation:
[RequestReport](../reports/Reports_RequestReport.md)</span>

Tab-delimited flat file. Contains replacements that have been issued to
customers for completed orders. Content updated daily. For FBA sellers
only. For Marketplace and Seller Central sellers. Available in the US
marketplace only.

FBA Removals Reports

<span class="keyword parmname">FBA Recommended Removal Report</span>

Enumeration value: `_GET_FBA_RECOMMENDED_REMOVAL_DATA_`

<span class="ph">API operation:
[RequestReport](../reports/Reports_RequestReport.md)</span>

Tab-delimited flat file. The report identifies sellable items that will
be 365 days or older during the next Long-Term Storage cleanup event, if
the report is generated within six weeks of the cleanup event date. The
report includes both sellable and unsellable items. Content updated
daily. For FBA sellers. For Marketplace and Seller Central sellers.

<span class="keyword parmname">FBA Removal Order Detail Report</span>

Enumeration value: `_GET_FBA_FULFILLMENT_REMOVAL_ORDER_DETAIL_DATA_`

<span class="ph">API operation:
[RequestReport](../reports/Reports_RequestReport.md)</span>

Tab-delimited flat file. This report contains all the removal orders,
including the items in each removal order, placed during any given time
period. This can be used to help reconcile the total number of items
requested to be removed from an <span class="ph">Amazon fulfillment
center</span> with the actual number of items removed along with the
status of each item in the removal order. Content updated in near
real-time. For FBA sellers. For Marketplace and Seller Central sellers.

<span class="keyword parmname">FBA Removal Shipment Detail Report</span>

Enumeration value: `_GET_FBA_FULFILLMENT_REMOVAL_SHIPMENT_DETAIL_DATA_`

<span class="ph">API operation:
[RequestReport](../reports/Reports_RequestReport.md)</span>

Tab-delimited flat file. This report provides shipment tracking
information for all removal orders and includes the items that have been
removed from an <span class="ph">Amazon fulfillment center</span> for
either a single removal order or for a date range. This report will not
include canceled returns or disposed items; it is only for shipment
information. Content updated in near real-time. For FBA sellers. For
Marketplace and Seller Central sellers.

FBA Small and Light Reports

<span class="keyword parmname">Small & Light Inventory Report</span>

Enumeration value: `_GET_FBA_UNO_INVENTORY_DATA_`

<span class="ph">API operation:
[RequestReport](../reports/Reports_RequestReport.md)</span>

Tab-delimited flat file. Contains all of your products are enrolled in
the Small & Light program and how much inventory you currently have in
Small & Light fulfillment centers. The report also shows your current
prices and whether any of your products are in unsellable status.
<span class="ph">This report is only available in the US, UK, Germany,
and Japan marketplaces.</span>

<div id="ReportTypeCategories__SalesTaxReports" class="section">

### Tax Reports

<div class="tablenoborder">

<table id="ReportTypeCategories__SalesTaxReportsTable" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><span class="keyword parmname">Sales Tax Report</span>
<p>Enumeration value: <samp class="ph codeph">_GET_FLAT_FILE_SALES_TAX_DATA_</samp></p>
<p><span class="ph">API operation: <a href="Reports_GetReportList.md" class="xref" title="Returns a list of reports that were created in the previous 90 days.">GetReportList</a></span></p>
<p><span class="ph">API operation: <a href="../reports/Reports_GetReport.md" class="xref">GetReport</a></span></p></td>
<td>Tab-delimited flat file for tax-enabled US sellers. Content updated daily. This report cannot be requested or scheduled. You must generate the report from the <a href="https://sellercentral.amazon.com/gp/tax/tax-library.html" class="xref">Tax Document Library</a> in Seller Central. After the report has been generated, you can download the report using the <span class="keyword apiname">GetReportList</span> and <span class="keyword apiname">GetReport</span> operations. For Marketplace and Seller Central sellers.</td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Amazon VAT Calculation Report</span>
<p>Enumeration value: <samp class="ph codeph">_SC_VAT_TAX_REPORT_</samp></p>
<span class="ph">API operation: <a href="../reports/Reports_RequestReport.md" class="xref">RequestReport</a></span></td>
<td>Comma-separated flat file report that provides detailed value-added tax (VAT) calculation information for buyer shipments, returns, and refunds. This report is only available in the Germany, Spain, Italy, France, and UK marketplaces.</td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">Amazon VAT Transactions Report</span>
<p>Enumeration value: <samp class="ph codeph">_GET_VAT_TRANSACTION_DATA_</samp></p>
<span class="ph">API operation: <a href="../reports/Reports_RequestReport.md" class="xref">RequestReport</a></span></td>
<td>Tab-delimited flat file report that provides detailed information for sales, returns, refunds, cross border inbound and cross border fulfillment center transfers. This report is only available in the Germany, Spain, Italy, France, and UK marketplaces.
<p>For more information, see <a href="https://sellercentral-europe.amazon.com/gp/help/202098170" class="xref">Amazon VAT Transactions Report FAQ</a> in the Seller Central Help.</p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">On Demand GST Merchant Tax Report B2B</span>
<p>Enumeration value: <samp class="ph codeph">_GET_GST_MTR_B2B_CUSTOM_</samp></p>
<span class="ph">API operation: <a href="../reports/Reports_RequestReport.md" class="xref">RequestReport</a></span></td>
<td>Tab-delimited flat file report that provides detailed information about sales, refunds, and cancellations from <span class="ph">Amazon Business</span> invoices issued within a date range that you specify. <span class="ph">This report is only available in the India marketplace.</span></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">On Demand GST Merchant Tax Report B2C</span>
<p>Enumeration value: <samp class="ph codeph">_GET_GST_MTR_B2C_CUSTOM_</samp></p>
<span class="ph">API operation: <a href="../reports/Reports_RequestReport.md" class="xref">RequestReport</a></span></td>
<td>Tab-delimited flat file report that provides detailed information about sales, refunds, and cancellations from consumer invoices issued within a date range that you specify. <span class="ph">This report is only available in the India marketplace.</span></td>
</tr>
</tbody>
</table>

</div>

</div>

<div id="ReportTypeCategories__BrowseTreeReports" class="section">

### Browse Tree Report

<div class="tablenoborder">

<table id="ReportTypeCategories__BrowseTreeReportsTable" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><span class="keyword parmname">Browse Tree Report</span>
<p>Enumeration value: <samp class="ph codeph">_GET_XML_BROWSE_TREE_DATA_</samp></p>
<p><span class="ph">API operation: <a href="Reports_ManageReportSchedule.md" class="xref" title="Creates, updates, or deletes a report request schedule for a specified report type.">ManageReportSchedule</a></span></p>
<p><span class="ph">API operation: <a href="../reports/Reports_RequestReport.md" class="xref">RequestReport</a></span></p></td>
<td>XML report that provides browse tree hierarchy information and node refinement information for the Amazon retail website in any marketplace.
<p>Can be requested or scheduled. For Marketplace and Seller Central sellers.</p>
<p>This report accepts the following <span class="keyword parmname">ReportOptions</span> values:</p>
<ul>
<li><span class="keyword parmname">MarketplaceId</span> – Specifies the marketplace from which you want browse tree information. Optional. If <span class="keyword parmname">MarketplaceId</span> is not included in the <span class="keyword parmname">ReportOptions</span> parameter, the report contains browse tree information from your default marketplace.
<div class="note note">
<span class="notetitle">Note:</span> You must be registered as a seller in any marketplace that you specify using the <span class="keyword parmname">MarketplaceId</span> value. Also, your request must be sent to an endpoint that corresponds to the <span class="keyword parmname">MarketplaceId</span> that you specify. Otherwise the service returns an error. You can find a list of <span class="keyword parmname">MarketplaceId</span> values and endpoints in the "Amazon MWS endpoints and MarketplaceId values" section of the Amazon MWS Developer Guide.
</div></li>
<li><span class="keyword parmname">RootNodesOnly</span> - <span class="ph">Type: xs:boolean</span>. Optional. If <var class="keyword varname">true</var>, then the report contains only the root nodes from the marketplace specified using <span class="keyword parmname">MarketplaceId</span> (or from your default marketplace, if <span class="keyword parmname">MarketplaceId</span> is not specified). If <var class="keyword varname">false</var>, or if <span class="keyword parmname">RootNodesOnly</span> is not included in the <span class="keyword parmname">ReportOptions</span> parameter, then the content of the report depends on the value of <span class="keyword parmname">BrowseNodeId</span>.</li>
<li><span class="keyword parmname">BrowseNodeId</span> – Specifies the top node of the browse tree hierarchy in the report. Optional. If <span class="keyword parmname">BrowseNodeId</span> is not included in the <span class="keyword parmname">ReportOptions</span> parameter, and if <span class="keyword parmname">RootNodesOnly</span> is <var class="keyword varname">false</var> or is not included in the <span class="keyword parmname">ReportOptions</span> parameter, then the report contains the entire browse node hierarchy from the marketplace specified using <span class="keyword parmname">MarketplaceId</span> (or from your default marketplace, if <span class="keyword parmname">MarketplaceId</span> is not specified). Note that if you include an invalid <span class="keyword parmname">BrowseNodeId</span> in your request, the service returns a report that contains no data.</li>
</ul>
<div class="note note">
<span class="notetitle">Note:</span> If <span class="keyword parmname">RootNodesOnly</span> and <span class="keyword parmname">BrowseNodeId</span> are both included in the <span class="keyword parmname">ReportOptions</span> parameter, <span class="keyword parmname">RootNodesOnly</span> takes precedence.
</div>
<div class="note note">
<span class="notetitle">Note:</span> Amazon recommends that you do not include the <span class="keyword parmname">MarketplaceIdList</span> parameter with calls to the <span class="keyword apiname">RequestReport</span> operation that request the <span class="keyword parmname">Browse Tree Report</span>. If there is ever a conflict between a <span class="keyword parmname">MarketplaceIdList</span> parameter value and the <span class="keyword parmname">MarketplaceId</span> value of the <span class="keyword parmname">ReportOptions</span> parameter, the <span class="keyword parmname">MarketplaceId</span> value takes precedence.
</div>
<p>To keep track of which browse nodes change over time, Amazon recommends that each time you request this report you compare it to the last report you requested using the same <span class="keyword parmname">ReportOptions</span> values.</p>
<p>URL-encoded example: <samp class="ph codeph">ReportOptions=MarketplaceId%3DATVPDKIKX0DER;BrowseNodeId%3D15706661</samp></p>
<p>The Browse Tree Report is described by the following XSD: <a href="https://images-na.ssl-images-amazon.com/images/G/01/mwsportal/doc/en_US/Reports/XSDs/BrowseTreeReport.xsd" class="xref">BrowseTreeReport.xsd</a>.</p>
<div class="note note">
<span class="notetitle">Note:</span> As Amazon updates the Amazon MWS Reports API section, we may update the BrowseTreeReport.xsd schema. Keep this in mind if you choose to use this schema for validation. Monitor an Amazon MWS discussion forum for announcements of updates to the BrowseTreeReport.xsd schema. You can find the Amazon MWS discussion forums here:
<ul>
<li>English: <a href="https://sellercentral.amazon.com/forums/forum.jspa?forumID=35" class="xref">https://sellercentral.amazon.com/forums/forum.jspa?forumID=35</a></li>
<li>Japanese: <a href="https://sellercentral.amazon.co.jp/forums/forum.jspa?forumID=14" class="xref">https://sellercentral.amazon.co.jp/forums/forum.jspa?forumID=14</a></li>
</ul>
</div></td>
</tr>
</tbody>
</table>

</div>

</div>

<div id="ReportTypeCategories__EasyShipReport" class="section">

### Easy Ship Report

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><span class="keyword parmname">EasyShip Report</span>
<p>Enumeration value: <samp class="ph codeph">_GET_EASYSHIP_DOCUMENTS_</samp></p>
<p><span class="ph">API operation: <a href="../reports/Reports_GetReport.md" class="xref">GetReport</a></span></p></td>
<td>PDF report that contains the invoice, shipping label, and warranty (if available) documents for the <span class="ph">Amazon Easy Ship</span> order. <span class="ph">This report is only available in the India marketplace.</span> For more information, see <a href="../easy_ship/EasyShip_HowToGetEasyShipDocs.md" class="xref">How to get invoice, shipping label, and warranty documents</a>.</td>
</tr>
<tr class="even">
<td><span class="keyword parmname">EasyShip Picked Up Report</span>
<p>Enumeration value: <samp class="ph codeph">_GET_EASYSHIP_PICKEDUP_</samp></p>
<p><span class="ph">API operation: <a href="../reports/Reports_GetReport.md" class="xref">GetReport</a></span></p></td>
<td>Tab-delimited report that contains all of the seller-fulfilled orders that were picked-up on the specified dates. <span class="ph">This report is only available in the India marketplace.</span> For more information, see <a href="https://sellercentral.amazon.in/gp/help/GLFNYRHQ6LEC5CW5" class="xref">Download an EasyShip Orders Report</a> in the Seller Central Help.</td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">EasyShip Waiting for Pick Up Report</span>
<p>Enumeration value: <samp class="ph codeph">_GET_EASYSHIP_WAITING_FOR_PICKUP_</samp></p>
<p><span class="ph">API operation: <a href="../reports/Reports_GetReport.md" class="xref">GetReport</a></span></p></td>
<td>Tab-delimited report that contains all of your orders that are in the "Waiting for pick up" status in Seller Central. <span class="ph">This report is only available in the India marketplace.</span> For more information, see <a href="https://sellercentral.amazon.in/gp/help/GLFNYRHQ6LEC5CW5" class="xref">Download an EasyShip Orders Report</a> in the Seller Central Help.</td>
</tr>
</tbody>
</table>

</div>

</div>

<div id="ReportTypeCategories__AmazonBusinessReports" class="section">

### Amazon Business Reports

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><span class="keyword parmname">Manage Quotes Report</span>
<p>Enumeration value: <samp class="ph codeph">_RFQD_BULK_DOWNLOAD_</samp></p>
<p><span class="ph">API operation: <a href="../reports/Reports_GetReport.md" class="xref">GetReport</a></span></p></td>
<td>A Microsoft Excel Workbook (.xlsx) file. Contains current details of requests for quantity discounts including customer requests, active quantity discounts, analysis of pending requests, and analysis of all requests. Content updated in near real time. For Amazon Business sellers only. <span class="ph">This report is only available in the US, UK, Germany, India, and Japan marketplaces.</span></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Referral Fee Discounts Report</span>
<p>Enumeration value: <samp class="ph codeph">_FEE_DISCOUNTS_REPORT_</samp></p>
<p><span class="ph">API operation: <a href="../reports/Reports_GetReport.md" class="xref">GetReport</a></span></p></td>
<td>A Microsoft Excel Workbook (.xlsx) file that contains a summary of your fee discounts.
<div class="note note">
<span class="notetitle">Note:</span> The information in this report may be up to 24 hours old. Please do not request a report more than once within a 24-hour period.
</div>
<span class="ph">This report is only available in the Canada, US, Spain, UK, France, Germany, Italy, and Australia marketplaces.</span></td>
</tr>
</tbody>
</table>

</div>

</div>

<div id="ReportTypeCategories__AmazonPayReports" class="section">

### AmazonPay Reports

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><span class="keyword parmname">AmazonPay Sandbox Settlement Report</span>
<p>Enumeration value: <samp class="ph codeph">_GET_FLAT_FILE_OFFAMAZONPAYMENTS_SANDBOX_SETTLEMENT_DATA_</samp></p>
<p><span class="ph">API operation: <a href="../reports/Reports_RequestReport.md" class="xref">RequestReport</a></span></p></td>
<td>Comma-separated flat file that contains all of the transactions made in seller's (sandbox) account. Here are the Marketplace IDs for the available sandbox marketplaces:
<ul>
<li>EU: <samp class="ph codeph">A1G8446IYHA4MR</samp></li>
<li>JP: <samp class="ph codeph">A31YDYE76E6TCP</samp></li>
<li>UK: <samp class="ph codeph">A3M3RRFO9XDT2G</samp></li>
<li>US: <samp class="ph codeph">A3BXB0YN3XH17H</samp></li>
</ul>
<span class="ph">This report is only available in the US, Spain, UK, France, Germany, Italy, Turkey, India, and Japan marketplaces.</span></td>
</tr>
</tbody>
</table>

</div>

</div>

<div id="RelatedActions" class="topic nested1">

## Related topics

<div class="body">

[What you should know about the Amazon MWS Reports API
Section](../reports/Reports_Overview.md)

[ManageReportSchedule](Reports_ManageReportSchedule.md "Creates, updates, or deletes a report request schedule for a specified report type.")

[RequestReport](../reports/Reports_RequestReport.md)

[GetReportList](Reports_GetReportList.md "Returns a list of reports that were created in the previous 90 days.")

</div>

</div>

<div id="MWSDX_footer">

Copyright © 2009-2019 Amazon.com, Inc. or its affiliates. Amazon and
Amazon.com are registered trademarks of Amazon.com, Inc. or its
affiliates. All other trademarks are the property of their respective
owners.

</div>

<div style="clear: both;">

</div>
