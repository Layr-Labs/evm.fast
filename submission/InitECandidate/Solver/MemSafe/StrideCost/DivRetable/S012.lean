import InitECandidate.Solver.MemSafe.StrideCost.DivRetable.S011
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.StrideCost.DivRetable
variable {σ : Type}
def body_secp256k1_recover := (declPair Guest.Software.guestFn_secp256k1_recover).2.2
def b_secp256k1_recover : Nat := 600000000005866064615439642182777
theorem cost_secp256k1_recover : Cost σ guestCtx body_secp256k1_recover b_secp256k1_recover :=
 StrideCost.CoreNext.analyze_sound table11_sound (by cbv)
theorem cc_secp256k1_recover : CalleeCost σ guestCtx (nm "secp256k1_recover") b_secp256k1_recover := by
 have hc : guestCode (nm "secp256k1_recover") = some ((declPair Guest.Software.guestFn_secp256k1_recover).2.1,body_secp256k1_recover,(fnEntry Guest.Software.guestFn_secp256k1_recover).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 178) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv
   all_goals rfl)
 exact StrideCost.CoreNext.callee_of_body hc cost_secp256k1_recover
def table12 := StrideCost.CoreNext.extend table11 (nm "secp256k1_recover") b_secp256k1_recover
theorem table12_sound : TblSound σ guestCtx table12 :=
 StrideCost.CoreNext.extend_sound table11_sound cc_secp256k1_recover
#print axioms cc_secp256k1_recover
end InitECandidate.Solver.MemSafe.StrideCost.DivRetable
