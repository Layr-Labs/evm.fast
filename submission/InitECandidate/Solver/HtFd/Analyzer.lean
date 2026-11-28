import InitECandidate.Solver.HtFd.Find
import InitECandidate.Solver.Spec.P256Fold
import InitECandidate.Solver.SourceCost.LoopExtra.Arith.GuestPure

/-! The table analyzer over the accepted table with the improved prices of `HtFd.htList` in
front (`htFind`), the effect sets of the accepted table. Evaluating it does not replay. -/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.HtFd
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type}

def tblH (g : MlS) : Option Nat :=
  match htFind g with
  | some B => some B
  | none => Shards.finalState.1.lookup g

theorem tblH_sound : TblSound σ guestCtx tblH := by
  intro g B hg
  unfold tblH at hg
  cases hf : htFind g with
  | some B' =>
    rw [hf] at hg
    cases hg
    exact htFind_cost hf
  | none =>
    rw [hf] at hg
    exact (Shards.finalState_sound_guest (σ := σ)).1 g B hg

def costFinH (p : ProgHOL 64) : Option Nat :=
  costA tblH (fun g => Shards.finalState.2.1.contains g)
    (fun g => (Shards.finalState.2.1.contains g || Shards.finalState.2.2.contains g)) p

theorem cost_guest_costAH {p : ProgHOL 64} {B : Nat} (h : costFinH p = some B) : Cost σ guestCtx p B := by
  obtain ⟨-, hef, hefz⟩ := Shards.finalState_sound_guest (σ := σ)
  have hefz' : ∀ g, (Shards.finalState.2.1.contains g || Shards.finalState.2.2.contains g) = true →
      EfArgZero σ guestCtx.code g 1 := by
    intro g hg
    rcases Bool.or_eq_true_iff.mp hg with hg | hg
    · exact efArgZero_of_ef hef hg 1
    · exact hefz g hg
  exact costA_sound tblH_sound hef hefz' guestCtx_bounded (Arith.guestArithTbls guestCtx_code)
    (InitECandidate.Solver.Spec.p256Rule guestCtx_code) p B h

#print axioms cost_guest_costAH

end InitECandidate.Solver.HtFd
