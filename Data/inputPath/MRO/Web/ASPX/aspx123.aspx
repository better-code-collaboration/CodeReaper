
<!DOCTYPE html>
<html lang="en-US">
<head>
<meta name="viewport" content="width=device-width, user-scalable=yes, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge" /><meta charset="UTF-8">
<link rel="profile" href="https://gmpg.org/xfn/11">
<link rel="pingback" href="https://www.roelvanlisdonk.nl/xmlrpc.php">
<title>Find and Replace text in all files of a given folder , including subfolders with C# &#8211; Knowledgebase</title>
<link rel='dns-prefetch' href='//s.w.org' />
<link rel="alternate" type="application/rss+xml" title="Knowledgebase &raquo; Feed" href="https://www.roelvanlisdonk.nl/feed/" />
<link rel="alternate" type="application/rss+xml" title="Knowledgebase &raquo; Comments Feed" href="https://www.roelvanlisdonk.nl/comments/feed/" />
<link rel="alternate" type="application/rss+xml" title="Knowledgebase &raquo; Find and Replace text in all files of a given folder , including subfolders with C# Comments Feed" href="https://www.roelvanlisdonk.nl/2010/09/24/find-and-replace-text-in-all-files-of-a-given-folder-including-subfolders-with-c/feed/" />
<script type="text/javascript">
window._wpemojiSettings = {"baseUrl":"https:\/\/s.w.org\/images\/core\/emoji\/2.3\/72x72\/","ext":".png","svgUrl":"https:\/\/s.w.org\/images\/core\/emoji\/2.3\/svg\/","svgExt":".svg","source":{"concatemoji":"https:\/\/www.roelvanlisdonk.nl\/wp-includes\/js\/wp-emoji-release.min.js?ver=4.9.1"}};
!function(a,b,c){function d(a,b){var c=String.fromCharCode;l.clearRect(0,0,k.width,k.height),l.fillText(c.apply(this,a),0,0);var d=k.toDataURL();l.clearRect(0,0,k.width,k.height),l.fillText(c.apply(this,b),0,0);var e=k.toDataURL();return d===e}function e(a){var b;if(!l||!l.fillText)return!1;switch(l.textBaseline="top",l.font="600 32px Arial",a){case"flag":return!(b=d([55356,56826,55356,56819],[55356,56826,8203,55356,56819]))&&(b=d([55356,57332,56128,56423,56128,56418,56128,56421,56128,56430,56128,56423,56128,56447],[55356,57332,8203,56128,56423,8203,56128,56418,8203,56128,56421,8203,56128,56430,8203,56128,56423,8203,56128,56447]),!b);case"emoji":return b=d([55358,56794,8205,9794,65039],[55358,56794,8203,9794,65039]),!b}return!1}function f(a){var c=b.createElement("script");c.src=a,c.defer=c.type="text/javascript",b.getElementsByTagName("head")[0].appendChild(c)}var g,h,i,j,k=b.createElement("canvas"),l=k.getContext&&k.getContext("2d");for(j=Array("flag","emoji"),c.supports={everything:!0,everythingExceptFlag:!0},i=0;i<j.length;i++)c.supports[j[i]]=e(j[i]),c.supports.everything=c.supports.everything&&c.supports[j[i]],"flag"!==j[i]&&(c.supports.everythingExceptFlag=c.supports.everythingExceptFlag&&c.supports[j[i]]);c.supports.everythingExceptFlag=c.supports.everythingExceptFlag&&!c.supports.flag,c.DOMReady=!1,c.readyCallback=function(){c.DOMReady=!0},c.supports.everything||(h=function(){c.readyCallback()},b.addEventListener?(b.addEventListener("DOMContentLoaded",h,!1),a.addEventListener("load",h,!1)):(a.attachEvent("onload",h),b.attachEvent("onreadystatechange",function(){"complete"===b.readyState&&c.readyCallback()})),g=c.source||{},g.concatemoji?f(g.concatemoji):g.wpemoji&&g.twemoji&&(f(g.twemoji),f(g.wpemoji)))}(window,document,window._wpemojiSettings);
</script>
<style type="text/css">
img.wp-smiley,
img.emoji {
display: inline !important;
border: none !important;
box-shadow: none !important;
height: 1em !important;
width: 1em !important;
margin: 0 .07em !important;
vertical-align: -0.1em !important;
background: none !important;
padding: 0 !important;
}
</style>
<!-- <link rel='stylesheet' id='verbosa-themefonts-css'  href='https://www.roelvanlisdonk.nl/wp-content/themes/verbosa/resources/fonts/fontfaces.css?ver=1.0.0' type='text/css' media='all' /> -->
<link rel="stylesheet" type="text/css" href="//www.roelvanlisdonk.nl/wp-content/cache/wpfc-minified/d45ec025bac5edae0b08c559bf16063e/1497342774index.css" media="all"/>
<link rel='stylesheet' id='verbosa-googlefonts-css'  href='//fonts.googleapis.com/css?family=Merriweather%7CJosefin+Sans%7CLato%7CMerriweather%3A400%7CJosefin+Sans%3A300%7CLato%3A300%7CLato%3A400%7CMerriweather%3A300&#038;ver=1.0.0' type='text/css' media='all' />
<!-- <link rel='stylesheet' id='verbosa-main-css'  href='https://www.roelvanlisdonk.nl/wp-content/themes/verbosa/style.css?ver=1.0.0' type='text/css' media='all' /> -->
<link rel="stylesheet" type="text/css" href="//www.roelvanlisdonk.nl/wp-content/cache/wpfc-minified/ea8fbe1aa93963bd351a3018a330bfae/1497342774index.css" media="all"/>
<style id='verbosa-main-inline-css' type='text/css'>
#content, #colophon-inside { max-width: 1440px; } #sidebar { width: 440px; } #container.two-columns-left .main, #container.two-columns-right .main { width: calc(97% - 440px); } #container.two-columns-left #sidebar-back, #container.two-columns-right #sidebar-back { width: calc( 50% - 280px); min-width: 440px;} html { font-family: Merriweather; font-size: 16px; font-weight: 400; line-height: 1.8; } #site-title { font-family: Josefin Sans; font-size: 200%; font-weight: 300; } #site-description { font-family: Lato; font-size: 110%; font-weight: 300; } #access ul li a { font-family: Merriweather; font-size: 100%; font-weight: 400; } #mobile-menu ul li a { font-family: Merriweather; } .widget-title { font-family: Lato; font-size: 90%; font-weight: 400; } .widget-container { font-family: Merriweather; font-size: 100%; font-weight: 400; } .entry-title, #reply-title { font-family: Merriweather; color: #333; font-size: 200%; font-weight: 300;} h1 { font-size: 2.76em; } h2 { font-size: 2.4em; } h3 { font-size: 2.04em; } h4 { font-size: 1.68em; } h5 { font-size: 1.32em; } h6 { font-size: 0.96em; } h1, h2, h3, h4, h5, h6 { font-family: Merriweather; font-weight: 400; } body { color: #555; background-color: #F3EEEB; } #site-title a, #access li { color: #333; } #site-description { color: #AEAEAE; } #access a, #access .dropdown-toggle, #mobile-menu a, #mobile-menu .dropdown-toggle { color: #555; } #access a:hover, #mobile-menu a:hover { color: #F26E3F; } #access li a span:before { background-color: #eeeeee; } #access li:hover > a:before { background-color: #F26E3F; } .dropdown-toggle:hover:after { border-color: #AEAEAE;} .searchform:before { background-color: #F26E3F; color: #fff;} #colophon .searchform:before { color: #fff; } article.hentry, .main > div:not(#content-masonry), .comment-header, .main > header, .main > nav#nav-below, .pagination span, .pagination a, #nav-old-below, .content-widget { background-color: #fff; } #sidebar-back, #sidebar, nav#mobile-menu { background-color: #fff; } .pagination a:hover, .pagination span:hover { border-color: #AEAEAE;} #breadcrumbs-container { background-color: #fff;} #colophon { background-color: #fff; } span.entry-format i { color: #AEAEAE; border-color: #AEAEAE;} span.entry-format i:hover { color: #F26E3F; } .entry-format > i:before { color: #AEAEAE;} .entry-content blockquote::before, .entry-content blockquote::after { color: rgba(85,85,85,0.1); } a { color: #333; } a:hover, .entry-meta span a:hover, .widget-title span, .comments-link a:hover { color: #F26E3F; } .entry-meta a { background-image: linear-gradient(to bottom, #F26E3F 0%, #F26E3F 100%);} .entry-title a { background-image: linear-gradient(to bottom, #333 0%, #333 100%);} #author-info #author-avatar img { border-color: #eeeeee; background-color: #fff ;} #footer a, .page-title strong { color: #333; } #footer a:hover { color: #F26E3F; } .socials a { border-color: #333;} .socials a:before { color: #333; } .socials a:after { background-color: #F26E3F; } #commentform { } #toTop .icon-back2top:before { color: #333; } #toTop:hover .icon-back2top:before { color: #F26E3F; } .page-link a:hover { background: #F26E3F; color: #F3EEEB; } .page-link > span > em { background-color: #eeeeee; } .verbosa-caption-one .main .wp-caption .wp-caption-text { border-color: #eeeeee; } .verbosa-caption-two .main .wp-caption .wp-caption-text { background-color: #f5f5f5; } .verbosa-image-one .entry-content img[class*="align"], .verbosa-image-one .entry-summary img[class*="align"], .verbosa-image-two .entry-content img[class*='align'], .verbosa-image-two .entry-summary img[class*='align'] { border-color: #eeeeee; } .verbosa-image-five .entry-content img[class*='align'], .verbosa-image-five .entry-summary img[class*='align'] { border-color: #F26E3F; } /* diffs */ #sidebar .searchform { border-color: #eeeeee; } #colophon .searchform { border-color: #eeeeee; } .main .searchform { border-color: #eeeeee; background-color: #fff;} .searchform .searchsubmit { color: #AEAEAE;} .socials a:after { color: #fff;} #breadcrumbs-nav .icon-angle-right::before, .entry-meta span, .entry-meta span a, .entry-utility span, .entry-meta time, .comment-meta a, .entry-meta .icon-metas:before, a.continue-reading-link { color: #AEAEAE; font-family: Lato; font-size: 90%; font-weight: 400; } a.continue-reading-link { background-color: #F26E3F; color: #fff; } a.continue-reading-link:hover { background-color: #333; } .comment-form > p:before { color: #AEAEAE; } .comment-form > p:hover:before { color: #F26E3F; } code, #nav-below .nav-previous a:before, #nav-below .nav-next a:before { background-color: #eeeeee; } #nav-below .nav-previous a:hover:before, #nav-below .nav-next a:hover:before { background-color: #dddddd; } #nav-below em { color: #AEAEAE;} #nav-below > div:before { border-color: #eeeeee; background-color: #fff;} #nav-below > div:hover:before { border-color: #dddddd; background-color: #dddddd;} pre, article #author-info, .comment-author, #nav-comments, .page-link, .commentlist .comment-body, .commentlist .pingback, .commentlist img.avatar { border-color: #eeeeee; } #sidebar .widget-title span { background-color: #fff; } #sidebar .widget-title:after { background-color: #eeeeee; } #site-copyright, #footer { border-color: #eeeeee; } #colophon .widget-title span { background-color: #fff; } #colophon .widget-title:after { background-color: #eeeeee; } select, input[type], textarea { color: #555; /*background-color: #f5f5f5;*/ } input[type="submit"], input[type="reset"] { background-color: #333; color: #fff; } input[type="submit"]:hover, input[type="reset"]:hover { background-color: #F26E3F; } select, input[type], textarea { border-color: #e9e9e9; } input[type]:hover, textarea:hover, input[type]:focus, textarea:focus { /*background-color: rgba(245,245,245,0.65);*/ border-color: #cdcdcd; } hr { background-color: #e9e9e9; } #toTop { background-color: rgba(250,250,250,0.8) } .main .entry-content, .main .entry-summary { text-align: Default; } .main p, .main ul, .main ol, .main dd, .main pre, .main hr { margin-bottom: 1.0em; } .main p { text-indent: 0.0em;} .main a.post-featured-image { background-position: center center; } .main .featured-bar { height: 5px; background-color: #F26E3F;} .main .featured-bar:before { background-color: #333;} .main { margin-top: 20px; } .verbosa-cropped-featured .main .post-thumbnail-container { height: 400px; } .verbosa-responsive-featured .main .post-thumbnail-container { max-height: 400px; height: auto; } article.hentry, #breadcrumbs-nav, .magazine-one #content-masonry article.hentry, .magazine-one .pad-container { padding-left: 12%; padding-right: 12%; } .magazine-two #content-masonry article.hentry, .magazine-two .pad-container, .with-masonry.magazine-two #breadcrumbs-nav { padding-left: 5.71%; padding-right: 5.71%; } .magazine-three #content-masonry article.hentry, .magazine-three .pad-container, .with-masonry.magazine-three #breadcrumbs-nav { padding-left: 3.87%; padding-right: 3.87%; } article.hentry .post-thumbnail-container { margin-left: -18%; margin-right: -18%; width: 136%; } #branding img.header-image { max-height: 250px; } .lp-staticslider .staticslider-caption-title, .seriousslider.seriousslider-theme .seriousslider-caption-title { font-family: Josefin Sans; /* font-weight: 300; */ } .lp-staticslider .staticslider-caption-text, .seriousslider.seriousslider-theme .seriousslider-caption-text { font-family: Lato; font-weight: 300; } a[class^="staticslider-button"] { font-family: Lato; font-size: 90%; font-weight: 400; } .lp-text-overlay, .lp-text { background-color: #fff; } .lp-staticslider .staticslider-caption, .seriousslider.seriousslider-theme .seriousslider-caption, .verbosa-landing-page .lp-text-inside, .verbosa-landing-page .lp-posts-inside, .verbosa-landing-page .lp-page-inside, .verbosa-landing-page .content-widget { max-width: 1440px; } .verbosa-landing-page .content-widget { margin: 0 auto; } a.staticslider-button-1 { color: #fff; border-color: #F26E3F; background-color: #F26E3F; } a.staticslider-button-1:hover { color: #F26E3F; } a.staticslider-button-2 { border-color: #fff; background-color: #fff; color: #555; } .staticslider-button-2:hover { color: #fff; background-color: transparent; } 
/* Verbosa Custom CSS */
</style>
<script>
if (document.location.protocol != "https:") {
document.location = document.URL.replace(/^http:/i, "https:");
}
</script>
<script type='text/javascript' src='https://ajax.googleapis.com/ajax/libs/prototype/1.7.1.0/prototype.js?ver=1.7.1'></script>
<script type='text/javascript' src='https://ajax.googleapis.com/ajax/libs/scriptaculous/1.9.0/scriptaculous.js?ver=1.9.0'></script>
<script type='text/javascript' src='https://ajax.googleapis.com/ajax/libs/scriptaculous/1.9.0/effects.js?ver=1.9.0'></script>
<script src='//www.roelvanlisdonk.nl/wp-content/cache/wpfc-minified/31fdca7422f29e2754ccc10b80e65180/1497342774index.js' type="text/javascript"></script>
<!-- <script type='text/javascript' src='https://www.roelvanlisdonk.nl/wp-content/plugins/lightbox-2/lightbox.js?ver=1.8'></script> -->
<!--[if lt IE 9]>
<script type='text/javascript' src='https://www.roelvanlisdonk.nl/wp-content/themes/verbosa/resources/js/html5shiv.min.js?ver=1.0.0'></script>
<![endif]-->
<link rel='https://api.w.org/' href='https://www.roelvanlisdonk.nl/wp-json/' />
<link rel="EditURI" type="application/rsd+xml" title="RSD" href="https://www.roelvanlisdonk.nl/xmlrpc.php?rsd" />
<link rel="wlwmanifest" type="application/wlwmanifest+xml" href="https://www.roelvanlisdonk.nl/wp-includes/wlwmanifest.xml" /> 
<link rel='prev' title='How to run an existing SQL Server Agent Job from C#' href='https://www.roelvanlisdonk.nl/2010/09/23/how-to-run-an-existing-sql-server-agent-job-from-c/' />
<link rel='next' title='How to enable SQL Service Broker on a SQL Server 2005 database to allow SqlCacheDependency' href='https://www.roelvanlisdonk.nl/2010/09/24/how-to-enable-sql-service-broker-on-a-sql-server-2005-database-to-allow-sqlcachedependency/' />
<meta name="generator" content="WordPress 4.9.1" />
<link rel="canonical" href="https://www.roelvanlisdonk.nl/2010/09/24/find-and-replace-text-in-all-files-of-a-given-folder-including-subfolders-with-c/" />
<link rel='shortlink' href='https://www.roelvanlisdonk.nl/?p=1738' />
<link rel="alternate" type="application/json+oembed" href="https://www.roelvanlisdonk.nl/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fwww.roelvanlisdonk.nl%2F2010%2F09%2F24%2Ffind-and-replace-text-in-all-files-of-a-given-folder-including-subfolders-with-c%2F" />
<link rel="alternate" type="text/xml+oembed" href="https://www.roelvanlisdonk.nl/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fwww.roelvanlisdonk.nl%2F2010%2F09%2F24%2Ffind-and-replace-text-in-all-files-of-a-given-folder-including-subfolders-with-c%2F&#038;format=xml" />
<!-- begin lightbox scripts -->
<script type="text/javascript">
//<![CDATA[
document.write('<link rel="stylesheet" href="https://www.roelvanlisdonk.nl/wp-content/plugins/lightbox-2/Themes/Black/lightbox.css" type="text/css" media="screen" />');
//]]>
</script>
<!-- end lightbox scripts -->
<!-- ImageLink widget --><!-- <link rel='stylesheet' href='https://www.roelvanlisdonk.nl/wp-content/plugins/simple-image-link/simple-image-link.css' type='text/css' media='screen' /> -->
<link rel="stylesheet" type="text/css" href="//www.roelvanlisdonk.nl/wp-content/cache/wpfc-minified/cb1bc46164c7116aa24118c3a12d4aca/1497342774index.css" media="screen"/><link rel="author" href="https://www.roelvanlisdonk.nl"><link rel="icon" href="https://www.roelvanlisdonk.nl/wp-content/uploads/2016/02/cropped-Roel-32x32.png" sizes="32x32" />
<link rel="icon" href="https://www.roelvanlisdonk.nl/wp-content/uploads/2016/02/cropped-Roel-192x192.png" sizes="192x192" />
<link rel="apple-touch-icon-precomposed" href="https://www.roelvanlisdonk.nl/wp-content/uploads/2016/02/cropped-Roel-180x180.png" />
<meta name="msapplication-TileImage" content="https://www.roelvanlisdonk.nl/wp-content/uploads/2016/02/cropped-Roel-270x270.png" />
</head>
<body data-rsssl=1 class="post-template-default single single-post postid-1738 single-format-standard verbosa-image-one verbosa-caption-two verbosa-responsive-featured magazine-one magazine-layout comhide-in-posts comment-placeholder verbosa-elementshadow" itemscope itemtype="http://schema.org/WebPage">
<div id="content" class="cryout">
<div id="container" class="two-columns-left">
<div id="sidebar">
<header id="header"  itemscope itemtype="http://schema.org/WPHeader">
<nav id="mobile-menu">
<span id="nav-cancel"><i class="icon-cross"></i></span>
<div id="mobile-nav"><ul>
<li ><a href="https://www.roelvanlisdonk.nl/"><span>Home</span></a></li><li class="page_item page-item-1724"><a href="https://www.roelvanlisdonk.nl/books/"><span>Books</span></a></li>
<li class="page_item page-item-199"><a href="https://www.roelvanlisdonk.nl/posts/"><span>Posts</span></a></li>
<li class="page_item page-item-187 page_item_has_children"><a href="https://www.roelvanlisdonk.nl/site-map/"><span>Site Map</span></a>
<ul class='children'>
<li class="page_item page-item-198"><a href="https://www.roelvanlisdonk.nl/site-map/contents/"><span>Contents</span></a></li>
</ul>
</li>
<li class="page_item page-item-4"><a href="https://www.roelvanlisdonk.nl/about-2/"><span>About</span></a></li>
</ul></div>
</nav>
<div id="branding" role="banner">
<div class="identity"><div itemprop="headline" id="site-title"><span> <a href="https://www.roelvanlisdonk.nl/"  rel="home">Knowledgebase</a> </span></div><span id="site-description"  itemprop="description" >Blog on software engineering</span></div>							<img class="header-image" alt="Find and Replace text in all files of a given folder , including subfolders with C#" src="https://www.roelvanlisdonk.nl/wp-content/uploads/2017/06/roel.png" />
<aside id="primary" class="widget-area sidey" role="complementary"  itemscope itemtype="http://schema.org/WPSideBar">
</aside>
<a id="nav-toggle"><span>&nbsp;</span></a>
<nav id="access" role="navigation"  aria-label="Primary Menu"  itemscope itemtype="http://schema.org/SiteNavigationElement">
<h3 class="widget-title menu-title"><span>Menu</span></h3>
<div class="skip-link screen-reader-text">
<a href="#main" title="Skip to content"> Skip to content </a>
</div>
<div id="prime_nav"><ul>
<li ><a href="https://www.roelvanlisdonk.nl/"><span>Home</span></a></li><li class="page_item page-item-1724"><a href="https://www.roelvanlisdonk.nl/books/"><span>Books</span></a></li>
<li class="page_item page-item-199"><a href="https://www.roelvanlisdonk.nl/posts/"><span>Posts</span></a></li>
<li class="page_item page-item-187 page_item_has_children"><a href="https://www.roelvanlisdonk.nl/site-map/"><span>Site Map</span></a>
<ul class='children'>
<li class="page_item page-item-198"><a href="https://www.roelvanlisdonk.nl/site-map/contents/"><span>Contents</span></a></li>
</ul>
</li>
<li class="page_item page-item-4"><a href="https://www.roelvanlisdonk.nl/about-2/"><span>About</span></a></li>
</ul></div>
</nav><!-- #access -->
</div><!-- #branding -->
</header><!-- #header -->
<aside id="secondary" class="widget-area sidey" role="complementary"  itemscope itemtype="http://schema.org/WPSideBar">
</aside>
<aside id="tertiary" class="widget-area sidey" role="complementary"  itemscope itemtype="http://schema.org/WPSideBar">
</aside>
<footer id="footer" role="contentinfo"  itemscope itemtype="http://schema.org/WPFooter">
<div id="footer-inside">
<div id="site-copyright"></div><div id="poweredby">Powered by<a target="_blank" href="http://www.cryoutcreations.eu/wordpress-themes/verbosa" title="Verbosa Theme by Cryout Creations"> Verbosa</a> &amp; <a target="_blank" href="http://wordpress.org/" title="Semantic Personal Publishing Platform">  WordPress.</a></div>		</div> <!-- #footer-inside -->
</footer><!-- #footer -->
</div><!--sidebar-->
<div id="sidebar-back"></div>
<main id="main" role="main" class="main">
<article id="post-1738" class="post-1738 post type-post status-publish format-standard hentry category-uncategorized tag-c-sharp" itemscope itemtype="http://schema.org/Article" itemprop="mainEntity">
<div class="featured-bar"></div>
<header class="entry-header">
<h1 class="entry-title"  itemprop="headline">Find and Replace text in all files of a given folder , including subfolders with C#</h1>
<div class="entry-meta">
<span class="author vcard" itemscope itemtype="http://schema.org/Person" itemprop="author">
<i class="icon-pen icon-metas" title="Author"></i>
<a class="url fn n" href="https://www.roelvanlisdonk.nl/author/admin/" title="View all posts by Roel van Lisdonk" itemprop="url">
<em itemprop="name">Roel van Lisdonk</em>
</a>
</span>
<span class="onDate date" >
<i class="icon-calendar icon-metas" title="Date"></i>
<time class="published" datetime="2010-09-24T11:27:07+00:00"  itemprop="datePublished">
September 24, 2010				</time>
<time class="updated" datetime="2010-09-24T11:28:32+00:00"  itemprop="dateModified"></time>
</span>
</div><!-- .entry-meta -->
</header>
<div class="entry-content"  itemprop="articleBody">
<p>If you want to find and replace some text in all files of a given folder, including subfolders, you can use the following C# code:</p>
<pre class="code"><span style="color: blue">   string </span>rootfolder = <span style="color: #a31515">@&quot;C:\Temp&quot;</span>;
<span style="color: blue">string</span>[] files = <span style="color: #2b91af">Directory</span>.GetFiles(rootfolder, <span style="color: #a31515">&quot;*.*&quot;</span>, <span style="color: #2b91af">SearchOption</span>.AllDirectories);
<span style="color: blue">foreach </span>(<span style="color: blue">string </span>file <span style="color: blue">in </span>files)
{&#160;&#160;&#160; <span style="color: blue">try
</span>{&#160;&#160;&#160; <span style="color: blue">string </span>contents = <span style="color: #2b91af">File</span>.ReadAllText(file);
contents = contents.Replace(<span style="color: #a31515">@&quot;Text to find&quot;</span>, <span style="color: #a31515">@&quot;Replacement text&quot;</span>);</pre>
<pre class="code"><span style="color: green">       // Make files writable
</span><span style="color: #2b91af">File</span>.SetAttributes(file, <span style="color: #2b91af">FileAttributes</span>.Normal);</pre>
<p><a href="http://11011.net/software/vspaste"></a></p>
<pre class="code">
<span style="color: #2b91af">File</span>.WriteAllText(file, contents);
}
<span style="color: blue">catch </span>(<span style="color: #2b91af">Exception </span>ex)
{&#160;&#160;&#160; <span style="color: #2b91af">Console</span>.WriteLine(ex.Message);
}
}</pre>
<p><a href="http://11011.net/software/vspaste"></a></p>
</div><!-- .entry-content -->
<footer class="entry-meta">
<div class="entry-meta">
<span class="footer-tags"  itemprop="keywords">
<i class="icon-bookmark icon-metas" title="Tagged"></i>&nbsp;<a href="https://www.roelvanlisdonk.nl/tag/c-sharp/" rel="tag">C#</a>			</span>
</div>
</footer><!-- .entry-meta -->
<nav id="nav-below" class="navigation" role="navigation">
<div class="nav-previous"><em>Previous Post</em><a href="https://www.roelvanlisdonk.nl/2010/09/23/how-to-run-an-existing-sql-server-agent-job-from-c/" rel="prev"><span>How to run an existing SQL Server Agent Job from C#</span></a></div>
<div class="nav-next"><em>Next Post</em><a href="https://www.roelvanlisdonk.nl/2010/09/24/how-to-enable-sql-service-broker-on-a-sql-server-2005-database-to-allow-sqlcachedependency/" rel="next"><span>How to enable SQL Service Broker on a SQL Server 2005 database to allow SqlCacheDependency</span></a></div>
</nav><!-- #nav-below -->
<section id="comments">
<h3 id="comments-title">
<span>3 Comments			</span>
</h3>
<ol class="commentlist">
<li class="comment even thread-even depth-1" id="comment-322880" itemscope itemtype="http://schema.org/Comment">
<article>
<header class="comment-header vcard">
<div class="comment-author"  itemscope itemtype="http://schema.org/Person" itemprop="creator">
<img alt='' src='https://secure.gravatar.com/avatar/0cba5817ab2455b7692524ebc41587ab?s=70&#038;d=mm&#038;r=g' srcset='https://secure.gravatar.com/avatar/0cba5817ab2455b7692524ebc41587ab?s=140&#038;d=mm&#038;r=g 2x' class='avatar avatar-70 photo' height='70' width='70'  itemprop="image" itemscope itemtype="http://schema.org/ImageObject"/>				<span class="author-name fn" itemprop="name">Shazmeister</span> 			</div> <!-- .comment-author -->
<div class="comment-meta">
<a href="https://www.roelvanlisdonk.nl/2010/09/24/find-and-replace-text-in-all-files-of-a-given-folder-including-subfolders-with-c/#comment-322880">
<time datetime="2015-11-16T10:49:24+00:00"  itemprop="datePublished">
<span class="comment-date">
November 16, 2015 at 10:49					</span>
<span class="comment-timediff">
2 years ago					</span>
</time>
</a>
</div><!-- .comment-meta -->
<div class="reply">
</div><!-- .reply -->
</header><!-- .comment-header .vcard -->
<div class="comment-body"  itemprop="text">
<p>Great code Roel, if i wanted to do multiple find and replace statements how would i do it i.e<br />
I have the following tags i need to replace with nothing</p>
</div>
<footer>
</footer>
</article>
</li><!-- #comment-## -->
<li class="comment odd alt thread-odd thread-alt depth-1" id="comment-324219" itemscope itemtype="http://schema.org/Comment">
<article>
<header class="comment-header vcard">
<div class="comment-author"  itemscope itemtype="http://schema.org/Person" itemprop="creator">
<img alt='' src='https://secure.gravatar.com/avatar/f8638ecd5e9aec4c83ec942c1962ceeb?s=70&#038;d=mm&#038;r=g' srcset='https://secure.gravatar.com/avatar/f8638ecd5e9aec4c83ec942c1962ceeb?s=140&#038;d=mm&#038;r=g 2x' class='avatar avatar-70 photo' height='70' width='70'  itemprop="image" itemscope itemtype="http://schema.org/ImageObject"/>				<span class="author-name fn" itemprop="name">Abner</span> 			</div> <!-- .comment-author -->
<div class="comment-meta">
<a href="https://www.roelvanlisdonk.nl/2010/09/24/find-and-replace-text-in-all-files-of-a-given-folder-including-subfolders-with-c/#comment-324219">
<time datetime="2015-12-02T20:40:34+00:00"  itemprop="datePublished">
<span class="comment-date">
December 2, 2015 at 20:40					</span>
<span class="comment-timediff">
2 years ago					</span>
</time>
</a>
</div><!-- .comment-meta -->
<div class="reply">
</div><!-- .reply -->
</header><!-- .comment-header .vcard -->
<div class="comment-body"  itemprop="text">
<p>Excellent !!!</p>
<p>Resolve my problem !!</p>
</div>
<footer>
</footer>
</article>
</li><!-- #comment-## -->
<li class="comment even thread-even depth-1" id="comment-325832" itemscope itemtype="http://schema.org/Comment">
<article>
<header class="comment-header vcard">
<div class="comment-author"  itemscope itemtype="http://schema.org/Person" itemprop="creator">
<img alt='' src='https://secure.gravatar.com/avatar/6dfacd085703b4a23e05d339f697b12e?s=70&#038;d=mm&#038;r=g' srcset='https://secure.gravatar.com/avatar/6dfacd085703b4a23e05d339f697b12e?s=140&#038;d=mm&#038;r=g 2x' class='avatar avatar-70 photo' height='70' width='70'  itemprop="image" itemscope itemtype="http://schema.org/ImageObject"/>				<span class="author-name fn" itemprop="name">Filipe</span> 			</div> <!-- .comment-author -->
<div class="comment-meta">
<a href="https://www.roelvanlisdonk.nl/2010/09/24/find-and-replace-text-in-all-files-of-a-given-folder-including-subfolders-with-c/#comment-325832">
<time datetime="2016-01-22T19:10:03+00:00"  itemprop="datePublished">
<span class="comment-date">
January 22, 2016 at 19:10					</span>
<span class="comment-timediff">
2 years ago					</span>
</time>
</a>
</div><!-- .comment-meta -->
<div class="reply">
</div><!-- .reply -->
</header><!-- .comment-header .vcard -->
<div class="comment-body"  itemprop="text">
<p>Hi,</p>
<p>I need to do more than 1 replace&#8230;how can I do that ? I tried to add more replace commands but it is not working.</p>
<p>Thank you</p>
</div>
<footer>
</footer>
</article>
</li><!-- #comment-## -->
</ol><!-- .commentlist -->
<div id="respond" class="comment-respond">
<h3 id="reply-title" class="comment-reply-title">Leave a Reply <small><a rel="nofollow" id="cancel-comment-reply-link" href="/2010/09/24/find-and-replace-text-in-all-files-of-a-given-folder-including-subfolders-with-c/#respond" style="display:none;">Cancel reply</a></small></h3>			<form action="https://www.roelvanlisdonk.nl/wp-comments-post.php" method="post" id="commentform" class="comment-form" novalidate>
<p class="comment-notes"><span id="email-notes">Your email address will not be published.</span> Required fields are marked <span class="required">*</span></p><p class="comment-form-comment"><label for="comment">Comment</label><textarea placeholder="Comment" id="comment" name="comment" cols="45" rows="8" aria-required="true"></textarea></p><p class="comment-form-author"><label for="author">Name<span class="required">*</span></label> <input id="author" placeholder="Name*" name="author" type="text" value="" size="30" aria-required='true' /></p>
<p class="comment-form-email"><label for="email">Email<span class="required">*</span></label> <input id="email" placeholder="Email*" name="email" type="email" value="" size="30" aria-required='true' /></p>
<p class="comment-form-url"><label for="url">Website</label><input id="url" placeholder="Website" name="url" type="url" value="" size="30" /></p>
<p class="form-submit"><input name="submit" type="submit" id="submit" class="submit" value="Post Comment" /> <input type='hidden' name='comment_post_ID' value='1738' id='comment_post_ID' />
<input type='hidden' name='comment_parent' id='comment_parent' value='0' />
</p><p style="display: none;"><input type="hidden" id="akismet_comment_nonce" name="akismet_comment_nonce" value="855aaf9703" /></p><p style="display: none;"><input type="hidden" id="ak_js" name="ak_js" value="242"/></p>			</form>
</div><!-- #respond -->
</section><!-- #comments -->
<link itemprop="mainEntityOfPage" href="https://www.roelvanlisdonk.nl/find-and-replace-text-in-all-files-of-a-given-folder-including-subfolders-with-c/" />		</article><!-- #post-## -->
</main><!-- #main -->
</div><!-- #container -->
		<div style="clear:both;"></div>
