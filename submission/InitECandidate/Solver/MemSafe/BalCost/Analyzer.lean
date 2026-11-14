import InitECandidate.Solver.Spec.P256Fold
import InitECandidate.Solver.MemSafe.Wire.Guest
import InitECandidate.Solver.Band2.Incorporate
import InitECandidate.Solver.Band6.UbCost

/-!
# Wg: cost kit (unconditional costs of straight-line and loop pieces by the table analyzer)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.BalCost.Analyzer
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

/-- The table analyzer's bound of a program, for the final table of the guest. -/
def costFin (p : ProgHOL 64) : Option Nat :=
  costA (fun g => Shards.finalState.1.lookup g) (fun g => Shards.finalState.2.1.contains g)
    (fun g => (Shards.finalState.2.1.contains g || Shards.finalState.2.2.contains g)) p

theorem cost_guest_costA {p : ProgHOL 64} {B : Nat} (h : costFin p = some B) : Cost σ guestCtx p B := by
  obtain ⟨ht, hef, hefz⟩ := Shards.finalState_sound_guest (σ := σ)
  have hefz' : ∀ g, (Shards.finalState.2.1.contains g || Shards.finalState.2.2.contains g) = true →
      EfArgZero σ guestCtx.code g 1 := by
    intro g hg
    rcases Bool.or_eq_true_iff.mp hg with hg | hg
    · exact efArgZero_of_ef hef hg 1
    · exact hefz g hg
  exact costA_sound ht hef hefz' guestCtx_bounded (Arith.guestArithTbls guestCtx_code)
    (InitECandidate.Solver.Spec.p256Rule guestCtx_code) p B h


end InitECandidate.Solver.MemSafe.BalCost.Analyzer
