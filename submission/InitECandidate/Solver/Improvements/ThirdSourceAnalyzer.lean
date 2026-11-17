import InitECandidate.Solver.SourceCost.Shards.All
import InitECandidate.Solver.Spec.P256Fold

/-!
The generic part of accepted MemSafe/BalCost/Analyzer.lean, Apache-2.0,
without its unused memory-safety/dispatch imports. This avoids an import cycle
when a newly proved unconditional leaf feeds the opcode dispatch bound.
The definitions and proof below are copied unchanged except namespace.
-/
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace ThirdSourceAnalyzer
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type}

def costFin (p : ProgHOL 64) : Option Nat :=
  costA (fun g => Shards.finalState.1.lookup g) (fun g => Shards.finalState.2.1.contains g)
    (fun g => (Shards.finalState.2.1.contains g || Shards.finalState.2.2.contains g)) p

theorem cost_guest_costA {p : ProgHOL 64} {B : Nat} (h : costFin p = some B) :
    Cost σ guestCtx p B := by
  obtain ⟨ht, hef, hefz⟩ := Shards.finalState_sound_guest (σ := σ)
  have hefz' : ∀ g, (Shards.finalState.2.1.contains g || Shards.finalState.2.2.contains g) = true →
      EfArgZero σ guestCtx.code g 1 := by
    intro g hg
    rcases Bool.or_eq_true_iff.mp hg with hg | hg
    · exact efArgZero_of_ef hef hg 1
    · exact hefz g hg
  exact costA_sound ht hef hefz' guestCtx_bounded (Arith.guestArithTbls guestCtx_code)
    (InitECandidate.Solver.Spec.p256Rule guestCtx_code) p B h

#print axioms cost_guest_costA
end ThirdSourceAnalyzer
