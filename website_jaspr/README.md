# Polina C — Jaspr

Source for [polina-c.com](https://polina-c.com/), ported from Flutter web to
[Jaspr](https://docs.jaspr.site).

This is a statically pre-rendered, multi-page site. Each route (`/`, `/molokai`,
`/pay`) is rendered to its own HTML file at build time, so the site works without
client-side JavaScript and is friendly to crawlers.

## Project layout

```
lib/
  main.server.dart      # server entrypoint: <html>/<head> document + metadata
  main.client.dart      # client entrypoint (hydration)
  app.dart              # Router: maps paths to page components
  constants/routes.dart # route paths
  components/           # shared building blocks
    scaffold.dart       # app bar + gradient footer shell
    markdown.dart       # renders Markdown content to HTML
    layout.dart         # AppColumn, AppImage
    contacts.dart       # "Connect with me" links
  pages/                # home.dart, molokai.dart, pay.dart
web/
  styles.css            # all styling (colors, fonts, layout)
  images/, icons/       # assets
  manifest.json, sitemap.xml, robots.txt, favicon.png
```

## Running locally

```
jaspr serve
```

The dev server runs on http://localhost:8080.

## Building

```
jaspr build
```

Output is written to `build/jaspr/`.

## Deploying

Deploys to Firebase Hosting (project `polina-c`). Build first, then:

```
jaspr build
firebase deploy
```

To deploy a preview channel:

```
firebase hosting:channel:deploy <channel-name>
```

Hosting config lives in `firebase.json` (serves `build/jaspr` with clean URLs).
