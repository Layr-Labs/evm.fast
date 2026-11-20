import InitECandidate.Solver.Improvements.FourthDecoderActual
import InitECandidate.Solver.Spec.P256Fold

/-! Generic source analyzer at the sound updated decoder table. Copied from
accepted BalCost/Analyzer generic portion (Apache-2.0); no memory or success
precondition is added. Its only change is the supplied table/state theorem. -/
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace FourthDecoderAnalyzer
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
variable {σ : Type}

def costFin (p : ProgHOL 64) : Option Nat :=
  costA (fun g => FourthDecoderTable.state.1.lookup g)
    (fun g => FourthDecoderTable.state.2.1.contains g)
    (fun g => FourthDecoderTable.state.2.1.contains g || FourthDecoderTable.state.2.2.contains g) p

theorem cost_guest_costA {p : ProgHOL 64} {B : Nat} (h : costFin p = some B) :
    Cost σ guestCtx p B := by
  obtain ⟨ht, hef, hefz⟩ := FourthDecoderActual.sound (σ := σ)
  have hefz' : ∀ g,
      (FourthDecoderTable.state.2.1.contains g || FourthDecoderTable.state.2.2.contains g) = true →
      EfArgZero σ guestCtx.code g 1 := by
    intro g hg
    rcases Bool.or_eq_true_iff.mp hg with hg | hg
    · exact efArgZero_of_ef hef hg 1
    · exact hefz g hg
  exact costA_sound ht hef hefz' guestCtx_bounded (Arith.guestArithTbls guestCtx_code)
    (InitECandidate.Solver.Spec.p256Rule guestCtx_code) p B h

#print axioms cost_guest_costA
end FourthDecoderAnalyzer
