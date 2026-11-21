import InitECandidate.Solver.MemSafe.FqCost.Retable.S029
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.FqCost.Retable
variable {σ : Type}
def body_blake2b_f := (declPair Guest.Software.guestFn_blake2b_f).2.2
def b_blake2b_f : Nat := 166020696938263871580
theorem cost_blake2b_f : Cost σ guestCtx body_blake2b_f b_blake2b_f := FqCost.CombCore.analyze_sound table29_sound (by cbv)
theorem cc_blake2b_f : CalleeCost σ guestCtx (nm "blake2b_f") b_blake2b_f := by
 have hc : guestCode (nm "blake2b_f") = some ((declPair Guest.Software.guestFn_blake2b_f).2.1,body_blake2b_f,(fnEntry Guest.Software.guestFn_blake2b_f).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 623) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_blake2b_f
def table30 := FqCost.CombCore.extend table29 (nm "blake2b_f") b_blake2b_f
theorem table30_sound : TblSound σ guestCtx table30 := FqCost.CombCore.extend_sound table29_sound cc_blake2b_f
#print axioms cc_blake2b_f
end InitECandidate.Solver.MemSafe.FqCost.Retable
