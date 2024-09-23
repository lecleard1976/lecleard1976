---
title: "Update main page"
author: "Lucy Sheridan"
permalink: /tailor/2018-03-07-UpdateMainPage/
excerpt: "Provides guidance on how to update the content of the main page"
last_modified_at: 2018-02-02T06:25:59-05:00
toc: true
header:
  teaser: images/Collection-newsletter.png
sidebar:
  nav: "sidenav"
---
{% include toc %}
## Required Actions
This requires updates to the following file:
- index.html

## Updating Main Page
These instructions are for updating the home page for your site:
1. Open index.html for edit (contained in root of branch)
2. Update content as needed, formatted using html. Default content can be used - banner & 3 column display or this can be replaced.
 - To change the images displayed in the Carousel take the following steps
    - Update the source images in the SliderImages.pptx.
    - Save the updated images in png format, overriding the following images in the images folder 
      - slider 1 image (slider-EE.png)
      - slider 2 image (slider-GetConnected.png)
      - slider 3 image (slider-Ecosystem.png)
    - Update the link info in the slider on index.html to point to your content
 - Of course you can add or remove images as needed by adjusting the instructions given as needed.
3. For feature row, replace or update content based on your needs. Feature rows consist of 1-3 items, so you can remove or add items as needed, up to a maximum of 3. 
4. You can change the orientation, i.e., left, right or center.  To change feature row orientation, update the feature row syntax (at bottom on index.html) to include type attribute, e.g.,  **include feature_row type="left"** 
5. You can also add as feature rows as needed (in groups of 1-3 items). To add additional rows, replicate feature row content section, but give a different name (the new feature row can include 1-3 new features), e.g., change feature_row to feature_row2, and then add the additional feature row syntax beneath the current syntax (bottom of file), e.g.,  **include feature_row id="feature_row2" type="left"** .
 
## Publish
Once saved the updated page should automatically appear automatically, although this may take some time to process.

## Notes
Other pages can be created as needed, either in the root or in the *pages* folder.
