# tidal-store-index-runner

`tidal-store-index-runner` keeps a focused Swift implementation around databases. The project goal is to develop a Swift command-oriented project for index scenarios with round-trip fixtures, lossless normalization checks, and synthetic fixtures only.

## Reason For The Project

I want this repository to be useful as a quick reading exercise: fixtures first, implementation second, verifier last.

## Tidal Store Index Runner Review Notes

Start with `index fit` and `index fit`. Those cases create the widest score spread in this repo, so they are the best quick check when the model changes.

## What It Does

- `fixtures/domain_review.csv` adds cases for index fit and join width.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/tidal-store-index-walkthrough.md` walks through the case spread.
- The Swift code includes a review path for `index fit` and `index fit`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## How It Is Put Together

The repository has two validation layers: the original compact policy fixture and the domain review fixture. They are separate so one can change without hiding failures in the other.

The Swift implementation avoids hidden state so fixture changes are easy to reason about.

## Run It

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Check It

The same command runs the local verification path. The highest-scoring domain case is `stale` at 207, which lands in `ship`. The most cautious case is `baseline` at 162, which lands in `ship`.

## Boundaries

The fixture set is small enough to audit by hand. The next useful expansion is malformed input coverage, not extra surface area.
