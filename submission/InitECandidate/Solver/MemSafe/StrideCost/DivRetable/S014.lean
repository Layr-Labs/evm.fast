import InitECandidate.Solver.MemSafe.StrideCost.DivRetable.S013
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.StrideCost.DivRetable
variable {σ : Type}
def body_secp256k1_ecrecover := (declPair Guest.Software.guestFn_secp256k1_ecrecover).2.2
def b_secp256k1_ecrecover : Nat := 600633825306662708847671161439624
theorem cost_secp256k1_ecrecover : Cost σ guestCtx body_secp256k1_ecrecover b_secp256k1_ecrecover :=
 StrideCost.CoreNext.analyze_sound table13_sound (by cbv)
theorem cc_secp256k1_ecrecover : CalleeCost σ guestCtx (nm "secp256k1_ecrecover") b_secp256k1_ecrecover := by
 have hc : guestCode (nm "secp256k1_ecrecover") = some ((declPair Guest.Software.guestFn_secp256k1_ecrecover).2.1,body_secp256k1_ecrecover,(fnEntry Guest.Software.guestFn_secp256k1_ecrecover).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 180) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv
   all_goals rfl)
 exact StrideCost.CoreNext.callee_of_body hc cost_secp256k1_ecrecover
def table14 := StrideCost.CoreNext.extend table13 (nm "secp256k1_ecrecover") b_secp256k1_ecrecover
theorem table14_sound : TblSound σ guestCtx table14 :=
 StrideCost.CoreNext.extend_sound table13_sound cc_secp256k1_ecrecover
#print axioms cc_secp256k1_ecrecover
end InitECandidate.Solver.MemSafe.StrideCost.DivRetable
