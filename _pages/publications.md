---
layout: page
permalink: /publications/
title: Publications
description: Journal articles and book chapters, with theses listed separately, in reverse chronological order.
nav: true
nav_order: 4
toc:
  sidebar: left
---

<!-- _pages/publications.md -->

<!-- Journal-articles heading carries the Scholar/ORCID profile icons inline (raw <h2> so the
     links sit on the heading line). al-folio's common.js auto-ids it "journal-articles" from the
     text content, so it still appears in the TOC sidebar; the icons contribute no text. -->
<h2 id="journal-articles" class="pub-heading">
  <span>Journal articles</span>
  <span class="profile-links">
    <a href="https://scholar.google.com/citations?user={{ site.data.socials.scholar_userid }}" target="_blank" rel="noopener noreferrer" title="Google Scholar" aria-label="Google Scholar profile"><i class="ai ai-google-scholar"></i></a>
    <a href="https://orcid.org/{{ site.data.socials.orcid_id }}" target="_blank" rel="noopener noreferrer" title="ORCID" aria-label="ORCID iD"><i class="ai ai-orcid"></i></a>
  </span>
</h2>

<style>
  .pub-heading {
    display: flex;
    align-items: center;
    flex-wrap: wrap;
    gap: 0.6rem;
  }
  .pub-heading .profile-links {
    display: inline-flex;
    gap: 0.5rem;
    font-size: 0.85em;
  }
  .pub-heading .profile-links a {
    text-decoration: none;
    line-height: 1;
  }
</style>

<div class="publications">

{% bibliography --query @article %}

</div>

## Book chapters

<div class="publications">

{% bibliography --query @incollection %}

</div>

## Theses & dissertations

<div class="publications">

{% bibliography --query @phdthesis %}

{% bibliography --query @mastersthesis %}

</div>

<!-- Keep the per-year bibliography sub-headers (<h2 class="bibliography">) out of the TOC sidebar,
     so it lists only the three section headings. al-folio's tocbot ignores [data-toc-skip]. -->
<script>
  (function () {
    function skipYearHeaders() {
      document.querySelectorAll("h2.bibliography").forEach(function (h) {
        h.setAttribute("data-toc-skip", "");
      });
    }
    skipYearHeaders(); // runs during parse; the year headers above this script already exist
    function refreshToc() {
      skipYearHeaders();
      if (window.tocbot && typeof window.tocbot.refresh === "function") {
        window.tocbot.refresh();
      }
    }
    document.addEventListener("DOMContentLoaded", refreshToc);
    window.addEventListener("load", refreshToc);
  })();
</script>
