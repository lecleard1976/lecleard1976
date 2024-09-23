---
title: "Add New Generated Page/Collection"
author: "Lucy Sheridan"
permalink: /tailor/2018-03-07-AddGeneratedPage/
excerpt: "Provides guidance on how to create a new page that generates from a series of sub files"
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
- category folder with at least one md file (refer [here]({{ "/tailor/2018-03-07-CreateNewBlog/" | relative_url}}) on how to create new collection item).
- new page file under _pages folder

This requires updates to the following file:
- config.yml

## Create New Page/Collection
These steps create the new page, which will be automatically generated from the md files in the _tailor folder. To create more sections refer to the [How to Add a collection item]({{ "/tailor/2018-03-07-CreateNewBlog/" | relative_url}}) post.

1. Create new folder for sub content, e.g., _tailor (you'll need to add at least one md file to create folder.
2. Create new page in _Pages, by copying existing page and making following changes:
 - **title**: (name for new page), e.g., How to Tailor this Site
 - **permalink**: (reference for URLs for this page)
 - update *site.xx* to site.*pagename*, e.g., *site.tailor*
3. Update tag in page to determine if the page will be displayed in grid mode or not. Grid mode displays linked collection items in a grid, otherwise they listed vertically.
 - i.e., ... include archive-single.html ... or ... include archive-single.html type="grid" ...
 
4. Update config.yml
 - under **collections** section, replicate an existing entry and update for the new page, e.g., *tailor: output: true permalink: /:collection/:path/*
 - under defaults section, replicate an existing entry and update for the new page, e.g., *- scope: path: "_tailor" type: tailor values: layout: single author_profile: true read_time: true comments: true share: true related: true sidebar: nav: "sidebar"*
 
## Publish
Once saved the new page should automatically appear automatically, although this may take some time to process.

