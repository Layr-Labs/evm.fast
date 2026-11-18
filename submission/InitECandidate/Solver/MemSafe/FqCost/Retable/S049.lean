import InitECandidate.Solver.MemSafe.FqCost.Retable.S048
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.FqCost.Retable
variable {σ : Type}
def body_pre_alt_bn128_pairing_check := (declPair Guest.Software.guestFn_pre_alt_bn128_pairing_check).2.2
def b_pre_alt_bn128_pairing_check : Nat := 469660576696580668978736917766156196086941
theorem cost_pre_alt_bn128_pairing_check : Cost σ guestCtx body_pre_alt_bn128_pairing_check b_pre_alt_bn128_pairing_check := FqCost.CombCore.analyze_sound table48_sound (by cbv)
theorem cc_pre_alt_bn128_pairing_check : CalleeCost σ guestCtx (nm "pre_alt_bn128_pairing_check") b_pre_alt_bn128_pairing_check := by
 have hc : guestCode (nm "pre_alt_bn128_pairing_check") = some ((declPair Guest.Software.guestFn_pre_alt_bn128_pairing_check).2.1,body_pre_alt_bn128_pairing_check,(fnEntry Guest.Software.guestFn_pre_alt_bn128_pairing_check).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 694) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_pre_alt_bn128_pairing_check
def table49 := FqCost.CombCore.extend table48 (nm "pre_alt_bn128_pairing_check") b_pre_alt_bn128_pairing_check
theorem table49_sound : TblSound σ guestCtx table49 := FqCost.CombCore.extend_sound table48_sound cc_pre_alt_bn128_pairing_check
#print axioms cc_pre_alt_bn128_pairing_check
end InitECandidate.Solver.MemSafe.FqCost.Retable
