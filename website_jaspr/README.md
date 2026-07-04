# Polina C website

Source for [polina-c.com](https://polina-c.com/).

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
