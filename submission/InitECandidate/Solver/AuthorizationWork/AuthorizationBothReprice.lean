import InitECandidate.Solver.AuthorizationWork.CompactNonce
import InitECandidate.Solver.AuthorizationWork.CompactSetCode
import InitECandidate.Solver.MemSafe.D0.SdCode
import InitECandidate.Solver.Improvements.ThirdSourceAnalyzer
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
namespace AuthorizationBothReprice
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open AcceptedCostOverrideRules InitECandidate.Solver.MemSafe.D0

def state : TblState := overrideCost (overrideCost Shards.finalState (nm "increment_nonce")
  179669089823624876965997082397258484355768) (nm "set_code")
  179669089823624876969428176797201843951269

theorem state_sound {σ : Type} : StateSound σ guestCtx state :=
  overrideCost_sound (overrideCost_sound Shards.finalState_sound_guest CompactNonce.nonce_cost) CompactSetCode.set_code_cost

def price := costA (fun f => state.1.lookup f) (fun f => state.2.1.contains f)
    (fun f => state.2.1.contains f || state.2.2.contains f) sdIter
theorem iter_cost {σ : Type} : Cost σ guestCtx sdIter
    3776793992349366006528893981282719641684626 := by
  obtain ⟨ht, hef, hefz⟩ := state_sound (σ := σ)
  have hf : ∀ g, (state.2.1.contains g || state.2.2.contains g) = true →
      EfArgZero σ guestCtx.code g 1 := by
    intro g hg
    rcases Bool.or_eq_true_iff.mp hg with hg | hg
    · exact efArgZero_of_ef hef hg 1
    · exact hefz g hg
  apply costA_sound ht hef hf guestCtx_bounded (Arith.guestArithTbls guestCtx_code)
    (InitECandidate.Solver.Spec.p256Rule guestCtx_code) sdIter
  decide_cbv
#print axioms iter_cost
#print axioms state_sound
end AuthorizationBothReprice
