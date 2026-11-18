import InitECandidate.Solver.MemSafe.FqCost.Retable.S006
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.FqCost.Retable
variable {σ : Type}
def body_secp256k1_recover := (declPair Guest.Software.guestFn_secp256k1_recover).2.2
def b_secp256k1_recover : Nat := 605866064615439642182777
theorem cost_secp256k1_recover : Cost σ guestCtx body_secp256k1_recover b_secp256k1_recover := FqCost.CombCore.analyze_sound table6_sound (by cbv)
theorem cc_secp256k1_recover : CalleeCost σ guestCtx (nm "secp256k1_recover") b_secp256k1_recover := by
 have hc : guestCode (nm "secp256k1_recover") = some ((declPair Guest.Software.guestFn_secp256k1_recover).2.1,body_secp256k1_recover,(fnEntry Guest.Software.guestFn_secp256k1_recover).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 178) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_secp256k1_recover
def table7 := FqCost.CombCore.extend table6 (nm "secp256k1_recover") b_secp256k1_recover
theorem table7_sound : TblSound σ guestCtx table7 := FqCost.CombCore.extend_sound table6_sound cc_secp256k1_recover
#print axioms cc_secp256k1_recover
end InitECandidate.Solver.MemSafe.FqCost.Retable
