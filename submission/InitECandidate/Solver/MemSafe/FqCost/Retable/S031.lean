import InitECandidate.Solver.MemSafe.FqCost.Retable.S030
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.FqCost.Retable
variable {σ : Type}
def body_pre_blake2f := (declPair Guest.Software.guestFn_pre_blake2f).2.2
def b_pre_blake2f : Nat := 258254417306811629687
theorem cost_pre_blake2f : Cost σ guestCtx body_pre_blake2f b_pre_blake2f := FqCost.CombCore.analyze_sound table30_sound (by cbv)
theorem cc_pre_blake2f : CalleeCost σ guestCtx (nm "pre_blake2f") b_pre_blake2f := by
 have hc : guestCode (nm "pre_blake2f") = some ((declPair Guest.Software.guestFn_pre_blake2f).2.1,body_pre_blake2f,(fnEntry Guest.Software.guestFn_pre_blake2f).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 827) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_pre_blake2f
def table31 := FqCost.CombCore.extend table30 (nm "pre_blake2f") b_pre_blake2f
theorem table31_sound : TblSound σ guestCtx table31 := FqCost.CombCore.extend_sound table30_sound cc_pre_blake2f
#print axioms cc_pre_blake2f
end InitECandidate.Solver.MemSafe.FqCost.Retable
