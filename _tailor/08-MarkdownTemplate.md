---
title: "Markdown Template"
author: "Lucy Sheridan"
permalink: /template/
excerpt: "Provides guidance on page layout and markdown"
last_modified_at: 2018-02-02T06:25:59-05:00
toc: true
header:
  teaser: images/Collection-newsletter.png
sidebar:
  nav: "sidenav"
---

{% include toc %}

# Text and formatting

To write documentation, use the [Markdown format](https://guides.github.com/features/mastering-markdown/).

# Pictures

To add pictures as part of a document:
- Add the jpg or png file in `/images/` directory
- Embed the picture in the middle of markdown: {% raw %}
`![sample picture]({{ "/images/demo.jpg" | relative_url }})`
{% endraw %}

It renders like so:

![sample picture]({{"/images/demo.jpg" | relative_url}})

# Code snippets

Using triple backticks (```), one can embed code / preformatted snippets, like so:

```c
if (isAwesome){
  return true
}
```

# Hyperlinks

Specify link text in square brackets and URL in round brackets, e.g., ```[link to Google](https://www.google.ca/)```.

The example shows an external URL. To use a permalink URL, specify the permalink value specified for that file, if in the same folder as file containing URL, e.g.:

![sample picture]({{"/images/permalink.png" | relative_url}})

If you do not specific as a 'relative_url' and the target file is in a different folder, you would have to include the publication path excluding the GitHub server address, i.e., 'pages' plus 'repo path' plus permalink value, e.g.:

![sample picture]({{"/images/hyperlink.png" | relative_url}})

# Additional formatting

To add "notice" type of sections, use the following syntax:

```
**ProTip:** This is a tip.
{: .notice--info}
```

The notices will render like so:

**Primary:** Primary notice. `{: .notice--primary}`
{: .notice--primary}

**Warning:** Warning notice. `{: .notice--warning}`
{: .notice--warning}

**Danger:** Danger notice. `{: .notice--danger}`
{: .notice--danger}

**Success:** Success notice. `{: .notice--success}`
{: .notice--success}

**Info:** This is a primary. `{: .notice--info}`
{: .notice--info}


# Embedding Microsoft Office documents

To embed office documents (Visio or PowerPoint):

- Get the embed code:

  ![Embed office document]({{"/images/office-embed.gif" | relative_url}})

- Add the `iframe` section in directly in your markdown document:

```html
<iframe width="402" height="346" frameborder="0" scrolling="no" src="https://hpe.sharepoint.com/teams/edgepresentations/_layouts/15/WopiFrame.aspx?sourcedoc={8f18c5b9-8aa5-4bd5-b6cd-56e1574ecc80}&action=embedview&wdAllowInteractivity=False&wdHideGridlines=True&wdHideHeaders=True&wdDownloadButton=True&wdInConfigurator=True">This is an embedded <a target='_blank' href='https://office.com'>Microsoft Office</a> diagram, powered by <a target='_blank' href='https://office.com/webapps'>Office Online</a>.</iframe>
```

Once on GitHub pages, it renders as an embedded document:

<iframe width="402" height="346" frameborder="0" scrolling="no" src="https://hpe.sharepoint.com/teams/edgepresentations/_layouts/15/WopiFrame.aspx?sourcedoc={8f18c5b9-8aa5-4bd5-b6cd-56e1574ecc80}&action=embedview&wdAllowInteractivity=False&wdHideGridlines=True&wdHideHeaders=True&wdDownloadButton=True&wdInConfigurator=True">This is an embedded <a target='_blank' href='https://office.com'>Microsoft Office</a> diagram, powered by <a target='_blank' href='https://office.com/webapps'>Office Online</a>.</iframe>

**NOTICE 1**: Most of this documentation is using the markdown format and is managed 'as code'. For diagrams, one can use PowerPoint or Visio with files hosted on SharePoint.
{: .notice--info}

**NOTICE 2**: For Visio documents, the way to get the iframe code is different than for PowerPoint or Excel. One needs to navigate to the
Visio diagram from SharePoint, copy the URL from the browser URL bar, and replace `&action=default` by `&action=embedview`. See the code of the current page for an example
{: .notice--info}
