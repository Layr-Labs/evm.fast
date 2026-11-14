import InitECandidate.Solver.MemSafe.FqCost.Retable.S007
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.FqCost.Retable
variable {σ : Type}
def body_secp256k1_ecrecover := (declPair Guest.Software.guestFn_secp256k1_ecrecover).2.2
def b_secp256k1_ecrecover : Nat := 633825906662708847671161439624
theorem cost_secp256k1_ecrecover : Cost σ guestCtx body_secp256k1_ecrecover b_secp256k1_ecrecover := FqCost.CombCore.analyze_sound table7_sound (by cbv)
theorem cc_secp256k1_ecrecover : CalleeCost σ guestCtx (nm "secp256k1_ecrecover") b_secp256k1_ecrecover := by
 have hc : guestCode (nm "secp256k1_ecrecover") = some ((declPair Guest.Software.guestFn_secp256k1_ecrecover).2.1,body_secp256k1_ecrecover,(fnEntry Guest.Software.guestFn_secp256k1_ecrecover).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 180) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_secp256k1_ecrecover
def table8 := FqCost.CombCore.extend table7 (nm "secp256k1_ecrecover") b_secp256k1_ecrecover
theorem table8_sound : TblSound σ guestCtx table8 := FqCost.CombCore.extend_sound table7_sound cc_secp256k1_ecrecover
#print axioms cc_secp256k1_ecrecover
end InitECandidate.Solver.MemSafe.FqCost.Retable
