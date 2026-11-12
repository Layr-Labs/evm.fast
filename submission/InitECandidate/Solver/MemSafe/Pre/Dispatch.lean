import InitECandidate.Solver.MemSafe.Wire.Fold

set_option autoImplicit false

/-!
# `run_precompile`: the dispatcher over the 18 precompiles

`run_precompile(idx)` is `if idx == k { pre_<k>(); return 0; }` eighteen times, then
`throw BlockErr 99`. Every callee has the signature `⟨[], [], [], false⟩` with the ev capability
`⟨ev, 0, [8, 23], false⟩`, so the fold's own checker (`accepts`) proves it against the merged
table `ShardsJL.tab26` extended by the two callees that are not fold entries:

* `pre_modexp` (hand proof in `Pre/PreModexp.lean`), and
* `pre_alt_bn128_pairing_check` (needs `fq12_inv`; a hypothesis).

Generic statement: the merged table is assumed sound for `H` (`hT`); at `guestHooksJL` it is
`Wire.tab_guestJL`.
-/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Pre
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (MlS ProgHOL)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-- The capability of every `pre_*` entry: the running EV's slots 8 and 23. -/
def evCaps : List Cap := [⟨nm "ev", 0, [8, 23], false⟩]

/-- The signature of every `pre_*` entry. -/
def preSig : Sig := ⟨[], [], [], false⟩

/-- The signature of `run_precompile`. -/
def rpSig : Sig := ⟨[.any], [], [], false⟩

/-- The callee table of the hand-proved dispatcher (`Pre/RpHand.lean`): `pre_modexp` and the
pairing check in front of the fold table (`pre_identity` is not a fold entry: eon). -/
def rpTab0 : CTab :=
  (nm "pre_modexp", preSig, evCaps) :: (nm "pre_alt_bn128_pairing_check", preSig, evCaps) ::
    ShardsJL.tab26

end InitECandidate.Solver.MemSafe.Pre
