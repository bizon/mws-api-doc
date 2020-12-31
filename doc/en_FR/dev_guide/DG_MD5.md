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

<div id="DG_MD5" class="nested0">

Working with Content-MD5 checksums
==================================

<div class="body">

MD5 is an algorithm for computing a 128-bit "digest" (or hash) of
arbitrary-length data with a high degree of confidence that any
alterations in the data will be reflected in alterations in the digest.
**You must include a Content-MD5 hash when you submit a feed** . You
should pass the hash as the <span
class="keyword parmname">ContentMD5Value</span> parameter. For backwards
compatibilty, you can pass the hash as a Content-MD5 header, but using
the <span class="keyword parmname">ContentMD5Value</span> parameter is
more secure.

<span class="ph">Amazon Marketplace Web Service (Amazon MWS)</span>
calculates the MD5 checksum and compares it to the hash value you sent
to ensure that the received feed has not been corrupted in transmission.
The process is reversed when <span class="ph">Amazon MWS</span> sends a
report; the Content-MD5 header is sent with the report and you calculate
the MD5 checksum and compare it to the header Amazon sent to make sure
the report you received has not been corrupted in transmission.

<div class="p">

The basic process for sending a feed with a Content-MD5 hash to <span
class="ph">Amazon MWS</span> is as follows:

1.  Store the feed to be submitted on disk before transmitting it to
    <span class="ph">Amazon MWS</span>.
2.  Compute the Content-MD5 of the file and store it in a companion
    file.
3.  Create a <span class="keyword apiname">SubmitFeed</span> request,
    pass the stored Content-MD5 as the <span
    class="keyword parmname">ContentMD5Value</span> parameter, and
    attach the file contents in a stream.
4.  Submit the request.

</div>

The following Java code sample illustrates how to compute the
Content-MD5 value for a feed submitted to Amazon:

    /**
     * Calculate content MD5 hash values for feeds stored on disk.
     */
    public static String computeContentMD5Value( FileInputStream fis ) 
        throws IOException, NoSuchAlgorithmException {

        DigestInputStream dis = new DigestInputStream( fis,
            MessageDigest.getInstance( "MD5" ));

        byte[] buffer = new byte[8192];
        while( dis.read( buffer ) > 0 );

        String md5Content = new String(
            org.apache.commons.codec.binary.Base64.encodeBase64(
                dis.getMessageDigest().digest()) ); 

        // Effectively resets the stream to be beginning of the file
        // via a FileChannel.
        fis.getChannel().position( 0 );

        return md5Content;
    }

The following Java code sample illustrates how to compute the MD5
checksum for a report that is downloaded:

    /**
     * Consume the stream and return its Base-64 encoded MD5 checksum.
     */
    public static String computeContentMD5Header(InputStream inputStream) {
        // Consume the stream to compute the MD5 as a side effect.
        DigestInputStream s;
        try {
            s = new DigestInputStream(inputStream,
                                      MessageDigest.getInstance("MD5"));
            // drain the buffer, as the digest is computed as a side-effect
            byte[] buffer = new byte[8192];
            while(s.read(buffer) > 0);
            return new String(
                org.apache.commons.codec.binary.Base64.encodeBase64(
                    s.getMessageDigest().digest()),
                    "UTF-8");
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

The following example shows an MD5 string in an http request using the
POST method. The string is inserted immediately after the last parameter
statement.

    POST /Feeds/2009-01-01 HTTP/1.1
    Content-Type: x-www-form-urlencoded
    Host: mws.amazonservices.com
    User-Agent: <Your User Agent Header>

    ?AWSAccessKeyId=0PB842ExampleN4ZTR2
    &Action=SubmitFeed
    &FeedType=_POST_PRODUCT_DATA_
    &MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
    &MarketplaceIdList.Id.1=ATVExampleDER
    &SellerId=A1XExample5E6
    &ContentMD5Value=ExampleMd5HashOfHttpBodyAsPerRfc2616Example
    &SignatureMethod=HmacSHA256
    &SignatureVersion=2
    &Timestamp=2009-01-26T23%3A51%3A31.315Z
    &Version=2009-01-01
    &Signature=SvSExamplefZpSignaturex2cs%3D

<div class="note note">

<span class="notetitle">Note:</span>

Previously, <span class="ph">Amazon MWS</span> accepted the MD5 hash as
a Content-MD5 header instead of a parameter. Passing it as a parameter
ensures that the MD5 value is part of the method signature, which
prevents anyone on the network from tampering with the feed content.

<span class="ph">Amazon MWS</span> will still accept a Content-MD5
header whether or not a <span
class="keyword parmname">ContentMD5Value</span> parameter is included.
If both a header and parameter are used, and they do not match, you will
receive an <span class="keyword parmname">InvalidParameterValue</span>
error.

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
