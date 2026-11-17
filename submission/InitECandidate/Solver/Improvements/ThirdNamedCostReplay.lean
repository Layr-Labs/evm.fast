import InitECandidate.Solver.Improvements.ThirdReplayNamesCore
import InitECandidate.Solver.Improvements.AcceptedCostOverrideRules
import InitECandidate.Solver.SourceCost.Shard

/-! A caller-first order is never assumed sound. Every selected entry is an
actual installed guest function, and the accepted analyzer checks each step.
The minimum-preserving variant avoids losing an existing stronger manual cost.
This adapter requires the actual accepted table/analyzer closure to replay.
-/
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ThirdNamedCostReplay
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost
open AcceptedCostOverrideRules

def entries (names : List String) : List Entry :=
  (ThirdReplayNamesCore.declarations names).map declPair

theorem entries_installed (names : List String) : ∀ p ∈ entries names, Installed p := by
  intro p hp
  obtain ⟨d, hd, rfl⟩ := List.mem_map.mp hp
  have ha := ThirdReplayNamesCore.declarations_actual hd
  exact declPair_valid ha.1 ha.2

def keepOld (st fresh : TblState) (p : Entry) : Bool :=
  match st.1.lookup p.1, fresh.1.lookup p.1 with
  | some old, some new => decide (old ≤ new)
  | _, _ => false

def minStep (st : TblState) (p : Entry) : TblState :=
  let fresh := replayStep st p
  if keepOld st fresh p then st else fresh

theorem minStep_sound {σ : Type} {st : TblState} {p : Entry}
    (hp : Installed p) (hs : StateSound σ guestCtx st) :
    StateSound σ guestCtx (minStep st p) := by
  have hf := replayStep_sound guestCtx_code guestCtx_bounded hp hs
  by_cases h : keepOld st (replayStep st p) p = true
  · simpa [minStep, h] using hs
  · simpa [minStep, h] using hf

def replayNamed (names : List String) (initial : TblState) : TblState :=
  (entries names).foldl minStep initial

theorem replayNamed_sound {σ : Type} {initial : TblState} (names : List String)
    (hs : StateSound σ guestCtx initial) :
    StateSound σ guestCtx (replayNamed names initial) := by
  exact AcceptedCostOverrideCore.foldl_invariant minStep (entries names)
    (fun p hp st hst => minStep_sound (entries_installed names p hp) hst) initial hs

#print axioms entries_installed
#print axioms minStep_sound
#print axioms replayNamed_sound
end ThirdNamedCostReplay
