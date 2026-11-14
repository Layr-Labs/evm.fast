import InitECandidate.Solver.MemSafe.FqCost.Retable.S057
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.FqCost.Retable
variable {σ : Type}
def body_pre_sha256 := (declPair Guest.Software.guestFn_pre_sha256).2.2
def b_pre_sha256 : Nat := 36893488422297010286
theorem cost_pre_sha256 : Cost σ guestCtx body_pre_sha256 b_pre_sha256 := FqCost.CombCore.analyze_sound table57_sound (by cbv)
theorem cc_pre_sha256 : CalleeCost σ guestCtx (nm "pre_sha256") b_pre_sha256 := by
 have hc : guestCode (nm "pre_sha256") = some ((declPair Guest.Software.guestFn_pre_sha256).2.1,body_pre_sha256,(fnEntry Guest.Software.guestFn_pre_sha256).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 824) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_pre_sha256
def table58 := FqCost.CombCore.extend table57 (nm "pre_sha256") b_pre_sha256
theorem table58_sound : TblSound σ guestCtx table58 := FqCost.CombCore.extend_sound table57_sound cc_pre_sha256
#print axioms cc_pre_sha256
end InitECandidate.Solver.MemSafe.FqCost.Retable
