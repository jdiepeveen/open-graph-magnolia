[#--
	Function to add the prefix to the html tag
--]
[#function ogNamespace]
	[#return " prefix=\"og: http://ogp.me/ns#"\" /]
[/#function]

[#--
	Macro for generating Open graph meta tags.

	@param content
	@param image
	@param url
--]
[#macro ogTags content image="" url=""]
	[#if content?hasContent]

	[#-- Get the page --]
	[#local page = cmsfn.page(content)! ]

	[#-- Basic Metadata --]
	[#local title = page.ogTitle!page.title!page.@name]
	[#local type = page.ogType!"article"]
	[#local image = ""]
	[#if page.image?hasContent]

		[#local rendition = damfn.getRendition(page.image, "og-image")!]
		[#if rendition?hasContent]
			[#local imageLink = rendition.link!]
		[/#if]

	[/#if]
	[#local url = url?hasContent?then(url, ctx)]

	<meta property="title" content="${title!}" />
	<meta property="type" content="${type!}" />
	<meta property="image" content="${imageLink!}" />
	<meta property="url" content="${url!}" />


	[#-- Optional Metadata --]
    <meta property="og:locale" content="${ctx.locale?lowerCase}" />
	<meta property="" content="" />
	<meta property="" content="" />
	<meta property="" content="" />
	<meta property="" content="" />

	[/#if]
[/#macro]