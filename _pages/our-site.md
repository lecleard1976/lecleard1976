---
title: "Our Site"
permalink: /oursite/
excerpt: "Our Site"
last_modified_at: 2018-03-22
toc: true
published: true
header:
  teaser: Collection-contributing.png
sidebar:
  nav: "sidenav"
---

{% include toc %}
This site has been created by referencing the latest theme content for [Minimal Mistakes](https://mmistakes.github.io/minimal-mistakes/) remotely, then layering on the minimal required customization for DXC branding and adding the EDGE Engineering content.

Site creation date March 14th 2018.

## Template Content
The following content must be included in your GitHub repo as it is required for the remote template to function or are tailored for DXC branding and are included to override the remote template content:
- **_data folder**
  - **navigation.yml**: Customized for project specific top menu options *(project content - tailor to modify menu options only)*
- **_layout** folder *(template content)*
  - **Default.html**: Customized to include 'Fork on GitHub' banner
- **_include** folder *(template content)*
  - **breadcrumb.html**: Customized to reduce white space above and below
  - **footer.html**: Customized to include Workplace and contributes links
  - **nav_list**: Customized to include yellow arrow icon in front of linked items in left menu
  - **feature_row**: Customized to change feature title from H2 to H4
  - **masthead.html**: added DXC logo to top left
  - **head/custom.html**: Customized to specify favicon and styles for Fork in GitHub banner
- **_pages**: required for template - contain project specified page files *(project content)*
- **_posts**: required for template - contain project specified data (used for News in example) *(project content)*
- **_sass** folder *(template content)*
   - **minimal-mistakes.scss**: Required local template file - not customized
   - **skins/contrast.scss**: Customized colour default values
     - **_variables.scss**: Customized to add DXC fonts, added general comments and update default colours
     - **_base.scss**: Customized to reduce default space above headers
     - **_page.scss**: Customized to reduce default space above content frame

This folder structure should not be modified as it is is required the template, although where *project content* is specified, the sub-content within the folders can be updated/added/removed as needed.

## Config.yml
Is the main configuration file that contains static values for your site and controls how the pages are compiled. Refer [here]({{ "/tailor/GettingStarted/" | relative_url }} ) for instructions on what static values should be modified when cloning this site. Other content that can be tailored is referenced within the applicable detailed instructions relating to specific updates, e.g., creating a collection.

## Collections
A collection represents a generated page, where the content is compiled from a 'collection' of sub files contained within a specific folder. These are displayed in alphabetic order based on name.

Each collection is associated with a folder that contains the sub files, e.g., **_devops, a markdown page contained in the _pages folder, e.g., devops.md and are configured in *config.yml*. The standards for this setup can be seen by reviewing an existing collection in the sample and users can refer [here]({{ "/tailor/2018-03-07-AddGeneratedPage/" | relative_url }} ) for more detailed instructions on creating a new collection.

The following items represent collections configured for this sample:
- _devops
- _emerging
- _events
- _posts *(template content)*
- _tailor
- _tools

**Note**: *Posts* is included as part of the underlying template and has been leveraged for this sample. It should **not** be deleted or renamed.

If you want to remove any of the existing collections, you must remove the references in *config.yml* before deleting the corresponding page or folder. Otherwise you will a compile error when GitHub attempts to regenerate you pages.

## Pages
Pages are typically stored in the *_pages* folder, but this is not required. It makes it easier to manage if all pages are stored in a single location. The exception to this is the *index.html* file, which represents the main/home page for the site. It is stored in the root. Pages are typically created as .md files, which can contain embedded html in div tags. HTML files are supported.

## Other files
Most of the other files at the root are template files and have not been customized for the purposes of this sample. 

The banner.js file and the ism folder support the banner that appears on the main page. This is a DXC Customization rather than a part of the Minimal Mistakes theme and typically should not be updated.

The dicts folder, the dockerfile.* files and the _config_dev.yml/_config_htmlproofer.yml are used for the Jenkinsfile automation. This can be configured to automatically spell check and link check the pages as content is updated. There is a known issue that is blocking the configuration of this function with a remote theme, which cause these builds to fail. It is not considered functional at this time.

