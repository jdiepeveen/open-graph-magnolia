# Open Graph meta tags for Magnolia CMS

Generates Open Graph meta tags for your website for sharing pages with Linkedin, Facebook and more.

## Features

Allows editors to specify the Open graph meta tags per page. These meta tags will be used for sharing.

The following fields can be provided:

    og:title
    og:type
    og:description
    og:image

- article:
<!--
Provide a list of the key features this module provides for content
authors, or whoever the primary user is. For a component template,
consider providing screenshots of the rendered component and the
component dialog.
-->


## Usage
1. Include the openGraph tab fields in the page properties dialog.
   
   
    [#include "/open-graph/templates/areas/openGraph.ftl" /]

2. Add the following prefix attribute to the &lt;html&gt; tag:


	prefix="og: http://ogp.me/ns#"

e.g.:

	<html prefix="og: http://ogp.me/ns#">
	
Or use the function provided:

    <html [#ogNamespace /]>

2. Add the imageVariation "og-image" to the theme definition to allow automatic resizing of the highlighted image.  
*note: only needed if you want the macro to automatically retrieve the asset and resize it.*

    
    og-image:
      class: ...
      height: ...
      width: ...

2. 
3. Include the macro in the freemarker template where you have the &lt;head&gt; element.


    [@openGraph content /]

### Macro parameters


    @param content  (required)  the content currenly being rendered. The macro will automatically get the page, so passing through the component/area content is fine.
    @param image    (optional)  the url to the image
    @param url      (optional)  the absolute url of the page. Provide your own url if the page is some kind of virtual page. Leave empty to just use the default page url.


TODO: Template def params?

parameters:
  ogType: article

<!--
Provide details about how a developer can make the component template,
or other features provided by the light module, available to content
authors.

This can include any special instructions about webresources or
availability. This could include instructions on 3rd party dependencies
such as jquery.

Describe how a template can be configured with parameters if
applicable.
-->


## Information on Magnolia CMS

This directory is a Magnolia 'light module'.
https://docs.magnolia-cms.com


## License
MIT

## Contributors
