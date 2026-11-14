import InitECandidate.Solver.MemSafe.BnCost.Callee
import InitECandidate.Solver.MemSafe.FqCost.CombCore
import InitECandidate.Solver.MemSafe.ModexpCost.Main
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BnCost
variable {σ : Type}
def body_bn_mod := (declPair Guest.Software.guestFn_bn_mod).2.2
theorem cost_bn_mod : Cost σ guestCtx body_bn_mod (10^24) := by
 have hc : Cost σ guestCtx body_bn_mod 100018446744348587458637 := PairCost.Core.analyze_sound table_sound (by cbv)
 exact Cost.mono hc (by decide +kernel)
theorem cc_bn_mod : CalleeCost σ guestCtx (nm "bn_mod") (10^24) := by
 have hc : guestCode (nm "bn_mod") = some ((declPair Guest.Software.guestFn_bn_mod).2.1,body_bn_mod,(fnEntry Guest.Software.guestFn_bn_mod).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 628) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact PairCost.Core.callee_of_body hc cost_bn_mod
#print axioms cc_bn_mod
def body_bn_mul := (declPair Guest.Software.guestFn_bn_mul).2.2
theorem cost_bn_mul : Cost σ guestCtx body_bn_mul (10^20) := by
 have hc : Cost σ guestCtx body_bn_mul 36893488168893939719 := FqCost.CombCore.analyze_sound table_sound (by cbv)
 exact Cost.mono hc (by decide +kernel)
theorem cc_bn_mul : CalleeCost σ guestCtx (nm "bn_mul") (10^20) := by
 have hc : guestCode (nm "bn_mul") = some ((declPair Guest.Software.guestFn_bn_mul).2.1,body_bn_mul,(fnEntry Guest.Software.guestFn_bn_mul).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 626) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact PairCost.Core.callee_of_body hc cost_bn_mul
#print axioms cc_bn_mul
def tblMod := PairCost.Core.extend (PairCost.Core.extend table (nm "bn_mod") (10^24)) (nm "bn_mul") (10^20)
theorem tblMod_sound : TblSound σ guestCtx tblMod :=
 PairCost.Core.extend_sound (PairCost.Core.extend_sound table_sound cc_bn_mod) cc_bn_mul
#print axioms tblMod_sound
end InitECandidate.Solver.MemSafe.BnCost
