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

# Creating your User-Agent Header

<div class="body">

A User-Agent header is used to identify your application, its version
number, and programming language. Amazon recommends as a best practice
to include a User-Agent header with every request that you submit to
<span class="ph">Amazon MWS</span>. Doing this helps Amazon to more
effectively diagnose and fix problems, helping to improve your
experience using <span class="ph">Amazon MWS</span>.

If you are solution provider, it is especially important to develop your
applications so that every request includes a User-Agent header. Doing
this enables Amazon to identify sellers by which solution provider they
use, enabling us to more effectively isolate problems that might be
associated with your applications.

The <span class="ph">Amazon MWS</span> client libraries provide an
easy-to-use method for passing the User-Agent header with every <span
class="ph">Amazon MWS</span> request. When you initialize an <span
class="ph">Amazon MWS</span> client library, you add the Application or
Company Name and the Version Number. Other HTTP libraries also provide
easy methods for constructing User-Agent headers, but if you have any
difficulties creating the header, please request assistance from <span
class="ph">Amazon MWS</span>.

To create a User-Agent header, begin with the name of your application,
followed by a forward slash, followed by the version of the application,
followed by a space, an opening parenthesis, the Language name value
pair, and a closing parenthesis. The Language parameter is a required
attribute, but you can add additional attributes separated by
semicolons.

The following example illustrates a minimally acceptable User-Agent
header:

``` pre
AppId/AppVersionId (Language=LanguageNameAndOptionallyVersion)
```

If you are a third-party application integrator, you might want to use a
User-Agent header like the following:

``` pre
My Seller Tool/2.0 (Language=Java/1.6.0.11; Platform=Windows/XP)
```

If you are a large seller who is integrating through your own IT
department, you might want create a User-Agent header like the
following, so <span class="ph">Amazon MWS</span> could help you
troubleshoot using the Host attribute:

``` pre
MyCompanyName/build1611 (Language=Perl; Host=jane.laptop.example.com)
```

To specify additional attributes, use the format AttributeName=Value;,
separating each name value pair with a semicolon. Should you wish to use
a backslash (\\), quote it with another backslash (\\\\). Similarly,
quote a forward slash in the application name (\\/), an opening
parenthesis in the application version (\\(), an equal sign in the
attribute name (\\=), and both a closing parenthesis (\\)), and a
semicolon (\\;) in attribute values.

Because the User-Agent header is transmitted in every request, it is a
good practice to limit the size of the header. <span class="ph">Amazon
MWS</span> will reject a User-Agent header if it is longer than 500
characters.

</div>

<div id="RelatedTopics" class="topic nested1">

## Related topics

<div class="body">

<a href="DG_ClientLibraries.md" class="xref">Using the Amazon MWS client libraries</a>

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
