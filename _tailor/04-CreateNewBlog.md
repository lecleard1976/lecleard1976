---
title: "How to Add New Collection Item/Post"
author: "Lucy Sheridan"
permalink: /tailor/2018-03-07-CreateNewBlog/
excerpt: "Provides guidance on how to add new blog entry to a generated/collection page"
last_modified_at: 2018-02-02T06:25:59-05:00
toc: true
header:
  teaser: images/Collection-blog-post.png
sidebar:
  nav: "sidenav"
---
{% include toc %}
## Required Actions
This requires created the following new content:
- new .md file under appropriate collection folder, e.g., _posts

## Steps to Add a New Collection Item
These steps define how to create a new collection item. These are the sub-pages displayed on a collection page, e.g., posts on the News page.

1. Copy the content from an existing collection item file in the _posts/ folder in this project.
2. Create a new file - naming convention should be used for posts on News tab
 - naming convention for posts (date-yyyy-mm-dd)-name of blog, e.g., 2018-03-07-CreateNewBlog.md and paste content from step 1 into file. *Note: Items are displayed alphabetically, so to control the display order you may need to adjust the naming convention.*
3. Update header data
 - **title**: (title of new blog - to appear on collection page)
 - **author**: (your name)
 - **permalink**: (name to be used to hyperlink to this item), e.g., /posts/20180307-Create New Blog/ 
 - **excerpt**: (brief description - to appear on links to other topics on bottom of each collection item)
 - **teaser**: (image reference - to appear on links on all grid type display pages)
4. Update content, format using [markdown](https://guides.github.com/features/mastering-markdown/). Titles should be prefixed with '## ', this denotes heading 2 and will be the appropriate font size for a sub-heading.
5. Include toc tag at top of page content where page content is lengthy and has multiple sections, as this generates toc links for all headings prefixed with '# '

For markdown instructions, a [template]({{"/template/" | relative_url}}) is available with some *quick reference* guidance.
{: .notice--info}

## Publish
Once saved the new blog should automatically appear in the relevant collections page, although this may take some time to process.
