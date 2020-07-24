<div id="MWSDX_noscript">

JavaScript is currently disabled in your browser.  
To use the Amazon MWS documentation, you must enable JavaScript in your
browser.

</div>

<div id="MWSDX_divtop">

[![Amazon
Services](https://images-na.ssl-images-amazon.com/images/G/08/mwsportal/fr_FR/amazonservices.gif "Amazon Services")](http://services.amazon.fr)  
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

<div id="DG_Throttling" class="nested0">

Throttling: Limits to how often you can submit requests
=======================================================

<div class="body">

To use <span class="ph">Amazon Marketplace Web Service (Amazon
MWS)</span> successfully, you need to understand throttling. Throttling
is the process of limiting the number of requests you (or your
authorized developer) can submit to a given operation in a given amount
of time. A request can be when you submit an inventory feed or when you
make an order report request. Throttling protects the web service from
being overwhelmed with requests and ensures all authorized developers
have access to the web service. See our
<a href="https://sellercentral.amazon.com/learn/courses?ref_=su_home_c54_m243&amp;courseId=54&amp;moduleId=243" class="xref">MWS: Throttling</a>
video at Seller Central University for a primer on throttling.

<div class="section">

The Leaky Bucket Algorithm
--------------------------

<span class="ph">Amazon MWS</span> uses a variation of the leaky bucket
algorithm to meter the web service and implement throttling. The
algorithm is based on the analogy where a bucket has a hole in the
bottom from which water leaks out at a constant rate. Water can be added
to the bucket intermittently, but if too much water is added at once or
if water is added at too high an average rate, the water will exceed the
capacity of the bucket.

To apply this analogy to <span class="ph">Amazon MWS</span>, imagine
that the bucket represents the maximum request quota, which is the
maximum number of requests you can make at one time. The hole in the
bucket represents the restore rate, which is the amount of time it takes
to be able to make new requests. So, if you submit too many requests at
once, then the bucket overflows and, in the case of <span
class="ph">Amazon MWS</span>, throttling occurs. If you fill up the
bucket, it takes some time before you can add more water to the bucket
since the water leaks from the bucket at a steady rate. So the ability
to submit more requests after you have reached the maximum request quota
is governed by the restore rate, the time it takes to allow you to make
new requests.

</div>

<div class="section">

Throttling Values
-----------------

The definitions of these three values that control <span
class="ph">Amazon MWS</span> throttling are:

-   **Request quota** - The number of requests that you can submit at
    one time without throttling. The request quota decreases with each
    request you submit, and increases at the restore rate. Requests are
    calculated for each Amazon seller account and Amazon MWS developer
    account pair.
-   **Restore rate** (also called the **recovery rate**) - The rate at
    which your request quota increases over time, up to the maximum
    request quota.
-   **Maximum request quota** (also called the **burst rate**) - The
    maximum size that the request quota can reach.
-   **Hourly request quota** - The maximum number of requests you can
    submit per hour.

To apply these ideas, consider this example. Imagine that you want to
use the <span class="keyword apiname">SubmitFeed</span> operation to
submit 25 inventory update feeds. The <span
class="keyword apiname">SubmitFeed</span> operation has a request quota
of 15 and a restore rate of one new request every two minutes. If you
submit all 25 feed requests at once, your requests will be throttled
after 15 requests. You would then have to resubmit 10 feed requests once
the request quota had been restored. Since the restore rate is one
request every two minutes, it would take 20 minutes for you to be able
to submit the remaining 10 feed requests. So, instead of submitting all
the requests and having to resubmit the requests that were throttled,
you could automate your process to submit feed requests incrementally.

For example, you could submit 10 feed requests (out of your original 25
feeds), and the request quota would still have five requests left over.
You could then wait 10 minutes, and the restore rate would have
increased the request quota to 10 (one request every two minutes for 10
minutes gives you five new requests). You could then submit 10 more feed
requests. For the remaining five feed requests, you could wait ten more
minutes and then submit them. If all things go well, you would have
submitted all 25 of your inventory feeds in about 20 minutes.

You should consider automating your requests and have a fallback process
where, if throttling occurs because you reached the maximum request
quota or the web service experienced high traffic volumes, you could
slow down the number of requests you make and resubmit requests that
initially failed.

</div>

<div class="section">

Hourly Request Quotas
---------------------

Some API sections (currently Products, Reports, and Feeds) have an
hourly request quota in addition to the numerical request quota. This
means you have a maximum number of requests you can make to a specific
operation in a one-hour period. The start and end of the one-hour period
varies between different callers in order to keep overall traffic
balanced. For some operations, the hourly quota will be less than the
restore rate multiplied by one hour. Consult the specific operation
reference page for the throttling limits.

For example, <span class="keyword apiname">ListMatchingProducts</span>
has a request quota of 20 requests, refreshing at a rate of one request
every five seconds. That works out to a maximum of 720 requests per hour
if the 20 request quota is not exceeded during the hour. The <span
class="keyword apiname">ListMatchingProducts</span> operation also has
an hourly quota of 720 requests. After the 720th request, further
requests will result in a <span
class="keyword parmname">QuotaExceeded</span> error until the one-hour
quota resets.

<span class="ph">Amazon MWS</span> provides header values in each call
response that show the hourly quota for the current operation; the
number of calls remaining in tha quota; and the date and time when the
quota will reset. For example:

    x-mws-quota-max: 3600
    x-mws-quota-remaining: 10
    x-mws-quota-resetsOn: Wed, 06 Mar 2013 19:07:58 GMT

You can monitor these headers to determine how many more requests you
can make until the reset time.

</div>

<div id="DG_Throttling__Best_Practices_Requests" class="section">

Tips on avoiding throttling
---------------------------

There are several things you can do to make sure your feeds and
submissions are processed successfully:

-   Know the throttling limit of the specific request you are
    submitting.
-   Have a "back off" plan for automatically reducing the number of
    requests if the service is unavailable. The plan should use the
    restore rate value to determine when a request should be
    resubmitted.

You should also distribute your requests to maximize service
availability:

-   Submit requests at times other than on the hour or on the half hour.
    For example, submit requests at 11 minutes after the hour or at 41
    minutes after the hour.
-   Take advantage of times during the day when traffic is likely to be
    low on Amazon MWS, such as early evening or early morning hours.

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
