---
title: "How to Create New Menu Item (top of pages)"
author: "Lucy Sheridan"
permalink: /tailor/2018-03-07-CreateNewMenuItem/
excerpt: "Provides guidance on how to add menu item to standard menu bar that appears at the top of the main pages"
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


## Steps to Create New Menu Item
These steps define how to update the menu options that appear at the top of pages. By default, the first menu option 'Home' (goes back to main page).
1. Open _data / navigation.yml for edit.
2. Under **main links** section, edit the list displayed to include new menu item in appropriate order. The list displays horizontally as it appears vertically in this list. 
 - **title**: (enter name you want to appear in menu)
 - **url**: (enter the URL reference you want new menu item to link to)

## Publish
Once saved the updated menu should automatically appear automatically, although this may take some time to process.

## Notes
URLs can be an external url or a reference to a GitHub page, e.g., 
- e.g., (external) **url**: *https://hpe.sharepoint.com/teams/edgepresentations/EDGECentral/Pages/CQ_Home.aspx*
- e.g., (GitHub page - uses 'permalink' path specified at top of page) **url**: */posts/*


