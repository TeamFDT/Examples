SWFAddress 2.4 

Description
-------------------------------------------------------------------------
SWFAddress provides deep linking for Flash and Ajax content. In other 
words it enables the Back, Forward and Reload buttons of the browser and 
creates unique URLs that can be sent over email or IM. SWFAddress also 
ships with an innovative technique that allows search engine indexing 
for such virtual pages. It supports the following browsers:

Mozilla Firefox 1+
Internet Explorer 6+
Safari 1.3+
Opera 9.5+
Chrome 1+
Camino 1+


Samples
-------------------------------------------------------------------------
The Adobe, Coherence, CS3, Flash, Frameset, IntKit, Rails, Rewriteless, 
SEO and UFO samples require Adobe Flash CS3 or later.
The Splash sample requires Adobe Flash CS4.
The MTASC sample requires MTASC 1.11+.
The Family, Flex and Tomcat samples require the Flex 3 SDK.


Notes
-------------------------------------------------------------------------
The file c.swf is used to fix broken SWF streaming in IE. It should be 
used with single large SWF files.

For local testing the work files or the whole hard drive should be added 
to the list of allowed locations available at http://www.adobe.com/
support/documentation/en/flashplayer/help/settings_manager04.html.

The Google Analytics tracking code should be included before the
swfaddress.js. It also needs to be edited and the _trackPageview(); call 
should be removed. The 'Top Content' section will provide more accurate 
results compared to 'Content by Title' because the page titles are set 
with JavaScript.


Known issues
-------------------------------------------------------------------------
SWFAddress values should not match the naming of frame labels on the main 
timeline.

Usage of getURL together with SWFAddress/ExternalInterface often breaks
the content in Internet Explorer.

The setStatus() and related methods are not supported on Safari and 
does not work with the default settings of Firefox and IE7.


Contributors
-------------------------------------------------------------------------
Rostislav Hristov
Matthew J Tretter
Max Tafelmayer
Jon MacDonald
Petyo Ivanov
Larry Benedict
Mark Ross
Luis Bello Moraes
Eugen Pflüger
Piotr Zema
Massimiliano Canestrari