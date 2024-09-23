---
title: "Template for documents"
layout: single
excerpt: "Document template"
sitemap: false
permalink: /template/
header:
  image:
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
`![sample picture]({{ "/images/services.png" | relative_url }})`
{% endraw %}

It renders like so:

![sample picture]({{"/images/services.png" | relative_url}})

# Code snippets

Using triple backticks (```), one can embed code / preformatted snippets, like so:

```c
if (isAwesome){
  return true
}
```

# Hyperlinks

Specify link text in square brackets and URL in round brackets, e.g., ```[link to Google](https://www.google.ca/)```.

The example shows an external URL. To use a permalink URL, specify the permalink value specified for that file, if in the same folder as fiel containing URL, e.g., ```[template]({{"/template/" | relative_url}})```. If the target file is in a different folder, include the publication path excluding the GitHub server address, i.e., 'pages' plus 'repo path' plus permalink value, e.g., ```({{"/pages/lsheridan2/AEA/pages/contributing/" | realtive_url}})```.

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
<iframe src='https://dxcportal.sharepoint.com/:u:/r/sites/PlatformDXCEnablement/_layouts/15/WopiFrame.aspx?sourcedoc={1b314c91-e418-4f01-a691-72faa48daf82}&action=embedview' width='100%' height='600px' frameborder='0'>This is an embedded <a target='_blank' href='https://office.com'>Microsoft Office</a> diagram, powered by <a target='_blank' href='https://office.com/webapps'>Office Online</a>.</iframe>
```

Once on GitHub pages, it renders as an embedded document:

<iframe src='https://dxcportal.sharepoint.com/:u:/r/sites/PlatformDXCEnablement/_layouts/15/WopiFrame.aspx?sourcedoc={1b314c91-e418-4f01-a691-72faa48daf82}&action=embedview' width='100%' height='600px' frameborder='0'>This is an embedded <a target='_blank' href='https://office.com'>Microsoft Office</a> diagram, powered by <a target='_blank' href='https://office.com/webapps'>Office Online</a>.</iframe>

**NOTICE 1**: Most of this documentation is using the markdown format and is managed 'as code'. For diagrams, one can use PowerPoint or Visio with files hosted on SharePoint.
{: .notice--info}

**NOTICE 2**: For Visio documents, the way to get the iframe code is different than for PowerPoint or Excel. One needs to navigate to the
Visio diagram from SharePoint, copy the URL from the browser URL bar, and replace `&action=default` by `&action=embedview`. See the code of the current page for an example
{: .notice--info}
