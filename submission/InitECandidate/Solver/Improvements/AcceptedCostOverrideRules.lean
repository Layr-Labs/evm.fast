import InitECandidate.Solver.Improvements.AcceptedCostOverrideCore
import InitECandidate.Solver.SourceCost.Table

/-!
# Small sound cost-table overrides

This component uses the accepted analyzer's existing `StateSound` and
`tblStepF_sound` interfaces. A replacement cost requires an actual callee proof;
the replay order is not trusted. It does not import the concrete sound table.
Draft until checked with the pinned Lean toolchain.
-/
set_option autoImplicit false
set_option maxRecDepth 100000

namespace AcceptedCostOverrideRules
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (MlS ProgHOL ShapeHOL)
open InitECandidate.Solver.SourceCost

variable {σ : Type} {X : Ctx 64}

/-- Change one cost entry, retaining the already sound escape-free marks. -/
def overrideCost (st : TblState) (f : MlS) (B : Nat) : TblState :=
  ((f, B) :: st.1, st.2)

theorem overrideCost_sound {st : TblState} {f : MlS} {B : Nat}
    (hs : StateSound σ X st)
    (hf : ∀ vs body callee rs,
      lookupCodeHOLFinite X.code.lookup f vs = some (body, callee, rs) →
      Cost σ X body B) : StateSound σ X (overrideCost st f B) := by
  refine ⟨?_, hs.2⟩
  exact AcceptedCostOverrideCore.cons_lookup_sound hs.1 hf

/-- A function's name, parameters and actual body, without a result shape. -/
abbrev Entry := MlS × List (MlS × ShapeHOL) × ProgHOL 64

def Installed (p : Entry) : Prop :=
  ∃ rs, guestCode p.1 = some (p.2.1, p.2.2, rs)

def replayStep (st : TblState) (p : Entry) : TblState :=
  tblStepF st p.1 p.2.1 p.2.2

theorem replayStep_sound (hC : X.code.lookup = guestCode) (hX : DomBounded X)
    {st : TblState} {p : Entry} (hp : Installed p) (hs : StateSound σ X st) :
    StateSound σ X (replayStep st p) := by
  obtain ⟨rs, hp⟩ := hp
  exact tblStepF_sound hC hX st hp hs

def replay (pairs : List Entry) (st : TblState) : TblState :=
  pairs.foldl replayStep st

theorem replay_sound (hC : X.code.lookup = guestCode) (hX : DomBounded X) :
    ∀ pairs : List Entry, (∀ p ∈ pairs, Installed p) →
      ∀ st, StateSound σ X st → StateSound σ X (replay pairs st)
  := by
    intro pairs hall st hs
    exact AcceptedCostOverrideCore.foldl_invariant replayStep pairs
      (fun p hp s hs' => replayStep_sound hC hX (hall p hp) hs') st hs

#print axioms overrideCost_sound
#print axioms replayStep_sound
#print axioms replay_sound
end AcceptedCostOverrideRules
