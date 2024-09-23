---
layout: archive
title: "Events"
permalink: /events/
author_profile: false
sidebar:
  nav: "sidenav"
---

<div class="grid__wrapper">
<p>Click on any of the events below to see more information our scheduled Global SME sessions. Refer to our <a href="https://dxcportal.sharepoint.com/sites/AETT/UserReferences/Forms/SpecialQASessions.html?RootFolder=%2Fsites%2FAETT%2FUserReferences%2FSpecialQASessions&FolderCTID=0x012000AFF426EBED9A4F459C37473640DBE0C3&View=%7B55FE6759%2DD5F2%2D4F49%2DBB37%2D00BF96A607FF%7D">Session Library</a> for recordings.</p>  
  {% for post in site.events %}
    {% include archive-single.html type="grid" %}
  {% endfor %} 
</div>