</div><!-- #content -->
<aside id="colophon" role="complementary" class="footer-three  cryout" itemscope itemtype="http://schema.org/WPSideBar">
<div id="colophon-inside">
<section id="simpleimagelink-3" class="widget-container simpleimagelink"><div class="footer-widget-inside"><div class="widget_simpleimagelink_container" ><div class="widget_simpleimagelink" style="text-align:left"><a href="http://nl.linkedin.com/pub/roel-van-lisdonk/20/378/61b"  rel="nofollow"><img src="https://www.linkedin.com/img/webpromo/btn_viewmy_160x33.png"  style=" width:160; height:33;" /></a></div></div></div></section><section id="simpleimagelink-4" class="widget-container simpleimagelink"><div class="footer-widget-inside"><div class="widget_simpleimagelink_container" ><div class="widget_simpleimagelink" style="text-align:left"><a href="http://twitter.com/roelvanlisdonk"  rel="nofollow"><img src="https://www.roelvanlisdonk.nl/wp-content/Images/Twitter.png"  style=" width:50%;" /></a></div></div></div></section>		</div>
</aside><!-- #colophon -->
<div id="toTop"><i class="icon-back2top"></i> </div><script type='text/javascript' src='https://www.roelvanlisdonk.nl/wp-includes/js/wp-embed.min.js?ver=4.9.1'></script>
<script async="async" type='text/javascript' src='https://www.roelvanlisdonk.nl/wp-content/plugins/akismet/_inc/form.js?ver=4.0.2'></script>
<script type='text/javascript' src='https://www.roelvanlisdonk.nl/wp-includes/js/jquery/jquery.js?ver=1.12.4'></script>
<script type='text/javascript' src='https://www.roelvanlisdonk.nl/wp-includes/js/jquery/jquery-migrate.min.js?ver=1.4.1'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var verbosa_settings = {"masonry":"1","rtl":"","magazine":"1","fitvids":"1","is_mobile":""};
/* ]]> */
</script>
<script type='text/javascript' src='https://www.roelvanlisdonk.nl/wp-content/themes/verbosa/resources/js/frontend.js?ver=1.0.0'></script>
<script type='text/javascript' src='https://www.roelvanlisdonk.nl/wp-includes/js/imagesloaded.min.js?ver=3.2.0'></script>
<script type='text/javascript' src='https://www.roelvanlisdonk.nl/wp-includes/js/masonry.min.js?ver=3.3.2'></script>
<script type='text/javascript' src='https://www.roelvanlisdonk.nl/wp-includes/js/jquery/jquery.masonry.min.js?ver=3.1.2b'></script>
</body>
</html><!-- WP Fastest Cache file was created in 0.070442914962769 seconds, on 04-01-18 18:17:30 -->