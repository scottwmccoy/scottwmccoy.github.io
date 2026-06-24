---
layout: about
title: About
nav_order: 1
permalink: /
subtitle: Dept. of Geological Sciences & Engineering, University of Nevada, Reno

profile:
  align: right
  image: prof_pic.png
  image_circular: false # crops the image to make it circular
  more_info: >
    <p>Dept. of Geological Sciences &amp; Engineering</p>
    <p>1664 N. Virginia St., MS 0172</p>
    <p>Reno, NV 89557</p>
    <p>(775) 682-7205</p>

selected_papers: false # includes a list of papers marked as "selected={true}"
social: true # includes social icons at the bottom of the page

announcements:
  enabled: false # includes a list of news items
  scrollable: true # adds a vertical scroll bar if there are more than 3 news items
  limit: 5 # leave blank to include all the news in the `_news` folder

latest_posts:
  enabled: false
  scrollable: true # adds a vertical scroll bar if there are more than 3 new posts items
  limit: 3 # leave blank to include all the blog posts
---

I am an Associate Professor in the [Department of Geological Sciences and Engineering](https://www.unr.edu/geology) at the [University of Nevada, Reno](https://www.unr.edu), where I run the Natural Hazards and Earth Surface Dynamics lab. We work at the interface of Earth science and engineering, building mechanistic, predictive models of surface processes such as floods, landslides, and debris flows, which threaten communities on the time scale of a single event and, over geologic time, sculpt the mountains and river basins we live in. Across scales from grain-scale impact forces to continental river networks, we pursue basic questions about these surface processes: why and when they occur, how large they will be, which places and ecosystems are susceptible, and how their magnitude and frequency shift with changing climate, land use, and tectonics. To answer them we combine theory, computation, fieldwork, and remote sensing, working with everything from drones and satellites to high-performance landscape-evolution models.

Before joining UNR in 2014, I was a postdoctoral fellow with the Canadian Institute for Advanced Research, based at MIT and ETH Zürich. I earned my Ph.D. in Geological Sciences from the University of Colorado Boulder (2012), and B.S. (Geology) and B.A. (Business Administration) degrees from the University of Washington (2005).

<style>
  /* Use the theme's normal body font for the address/phone block under the profile
     photo, overriding al-folio's default monospace (.profile .more-info). */
  body .profile .more-info {
    font-family: inherit;
  }
</style>

<!-- ===========================================================================
     Home hero banner. This <style> lives in about.md, so it loads ONLY on the home
     page and affects no other page. The banner is a full-width hero sitting just below
     the (normal, themed) navbar, with the title and subtitle resting on top.
     Easy things to tweak: the image crop (background-position), the darkness of the
     scrim (the rgba alphas in ::before), and the hero height (the padding values).
     =========================================================================== -->
<style>
  /* Avoid the ~1 scrollbar-width of horizontal overflow the full-bleed hero can cause. */
  body.fixed-top-nav {
    overflow-x: hidden;
  }

  /* Full-bleed banner holding the title + subtitle, sitting flush below the navbar.
     Note: the main content container carries Tailwind's `.mt-5` (3rem !important, emitted
     in @layer utilities). A layered !important beats an unlayered one regardless of
     specificity, so an inline override of that margin can't win — instead we pull the
     banner up by the same 3rem to close the gap and sit flush against the navbar. */
  .post-header {
    position: relative;
    margin-top: -3rem; /* cancels the container's 3rem (.mt-5) top margin */
    margin-left: calc(50% - 50vw); /* break out of the 930px column to full width */
    margin-right: calc(50% - 50vw);
    margin-bottom: 2.5rem;
    padding: 3rem 1.5rem;
    background-image: url("/assets/img/HimalayaSunriseBanner.jpg");
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
    text-align: center;
    overflow: hidden;
  }

  /* Dark scrim for legibility over the bright snow and varied tones. */
  .post-header::before {
    content: "";
    position: absolute;
    inset: 0;
    background: linear-gradient(180deg, rgba(0, 0, 0, 0.5) 0%, rgba(0, 0, 0, 0.32) 45%, rgba(0, 0, 0, 0.45) 100%);
    pointer-events: none;
  }

  /* Title + subtitle resting on top of the banner, in a centered, readable column. */
  .post-header .post-title,
  .post-header .desc {
    position: relative; /* above the scrim */
    z-index: 1;
    max-width: 900px;
    margin-left: auto;
    margin-right: auto;
    color: #fff;
    text-shadow: 0 2px 10px rgba(0, 0, 0, 0.65);
  }
  .post-header .post-title {
    margin-top: 0;
  }
  .post-header .desc {
    margin-bottom: 0;
  }
</style>
