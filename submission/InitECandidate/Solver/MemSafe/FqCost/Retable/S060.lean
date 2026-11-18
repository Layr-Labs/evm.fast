import InitECandidate.Solver.MemSafe.FqCost.Retable.S059
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.FqCost.Retable
variable {σ : Type}
def body_run_precompile := (declPair Guest.Software.guestFn_run_precompile).2.2
def b_run_precompile : Nat := 100000585719550444471312986654601625166538662003
theorem cost_run_precompile : Cost σ guestCtx body_run_precompile b_run_precompile := FqCost.CombCore.analyze_sound table59_sound (by cbv)
theorem cc_run_precompile : CalleeCost σ guestCtx (nm "run_precompile") b_run_precompile := by
 have hc : guestCode (nm "run_precompile") = some ((declPair Guest.Software.guestFn_run_precompile).2.1,body_run_precompile,(fnEntry Guest.Software.guestFn_run_precompile).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 830) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_run_precompile
def table60 := FqCost.CombCore.extend table59 (nm "run_precompile") b_run_precompile
theorem table60_sound : TblSound σ guestCtx table60 := FqCost.CombCore.extend_sound table59_sound cc_run_precompile
#print axioms cc_run_precompile
end InitECandidate.Solver.MemSafe.FqCost.Retable
