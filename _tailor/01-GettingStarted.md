---
title: "Getting Started"
author: "Lucy Sheridan"
permalink: /tailor/GettingStarted/
excerpt: "Provides guidance on how to add/update this site to tailor for your own content"
last_modified_at: 2018-02-02T06:25:59-05:00
toc: true
header:
  teaser: images/Collection-training.png
sidebar:
  nav: "sidenav"
---
{% include toc %}

## Overview
This template site has been created specifically to provide a site that can be easily cloned and tailored for use by other teams. Our goal - to lower the bar for other teams to create their own GitHub pages...

The content is almost identical to the [EDGE Engineering](https://github.dxc.com/pages/AET/OurSite/) site, but differs in that it uses a local copy of the Minimal Mistakes theme and this site has the Jenkins automation enabled to execute spell and link checking on each commit. Users can leverage either site for replication purposes, depending on their needs. This template site has the advantage of the quality checks being run via Jenkins, the other site uses a remote theme, so will automatically be upgraded as the theme is updated.
This site has been created specifically to create a light-weight site for the EDGE Engineering content, although the secondary intent is to provide an site that can be easily cloned and tailored for use by other teams. Our goal - to lower the bar for other teams to create their own GitHub pages...

The content of this site is described in more detail [here]({{ "/oursite/" | relative_url }}). This page outlines what parts of the repo are part of the underlying theme and what is the content that is specific to EDGE Engineering and can be updated/removed when tailoring for your own site. 

**Warning**: Users can tailor the theme content, but caution should be taken. The theme supports cross platform access, i.e., PCs, phones, etc., using responsive HTML, so many of the underlying styles are designed to adjust display based on display format, etc. Changing styles can have unexpected consequences. 
{: .notice--warning}

If you just want to contribute to our main site, click [here](https://github.dxc.com/pages/AET/OurSite/contributing/).

## Required Actions
The first step for a user wanted to replicate this site is to [fork](https://help.github.com/articles/fork-a-repo/) or [clone](https://help.github.com/articles/cloning-a-repository/) this repo locally. All changes referenced in the tailoring articles would then occur on this copy.

This requires updates to the following files in the copy:
- config.yml

Optionally, complete the [steps](https://github.dxc.com/pages/AET/OurSite/contributing/#Setting-up-an-environment-for-contribution) to set up a local development environment (recommended for complex changes). This setup may be challenging for some users.

Alternatively, if you forked the repo, you can enable pages for the fork to view updates (disable pages when not using). This site was created without creating a local installation of the Jekyll environment, but there are advantages to setting up a local environment to prototype changes prior to commit. 

Note: This site is setup using Jekyll, for more information, refer [here](https://jekyllrb.com/docs/home/). It uses the [Minimal Mistakes](https://mmistakes.github.io/minimal-mistakes/docs/quick-start-guide/) theme, which for this site is referenced as a remote theme - meaning most of the theme content is pulled directly from the Minimal Mistakes repo. THe advantage of this is that any updates are automatically pulled into this site. The current disadvantage is that remote themes are currently not supported with the Jenkins automation for spell checker and link checker.

## Getting Started
1. Open config.yml for edit
2. Update following lines
- **name**: (YAML anchor which can be referenced later - I mage it same as title)
- **description**: (specify brief description for your site) 
- **baseurl**: (specify the GitHub publication path for your repo including leading slash, e.g., /pages/repopath = /pages/lsheridan2/AEA
- **repository**: (specify the GitHub repo path for your repo including leading slash, e.g., /repopath = /lsheridan2/AEA
- **github**: (specify the GitHub repo path for your repo without leading slash, e.g., lsheridan2/AEA)
- **Workplace: group**: (id for your Facebook Workplace group)
 
## Publish
To trigger the publication of GitHub pages for a clone or forked repo, you must update the repo settings. Once it is enabled, the content will be automatically republished when updates are committed to the specified publication branch.

To configure GitHub pages:
1. Click on the Settings tab (immediately below the repo title)
2. Scroll down to the **GitHub Pages** section and under **Source**, select the repo branch containing the data you want to publish from. In this site, the content is published from the Master branch, but you can create a gh-pages branch and publish from that if you prefer not to use Master.
3. Click **Save** to generate the pages. The GitHub page URL for your site will appear at the top of this section. The page publication may take some time to complete.


