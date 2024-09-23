---
title: "Enable CI/CD Pipeline"
author: "Lucy Sheridan"
permalink: /tailor/cicd/
excerpt: "Outlines steps to set automated spell and link check using Jenkins"
last_modified_at: 2018-03-30
toc: true
header:
  teaser: images/Collection-automation.png
sidebar:
  nav: "sidenav"
---

{% include toc %}

The content is almost identical to the EDGE Engineering site, but differs in that it uses a local copy of the Minimal Mistakes theme and this site has the Jenkins automation enabled to execute spell and link checking on each commit. This template site has the advantage of the quality checks being run via Jenkins. 

## Overview

The CI/CD pipeline is currently running on this site, the job can be viewed [here](https://jenkins.platformdxc.com/job/AET/job/GitHub_Pages_Template/).

All pull requests/updates in this repository automatically trigger a new build, which ensures all changes are spell checked and links are verified.  The build fails if errors are found, with details of the specific typos and broken links available through the build console.

## Getting Started

To get started you must submit a Jenkins request for the repo or organization where the GitHub page content is located. Detailed instructions on how to submit the request and complete the setup are available [here](https://github.dxc.com/Platform-DXC/jenkins/blob/master/README.md) and the request should be submitted as a GitHub issue [here](https://github.dxc.com/Platform-DXC/jenkins/issues). These requests are typically processed within a few days.

Next, to enable a pipeline for a specific repo, you must ensure that the following files are included in the root of your repo:
- .dockerfileignore
- Dockerfile.htmlproofer
- Dockerfile.jekyll
- Dockerfile.mdspell
- Jenkinsfile
- Makefile
- _config_htmlproofer.yml
- .spelling
- dicts

These can be copied from this repo. Typically, they do not need to be modified if the intent is just to enable the spell and link check for your repo. Once copied, the new job should appear almost immediately in Jenkins. 

You'll need to open [Platform DXC Jenkins](https://jenkins.platformdxc.com/), find the entry that corresponds to your organization/repo in the list on the left hand side and click on that item. You should see the name of your repo where the Jenkinsfile was added in the list that is displayed (see example for this repo [here](https://jenkins.platformdxc.com/job/AET/). Click on that to view the job (see example for this repo [here](https://jenkins.platformdxc.com/job/AET/job/GitHub_Pages_Template/) and the click on the branch name in subsequent list to view the build status (see example for this repo [here](https://jenkins.platformdxc.com/job/AET/job/GitHub_Pages_Template/job/master/). 

New builds are automatically created when updating content in GitHub and on a nightly basis. Builds can also be triggered manually, by clicking on the **Build Now** option.

The status of the build is indicated by the dot next to the build in the Build History. Blue indicates success, red indicates failure. You'll also be able to see status in the previous screens denoted by the icon in the lists.

To review the build log, click on the build number in the Build History list and then select the **Console Output** option. You can scroll through the logged data to find the sections for spell check or html check that indicate the errors that caused a build to fail. These must be rectified in order for the build to succeed.

### Spell Check

Spell check is performed using [Markdown Spell Check \(mdspell\)](https://www.npmjs.com/package/markdown-spellcheck).  A spell checking failure in the pipeline cause a build to fail.  To identify the failure, open the Jenkins pipeline where the failure occurred, scroll to the *Spell Check* step, and review the error in the output log.

The system is currently set to validate against a *US English* dictionary (as defined in the *dicts* folder).

In general terms, to ignore a word or phrase which is throwing off the spell checker, you add it to the .spelling ignore file.  This will tell `mdspell` to ignore any and all instances of that word.  **This file is case sensitive.**

:dart: **Goal**: To have as few rows in `.spelling` as possible. Only add to `.spelling` when absolutely necessary.

When you already have a pull request open from your fork, any additional commits to your fork will trigger another pipeline build on the same PR. In this way, you can keep fixing the spelling until the pipeline passes, which will release the PR for merging.

Here are some tips to address spell checking failures:

- Have a typo? Fix it! :smile:
- Proper Names
  - Some proper names are not recognized. When a new name triggers a spell check failure, add it to the `.spelling` file in the "Proper Names" section. The value of this is later usage of the person's name will also then be validated.
- Proper Nouns / Vendor Names / Product Names
  - These should be placed in the `.spelling` file with the correct vendor spelling and capitalization. This will then (correctly) trigger failure if the incorrect capitalization is used.  (e.g., if JFrog is placed in `.spelling`, but content is put through the pipeline spelling it with a lowercase F, this will trigger a failure, and is an accurate error which should be fixed because the vendor calls themselves [JFrog](https://jfrog.com/))
- Lowercase vs. capitals
  - Putting a word in `.spelling` as only lowercase will allow it to work for both lowercase usage and where the first letter is capitalized. (There is no need to put both *Workstream* and *workstream* in the `.spelling` file.) If however, you want to force only the capital letter version (i.e., proper nouns), use only the one with the capital letter.
- Acronyms
  - All capital letter acronyms (e.g., PDXC) are automatically ignored (`mdspell -a`). If you have a mixed case acronym (e.g., PoC), you will have to add it to the `.spelling` file.
- URLs
  - By default, if the URL is properly formatted it should be ignored and not trigger a failure. (http and https already added to the `.spelling` file) If it does, make sure it begins with http:// or https://. (e.g., using a domain name alone in your content may trigger a spell checking failure)

If you have a spell checking failure you can't figure out how to fix, [open an issue to request help](https://github.dxc.com/AET/GitHub_Pages_Template/issues/new?label="help+wanted").

### HTML Checker

Links that cannot be successfully validated, e.g., result in 404 will cause a build to fail. To identify the failure, open the Jenkins pipeline where the failure occurred, scroll to the *HTML Checker* step, and review the error in the output log.
