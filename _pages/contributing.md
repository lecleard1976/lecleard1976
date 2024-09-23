---
title: "Contributing"
permalink: /pages/contributing/
excerpt: "This contributing section is a work in progress."
last_modified_at: 2017-11-10T11:25:59-05:00
toc: true
published: true
header:
  teaser: Collection-contributing.png
sidebar:
  nav: "sidenav"
---
{% include toc %}
## Welcome Aboard!
Our mission is to enable Delivery to quickly deliver DXC Offerings to ensure repeatable, consistent quality while remaining flexible and agile. We are all excited and hope you will join us in this task. 

We :heart: to see your [Pull Requests](https://help.github.com/articles/about-pull-requests/) for fixing or enhancing our content, either to upgrade the overall user experience or to make changes to specific content. We look forwards to seeing your contribution!

## Our Site
These pages make use of the [Jekyll](https://jekyllrb.com/) static website generator. Authoring content mostly amounts to authoring documents in [Markdown format](https://guides.github.com/features/mastering-markdown/).

For small changes, you can click the "Edit" button on the bottom of any published page, and start
the [pull request](https://help.github.com/articles/about-pull-requests/) process easily. You can use the preview tab in GitHub to make sure that it is properly formatted before committing.

If you plan to contribute often or have a larger change to make, it is best to setup an environment for contribution. Need help with GitHub usage and the concepts around infrastructure as code, see the [GitHub portal](https://github.dxc.com/pages/AET/EDGE-Central/Pages/GitHub_Home.html).

## Templates

Check [template]({{"/template/" | relative_url}}) section on how to write documentation for this site.

## Setting up an environment for contribution

You can optionally fork this environment and set up a mirror of these pages, by enabling GitHub pages for that mirror. That way you can see and verify the compiled changes prior to publication.

Alternatively, you can run the site locally on your PC. To do this you need to complete the following steps:

Install Jekyll:

- On Windows 10: install [Linux subsystem](https://msdn.microsoft.com/en-us/commandline/wsl/install-win10), then follow [those instructions](https://jekyllrb.com/docs/windows/#installation-via-bash-on-windows-10).
- On Linux: https://jekyllrb.com/docs/installation/

Then:

```bash
# Install pre-requisite for GitHub pages environment
sudo apt-get install -y zlib1g-dev
```

Now, you can run the site locally:

```bash
cd docs        # Go to the docs repository which you got with "git clone"
bundle install # Do this once to install all dependencies
make serve     # Run the site locally 
```

**Note**: If you get an error like `invalid byte sequence in US-ASCII`, change locale to en-US:

```bash
sudo update-locale LANG=en_US.UTF8
```

Then access the site at `http://localhost:4000/`

Other commands are available (see `Makefile` (root of repo)) for a complete list:

- `make test`: run html /links and spell check tests
- `make test_html`: run html / link tests only
- `make test_spell`: run spelling tests only
- `make build`: generate a version of the site in `_site` directory
- `make clean`: clean the directory generated previously

<!--- The following feature is still being configured in this environment and has been commented out. 
## CI/CD Pipeline

All pull requests into the documentation will trigger a [Jenkins pipeline for platform-dxc/docs](http://jenkins.platformdxc.com/blue/organizations/jenkins/Platform%20DXC%2Fdocs/).  This pipeline will perform certain checks, such as HTML Proofing and Spell Checking, which may trigger failure to the builds. This process is meant to ensure quality and consistency of the content.

### Spell Check

Spell check is performed using [Markdown Spell Check \(mdspell\)](https://www.npmjs.com/package/markdown-spellcheck).  A spell checking failure in the pipeline will block a merge.  To identify the failure, open the Jenkins pipeline where the failure occurred (click the red X in the GitHub Pull Request), click on the *Spell Check* step, and review the error in the output log.

The system is currently set to validate against a *US English* dictionary.

In general terms, to ignore a word or phrase which is throwing off the spell checker, you add it to the [.spelling](.spelling) ignore file.  This will tell `mdspell` to ignore any and all instances of that word.  **This file is case sensitive.**

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

If you have a spell checking failure you can't figure out how to fix, [open an issue to request help](https://github.dxc.com/lsheridan2/AEA/issues/new?label="help+wanted") or add a comment to your pull request.
-->
## Changing URLs / Permalinks

When changing sections of the site, we need to be conscious of the impact of pages outside of the Platform DXC docs that may be deep linking into the site. To address this, the [Jekyll Redirect From plugin](https://help.github.com/articles/redirects-on-github-pages/) is enabled, allowing you to specify an additional parameter in the YAML section at the top of any page like so:

```
redirect_from: "/old/url/path"
```

This will generate a redirect at the old path to point to the new permalink.

So when changing the permalink of a page from say `/tools/jira` to `/roadmaps-tools/tools/jira`, it is recommended to create a `redirect_from` set to the old URL as well.



