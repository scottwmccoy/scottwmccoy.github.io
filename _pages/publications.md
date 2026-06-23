---
layout: page
permalink: /publications/
title: Publications
description: Journal articles and book chapters, with theses listed separately — in reverse chronological order.
nav: true
nav_order: 4
toc:
  sidebar: left
---

<!-- _pages/publications.md -->

## Journal articles

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
