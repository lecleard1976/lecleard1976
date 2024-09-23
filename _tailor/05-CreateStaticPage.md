---
title: "How to Create a New Static Page"
author: "Lucy Sheridan"
permalink: /tailor/2018-03-20-CreateNewStaticPage/
excerpt: "Provides guidance on how to create a new static page and content"
last_modified_at: 2018-02-02T06:25:59-05:00
toc: true
header:
  teaser: images/Collection-contributing.png
sidebar:
  nav: "sidenav"
---

{% include toc %}
## Required Actions
This requires created the following new content:
- new md file under pages folder, i.e., _pages or root folder

## Steps to Create a New Page
These steps define how to create a new static page. These are the pages where all the content is defined within the page, rather than a generated page/collection, where data is pulled from sub-files.

1. Copy the content from an existing page, e.g., Overview.md page.
2. Create a new file.
3. Update header data
 - **title**: (title of new page - to appear on collection page)
 - **author**: (your name)
 - **permalink**: (name to be used to hyperlink to this item), e.g., /overview/ 
 - **excerpt**: (brief description of new page)
4. Update content, format using [markdown](https://guides.github.com/features/mastering-markdown/). Titles should be prefixed with '## ', this denotes heading 2 and will be the appropriate font size for a sub-heading.
5. Include toc tag at top of page content where page content is lengthy and has multiple sections, as this generates toc links for all headings prefixed with '# '

For markdown instructions, a [template]({{"/template/" | relative_url}}) is available with some *quick reference* guidance.
{: .notice--info}

## Publish
Once saved the new page will be created automatically in GitHub pages, although this may take some time to process.
