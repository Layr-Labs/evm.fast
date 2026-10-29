# Agent instructions

- The challenge is [docs/CHALLENGE.md](docs/CHALLENGE.md); the submission format, permitted
  imports and isolation requirements are in [docs/SUBMISSIONS.md](docs/SUBMISSIONS.md). The
  fixed statement is `InitE.Certificate` in `InitE/Challenge.lean`.
- `benchmark.json` is schema v2 with one track, `lean`. Pass `--track lean` to `yukon setup`,
  `yukon run` and `yukon submit`. `yukon switch` changes only Yukon's track selection; it keeps
  your Git branch, `HEAD`, index and worktree.
- Yukon submissions on the `lean` track replace only these paths:
  - `submission/Solution.lean`
  - `submission/claim.json`
  - `submission/InitECandidate/Solver/` (optional; new helper modules `InitECandidate.Solver.*`)
- The initial submission's proof library (`submission/InitECandidate/Proofs/`, about 55,000
  files) and its ROM literal modules (`submission/InitECandidate/*.lean`) are fixed but
  importable. Changes to them, and to anything else outside the paths above, are dropped from
  Yukon submissions. To submit different bytes or proofs, put new modules under
  `InitECandidate/Solver/`.
- Yukon archives are limited to 25 MiB compressed, 512 MiB expanded and 10,000 entries, in
  addition to the verifier's own package limits.
- Use a case-sensitive file system. The repository has paths that differ only by case
  (`Tools/` and `tools/`, `Guest/` and `guest/`), which a default macOS volume cannot hold.

## Score

- `scripts/run.py` scores the certified bound `K` from `claim.json` with its verification time:
  `scoreExact = K * 10^4 + verification minutes` (rounded up, at most 9999), so a smaller `K`
  always wins and time only breaks ties at equal `K`; lower is better. Ties do not improve the
  incumbent.
- The track opts in to Yukon's exact scores (`"exactScores": true` in `benchmark.json`).
  `score.json` carries `scoreExact`, a decimal string Yukon compares exactly, and `score`, the
  double nearest it (a plain integer up to 2^53). Minutes count at every size of `K`. `K` must be
  below 10^295, since an exact score holds at most 299 integer digits; larger claims are rejected.
- Official runs then apply the record rule (`scripts/time_score.py`, run by the workflow on the
  host): at equal `K`, read from the record's `currentBestScoreExact`, a submission must verify
  at least 5% faster than the `verifySeconds` of the record read when it finishes; otherwise it
  takes the record's exact score and ties. If the record cannot be read, the minutes are 9999
  and the step logs a warning. A record with no exact score (scored before the opt-in) is matched
  by its `metrics.claim`, and an equal `K` that is not 5% faster gets 9999 minutes.
  `YUKON_API_URL` (repository variable, default `https://api.yukon.org`) names the API. Local runs
  skip this step, so their minutes are only a rough indicator.
- `{"K":"infinity"}` is scored as `scoreExact` `1` followed by 300 zeros (10^300) with `score`
  `1e300`, above every finite score. The initial submission claims infinity, so any accepted
  finite `K` improves it.
- `K = floor(scoreExact / 10^4)`, with the verification minutes in the last four digits.
- A score is written only when verification accepts the submission; otherwise
  `scripts/run.py` exits nonzero and writes no score.
- `metrics.verifySeconds` is the verifier's wall time, and `metrics.verifyRunner` describes the
  machine that ran it (in official runs, the KVM guest).

## Verification modes

`scripts/run.py` reads `INIT_E_VERIFICATION`:

- `comparator` (default, and what `.github/workflows/benchmark.yml` uses for official scores):
  runs `verifier/verify.py` unchanged, including comparator export and Lean kernel replay, and
  requires `verified`. Scores record `"verification": "comparator"`. The verifier keeps the
  comparator's nanoda pass disabled. A full run of the initial submission has been reported to
  take under 7 hours.
- `build` (a faster local check, never used for official scores): the same policy check,
  isolation preflight and trusted axiom audit, then the candidate is built in the same sandbox
  and a trusted check confirms that `InitE.Challenge.certificate` is a theorem proving
  `InitE.Certificate InitE.Challenge.submission` at the claimed score, and that its axioms are
  only `propext`, `Classical.choice` and `Quot.sound`. Comparator export and kernel replay are
  skipped, so this mode relies on candidate Lean not tampering with its own build. Scores
  record `"verification": "build"`.

Run `bash scripts/setup.sh`, then `python3 scripts/run.py` (what `yukon setup --track lean` and
`yukon run --track lean` do), on a Linux host that meets the isolation requirements in docs/SUBMISSIONS.md.
Setup needs Go and Cargo to build the pinned landrun and nanoda. Set
`INIT_E_VERIFICATION=build` for the faster check. Both modes take hours on the initial
submission. Do not claim verification without a successful run.

## Notes

- Put reproducible context in the Yukon submission note. Remove secrets and private data first.
- Yukon handles submission pull requests and promotions; do not merge them by hand.
