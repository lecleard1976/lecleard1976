---
title: "How to Update Left Menu Items on Main Page"
author: "Lucy Sheridan"
permalink: /tailor/2018-03-07-UpdateLeftMenu/
excerpt: "Provides guidance on how to add/update menu items to menu bar that appears on the left of the main pages"
last_modified_at: 2018-02-02T06:25:59-05:00
toc: true
header:
  teaser: images/Collection-edit.png
sidebar:
  nav: "sidenav"
---
{% include toc %}
## Required Actions
This requires updates to the following file:
-  _data/navigation.yml

## Steps to Create New Left Menu Item
These steps define how to update the menu options displayed in the left menu. To include side menu on pages you need to include the *sidebar: nav: "sidenav"* in the YML content at the top of each page.

1. Open _data / navigation.yml for edit.
2. Under **sidenav Menu** links section, edit the list displayed to include new menu item in appropriate order. The list displays in the same order as it appears in this list.
3. To create a grouping:
 - specify **title**: (name of group)
 - specify **children**: (enter on next line, included menu items should be listed below this)
4. To create new menu items specify
 - title: (enter name you want to appear in menu)
 - url: (enter the URL reference you want new menu item to link to)

## Publish
Once saved the updated menu should automatically appear automatically, although this may take some time to process.

## Notes
URLs can be an external url or a reference to a GitHub page:
- e.g., (external) **url**: *https://hpe.sharepoint.com/teams/edgepresentations/EDGECentral/Pages/CQ_Home.aspx*
- e.g., (GitHub page - uses 'permalink' path specified at top of page) **url**: */posts/*


