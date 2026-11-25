import InitECandidate.Solver.Improvements.AcceptedCostOverrideRules
import InitECandidate.Solver.SourceCost.Shards.All
import InitECandidate.Solver.Spec.Bridge

/-! Check each installed function against a small table of already proved
callee prices. Adding a literal row after each proof keeps later computation
from unfolding earlier analyzer runs. -/

set_option autoImplicit false

namespace CompactCostReplay
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL MlS)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open AcceptedCostOverrideRules

def price (st : TblState) (p : ProgHOL 64) : Option Nat :=
  costA (fun f => st.1.lookup f) (fun f => st.2.1.contains f)
    (fun f => st.2.1.contains f || st.2.2.contains f) p

theorem program_cost {σ : Type} {st : TblState} {p : ProgHOL 64} {B : Nat}
    (hs : StateSound σ guestCtx st) (hp : price st p = some B) : Cost σ guestCtx p B := by
  obtain ⟨ht, hef, hz⟩ := hs
  have he : ∀ f, (st.2.1.contains f || st.2.2.contains f) = true →
      EfArgZero σ guestCtx.code f 1 := by
    intro f hf
    rcases Bool.or_eq_true_iff.mp hf with hf | hf
    · exact efArgZero_of_ef hef hf 1
    · exact hz f hf
  exact costA_sound ht hef he guestCtx_bounded (Arith.guestArithTbls guestCtx_code)
    (InitECandidate.Solver.Spec.p256Rule guestCtx_code) p B hp

theorem callee_cost {σ : Type} {st : TblState} {p : Entry} {B : Nat}
    (hs : StateSound σ guestCtx st) (hi : Installed p) (hp : price st p.2.2 = some B) :
    CalleeCost σ guestCtx p.1 B := by
  intro vs body callee shape hLookup
  obtain ⟨params, hCode⟩ := lookupCode_some hLookup
  obtain ⟨ret, hi⟩ := hi
  rw [guestCtx_code, hi] at hCode
  have he : body = p.2.2 := (congrArg (fun row => row.2.1) (Option.some.inj hCode)).symm
  rw [he]
  exact program_cost hs hp

theorem accepted {σ : Type} {f : MlS} {B : Nat}
    (h : Shards.finalState.1.lookup f = some B) : CalleeCost σ guestCtx f B :=
  calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 h

#print axioms callee_cost

end CompactCostReplay
